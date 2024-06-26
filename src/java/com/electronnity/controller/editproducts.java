/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.electronnity.controller;

import com.electronnity.dao.editproduct;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Aaron
 */
public class editproducts extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String rdPage = "/WEB-INF/inventory/edit-product.jsp";

        if (request.getParameter("editproduct") != null) {

            String productname = request.getParameter("productname");
            String description = request.getParameter("description");
            String size = request.getParameter("size");
            BigDecimal price = new BigDecimal(request.getParameter("price"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            String productid = request.getParameter("productid");

            editproduct update = new editproduct();
            try {
                boolean editProduct = update.editProduct(productname, description, size, price, quantity, productid);
                System.out.println("editProduct" + editProduct);
                
                if (editProduct == true) {
                    rdPage = "/productslist?editproduct=true&id=" + productid;
                    return;
                }

            } catch (SQLException | ClassNotFoundException e) {
                System.out.println("Error: " + e.getMessage());
                if (e instanceof SQLException) {
                    System.out.println("SQL Exception occurred: ");
                } else if (e instanceof ClassNotFoundException) {
                    System.out.println("Class Not Found Exception occurred: ");
                }
            }

        } else if (request.getParameter("deleteregistry") != null) {
            
        } else {

        }
    }
}
