package com.electronnity.controller;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Authenticator;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class verifyaccount extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private static final String ALLOWED_DOMAINS = "gmail.com|yahoo.com|hotmail.com|outlook.live.com";
    private static final int PIN_LENGTH = 10;
    
    private static final String SMTP_HOST = "smtp.gmail.com";
    private static final String SMTP_PORT = "587";
    private static final String SMTP_USERNAME = "aaronsaplala7@gmail.com";
    private static final String SMTP_PASSWORD = "xzzp hgig rqgi dnbe";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = (String) request.getAttribute("username");
        String password = (String) request.getAttribute("password");
        String email = (String) request.getAttribute("email");
        String firstname = (String) request.getAttribute("firstname");
        String middlename = (String) request.getAttribute("middlename");
        String lastname = (String) request.getAttribute("lastname");
        String address = (String) request.getAttribute("address");
        String birthday = (String) request.getAttribute("birthday");
        String number = (String) request.getAttribute("number");

        // Check if email is valid and from allowed domain
        if (!isValidEmail(email)) {
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            response.getWriter().println("Invalid email address or domain");
            return;
        }

        // Generate PIN
        String pin = generatePIN();

        // Send PIN to user's email
        if (sendPIN(email, pin)) {
            
            // Store user's details temporarily in session until they verify their email
            request.getSession().setAttribute("username", username);
            request.getSession().setAttribute("password", password);
            request.getSession().setAttribute("email", email);
            request.getSession().setAttribute("firstname", firstname);
            request.getSession().setAttribute("middlename", middlename);
            request.getSession().setAttribute("lastname", lastname);
            request.getSession().setAttribute("address", address);
            request.getSession().setAttribute("birthday", birthday);
            request.getSession().setAttribute("number", number);
            request.getSession().setAttribute("pin", pin);

            // Redirect to verification page
            response.sendRedirect("verifyaccount");
        } else {
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().println("Error sending verification email. Please try again later.");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String action = request.getServletPath();
        switch (action) {
            case "/verifyaccount" -> viewverifyaccount(request, response);
            default -> // Handle unknown actions
                response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }

    private void viewverifyaccount(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher fg = getServletContext().getRequestDispatcher("/WEB-INF/signup-verify.jsp");
        fg.forward(request, response);
    }

    private boolean isValidEmail(String email) {
        String[] parts = email.split("@");
        if (parts.length != 2) {
            return false;
        }
        String domain = parts[1];
        return domain.matches(ALLOWED_DOMAINS);
    }

    private String generatePIN() {
        Random random = new Random();
        StringBuilder pin = new StringBuilder();
        for (int i = 0; i < PIN_LENGTH; i++) {
            int type = random.nextInt(3);
            switch (type) {
                case 0 -> pin.append((char) (random.nextInt(26) + 'a'));
                case 1 -> pin.append((char) (random.nextInt(26) + 'A'));
                case 2 -> pin.append((char) (random.nextInt(10) + '0'));
            }
        }
        return pin.toString();
    }

    private boolean sendPIN(String email, String pin) {
        Properties props = new Properties();
        props.put("mail.smtp.host", SMTP_HOST);
        props.put("mail.smtp.port", SMTP_PORT);
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        
        Session session = Session.getInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(SMTP_USERNAME, SMTP_PASSWORD);
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(SMTP_USERNAME));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
            message.setSubject("Account Verification:");
            message.setText("""
                            Dear User,
                            
                            Thank you for registering to electronnity.co! We are excited to have you on board.
                            
                            To complete your registration and activate your account, please use the following verification PIN:
                            
                            Your verification PIN is: """ + pin + "\n\n"
                    + "If you did not sign up for an electronnity account, please ignore this email.\n\n"
                    + "Thank you for joining us!\n\n"
                    + "Best regards,\n\n"
                    + "The Electron Nity Team\n"
                    + "electronnity.co\n"
                    + "support@electronnity.co\n"
                    + "+877-296-2953");

            Transport.send(message);
            return true;
        } catch (MessagingException e) {
            Logger.getLogger(verifyaccount.class.getName()).log(Level.SEVERE, null, e);
            return false;
        }
    }
}