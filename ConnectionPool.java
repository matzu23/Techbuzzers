/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.techbuzzer.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author AERON-PC
 */
public class ConnectionPool {
    static Connection conn;

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        try {

            String driver = "com.mysql.cj.jdbc.Driver";
            Class.forName(driver);

            String url = "jdbc:mysql://localhost:3306/techbuzzer?serverTimezone=UTC";
            conn = (Connection) DriverManager.getConnection(url, "root", "darkwater23");

        } catch (SQLException e) {
            System.out.println("SQLException: " + e.getMessage());
        }
        return conn;

    }
}