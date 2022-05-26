/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.action;

import com.dao.clinique.CliniqueImplDao;
import com.model.clinique.Clinique;
import java.util.List;

/**
 *
 * @author Joma_
 */
public class CliniqueAction {
    
    private static CliniqueImplDao dao = new CliniqueImplDao();
    
    public static List<Clinique> afficherTousCliniques() {
        List<Clinique> listeClinique = dao.findAll();
        return listeClinique;
    }
    
    public static boolean supprimerClinique(int id) {
        boolean succes = dao.delete(id);
        return succes;
    }
    
    public static boolean misajourClinique(Clinique clinique) {
        boolean succes = dao.update(clinique);
        return succes;
    }
    
    public static boolean ajouterClinique(Clinique clinique) {
        boolean succes = dao.create(clinique);
        return succes;
    }
    
    public static Clinique rechercherCliniqueParId(int id) {
        Clinique clinique = dao.findById(id);
        return clinique;
    }
    
}
