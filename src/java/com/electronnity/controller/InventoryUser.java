/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.electronnity.controller;

import com.electronnity.dao.UserDao;
import com.electronnity.model.UserModel;
import com.lambdaworks.crypto.SCryptUtil;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;

public class InventoryUser extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        String usertype = (String) request.getSession().getAttribute("usertype");

        if (usertype == null || !usertype.equals("Administrator")) {
            response.setStatus(HttpServletResponse.SC_FORBIDDEN);
            return;
        }

        switch (action) {
            case "/userlist/create/form":
                showUserCreateForm(request, response);
                break;
            case "/userlist/create":
                try {
                    createUser(request, response);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(InventoryUser.class.getName()).log(Level.SEVERE, null, ex);
                }
                break;
            case "/userlist/update/form":
                try {
                    showUserUpdateForm(request, response);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(InventoryUser.class.getName()).log(Level.SEVERE, null, ex);
                }
                break;
            case "/userlist/update":
                try {
                    updateUser(request, response);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(InventoryUser.class.getName()).log(Level.SEVERE, null, ex);
                }
                break;
            case "/userlist/delete":
                try {
                    deleteUser(request, response);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(InventoryUser.class.getName()).log(Level.SEVERE, null, ex);
                }
                break;
            default:
                try {
                    viewUser(request, response);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(InventoryUser.class.getName()).log(Level.SEVERE, null, ex);
                }
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private void viewUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        UserDao userDao = new UserDao();
        ArrayList<UserModel> userList = userDao.getUserList();
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

        // Hash the password using SCrypt
        String hashedPassword = SCryptUtil.scrypt(password, 16384, 8, 1);

        UserDao userDao = new UserDao();
        UserModel createUser = new UserModel(
                username, hashedPassword, email, firstname, middlename, lastname, address, birthday, number, usertype);
        userDao.createUser(createUser);
        response.sendRedirect(request.getContextPath() + "/userlist");
    }

    private void showUserUpdateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        int id = Integer.parseInt(request.getParameter("id"));
        UserDao userDao = new UserDao();
        UserModel userDetails = userDao.getUserDetails(id);
        request.setAttribute("userDetails", userDetails);
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/WEB-INF/Inventory/updateuser.jsp");
        rd.forward(request, response);
    }

    private void updateUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        int id = Integer.parseInt(request.getParameter("id"));
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

        UserDao userDao = new UserDao();
        UserModel existingUser = userDao.getUserDetails(id);

        // Hash the password using SCrypt only if it is provided
        String hashedPassword;
        if (password != null && !password.isEmpty()) {
            hashedPassword = SCryptUtil.scrypt(password, 16384, 8, 1);
        } else {
            hashedPassword = existingUser.getPassword(); // Use the existing hashed password if no new password is provided
        }

        UserModel updateUser = new UserModel(
                id, username, hashedPassword, email, firstname, middlename, lastname, address, birthday, number, usertype, attempts);
        userDao.updateUser(updateUser);
        response.sendRedirect(request.getContextPath() + "/userlist");
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        int id = Integer.parseInt(request.getParameter("id"));
        UserDao userDao = new UserDao();
        userDao.deleteUser(id);
        response.sendRedirect(request.getContextPath() + "/userlist");
    }
}