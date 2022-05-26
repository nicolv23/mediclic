/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao.admin;

import com.model.admin.Administrateur;
import com.projet.service.singleton.ConnexionBD;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Joma_
 */
public class AdministrateurImplDao implements AdministrateurDao {
    
    private static final String SQL_CONNEXION = "SELECT * FROM administrateurs WHERE mail=? AND password=?";

    @Override
    public Administrateur isExiste(String email, String password) {
        Administrateur administrateur = null;
        try{
            
            PreparedStatement ps = ConnexionBD.getConnection().prepareStatement(SQL_CONNEXION);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet resultat = ps.executeQuery();
            
            while(resultat.next()){
                
                administrateur = new Administrateur();
                administrateur.setId(resultat.getInt("id"));
                administrateur.setNom(resultat.getString("nom"));
                administrateur.setPrenom(resultat.getString("prenom"));
                administrateur.setMail(resultat.getString("mail"));
                administrateur.setPassword(resultat.getString("password"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AdministrateurImplDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        ConnexionBD.closeConnection();
        return administrateur;
    }
    
}
