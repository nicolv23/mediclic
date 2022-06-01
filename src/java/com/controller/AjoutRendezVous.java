/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.action.RDVAction;
import com.model.rdv.RDV;
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
public class AjoutRendezVous extends HttpServlet {

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
            
        String nomPatient = request.getParameter("nomPatient");
        //String nomMedecin = request.getParameter("nomMedecin");
        String nomMedecin = "Judy";
        String adresse = request.getParameter("adresse");
        String date = request.getParameter("date");
        String message = "prise de rendez-vous effectuée !";
        String messageAdmin = "RDV ajouté !";
        String ajoutAdmin = request.getParameter("ajoutAdmin");

        RDV rdv = new RDV(nomPatient, nomMedecin, date, adresse);
        
        boolean succes = RDVAction.ajoutRDV(rdv);
        if(succes) {
           if(ajoutAdmin != null) {
                request.setAttribute("message", messageAdmin);
                request.getRequestDispatcher("index").forward(request, response);
            } else {
                request.setAttribute("messageRDV", message);
                request.getRequestDispatcher("index.jsp").forward(request, response);
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
