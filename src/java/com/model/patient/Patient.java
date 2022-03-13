/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model.patient;

/**
 *
 * @author Mohand
 */
public class Patient {
    private int id;
    private String nom;
    private String prenom;
    private String assurance;
    private String naissance;
    private String sexe;
    private String mail;
    private String password;


    public Patient() {

    }

    public int getId() {
        return id;
    }

    public String getNom() {
        return nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public String getAssurance() {
        return assurance;
    }

    public String getNaissance() {
        return naissance;
    }

    public String getSexe() {
        return sexe;
    }

    public String getMail() {
        return mail;
    }

    public String getPassword() {
        return password;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }
    public void setID(int id){
        this.id = id;
    }
    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public void setAssurance(String assurance) {
        this.assurance = assurance;
    }

    public void setNaissance(String naissance) {
        this.naissance = naissance;
    }

    public void setSexe(String sexe) {
        this.sexe = sexe;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    
    
    
}
