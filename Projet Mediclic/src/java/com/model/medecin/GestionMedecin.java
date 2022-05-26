/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model.medecin;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Nicolas Lazarte
 */
public class GestionMedecin {
    public  List<Medecin> listeMedecins;

    public GestionMedecin() {    
        listeMedecins = new ArrayList();
    }
    
    public void ajouterMedecin(Medecin medecin){
        listeMedecins.add(medecin);
    }
    
    public void supprimerMedecin(int indice){
        Medecin eclasse = null;
        
        if(indice < listeMedecins.size()){
            eclasse = (Medecin) listeMedecins.get(indice);
        }
        
        if(eclasse!=null){
            listeMedecins.remove(indice);
            System.out.println(eclasse.getNom() + " a ete supprime");
        }
        else{
            System.out.println(" Le medecin numero " + indice + " n'existe pas dans la liste");
        }
    }
    
    public Medecin chercherMedecinParID(int id){
       
        Medecin resulat = null;
        
        for(Medecin medecin : listeMedecins){
            if(medecin.getId() == id){
                resulat = medecin;
                break;
            }
            else{
                System.out.println("Ce medecin n'existe pas");
                
            }
        }
        return resulat;
    }
    
    public void afficherLesMedecins(){
        int nbMedecins = listeMedecins.size();
        
        if(nbMedecins > 0){
            for(Medecin medecin : listeMedecins){
                System.out.println(medecin);
            }
        }else{
            System.out.println("La liste des medecins est vide");
        }
    }
    
    public List<Medecin> getListeMedecins(){
        return listeMedecins;
    }
}
