/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model.clinique;

/**
 *
 * @author Joma_
 */
public class Clinique {
    
    private int id;
    private String nom;
    private String coordonnees;
    private String services;

    public Clinique() {
    }

    public Clinique(int id, String nom, String coordonnees, String services) {
        this.id = id;
        this.nom = nom;
        this.coordonnees = coordonnees;
        this.services = services;
    }

    public Clinique(String nom, String coordonnees, String services) {
        this.nom = nom;
        this.coordonnees = coordonnees;
        this.services = services;
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

    public String getCoordonnees() {
        return coordonnees;
    }

    public void setCoordonnees(String coordonnees) {
        this.coordonnees = coordonnees;
    }

    public String getServices() {
        return services;
    }

    public void setServices(String services) {
        this.services = services;
    }
    
    
    
}
