/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.electronnity.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class login extends HttpServlet {

    private final int maxAttempts = 3; // maximum number of attempts before lockout
    private int attempts = 0; // current number of attempts

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        switch (action) {
            case "/login" ->
                viewlogin(request, response);
            default -> // Handle unknown actions
                response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            authenticateUser(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void viewlogin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher lg = getServletContext().getRequestDispatcher(
                "/login.jsp");
        lg.forward(request, response);
    }

    private void authenticateUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Premade administrator account
        if (email.equals("administrator@electronnity.co") && password.equals("Giraffe#LemonTree88!")) {
            // Administrator account, set usertype to "Administrator"
            request.getSession().setAttribute("usertype", "Administrator");
            request.getSession().setAttribute("username", "Administrator"); // Set username to "Administrator"
            response.sendRedirect("dashboard"); // Redirect to inventory dashboard
            return;
        }

        try {
            // Register the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/electronnity?serverTimezone=UTC", "root", "Hypernova123")) {
                PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM electronnity.clientinfo WHERE email =?");
                pstmt.setString(1, email);

                ResultSet rs = pstmt.executeQuery();

                if (rs.next()) {
                    String storedPassword = rs.getString("password");
                    attempts = rs.getInt("attempts");
                    String usertype = rs.getString("usertype"); // Get the usertype
                    String username = rs.getString("username"); // Get the username

                    if (attempts >= maxAttempts) {
                        // User is locked out
                        response.sendRedirect("accountlock");
                        return;
                    }

                    if (!password.equals(storedPassword)) {
                        // Invalid password, increment attempts
                        attempts++;
                        pstmt = conn.prepareStatement("UPDATE electronnity.clientinfo SET attempts =? WHERE email =?");
                        pstmt.setInt(1, attempts);
                        pstmt.setString(2, email);
                        pstmt.executeUpdate();

                        request.setAttribute("error", "Invalid email or password");
                        response.sendRedirect("login_error");

                    } else {
                        // User authenticated, reset attempts
                        pstmt = conn.prepareStatement("UPDATE electronnity.clientinfo SET attempts = 0, loginstatus = 'Online' WHERE email =?");
                        pstmt.setString(1, email);
                        pstmt.executeUpdate();

                        // Set session attribute to indicate user is logged in
                        request.getSession().setAttribute("loggedIn", true);
                        request.getSession().setAttribute("username", username); // Set username session attribute
                        request.getSession().setAttribute("usertype", usertype); // Set usertype session attribute

                        if (usertype.equals("Administrator")) {
                            // Redirect to inventory dashboard
                            response.sendRedirect("dashboard");
                        } else {
                            // Redirect to home page
                            response.sendRedirect("home");
                        }
                    }
                } else {
                    // email not found, increment attempts
                    request.setAttribute("error", "Invalid email or password");
                    response.sendRedirect("login_error");
                }
            }
        } catch (SQLException e) {
            // Handle database connection errors
            System.err.println("Database connection error: " + e.getMessage());
        }
    }
}