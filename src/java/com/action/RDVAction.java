/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.action;

import com.dao.rdv.RDVImplDao;
import com.model.rdv.RDV;
import java.util.List;

/**
 *
 * @author Joma_
 */
public class RDVAction {
    
    private static RDVImplDao dao = new RDVImplDao();
    
    public static List<RDV> afficherTousLesRDV() {
        List<RDV> listeRDV = dao.findAll();
        return listeRDV;
    }
    
    public static RDV chercherRDV(String nomPatient, String nomMedecin) {
        RDV rdv = dao.isExiste(nomPatient, nomMedecin);
        return rdv;
    }
    
    public static boolean ajoutRDV(RDV rdv) {
        boolean succes = dao.create(rdv);
        return succes;
    }
    
    public static boolean supprimerRDV(int id) {
        boolean succes = dao.delete(id);
        return succes;
    }
    
    public static boolean updateRDV(RDV rdv) {
        boolean succes = dao.update(rdv);
        return succes;
    }
    
     public static RDV FindByID(int id) {
        RDV rdv = dao.findById(id);
        return rdv;
    }
    

}
