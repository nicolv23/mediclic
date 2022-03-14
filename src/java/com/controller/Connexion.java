/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.action.MedecinAction;
import com.action.PatientAction;
import com.model.medecin.Medecin;
import com.model.patient.Patient;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Joma_
 */
public class Connexion extends HttpServlet {

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
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String urlRedirect = "";
        String message = "Identifiants invalides, veuillez réessayer.";
        
        Patient patient = PatientAction.connexionPatient(email, password);
        Medecin medecin = MedecinAction.connexionMedecin(email, password);
        
        if(patient != null) {
            HttpSession session = request.getSession(true);
            session.setAttribute("nom", patient.getNom());
            session.setAttribute("prenom", patient.getPrenom());
            session.setAttribute("type", "patient");
            urlRedirect = "index.jsp";
        }else if(medecin != null){
            HttpSession session = request.getSession(true);
            session.setAttribute("nom", medecin.getNom());
            session.setAttribute("prenom", medecin.getPrenom());
            session.setAttribute("type", "medecin");
            urlRedirect = "index.jsp";
        }
        
        else {
            request.setAttribute("message", message);
            urlRedirect = "connexion.jsp";
        }
        
        request.getRequestDispatcher(urlRedirect).forward(request, response);
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
