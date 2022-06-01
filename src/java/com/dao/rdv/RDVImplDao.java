/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao.rdv;

import com.model.rdv.RDV;
import com.projet.service.singleton.ConnexionBD;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Mohand
 */
public class RDVImplDao implements RDVDao{
    
    private static final String SQL_SELECT = "SELECT * FROM rdv";
    private static final String SQL_CONNEXION = "SELECT * FROM rdv WHERE nompatient=? AND nommedecin=?";
    private static final String SQL_INSERT = "INSERT INTO rdv(nompatient, nommedecin, date, adresse) "
            + "VALUES(?, ?, ?, ?)";
    private static final String SQL_DELETE = "DELETE FROM rdv WHERE id=?";
    private static final String SQL_UPDATE = "UPDATE rdv SET nompatient=?, nommedecin=?, date=?, adresse=?"
            + " WHERE id=?";
    private static final String SQL_SELECT_ID = "SELECT * FROM rdv WHERE id=?";
    @Override
    
    public List<RDV> findAll() {
                         List<RDV> listeRendezVous = null; 
        try {
   
            
            PreparedStatement ps = ConnexionBD.getConnection().prepareStatement(SQL_SELECT);
            ResultSet result = ps.executeQuery();
            
            listeRendezVous = new ArrayList<>();
            
            while (result.next()) {
                
                RDV rdv = new RDV();
                rdv.setID(result.getInt("id") );
                rdv.setNomPatient(result.getString("nompatient"));
                rdv.setNomMedecin(result.getString("nommedecin"));
                rdv.setAdresse(result.getString("adresse"));
                rdv.setDate(result.getString("date"));
                listeRendezVous.add(rdv);
                
                
                
            }
            
            
       
        } catch (SQLException ex) {
            Logger.getLogger(RDVImplDao.class.getName()).log(Level.SEVERE, null, ex);
        }
       ConnexionBD.closeConnection();
       return listeRendezVous; 
    }

    @Override
    public RDV isExiste(String nomPatient, String nomMedecin) {
        RDV rdv = null;
        try {
            
            PreparedStatement ps = ConnexionBD.getConnection().prepareStatement(SQL_CONNEXION);
            ps.setString(1, nomPatient);
            ps.setString(2, nomMedecin);
            ResultSet result = ps.executeQuery();
            
            while(result.next()) {
                rdv = new RDV();
                rdv.setID(result.getInt("id") );
                rdv.setNomPatient(result.getString("nompatient"));
                rdv.setNomMedecin(result.getString("nommedecin"));
                rdv.setAdresse(result.getString("adresse"));
                rdv.setDate(result.getString("date"));

            }
            
        } catch (SQLException ex) {
            Logger.getLogger(RDVImplDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        ConnexionBD.closeConnection();
        return rdv;
    }

    @Override
    public boolean create(RDV rdv) {
        boolean retour = false;
        int nbLigne = 0;
        PreparedStatement ps;
        try {
            
            ps = ConnexionBD.getConnection().prepareStatement(SQL_INSERT);
            
            ps.setString(1, rdv.getNomPatient());
            ps.setString(2, rdv.getNomMedecin());
            ps.setString(3, rdv.getDate());
            ps.setString(4, rdv.getAdresse());
            
            nbLigne = ps.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(RDVImplDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        if(nbLigne > 0) {
            retour = true;
        }
        ConnexionBD.closeConnection();
        return retour;
    }

    @Override
    public boolean delete(int id) {
        boolean retour = false;
        int nbLigne = 0;
        PreparedStatement ps;
        try {
            ps = ConnexionBD.getConnection().prepareStatement(SQL_DELETE);
            ps.setInt(1, id);

            nbLigne = ps.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        if (nbLigne > 0) {
            retour = true;
        }
        ConnexionBD.closeConnection();
        return retour;
    }

    @Override
    public boolean update(RDV rdv) {
        boolean retour = false;
        int nbLigne = 0;
        PreparedStatement ps;
        try {
            ps = ConnexionBD.getConnection().prepareStatement(SQL_UPDATE);

            ps.setString(1, rdv.getNomPatient());
            ps.setString(2, rdv.getNomMedecin());
            ps.setString(3, rdv.getDate());
            ps.setString(4, rdv.getAdresse());
            ps.setInt(5, rdv.getId());

            nbLigne = ps.executeUpdate();

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            Logger.getLogger(RDVImplDao.class.getName()).log(Level.SEVERE, null, e);
        }

        if (nbLigne > 0) {
            retour = true;
        }
        ConnexionBD.closeConnection();
        return retour;
    }
    
        @Override
    public RDV findById(int id) {
        RDV rdv = null; 
        try {
   
            
            PreparedStatement ps = ConnexionBD.getConnection().prepareStatement(SQL_SELECT_ID);
            ps.setInt(1, id);
            ResultSet result = ps.executeQuery();
            
            while (result.next()) {
                
                rdv = new RDV();
                rdv.setID(result.getInt("id") );
                rdv.setNomPatient(result.getString("nompatient"));
                rdv.setNomMedecin(result.getString("nommedecin"));
                rdv.setDate(result.getString("date"));
                rdv.setAdresse(result.getString("adresse"));
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(RDVImplDao.class.getName()).log(Level.SEVERE, null, ex);
        }
       ConnexionBD.closeConnection();
       return rdv; 
    }

}
