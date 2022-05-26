/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model.patient;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Mohand
 */
public class GestionPatient {
    public  List<Patient> listePatient;
    
        
    public GestionPatient(){

        listePatient = new ArrayList();

    
    }
    
        public void ajouterUnPatient(Patient patient){
        listePatient.add(patient);
    }

       public void supprimerUnPatient(int indice) {

      Patient eclasse=null;
      if(indice < listePatient.size()){
        eclasse = (Patient) listePatient.get(indice);
      }
        if (eclasse != null) {
            listePatient.remove(indice);
            System.out.println(eclasse.getNom()+ " a été supprime ");

        } else {
            System.out.println( " Le patient numéro " + indice + " n'existe pas");
        }

    }
       
      public Patient chercherPatientByID(int id) {
   
      Patient resultat = null;
        for (Patient patient : listePatient) {
             if (patient.getId()==id) {
                 resultat = patient;
               
                break;
                
            } else {
                 System.out.println("Le patient n'existe pas");
            }
        }
       return resultat;
    }
      
      public void afficherLesPatients(){
      int nbPatients  = listePatient.size(); 
        if (nbPatients>0) {
            for (Patient patient : listePatient) {
                 System.out.println(patient);
            }
            
        }else{
            System.out.println("La liste des patients est vide");
        }
    }

    public List<Patient> getListePatient() {
        return listePatient;
    }
      
      
      
    
}
