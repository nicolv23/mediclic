/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model.patient;

/**
 *
 * @author Nicolas Lazarte
 */
public class RendezVousPatient {
    
   private int id;
   private String nomPatient;
   private String raisonConsultation;
   private String date;
   private String duree;
   private int patientEnregistrer;

   public RendezVousPatient() {
      super();
   }

   public RendezVousPatient(int id, String nomPatient, String raisonConsultation, String date, String duree,
         int patientEnregistrer) {
      super();
      this.id = id;
      this.nomPatient = nomPatient;
      this.raisonConsultation = raisonConsultation;
      this.date = date;
      this.duree = duree;
      this.patientEnregistrer = patientEnregistrer;
   }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNomPatient() {
        return nomPatient;
    }

    public void setNomPatient(String nomPatient) {
        this.nomPatient = nomPatient;
    }

    public String getRaisonConsultation() {
        return raisonConsultation;
    }

    public void setRaisonConsultation(String raisonConsultation) {
        this.raisonConsultation = raisonConsultation;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getDuree() {
        return duree;
    }

    public void setDuree(String duree) {
        this.duree = duree;
    }

    public int getPatientEnregistrer() {
        return patientEnregistrer;
    }

    public void setPatientEnregistrer(int patientEnregistrer) {
        this.patientEnregistrer = patientEnregistrer;
    }

   

}
    

