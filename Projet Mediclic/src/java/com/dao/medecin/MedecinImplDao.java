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
    private static final String SQL_INSERT = "INSERT INTO medecins(nom, prenom, specialite, numpro, coordonnes, facturation, "
            + "lieuTravail, sexe, mail, password) VALUES(?,?,?,?,?,?,?,?,?,?)";
    private static final String SQL_DELETE = "DELETE FROM medecins WHERE id=?";
    private static final String SQL_UPDATE = "UPDATE medecins SET nom=?, prenom=?, specialite=?, numpro=?, coordonnes=?, "
            + "facturation=?, lieuTravail=?, mail=?, password=? WHERE id=?";

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
            medecin.setLieuTravail(resultat.getString("lieuTravail"));
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
                medecin.setId(resultat.getInt("id"));
                medecin.setNom(resultat.getString("nom"));
                medecin.setPrenom(resultat.getString("prenom"));
                medecin.setSpecialite(resultat.getString("specialite"));
                medecin.setNumpro(resultat.getString("numpro"));
                medecin.setCoordonnes(resultat.getString("coordonnes"));
                medecin.setFacturation(resultat.getDouble("facturation"));
                medecin.setLieuTravail(resultat.getString("lieuTravail"));
                medecin.setSexe(resultat.getString("sexe"));
                medecin.setMail(resultat.getString("mail"));
                medecin.setPassword(resultat.getString("password"));
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(MedecinImplDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        ConnexionBD.closeConnection();
        return medecin;
    }

    @Override
    public boolean create(Medecin medecin) {
        boolean retour = false;
        int nbLigne = 0;
        PreparedStatement ps;
        try {
            
            ps = ConnexionBD.getConnection().prepareStatement(SQL_INSERT);
            
            ps.setString(1, medecin.getNom());
            ps.setString(2, medecin.getPrenom());
            ps.setString(3, medecin.getSpecialite());
            ps.setString(4, medecin.getNumpro());
            ps.setString(5, medecin.getCoordonnes());
            ps.setDouble(6, medecin.getFacturation());
            ps.setString(7, medecin.getLieuTravail());
            ps.setString(8, medecin.getSexe());
            ps.setString(9, medecin.getMail());
            ps.setString(10, medecin.getPassword());
            
            nbLigne = ps.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(MedecinImplDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        if(nbLigne > 0) {
            retour = true;
        }
        ConnexionBD.closeConnection();
        return retour;
        
    }

    @Override
    public boolean delete(int id) {
        boolean retour = false;
        int nbLigne = 0;
        PreparedStatement ps;
        try {
            ps = ConnexionBD.getConnection().prepareStatement(SQL_DELETE);
            ps.setInt(1, id);

            nbLigne = ps.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        if (nbLigne > 0) {
            retour = true;
        }
        ConnexionBD.closeConnection();
        return retour;
    }

    @Override
    public boolean update(Medecin medecin) {
        boolean retour = false;
        int nbLigne = 0;
        PreparedStatement ps;
        try {
            ps = ConnexionBD.getConnection().prepareStatement(SQL_UPDATE);

            ps.setString(1, medecin.getNom());
            ps.setString(2, medecin.getPrenom());
            ps.setString(3, medecin.getSpecialite());
            ps.setString(4, medecin.getNumpro());
            ps.setString(5, medecin.getCoordonnes());
            ps.setDouble(6, medecin.getFacturation());
            ps.setString(7, medecin.getLieuTravail());
            ps.setString(8, medecin.getMail());
            ps.setString(9, medecin.getPassword());
            ps.setInt(10, medecin.getId());

            nbLigne = ps.executeUpdate();

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            Logger.getLogger(MedecinImplDao.class.getName()).log(Level.SEVERE, null, e);
        }

        if (nbLigne > 0) {
            retour = true;
        }
        ConnexionBD.closeConnection();
        return retour;
    }
    
   
    
}
