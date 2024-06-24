/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.electronnity.dao;

import com.electronnity.model.productmodel;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class product {
    private final String jdbcURL;
    private final String jdbcUsername;
    private final String jdbcPassword;
    private Connection jdbcConnection;

    public product(String jdbcURL, String jdbcUsername, String jdbcPassword) {
        this.jdbcURL = jdbcURL;
        this.jdbcUsername = jdbcUsername;
        this.jdbcPassword = jdbcPassword;
    }

    private void connect() throws SQLException {
        if (jdbcConnection == null || jdbcConnection.isClosed()) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                throw new SQLException(e);
            }
            jdbcConnection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        }
    }

    private void disconnect() throws SQLException {
        if (jdbcConnection!= null &&!jdbcConnection.isClosed()) {
            jdbcConnection.close();
        }
    }

    public boolean insertproductmodel(productmodel productmodel) throws SQLException {
        String sql = "INSERT INTO product (productname, description, size, price, quantity) VALUES (?,?,?,?,?)";
        try {
            connect();
            try (PreparedStatement statement = jdbcConnection.prepareStatement(sql)) {
                statement.setString(1, productmodel.getProductName());
                statement.setString(2, productmodel.getDescription());
                statement.setString(3, productmodel.getSize());
                statement.setBigDecimal(4, productmodel.getPrice());
                statement.setInt(5, productmodel.getQuantity());

                return statement.executeUpdate() > 0;
            }
        } finally {
            disconnect();
        }
    }

    public List<productmodel> listAllproductmodels() throws SQLException {
        List<productmodel> listproductmodels = new ArrayList<>();

        String sql = "SELECT * FROM productinfo";

        try {
            connect();
            try (PreparedStatement statement = jdbcConnection.prepareStatement(sql)) {
                try (ResultSet resultSet = statement.executeQuery()) {
                    while (resultSet.next()) {
                        int productid = resultSet.getInt("productid");
                        String productname = resultSet.getString("productname");
                        String description = resultSet.getString("description");
                        String size = resultSet.getString("size");
                        BigDecimal price = resultSet.getBigDecimal("price");
                        int quantity = resultSet.getInt("quantity");

                        productmodel productmodel = new productmodel(productid, productname, description, size, price, quantity);
                        listproductmodels.add(productmodel);
                    }
                }
            }
        } finally {
            disconnect();
        }

        return listproductmodels;
    }

    public boolean deleteproductmodel(productmodel productmodel) throws SQLException {
        String sql = "DELETE FROM productinfo where productid =?";

        try {
            connect();
            try (PreparedStatement statement = jdbcConnection.prepareStatement(sql)) {
                statement.setInt(1, productmodel.getProductId());
                return statement.executeUpdate() > 0;
            }
        } finally {
            disconnect();
        }
    }

    public boolean updateproductmodel(productmodel productmodel) throws SQLException {
        String sql = "UPDATE productinfo SET productname =?, description=?, size=?, price=?, quantity=? WHERE productid =?";
        try {
            connect();
            try (PreparedStatement statement = jdbcConnection.prepareStatement(sql)) {
                statement.setString(1, productmodel.getProductName());
                statement.setString(2, productmodel.getDescription());
                statement.setString(3, productmodel.getSize());
                statement.setBigDecimal(4, productmodel.getPrice());
                statement.setInt(5, productmodel.getQuantity());
                statement.setInt(6, productmodel.getProductId());

                return statement.executeUpdate() > 0;
            }
        } finally {
            disconnect();
        }
    }

    public productmodel getproductmodel(int productid) throws SQLException {
        productmodel productmodel = null;
        String sql = "SELECT * FROM productinfo WHERE productid =?";

        try {
            connect();
            try (PreparedStatement statement = jdbcConnection.prepareStatement(sql)) {
                statement.setInt(1, productid);
                try (ResultSet resultSet = statement.executeQuery()) {
                    if (resultSet.next()) {
                        String productname = resultSet.getString("productname");
                        String description = resultSet.getString("description");
                        String size = resultSet.getString("size");
                        BigDecimal price = resultSet.getBigDecimal("price");
                        int quantity = resultSet.getInt("quantity");

                        productmodel = new productmodel(productid, productname, description, size, price, quantity);
                    }
                }
            }
        } finally {
            disconnect();
        }

        return productmodel;
    }
}
