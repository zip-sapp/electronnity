/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.electronnity.dao;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class product {
    
    public boolean createProduct (
        String productid,
        String productname,
        String description,
        String size,
        BigDecimal price,
        int quantity) throws ClassNotFoundException {
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;

        try {
            String query = "INSERT INTO productinfo ("
                    + "productid,"
                    + "productname,"
                    + "description,"
                    + "size,"
                    + "price,"
                    + "quantity) "
                    + "VALUES (?, ?, ?, ?, ?, ?)";

            conn = connect.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productid);
            ps.setString(2, productname);
            ps.setString(3, description);
            ps.setString(4, size);
            ps.setBigDecimal(5, price);
            ps.setInt(6, quantity);

            int rowsAffected = ps.executeUpdate();
            if (rowsAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("SQLException: " + e.getMessage());
            throw new RuntimeException(e); // Rethrow the exception
        } finally {
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    System.out.println("SQLException: " + e.getMessage());
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.out.println("SQLException: " + e.getMessage());
                }
            }
        }
        return success;
    }
}
