/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao.medecin;

import com.model.medecin.Medecin;
import com.projet.service.singleton.ConnexionBD;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nicolas Lazarte
 */
public class MedecinImplDao implements MedecinDao{

    private static final String SQL_SELECT = "SELECT * FROM medecins";
    private static final String SQL_CONNEXION = "SELECT * FROM medecins WHERE mail=? AND password=?";
    

    @Override
    public List<Medecin> findAll() {
                         List<Medecin> listeMedecin = null;
                         
    try {
        
        PreparedStatement ps = ConnexionBD.getConnection().prepareStatement(SQL_SELECT);
        ResultSet resultat = ps.executeQuery();
        
        listeMedecin = new ArrayList<>();
        
        while (resultat.next()) {
            
            Medecin medecin = new Medecin();
            medecin.setId(resultat.getInt("id"));
            medecin.setNom(resultat.getString("nom"));
            medecin.setPrenom(resultat.getString("prenom"));
            medecin.setSpecialite(resultat.getString("specialite"));
            medecin.setNumpro(resultat.getString("numpro"));
            medecin.setCoordonnes(resultat.getString("coordonnes"));
            medecin.setFacturation(resultat.getDouble("facturation"));
            medecin.setSexe(resultat.getString("sexe"));
            medecin.setMail(resultat.getString("mail"));
            medecin.setPassword(resultat.getString("password"));
            listeMedecin.add(medecin);
            
        }
            
            
            
    }   catch (SQLException ex) {
            Logger.getLogger(MedecinImplDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        ConnexionBD.closeConnection();
        return listeMedecin;
    }

    @Override
    public Medecin isExiste(String email, String password) {
        Medecin medecin = null;
        try{
            
            PreparedStatement ps = ConnexionBD.getConnection().prepareStatement(SQL_CONNEXION);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet resultat = ps.executeQuery();
            
            while(resultat.next()){
                
                medecin = new Medecin();
                medecin.setNom(resultat.getString("nom"));
                medecin.setPrenom(resultat.getString("prenom"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(MedecinImplDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        ConnexionBD.closeConnection();
        return medecin;
    }
    
   
    
}
