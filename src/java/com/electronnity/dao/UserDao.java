/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.electronnity.dao;

import com.electronnity.model.UserModel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Aaron
 */

public class UserDao {

    public ArrayList<UserModel> getUserList() throws ClassNotFoundException {
        ArrayList<UserModel> userList = new ArrayList<>();
        Connection conn  = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "select * from clientinfo";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                UserModel user = new UserModel();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                user.setFirstName(rs.getString("firstname"));
                user.setMiddleName(rs.getString("middlename"));
                user.setLastName(rs.getString("lastname"));
                user.setAddress(rs.getString("address"));
                user.setBirthday(rs.getString("birthday"));
                user.setNumber(rs.getString("number"));
                user.setUserType(rs.getString("usertype"));
                user.setAttempts(rs.getString("attempts"));
                userList.add(user);
            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("getUserList Error: " + e); 
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            
        }
        return userList;
    }
    
    public UserModel getUserDetails(int id) throws ClassNotFoundException {
        UserModel userDetails = null;
        Connection conn  = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = ""
                + "select id, "
                + "username, "
                + "password, "
                + "email, "
                + "firstname, "
                + "middlename, "
                + "lastname, "
                + "address, "
                + "birthday, "
                + "number, "
                + "usertype, "
                + "attempts "
                + "from clientinfo "
                + "where id = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                id = rs.getInt("id");
                String username = rs.getString("username");
                String password = rs.getString("password");
                String email = rs.getString("email");
                String firstname = rs.getString("FirstName");
                String middlename = rs.getString("MiddleName");
                String lastname = rs.getString("LastName");
                String address = rs.getString("address");
                String birthday = rs.getString("birthday");
                String number = rs.getString("number");
                String usertype = rs.getString("usertype");
                String attempts = rs.getString("attempts");
                userDetails = new UserModel(id, username, password, email, firstname, middlename, lastname, address, birthday, number, usertype, attempts);
            }
        } catch (SQLException e) {
            System.out.println("getUserDetails Error: " + e); 
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            
        }
        return userDetails;
    }
    
    public boolean createUser(UserModel user) throws ClassNotFoundException {
        boolean success = false;
        Connection conn  = null;
        PreparedStatement ps = null;
        String query = "insert into clientinfo ("
                + "username, "
                + "password, "
                + "email, "
                + "firstname, "
                + "middlename, "
                + "lastname, "
                + "address, "
                + "birthday, "
                + "number, "
                + "usertype) "
                + "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getFirstName());
            ps.setString(5, user.getMiddleName());
            ps.setString(6, user.getLastName());
            ps.setString(7, user.getAddress());
            ps.setString(8, user.getBirthday());
            ps.setString(9, user.getNumber());
            ps.setString(10, user.getUserType());
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("createEmployee Error: " + e); 
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            
        }
        return success;
    }
    
    public boolean updateUser(UserModel user) throws ClassNotFoundException {
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;
        String query = "update clientinfo set username = ?, email = ?, firstname = ?, middlename = ?, lastname = ?, address = ?, birthday = ?, number = ?, usertype = ?, attempts = ? where id = ?";
        try {
            conn = ConnectionPool.getConnection();
            conn.setAutoCommit(false); // Start transaction

            // Update the password only if a new password is provided
            if (user.getPassword() != null && !user.getPassword().isEmpty()) {
                query = "update clientinfo set username = ?, password = ?, email = ?, firstname = ?, middlename = ?, lastname = ?, address = ?, birthday = ?, number = ?, usertype = ?, attempts = ? where id = ?";
            }

            ps = conn.prepareStatement(query);
            ps.setString(1, user.getUsername());

            if (user.getPassword() != null && !user.getPassword().isEmpty()) {
                ps.setString(2, user.getPassword());
                ps.setString(3, user.getEmail());
                ps.setString(4, user.getFirstName());
                ps.setString(5, user.getMiddleName());
                ps.setString(6, user.getLastName());
                ps.setString(7, user.getAddress());
                ps.setString(8, user.getBirthday());
                ps.setString(9, user.getNumber());
                ps.setString(10, user.getUserType());
                ps.setString(11, user.getAttempts());
                ps.setInt(12, user.getId());
            } else {
                ps.setString(2, user.getEmail());
                ps.setString(3, user.getFirstName());
                ps.setString(4, user.getMiddleName());
                ps.setString(5, user.getLastName());
                ps.setString(6, user.getAddress());
                ps.setString(7, user.getBirthday());
                ps.setString(8, user.getNumber());
                ps.setString(9, user.getUserType());
                ps.setString(10, user.getAttempts());
                ps.setInt(11, user.getId());
            }

            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                conn.commit(); // Commit transaction
                success = true;
            } else {
                conn.rollback(); // Rollback transaction
            }
        } catch (SQLException e) {
            System.out.println("updateUser Error: " + e);
            try {
                conn.rollback(); // Rollback transaction
            } catch (SQLException e1) {
                // ignore
            }
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    // ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    // ignore
                }
            }
        }
        return success;
    }
    
    public boolean deleteUser(int id) throws ClassNotFoundException {
        boolean success = false;
        Connection conn  = null;
        PreparedStatement ps = null;
        String query = "delete from clientinfo "
                + "where id = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("deleteUser Error: " + e); 
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            
        }
        return success;
    }
}