package com.techbuzzer.login.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class NewUserDao {

    public boolean addRegister (
        String userName,
        String userID,
        String accessCode) throws ClassNotFoundException {
        
        
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;
        
        try {
            
            String query = "INSERT INTO users ("
                    + "userName,"
                    + "userID,"
                    + "accessCode)"
                    + "VALUES (?, ?, ?)";
            
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
            ps.setString(2, userID);
            ps.setString(3, accessCode);
            
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
