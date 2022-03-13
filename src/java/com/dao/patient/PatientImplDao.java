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

    @Override
    public List<Patient> findAll() {
                         List<Patient> listePatient = null; 
        try {
   
            
            PreparedStatement ps = ConnexionBD.getConnection().prepareStatement("select * from patients");
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
       return listePatient; 
    }
    
}
