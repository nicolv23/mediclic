/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.action;

import com.dao.patient.PatientImplDao;
import com.model.patient.Patient;
import java.util.List;

/**
 *
 * @author Joma_
 */
public class PatientAction {
    
    private static PatientImplDao dao = new PatientImplDao();
    
    public static List<Patient> afficherTousPatients() {
        List<Patient> listePatient = dao.findAll();
        return listePatient;
    }
    
    public static Patient connexionPatient(String email, String password) {
        Patient patient = dao.isExiste(email, password);
        return patient;
    }
    
    public static boolean inscriptionPatient(Patient patient) {
        boolean succes = dao.create(patient);
        return succes;
    }
    
    public static boolean supprimerPatient(int id) {
        boolean succes = dao.delete(id);
        return succes;
    }
    
    public static boolean misajourPatient(Patient patient) {
        boolean succes = dao.update(patient);
        return succes;
    }
    
     public static Patient rechercherPatientParId(int id) {
        Patient patient = dao.findById(id);
        return patient;
    }
    

}
