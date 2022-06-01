/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model.rdv;

/**
 *
 * @author Mohand
 */
public class RDV {
    private int id;
    private String nomPatient;
    private String nomMedecin;
    private String date;
    private String adresse;



    public RDV() {

    }

    public RDV(String nomP, String nomM, String date, String adresse) {
        this.nomPatient = nomP;
        this.nomMedecin = nomM;
        this.date = date;
        this.adresse = adresse;
    }


    
    

    public int getId() {
        return id;
    }

    public String getNomPatient() {
        return nomPatient;
    }

    public String getNomMedecin() {
        return nomMedecin;
    }

    public String getAdresse() {
        return adresse;
    }

    public String getDate() {
        return date;
    }


    public void setNomPatient(String nom) {
        this.nomPatient = nom;
    }
    public void setID(int id){
        this.id = id;
    }
    public void setNomMedecin(String nom) {
        this.nomMedecin = nom;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public void setDate(String date) {
        this.date = date;
    }


    
    
    
}
