package com.electronnity.controller;

import com.electronnity.dao.ProductDao;
import com.electronnity.model.ProductModel;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ProcessOrderRoute extends HttpServlet {

    private final ProductDao productDao = new ProductDao();
    private static final Logger LOGGER = Logger.getLogger(ProcessOrderRoute.class.getName());

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String cartItemsParam = req.getParameter("cartItems");
        if (cartItemsParam == null || cartItemsParam.isEmpty()) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Cart items are missing.");
            return;
        }

        try {
            CartItem[] cartItems = parseCartItems(cartItemsParam);
            LOGGER.info("Received cart items: " + Arrays.toString(cartItems));

            List<String> errors = new ArrayList<>();
            for (CartItem item : cartItems) {
                ProductModel product = productDao.getProductDetails(item.getId());
                if (product == null) {
                    errors.add("Product not found: " + item.getId());
                } else if (item.getQuantity() > product.getQuantity()) {
                    errors.add("Insufficient stock for product: " + product.getProductName());
                }
            }

            if (!errors.isEmpty()) {
                req.setAttribute("errorMessage", String.join(", ", errors));
                req.getRequestDispatcher("/order-error.jsp").forward(req, resp);
                return;
            }

            try {
                for (CartItem item : cartItems) {
                    boolean updated = productDao.reduceProductQuantity(item.getId(), item.getQuantity());
                    if (!updated) {
                        errors.add("Failed to update product: " + item.getId());
                    }
                }

                if (!errors.isEmpty()) {
                    req.setAttribute("errorMessage", String.join(", ", errors));
                    req.getRequestDispatcher("/order-error.jsp").forward(req, resp);
                } else {
                    // Clear cart items
                    req.getSession().removeAttribute("cartItems");
                    resp.sendRedirect(req.getContextPath() + "/order-success.jsp");
                }
            } catch (SQLException e) {
                LOGGER.log(Level.SEVERE, "Error processing order", e);
                req.setAttribute("errorMessage", "Error processing order");
                req.getRequestDispatcher("/order-error.jsp").forward(req, resp);
            }
        } catch (Exception e) {
            LOGGER.log(Level.SEVERE, "Error processing order", e);
            req.setAttribute("errorMessage", "Error processing order");
            req.getRequestDispatcher("/order-error.jsp").forward(req, resp);
        }
    }

    private CartItem[] parseCartItems(String cartItemsParam) {
        return new Gson().fromJson(cartItemsParam, CartItem[].class);
    }

    private class CartItem {
        private String id;
        private int quantity;

        public String getId() {
            return id;
        }

        public void setId(String id) {
            this.id = id;
        }

        public int getQuantity() {
            return quantity;
        }

        public void setQuantity(int quantity) {
            this.quantity = quantity;
        }

        @Override
        public String toString() {
            return "CartItem{id='" + id + "', quantity=" + quantity + '}';
        }
    }
}
