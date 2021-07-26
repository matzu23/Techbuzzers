/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.techbuzzer.login.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author SEXY
 */
public class NewItemDao {
    public boolean addItem (
        String product_name,
        String product_category,
        String product_brand,
        int product_stock) throws ClassNotFoundException {
        
        
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;
        
        try {
            
            String query = "INSERT INTO items ("
                    + "product_name,"
                    + "product_category,"
                    + "product_brand,"
                    + "product_stock)"
                    + "VALUES (?, ?, ?, ?)";
            
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, product_name);
            ps.setString(2, product_category);
            ps.setString(3, product_brand);
            ps.setInt(4, product_stock);
            
            int rowsAffected = ps.executeUpdate();
            if (rowsAffected != 0) {
                success = true;
            }
            
            conn.close();
            
        } catch (SQLException e) {
            System.out.println("SQLException: " + e);
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
