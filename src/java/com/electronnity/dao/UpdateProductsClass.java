/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.electronnity.dao;

import com.electronnity.model.ProductModel;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Aaron
 */
public class UpdateProductsClass {

    public ArrayList<ProductModel> getProductDetails(String productid) throws ClassNotFoundException {
        ArrayList<ProductModel> productDetails = new ArrayList<>();

        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {

            String query = "SELECT "
                    + "productid, "
                    + "productname, "
                    + "description, "
                    + "size, "
                    + "price, "
                    + "quantity "
                    + "FROM electronnity.productinfo "
                    + "WHERE productid = ?";

            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productid);
            rs = ps.executeQuery();

            while (rs.next()) {
                ProductModel product = new ProductModel();
                product.setProductId(rs.getString("productid"));
                product.setProductName(rs.getString("productname"));
                product.setDescription(rs.getString("description"));
                product.setSize(rs.getString("size"));
                product.setPrice(rs.getBigDecimal("price"));
                product.setQuantity(rs.getInt("quantity"));
                productDetails.add(product);
            }
            conn.close();

        } catch (SQLException e) {
            System.out.println("getProductDetails error: " + e);

        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    System.out.println("SQLException" + e.getMessage());
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    System.out.println("SQLException" + e.getMessage());
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.out.println("SQLException" + e.getMessage());
                }
            }
            return productDetails;
        }
    }

    public boolean editProduct(
            String productname,
            String description,
            String size,
            BigDecimal price,
            int quantity,
            String productid) throws SQLException, ClassNotFoundException {

        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;

        try {
            String query = "UPDATE electronnity.productinfo SET"
                    + " productname =?,"
                    + " description =?,"
                    + " size =?,"
                    + " price =?,"
                    + " quantity =? "
                    + " WHERE productid =? ";

            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productname);
            ps.setString(2, description);
            ps.setString(3, size);
            ps.setBigDecimal(4, price);
            ps.setInt(5, quantity);
            ps.setString(6, productid);

            int rowsAffected = ps.executeUpdate();
            if (rowsAffected!= 0) {
                success = true;
            }

        } catch (SQLException e) {
            System.out.println("editProduct error: " + e);
        } finally {
            if (ps!= null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    System.out.println("SQLException" + e.getMessage());
                }
            }
            if (conn!= null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.out.println("SQLException" + e.getMessage());
                }
            }
        }
        return success;
    }
}
