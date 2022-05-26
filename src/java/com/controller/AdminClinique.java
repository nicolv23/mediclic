/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.action.CliniqueAction;
import com.model.clinique.Clinique;
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
public class AdminClinique extends HttpServlet {

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
        String cliniqueModifie = request.getParameter("cliniqueModifie");
        String cliniqueAjoute = request.getParameter("cliniqueAjoute");
        String idRecu = request.getParameter("id");
        int id = 0;
        if(idRecu != null) {
            id = Integer.parseInt(idRecu);
        }
        
        String nom = request.getParameter("nom");
        String coordonnees = request.getParameter("coordonnees");
        String services = request.getParameter("services");
        
        if(modifier != null) {
            Clinique clinique = CliniqueAction.rechercherCliniqueParId(id);
            request.setAttribute("clinique", clinique);
            request.getRequestDispatcher("modifierClinique.jsp").forward(request, response);
        } else if(supprimer != null) {
            boolean CliniqueSupprime = CliniqueAction.supprimerClinique(id);
            if(CliniqueSupprime) {
                request.setAttribute("message", "Clinique #"+id+" supprimé avec succès !");
                request.getRequestDispatcher("afficherCliniques").forward(request, response);
            }
        } else if(cliniqueModifie != null) {
            Clinique clinique = new Clinique(id, nom, coordonnees, services);
            boolean cliniqueModif = CliniqueAction.misajourClinique(clinique);
            if(cliniqueModif) {
                request.setAttribute("message", "Clinique #"+id+" modifié avec succès !");
                request.getRequestDispatcher("afficherCliniques").forward(request, response);
            }
        } else if(cliniqueAjoute != null) {
            Clinique clinique = new Clinique(nom, coordonnees, services);
            boolean cliniqueAjout = CliniqueAction.ajouterClinique(clinique);
            if(cliniqueAjout) {
                request.setAttribute("message", "Clinique ajoutée !");
                request.getRequestDispatcher("afficherCliniques").forward(request, response);
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
