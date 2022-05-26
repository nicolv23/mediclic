/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao.clinique;

import com.model.clinique.Clinique;
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
 * @author Joma_
 */
public class CliniqueImplDao implements CliniqueDao {
    
    private static final String SQL_SELECT = "SELECT * FROM cliniques";
    private static final String SQL_DELETE = "DELETE FROM cliniques WHERE id=?";
    private static final String SQL_UPDATE = "UPDATE cliniques SET nom=?, coordonnees=?, "
            + "services=? WHERE id=?";
    private static final String SQL_INSERT = "INSERT INTO cliniques(nom, coordonnees, "
            + "services) VALUES(?,?,?)";
    private static final String SQL_SELECT_ID = "SELECT * FROM cliniques WHERE id=?";

    @Override
    public List<Clinique> findAll() {
        List<Clinique> listeClinique = null; 
        try {
   
            
            PreparedStatement ps = ConnexionBD.getConnection().prepareStatement(SQL_SELECT);
            ResultSet result = ps.executeQuery();
            
            listeClinique = new ArrayList<>();
            
            while (result.next()) {
                
                Clinique clinique = new Clinique();
                clinique.setId(result.getInt("id"));
                clinique.setNom(result.getString("nom"));
                clinique.setCoordonnees(result.getString("coordonnees"));
                clinique.setServices(result.getString("services"));
                
                listeClinique.add(clinique);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CliniqueImplDao.class.getName()).log(Level.SEVERE, null, ex);
        }
       ConnexionBD.closeConnection();
       return listeClinique; 
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
    public boolean update(Clinique clinique) {
        boolean retour = false;
        int nbLigne = 0;
        PreparedStatement ps;
        try {
            ps = ConnexionBD.getConnection().prepareStatement(SQL_UPDATE);

            ps.setString(1, clinique.getNom());
            ps.setString(2, clinique.getCoordonnees());
            ps.setString(3, clinique.getServices());
            ps.setInt(4, clinique.getId());

            nbLigne = ps.executeUpdate();

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            Logger.getLogger(CliniqueImplDao.class.getName()).log(Level.SEVERE, null, e);
        }

        if (nbLigne > 0) {
            retour = true;
        }
        ConnexionBD.closeConnection();
        return retour;
    }

    @Override
    public boolean create(Clinique clinique) {
        boolean retour = false;
        int nbLigne = 0;
        PreparedStatement ps;
        try {
            
            ps = ConnexionBD.getConnection().prepareStatement(SQL_INSERT);
            
            ps.setString(1, clinique.getNom());
            ps.setString(2, clinique.getCoordonnees());
            ps.setString(3, clinique.getServices());
            
            nbLigne = ps.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(CliniqueImplDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        if(nbLigne > 0) {
            retour = true;
        }
        ConnexionBD.closeConnection();
        return retour;
    }

    @Override
    public Clinique findById(int id) {
        Clinique clinique = null; 
        try {
   
            
            PreparedStatement ps = ConnexionBD.getConnection().prepareStatement(SQL_SELECT_ID);
            ps.setInt(1, id);
            ResultSet result = ps.executeQuery();
            
            while (result.next()) {
                
                clinique = new Clinique();
                clinique.setId(result.getInt("id"));
                clinique.setNom(result.getString("nom"));
                clinique.setCoordonnees(result.getString("coordonnees"));
                clinique.setServices(result.getString("services")); 
            }
        } catch (SQLException ex) {
            Logger.getLogger(CliniqueImplDao.class.getName()).log(Level.SEVERE, null, ex);
        }
       ConnexionBD.closeConnection();
       return clinique; 
    }
    
}
