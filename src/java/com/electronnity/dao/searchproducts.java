/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.electronnity.dao;

import com.electronnity.model.productmodel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class SearchProducts {

    public ArrayList<productmodel> getAllProduct() throws ClassNotFoundException {
        ArrayList<productmodel> allProducts = new ArrayList<>();

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
                    + "FROM electronnity.productinfo";

            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                productmodel product = new productmodel();
                product.setProductId(rs.getString("productid"));
                product.setProductName(rs.getString("productname"));
                product.setDescription(rs.getString("description"));
                product.setSize(rs.getString("size"));
                product.setPrice(rs.getBigDecimal("price"));
                product.setQuantity(rs.getInt("quantity"));
                allProducts.add(product);
            }
            
            conn.close();

        } catch (SQLException e) {
            
            System.out.println("getAllProducts error: " + e);

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
            return allProducts;
        } 
    }
}
