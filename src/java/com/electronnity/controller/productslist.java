/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.electronnity.controller;

import com.electronnity.dao.editproduct;
import com.electronnity.dao.listproduct;
import com.electronnity.model.productmodel;
import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Aaron
 */

public class productslist extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String rdPage = "/WEB-INF/inventory/products-list.jsp";
        
        if (request.getParameter("editproduct")!= null) {
            try {
                String productid = request.getParameter("id"); // Get the product ID from the "id" parameter
                editproduct edit = new editproduct();
                ArrayList<productmodel> productDetails = edit.getProductDetails(productid);
                
                request.setAttribute("productDetails", productDetails);
                rdPage = "/WEB-INF/inventory/edit-product.jsp";
                
                // Forward the request to the edit-product.jsp page
                RequestDispatcher rd = request.getRequestDispatcher(rdPage);
                rd.forward(request, response);
                
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(productslist.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {

            try {
                listproduct list = new listproduct();
                ArrayList<productmodel> allProduct = list.getAllProduct();
                request.setAttribute("allProduct", allProduct);
                
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(productslist.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            RequestDispatcher rd = request.getRequestDispatcher(rdPage);
            rd.forward(request, response);
        }
    }
}

/*@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        switch (action) {
            default -> viewproductlist(request, response);
                    
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
    
    private void viewproductlist (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher hm = getServletContext().getRequestDispatcher(
                "/WEB-INF/inventory/products-list.jsp");
        hm.forward(request, response);
    }
} */
