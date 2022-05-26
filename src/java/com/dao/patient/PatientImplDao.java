/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao.patient;

import com.model.patient.Patient;
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
 * @author Mohand
 */
public class PatientImplDao implements PatientDao{
    
    private static final String SQL_SELECT = "SELECT * FROM patients";
    private static final String SQL_CONNEXION = "SELECT * FROM patients WHERE mail=? AND password=?";
    private static final String SQL_INSERT = "INSERT INTO patients(nom, prenom, assurance, naissance, sexe, mail, password) "
            + "VALUES(?, ?, ?, ?, ?, ?, ?)";
    private static final String SQL_DELETE = "DELETE FROM patients WHERE id=?";
    private static final String SQL_UPDATE = "UPDATE patients SET nom=?, prenom=?, assurance=?, naissance=?, mail=?, "
            + "password=? WHERE id=?";
    private static final String SQL_SELECT_ID = "SELECT * FROM patients WHERE id=?";
    @Override
    public List<Patient> findAll() {
                         List<Patient> listePatient = null; 
        try {
   
            
            PreparedStatement ps = ConnexionBD.getConnection().prepareStatement(SQL_SELECT);
            ResultSet result = ps.executeQuery();
            
            listePatient = new ArrayList<>();
            
            while (result.next()) {
                
                Patient patient = new Patient();
                patient.setID(result.getInt("id") );
                patient.setNom(result.getString("nom"));
                patient.setPrenom(result.getString("prenom"));
                patient.setAssurance(result.getString("assurance"));
                patient.setNaissance(result.getString("naissance"));
                patient.setSexe(result.getString("sexe"));
                patient.setMail(result.getString("mail"));
                patient.setPassword(result.getString("password"));
                listePatient.add(patient);
                
                
                
            }
            
            
       
        } catch (SQLException ex) {
            Logger.getLogger(PatientImplDao.class.getName()).log(Level.SEVERE, null, ex);
        }
       ConnexionBD.closeConnection();
       return listePatient; 
    }

    @Override
    public Patient isExiste(String email, String password) {
        Patient patient = null;
        try {
            
            PreparedStatement ps = ConnexionBD.getConnection().prepareStatement(SQL_CONNEXION);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet result = ps.executeQuery();
            
            while(result.next()) {
                patient = new Patient();
                patient.setID(result.getInt("id") );
                patient.setNom(result.getString("nom"));
                patient.setPrenom(result.getString("prenom"));
                patient.setAssurance(result.getString("assurance"));
                patient.setNaissance(result.getString("naissance"));
                patient.setSexe(result.getString("sexe"));
                patient.setMail(result.getString("mail"));
                patient.setPassword(result.getString("password"));
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(PatientImplDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        ConnexionBD.closeConnection();
        return patient;
    }

    @Override
    public boolean create(Patient patient) {
        boolean retour = false;
        int nbLigne = 0;
        PreparedStatement ps;
        try {
            
            ps = ConnexionBD.getConnection().prepareStatement(SQL_INSERT);
            
            ps.setString(1, patient.getNom());
            ps.setString(2, patient.getPrenom());
            ps.setString(3, patient.getAssurance());
            ps.setString(4, patient.getNaissance());
            ps.setString(5, patient.getSexe());
            ps.setString(6, patient.getMail());
            ps.setString(7, patient.getPassword());
            
            nbLigne = ps.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(PatientImplDao.class.getName()).log(Level.SEVERE, null, ex);
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
    public boolean update(Patient patient) {
        boolean retour = false;
        int nbLigne = 0;
        PreparedStatement ps;
        try {
            ps = ConnexionBD.getConnection().prepareStatement(SQL_UPDATE);

            ps.setString(1, patient.getNom());
            ps.setString(2, patient.getPrenom());
            ps.setString(3, patient.getAssurance());
            ps.setString(4, patient.getNaissance());
            ps.setString(5, patient.getMail());
            ps.setString(6, patient.getPassword());
            ps.setInt(7, patient.getId());

            nbLigne = ps.executeUpdate();

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            Logger.getLogger(PatientImplDao.class.getName()).log(Level.SEVERE, null, e);
        }

        if (nbLigne > 0) {
            retour = true;
        }
        ConnexionBD.closeConnection();
        return retour;
    }
    
        @Override
    public Patient findById(int id) {
        Patient patient = null; 
        try {
   
            
            PreparedStatement ps = ConnexionBD.getConnection().prepareStatement(SQL_SELECT_ID);
            ps.setInt(1, id);
            ResultSet result = ps.executeQuery();
            
            while (result.next()) {
                
                patient = new Patient();
                patient.setID(result.getInt("id") );
                patient.setNom(result.getString("nom"));
                patient.setPrenom(result.getString("prenom"));
                patient.setAssurance(result.getString("assurance"));
                patient.setNaissance(result.getString("naissance"));
                patient.setSexe(result.getString("sexe"));
                patient.setMail(result.getString("mail"));
                patient.setPassword(result.getString("password"));
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(PatientImplDao.class.getName()).log(Level.SEVERE, null, ex);
        }
       ConnexionBD.closeConnection();
       return patient; 
    }

}
