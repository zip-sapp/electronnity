/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.electronnity.controller;

import com.electronnity.dao.ProductDao;
import com.electronnity.model.ProductModel;
import java.io.IOException;
import java.math.BigDecimal;
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

public class InventoryProduct extends HttpServlet {

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
            case "/productlist/create/form" -> showProductCreateForm(request, response);
            case "/productlist/create" -> {
                try {
                    createProduct(request, response);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(InventoryProduct.class.getName()).log(Level.SEVERE, null, ex);
                }
            }

            case "/productlist/update/form" -> {
                try {
                    showProductUpdateForm(request, response);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(InventoryProduct.class.getName()).log(Level.SEVERE, null, ex);
                }
            }

            case "/productlist/update" -> {
                try {
                    updateProduct(request, response);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(InventoryProduct.class.getName()).log(Level.SEVERE, null, ex);
                }
            }

            case "/productlist/delete" -> {
                try {
                    deleteProduct(request, response);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(InventoryProduct.class.getName()).log(Level.SEVERE, null, ex);
                }
            }

            default -> {
                try {
                    viewProductlist(request, response);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(InventoryProduct.class.getName()).log(Level.SEVERE, null, ex);
                }
            }

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private void viewProductlist(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        ProductDao product = new ProductDao();
        ArrayList<ProductModel> productList = product.getProductList();
        request.setAttribute("productList", productList);
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/WEB-INF/Inventory/productlist.jsp");
        rd.forward(request, response);
    }

    private void showProductCreateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/WEB-INF/Inventory/createproduct.jsp");
        rd.forward(request, response);
    }

    private void createProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        String productid = request.getParameter("productid");
        String productname = request.getParameter("productname");
        String description = request.getParameter("description");
        String size = request.getParameter("size");
        BigDecimal price = new BigDecimal(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        ProductDao product = new ProductDao();
        ProductModel createProduct = new ProductModel(
                productid, productname, description, size, price, quantity);
        product.createProduct(createProduct);
        response.sendRedirect(request.getContextPath() + "/productlist");
    }

    private void showProductUpdateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        String productid = request.getParameter("productid");
        ProductDao product = new ProductDao();
        ProductModel productDetails = product.getProductDetails(productid);
        request.setAttribute("productDetails", productDetails);
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/WEB-INF/Inventory/updateproduct.jsp");
        rd.forward(request, response);
    }

    private void updateProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        String productid = request.getParameter("productid");
        String productname = request.getParameter("productname");
        String description = request.getParameter("description");
        String size = request.getParameter("size");
        BigDecimal price = new BigDecimal(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        ProductDao product = new ProductDao();
        ProductModel updateProduct = new ProductModel(
                productid, productname, description, size, price, quantity);
        product.updateProduct(updateProduct);
        response.sendRedirect(request.getContextPath() + "/productlist");
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        String productid = request.getParameter("productid");
        ProductDao product = new ProductDao();
        product.deleteProduct(productid);
        response.sendRedirect(request.getContextPath() + "/productlist");
    }
}
