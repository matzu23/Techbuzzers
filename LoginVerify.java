/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.techbuzzer.login.dao;

import com.lambdaworks.crypto.SCryptUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author SEXY
 */
public class LoginVerify {

    public boolean accountVerify(
            String userID,
            String accessCode) throws ClassNotFoundException {

        boolean verify = false;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {

            String query = "SELECT * from users WHERE userID = ?";

            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userID);
            rs = ps.executeQuery();
            rs.next();

            boolean match = SCryptUtil.check(accessCode, rs.getString("accessCode"));

            boolean check;
            check = accessCode == rs.getString("accessCode");
            if (match) {
                verify = true;
            }

            System.out.println("Input: " + accessCode);
            System.out.println("DB Result: " + rs.getString("accessCode"));
            System.out.println("Bool: " + verify);

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

        return verify;

    }
}
