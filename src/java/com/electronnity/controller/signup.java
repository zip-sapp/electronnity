package com.electronnity.controller;

import com.electronnity.dao.register;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;


public class signup extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        switch (action) {
            
            default -> viewsignup(request, response);
            
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            createAccount(request, response);
        } catch (ClassNotFoundException | MessagingException ex) {
            Logger.getLogger(signup.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    private void viewsignup (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        RequestDispatcher sp = getServletContext().getRequestDispatcher(
        "/signup.jsp");
        sp.forward(request, response);
        
    }
    
    private boolean checkEmailExistence(String email) throws IOException {
        String apiKey = "ema_live_NQ7FJilf6Whsn3EGAaKVET0Oph8G0ISBdaJOxCYg";
        String apiUrl = "https://api.emailvalidation.io/v1/info?";

        // Create a URL with the email as a query parameter
        URL url = new URL(apiUrl + "?apikey=" + apiKey + "&email=" + email);

        // Set up the HTTP request
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.setRequestMethod("GET");

        // Send the request and get the response
        connection.connect();
        int responseCode = connection.getResponseCode();

        if (responseCode == 200) {
            try (BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()))) {
                StringBuilder responseBodyBuilder = new StringBuilder();
                String inputLine;
                while ((inputLine = in.readLine()) != null) {
                    responseBodyBuilder.append(inputLine);
                }

                String responseBody = responseBodyBuilder.toString();
                System.out.println("API Response: " + responseBody); // Log the API response

                ObjectMapper mapper = new ObjectMapper();
                JsonNode responseJson = mapper.readTree(responseBody);
                String status = responseJson.get("status").asText();

                if (status.equals("success")) {
                    int isValid = responseJson.get("is_valid").asInt();
                    if (isValid == 1) {
                        return true; // Email exists
                    } else {
                        System.out.println("Email is not valid or does not exist");
                        return false; // Email does not exist
                    }
                } else {
                    System.out.println("API error: " + responseJson.get("message").asText());
                    return false; // API error
                }
            }
        } else {
            System.out.println("API error: " + responseCode);
            return false; // API error
        }
    }

    private void createAccount(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException, ClassNotFoundException, MessagingException {
    
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String confirmPass = request.getParameter("confirmPass");
    String email = request.getParameter("email");
    String firstname = request.getParameter("firstname");
    String middlename = request.getParameter("middlename");
    String lastname = request.getParameter("lastname");
    String address = request.getParameter("address");
    String birthday = request.getParameter("birthday");
    String number = request.getParameter("number");

    boolean isValid = true;

    if (username == null || username.trim().isEmpty() || username.length() < 4 || username.length() > 12 ||!username.matches("^(?![\\\\/:\";<>=|?*\\x00-\\x1F])[\\w -.]+$")) {
        response.sendRedirect("signup_username_error");
        return;
    }

    if (password == null || password.trim().isEmpty() || password.length() < 8 || password.length() > 16 ||!password.matches("^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@$&%*]).+$")) {
        response.sendRedirect("signup_password_error");
        return;
    }

    if (!password.equals(confirmPass) || confirmPass.trim().isEmpty()) {
        response.sendRedirect("signup_confirmpass_error");
        return;
    }

    if (email == null || email.trim().isEmpty() ||!email.matches("^(([^<>()\\[\\]\\\\.,;:\\s@\"]+(\\.[^<>()\\[\\]\\\\.,;:\\s@\"]+)*)|(\".+\"))@(gmail|yahoo|hotmail)\\.[a-zA-Z]{2,}$")) {
        response.sendRedirect("signup_email_error");
        return;
    }
    
    if (firstname == null || firstname.trim().isEmpty() ||!firstname.matches ("^[a-zA-Z\\s]+$")) {
        response.sendRedirect("signup_firstname_error");
        return;
    }
    
    if (middlename == null || middlename.trim().isEmpty() ||!middlename.matches ("^[a-zA-Z\\s.]+$")) {
        response.sendRedirect("signup_middlename_error");
        return;
    }
    
    if (lastname == null || lastname.trim().isEmpty() ||!lastname.matches ("^[a-zA-Z\\s]+$")) {
        response.sendRedirect("signup_lastname_error");
        return;
    }

    if (address == null || address.trim().isEmpty() ||!address.matches ("^[\\w.,/\\-:@\\s]+$")) {
        response.sendRedirect("signup_address_error");
        return;
    }

    if (birthday == null || birthday.trim().isEmpty() ||!birthday.matches ("^([0-9]{2})\\-([0-9]{2})\\-([0-9]{4})$")) {
         response.sendRedirect("signup_birthday_error");
        return;
    }

    if (number == null || number.trim().isEmpty() ||!number.matches ("^[\\d]{11}$")) {
        response.sendRedirect("signup_number_error");
        return;
    }

    if (isValid) {
        // If all credentials are valid, create the client and store in database
        register reg = new register();
        boolean isRegistered = reg.createClient(username, password, email, firstname, middlename, lastname, address, birthday, number);
        
        //checks if email account actually exist through smtp providers
        boolean emailExists = checkEmailExistence(email); 
        
        //checks whether the user had already existed
        boolean userExists = reg.checkUserExists(username, email);
        
            if (emailExists) {
                response.sendRedirect("signup_email_exists_error");
                return;
            }
            
            if (userExists) {
                response.sendRedirect("signup_userexist");
                return;
            }

            if (isRegistered) {
                /*System.out.println("Registered: " + username + " " + password + " " + email + " " + firstname + " " + middlename + " " + lastname + " " + address + " " + birthday + " " + number); */ // printing for debugging purpose
                response.sendRedirect("success");
                return;
            
            } else {
                // Registration failed, redirect back to signup page
                response.sendRedirect("signup");
                return;
            }
        }
    }
}


/*      private void createAccount (HttpServletRequest request, HttpServletResponse response)// I'll be needing this just in case if something goes wrong
            throws  ServletException, IOException, ClassNotFoundException {
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String firstname = request.getParameter("firstname");
        String middlename = request.getParameter("middlename");
        String lastname = request.getParameter("lastname");
        String address = request.getParameter("address");
        String birthday = request.getParameter("birthday");
        String number = request.getParameter("number");
    
        register reg = new register();
        reg.createClient(username, password, firstname, middlename, lastname, address, birthday, number); 
        
        response.sendRedirect(request.getContextPath() + "/login"); 
        
        System.out.println(username +  password +  firstname +  middlename +  lastname +  address +  birthday +  number); //printing the data input
    }
}

        private void createClient(HttpServletRequest request, HttpServletResponse response) //old code that don't work
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String firstname = request.getParameter("firstname");
        String middlename = request.getParameter("middlename");
        String lastname = request.getParameter("lastname");
        String address = request.getParameter("address");
        String birthday = request.getParameter("birthday");
        String number = request.getParameter("number");
        
        EmployeeDao employee = new EmployeeDao();
        ClientModel createEmployee = new ClientModel(
                username, password, firstname, middlename, lastname, address, birthday, number);
        employee.createEmployee(createEmployee);
        response.sendRedirect(request.getContextPath() + "/login");
    
        System.out.println(username +  password +  firstname +  middlename +  lastname +  address +  birthday +  number);
    }
}*/