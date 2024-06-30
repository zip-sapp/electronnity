/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.electronnity.controller;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.electronnity.dao.UserDao;
import com.electronnity.model.UserModel;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Aaron
 */

public class InventoryUser extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        String usertype = (String) request.getSession().getAttribute("usertype"); // Get the user's role from the session

        if (usertype == null || !usertype.equals("Administrator")) { // Check if the user is not an admin
            response.setStatus(HttpServletResponse.SC_FORBIDDEN); // Return 403 Forbidden response
            return;
        }
        
        switch (action) {
            case "/userlist/create/form" -> showUserCreateForm(request, response);
            case "/userlist/create" -> {
                try {
                    createUser(request, response);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(InventoryUser.class.getName()).log(Level.SEVERE, null, ex);
                }
            }

            case "/userlist/update/form" -> {
                try {
                    showUserUpdateForm(request, response);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(InventoryUser.class.getName()).log(Level.SEVERE, null, ex);
                }
            }

            case "/userlist/update" -> {
                try {
                    updateUser(request, response);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(InventoryUser.class.getName()).log(Level.SEVERE, null, ex);
                }
            }

            case "/userlist/delete" -> {
                try {
                    deleteUser(request, response);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(InventoryUser.class.getName()).log(Level.SEVERE, null, ex);
                }
            }

            default -> {
                try {
                    viewUser(request, response);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(InventoryUser.class.getName()).log(Level.SEVERE, null, ex);
                }
            }


        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
    
    private void viewUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        UserDao user = new UserDao();
        ArrayList<UserModel> userList = user.getUserList();
        request.setAttribute("userList", userList);
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/WEB-INF/Inventory/userlist.jsp");
        rd.forward(request, response);
    }
    
    private void showUserCreateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/WEB-INF/Inventory/createuser.jsp");
        rd.forward(request, response);
    }
    
    private void createUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String firstname = request.getParameter("firstname");
        String middlename = request.getParameter("middlename");
        String lastname = request.getParameter("lastname");
        String address = request.getParameter("address");
        String birthday = request.getParameter("birthday");
        String number = request.getParameter("number");
        String usertype = request.getParameter("usertype");

        UserDao user = new UserDao();
        UserModel createUser = new UserModel(
                username, password, email, firstname, middlename, lastname, address, birthday, number, usertype);
        user.createUser(createUser);
        response.sendRedirect(request.getContextPath() + "/userlist");
    }
    
    private void showUserUpdateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        int id = Integer.parseInt(request.getParameter("id"));
        UserDao user = new UserDao();
        UserModel userDetails = user.getUserDetails(id);
        request.setAttribute("userDetails", userDetails);
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/WEB-INF/Inventory/updateuser.jsp");
        rd.forward(request, response);
    }
    
    private void updateUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        int id = Integer.parseInt(request.getParameter("id")); // Get the user's ID
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String firstname = request.getParameter("firstname");
        String middlename = request.getParameter("middlename");
        String lastname = request.getParameter("lastname");
        String address = request.getParameter("address");
        String birthday = request.getParameter("birthday");
        String number = request.getParameter("number");
        String usertype = request.getParameter("usertype");
        String attempts = request.getParameter("attempts");
        
        UserDao user = new UserDao();
        UserModel updateUser = new UserModel(
                id, username, password, email, firstname, middlename, lastname, address, birthday, number, usertype, attempts);
        user.updateUser(updateUser);
        response.sendRedirect(request.getContextPath() + "/userlist");
    }
    
    private void deleteUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        int id = Integer.parseInt(request.getParameter("id"));
        UserDao user = new UserDao();
        user.deleteUser(id);
        response.sendRedirect(request.getContextPath() + "/userlist");
    }

}
