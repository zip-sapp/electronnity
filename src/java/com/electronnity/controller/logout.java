/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.electronnity.controller;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.ServletException;

/**
 *
 * @author Aaron
 */
public class logout extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session != null) {
            String username = (String) session.getAttribute("username");
            if (username != null) {
                if (username.equals("Administrator")) {
                    // Special case for premade administrator account
                    // No need to update login status in database
                } else {
                    // Regular user logout logic
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/electronnity?serverTimezone=UTC", "root", "Hypernova123")) {
                            PreparedStatement pstmt = conn.prepareStatement("UPDATE electronnity.clientinfo SET loginstatus = 'Offline' WHERE username =?");
                            pstmt.setString(1, username);
                            int rowsUpdated = pstmt.executeUpdate();
                            if (rowsUpdated > 0) {
                                System.out.println("Login status updated to Offline for username " + username);
                            } else {
                                System.out.println("No rows updated for username " + username);
                            }
                        } catch (SQLException e) {
                            System.err.println("Database connection error: " + e.getMessage());
                        }
                    } catch (ClassNotFoundException e) {
                        System.err.println("MySQL JDBC driver not found: " + e.getMessage());
                    }
                }

                // Remove session attributes
                session.removeAttribute("username");
                session.removeAttribute("loginstatus");
                session.removeAttribute("usertype"); // Remove usertype attribute
                session.removeAttribute("loggedIn"); // Remove loggedIn attribute

                // Invalidate the session
                session.invalidate();

                // Redirect to login page
                response.sendRedirect("login");
            } else {
                System.out.println("Username is null");
            }
        } else {
            System.out.println("Session is null");
        }
    }
}
