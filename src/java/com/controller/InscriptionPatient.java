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
public class InscriptionPatient extends HttpServlet {

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
            
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String assurance = request.getParameter("assurance");
        String naissance = request.getParameter("naissance");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String sexe = request.getParameter("sexe");
        String message = "Inscription effectuée !";
        String messageAdmin = "Patient ajouté !";
        String ajoutAdmin = request.getParameter("ajoutAdmin");

        Patient patient = new Patient(nom, prenom, assurance, naissance, sexe, email, password);
        
        boolean succes = PatientAction.inscriptionPatient(patient);
        if(succes) {
           if(ajoutAdmin != null) {
                request.setAttribute("message", messageAdmin);
                request.getRequestDispatcher("afficherPatients").forward(request, response);
            } else {
                request.setAttribute("messageInscription", message);
                request.getRequestDispatcher("connexion.jsp").forward(request, response);
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
