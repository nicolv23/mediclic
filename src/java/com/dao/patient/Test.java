/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao.patient;

import com.dao.patient.PatientImplDao;
import com.model.patient.Patient;
import com.model.patient.GestionPatient;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Mohand
 */
public class Test {
    public static void main(String[] args){

            PatientImplDao test = new PatientImplDao();
            List<Patient>listePatient = new ArrayList<>();
            listePatient = test.findAll();

            for(Patient patient : listePatient){
                System.out.println(patient.getNom());
            }
            
    
    }
    
}
