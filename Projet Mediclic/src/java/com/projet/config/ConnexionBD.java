/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.projet.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Nicolas Lazarte
 */
public class ConnexionBD {
  

	public class DatabaseConnection {
	    private String url = "jdbc:mysql://localhost:5580/mediclic";
	    private String username = "root";
	    private String password = "root";
	    
	    public DatabaseConnection() {
	    	try {
	            Class.forName("com.mysql.jdbc.Driver");
	        } catch(ClassNotFoundException e) {
	            System.out.println("ERROR: Exception loading driver class");
	        }

	    }
 
		@SuppressWarnings("finally")
		public Connection getConnection() {
	        Connection dbCon = null;
	        try {
	            dbCon = DriverManager.getConnection(url, username, password);
	        } catch (SQLException e) {
	            System.err.println("Exception creating Connection object");
	        } finally {
	            return dbCon;
	        }
	        
	    }
        }
        
        public static void closeJDBCObjects(Connection conn, Statement stmt, ResultSet rs) {
	        try {
	            if (rs != null) {
	                rs.close();
	            }
	            
	            if (stmt != null) {
	                stmt.close();
	            }
	            
	            if (conn != null) {
	                conn.close();
	            }
	        } catch (SQLException ignored) {
	        }
	    }
	    
	    public static void closeJDBCObjects(Connection conn, Statement stmt) {
	        closeJDBCObjects(conn, stmt, null);
	    }
	}

    
