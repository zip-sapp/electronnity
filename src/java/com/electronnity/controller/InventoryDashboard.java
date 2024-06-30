/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.electronnity.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Aaron
 */
public class InventoryDashboard extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String usertype = (String) request.getSession().getAttribute("usertype"); // Get the user's role from the session

        if (usertype == null || !usertype.equals("Administrator")) { // Check if the user is not an admin
            response.setStatus(HttpServletResponse.SC_FORBIDDEN); // Return 403 Forbidden response
            return;
        }

        /*// Check if the request is coming from a valid source
        if (!isValidRequest(request)) {
            response.sendRedirect(request.getContextPath() + "/error.jsp"); // redirect to error.jsp
            return;
        }*/
        
        request.getRequestDispatcher("/WEB-INF/Inventory/dashboard.jsp").forward(request, response);
    }
}
