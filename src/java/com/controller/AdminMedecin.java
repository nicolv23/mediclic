/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.action.MedecinAction;
import com.model.medecin.Medecin;
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
public class AdminMedecin extends HttpServlet {

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
        String medecinModifie = request.getParameter("medecinModifie");
        int id = Integer.parseInt(request.getParameter("id"));
        
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String specialite = request.getParameter("specialite");
        String numpro = request.getParameter("numpro");
        String facturation = request.getParameter("facturation");
        String coordonnees = request.getParameter("coordonnees");
        String lieuJob = request.getParameter("lieuJob");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        if(modifier != null) {
            Medecin medecin = MedecinAction.rechercherMedecinParId(id);
            request.setAttribute("medecin", medecin);
            request.getRequestDispatcher("modifierMedecin.jsp").forward(request, response);
        } else if(supprimer != null) {
            boolean MedecinSupprime = MedecinAction.supprimerMedecin(id);
            if(MedecinSupprime) {
                request.setAttribute("message", "Médecin #"+id+" supprimé avec succès !");
                request.getRequestDispatcher("afficherMedecins").forward(request, response);
            }
        } else if(medecinModifie != null) {
            Medecin medecin = new Medecin(id, nom, prenom, specialite, numpro, coordonnees, Double.parseDouble(facturation), lieuJob, email, password);
            boolean medecinModif = MedecinAction.misajourMedecin(medecin);
            if(medecinModif) {
                request.setAttribute("message", "Médecin #"+id+" modifié avec succès !");
                request.getRequestDispatcher("afficherMedecins").forward(request, response);
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
