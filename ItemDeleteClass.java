/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.techbuzzer.login.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class ItemDeleteClass {
    public boolean deleteItem (int id) throws ClassNotFoundException {
        
        
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;
        
        try {
            
            String query = "DELETE FROM items WHERE id = ?";
            
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            
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
