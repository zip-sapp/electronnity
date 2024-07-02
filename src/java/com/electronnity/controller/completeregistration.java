/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package com.electronnity.controller;

import com.electronnity.dao.ClientDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class completeregistration extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String enteredPin = request.getParameter("pin");
        String sessionPin = (String) request.getSession().getAttribute("pin");

        if (enteredPin != null && enteredPin.equals(sessionPin)) {
            String username = (String) request.getSession().getAttribute("username");
            String password = (String) request.getSession().getAttribute("password");
            String email = (String) request.getSession().getAttribute("email");
            String firstname = (String) request.getSession().getAttribute("firstname");
            String middlename = (String) request.getSession().getAttribute("middlename");
            String lastname = (String) request.getSession().getAttribute("lastname");
            String address = (String) request.getSession().getAttribute("address");
            String birthday = (String) request.getSession().getAttribute("birthday");
            String number = (String) request.getSession().getAttribute("number");

            ClientDao reg = new ClientDao();
            boolean isRegistered = false;
            try {
                isRegistered = reg.createClient(username, password, email, firstname, middlename, lastname, address, birthday, number);
            } catch (ClassNotFoundException ex) {
                System.out.println("ClassNotFoundException: " + ex.getMessage());
            }

            if (isRegistered) {
                response.setStatus(HttpServletResponse.SC_CREATED);
                response.sendRedirect("success");
            } else {
                response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                response.sendRedirect("verifyaccount_error");
            }
        } else {
            response.sendRedirect("verifyaccount_error");
        }
    }
}
