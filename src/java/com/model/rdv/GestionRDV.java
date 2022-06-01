/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model.rdv;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Mohand
 */
public class GestionRDV {
    public  List<RDV> listeRendezVous;
    
        
    public GestionRDV(){

        listeRendezVous = new ArrayList();

    
    }
    
        public void ajouterRDV(RDV rendezvous){
        listeRendezVous.add(rendezvous);
    }

       public void supprimerRDV(int indice) {

      RDV eclasse=null;
      if(indice < listeRendezVous.size()){
        eclasse = (RDV) listeRendezVous.get(indice);
      }
        if (eclasse != null) {
            listeRendezVous.remove(indice);
            System.out.println(eclasse.getId()+ " a été supprime ");

        } else {
            System.out.println( " Le rendez-vous numéro " + indice + " n'existe pas");
        }

    }
       
      public RDV chercherRDVByID(int id) {
   
      RDV resultat = null;
        for (RDV rdv : listeRendezVous) {
             if (rdv.getId()==id) {
                 resultat = rdv;
               
                break;
                
            } else {
                 System.out.println("Le rendez-vous n'existe pas");
            }
        }
       return resultat;
    }
      
      public void afficherLesRDV(){
      int nbRDV  = listeRendezVous.size(); 
        if (nbRDV>0) {
            for (RDV rdv : listeRendezVous) {
                 System.out.println(rdv);
            }
            
        }else{
            System.out.println("La liste des rendez-vous est vide");
        }
    }

    public List<RDV> getListeRDV() {
        return listeRendezVous;
    }
      
      
      
    
}
