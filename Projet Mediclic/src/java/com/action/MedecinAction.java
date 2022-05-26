/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.action;

import com.dao.medecin.MedecinImplDao;
import com.model.medecin.Medecin;
import java.util.List;

/**
 *
 * @author Mohand
 */
public class MedecinAction {
    
    private static MedecinImplDao dao = new MedecinImplDao();
    
    public static List<Medecin> afficherTousMedecins() {
        List<Medecin> listeMedecin = dao.findAll();
        return listeMedecin;
    }
    
    public static Medecin connexionMedecin(String email, String password) {
        Medecin medecin = dao.isExiste(email, password);
        return medecin;
    }
    
    public static boolean inscriptionMedecin(Medecin medecin) {
        boolean succes = dao.create(medecin);
        return succes;
    }
    
    public static boolean supprimerMedecin(int id) {
        boolean succes = dao.delete(id);
        return succes;
    }
    
    public static boolean misajourMedecin(Medecin medecin) {
        boolean succes = dao.update(medecin);
        return succes;
    }
    
}
