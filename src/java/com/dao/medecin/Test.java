/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao.medecin;

import com.dao.medecin.MedecinImplDao;
import com.model.medecin.Medecin;
import com.model.patient.GestionPatient;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Mohand
 */
public class Test {
    public static void main(String[] args){

            MedecinImplDao test = new MedecinImplDao();
            List<Medecin>listeMedecin = new ArrayList<>();
            listeMedecin = test.findAll();

            for(Medecin medecin : listeMedecin){
                System.out.println(medecin.getNom());
            }
            
    
    }
    
}
