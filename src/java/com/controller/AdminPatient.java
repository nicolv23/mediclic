/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.action.PatientAction;
import com.model.patient.Patient;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Joma_
 */
public class AdminPatient extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            
        String modifier = request.getParameter("modifier");
        String supprimer = request.getParameter("supprimer");
        String patientModifie = request.getParameter("patientModifie");
        int id = Integer.parseInt(request.getParameter("id"));
        
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String assurance = request.getParameter("assurance");
        String naissance = request.getParameter("naissance");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        if(modifier != null) {
            //request.setAttribute("id", id);
            Patient patient = PatientAction.rechercherPatientParId(id);
            request.setAttribute("patient", patient);
            request.getRequestDispatcher("modifierPatient.jsp").forward(request, response);
        } else if(supprimer != null) {
            boolean patientSupprime = PatientAction.supprimerPatient(id);
            if(patientSupprime) {
                request.setAttribute("message", "Patient #"+id+" supprimé avec succès !");
                request.getRequestDispatcher("afficherPatients").forward(request, response);
            }
        } else if(patientModifie != null) {
            Patient patient = new Patient(id, nom, prenom, assurance, naissance, email, password);
            boolean patientModif = PatientAction.misajourPatient(patient);
            if(patientModif) {
                request.setAttribute("message", "Patient #"+id+" modifié avec succès !");
                request.getRequestDispatcher("afficherPatients").forward(request, response);
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
