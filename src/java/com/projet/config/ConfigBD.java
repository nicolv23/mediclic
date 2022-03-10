/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.projet.config;

import java.sql.Connection;

/**
 *
 * @author dahamada
 */
public interface ConfigBD {
    //  Définir l’url de connexion avec le nom de la base donnée
	public final static String URL = "jdbc:mysql://127.0.0.1:3306/NOMDELABD?serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false";
        //Les identifiants de connection de la bd
	public final static String USER = "root";
	public final static String PASSWORD = "root";
        public final static String DRIVER="com.mysql.cj.jdbc.Driver";
	
    
}
