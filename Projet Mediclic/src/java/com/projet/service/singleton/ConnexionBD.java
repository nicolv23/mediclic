/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.projet.service.singleton;

import com.projet.config.ConfigBD;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnexionBD implements ConfigBD{
    private static Connection conn = null;
    	public static Connection getConnection() throws SQLException{
		try {
                    
			Class.forName(ConfigBD.DRIVER);


	    conn = DriverManager.getConnection(ConfigBD.URL, ConfigBD.USER, ConfigBD.PASSWORD);

		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}

		return conn;
	}
	
	public static void closeConnection(){
		try {
			conn.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}		
	}
    
}
