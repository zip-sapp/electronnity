/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.electronnity.controller;

import com.electronnity.dao.product;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class createproduct extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        switch (action) {
            default -> viewcreateproduct(request, response);
                    
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            createProduct(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(signup.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    private void viewcreateproduct (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher cp = getServletContext().getRequestDispatcher(
                "/WEB-INF/inventory/create-product.jsp");
        cp.forward(request, response);
    }
    
    private void createProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        
        String productid = request.getParameter("productid");
        String productname = request.getParameter("productname");
        String description = request.getParameter("description");
        String size = request.getParameter("size");
        BigDecimal price = new BigDecimal(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        
        product pro = new product();
        boolean createProduct = pro.createProduct(productid, productname, description, size, price, quantity); 
        
            if (createProduct) {
                
                response.sendRedirect(request.getContextPath() + "/productslist");
                return;
                 
        }
        System.out.println(productid + productname + description + size + price + quantity); //printing the data input
    }
}


