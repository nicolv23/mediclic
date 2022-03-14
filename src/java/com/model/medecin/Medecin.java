/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model.medecin;

/**
 *
 * @author Nicolas Lazarte
 */
public class Medecin {
    
    private int id;
    private String nom;
    private String prenom;
    private String specialite;
    private String numpro;
    private String coordonnes;
    private double facturation;
    private String sexe;
    private String mail;
    private String password;

   
    public Medecin(){
        
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

   
    public String getSexe() {
        return sexe;
    }

    public void setSexe(String sexe) {
        this.sexe = sexe;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSpecialite() {
        return specialite;
    }

    public void setSpecialite(String specialite) {
        this.specialite = specialite;
    }

    public String getNumpro() {
        return numpro;
    }

    public void setNumpro(String numpro) {
        this.numpro = numpro;
    }

    public String getCoordonnes() {
        return coordonnes;
    }

    public void setCoordonnes(String coordonnes) {
        this.coordonnes = coordonnes;
    }

    public Double getFacturation() {
        return facturation;
    }

    public void setFacturation(Double facturation) {
        this.facturation = facturation;
    }
    
    
    
    
}
