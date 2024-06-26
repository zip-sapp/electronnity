/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.electronnity.controller;

import com.electronnity.dao.SearchProductsClass;
import com.electronnity.model.ProductModel;
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
public class searchproducts extends HttpServlet {
        
    @Override
    protected void doGet (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        SearchProductsClass search = new SearchProductsClass();
        ArrayList<ProductModel> allProducts = null;
        try {
            allProducts = search.getAllProducts();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(searchproducts.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.setAttribute("allProducts", allProducts);
            
    RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/inventory/search-products.jsp");
    rd.forward(request, response);
    }
}

