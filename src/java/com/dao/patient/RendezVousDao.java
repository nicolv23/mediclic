/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao.patient;


import com.model.patient.RendezVousPatient;
import com.projet.config.ConnexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Nicolas Lazarte
 */
public class RendezVousDao {
    
    PreparedStatement ps = null;
    ResultSet rs = null;
    int result = 0;
	
	public ArrayList<RendezVousPatient> getAppInfo(Connection dbCon, String utilisateur){
		
		ArrayList<RendezVousPatient> rdv = new ArrayList<>();
		ArrayList listeRdv = new ArrayList<>();
		try {
			
			String sql = "SELECT a.apptnumber, a.Patient, a.reasonforvisit, DATE_FORMAT(a.datetime, '%Y%m%d') date, DATE_FORMAT(a.datetime, '%H:%i:%s') time, a.IsPatientCheckedIn\r\n" + 
					"  FROM USERs u, patients p, appointments a\r\n" + 
					" WHERE u.username = p.login\r\n" + 
					"   AND p.OHIPNumber = a.patient\r\n" + 
					"   AND u.username = ?;";

			ps = dbCon.prepareStatement(sql);
			ps.setString(1, utilisateur);

			rs = ps.executeQuery();
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String patient = rs.getString(2);
				String reason = rs.getString(3);
				String date = rs.getString(4);
				String time = rs.getString(5);
				int checkedIn = rs.getInt(6);
								
				RendezVousPatient rendezVous = new RendezVousPatient(id, patient, reason, date, date, checkedIn);
                                listeRdv.add(rdv);
			}

		} catch (SQLException e) {
			System.err.println("SQLException: " + e.getMessage());
		} finally {
			ConnexionBD.closeJDBCObjects(dbCon, ps, rs);
		}
		return listeRdv;
	}
	
	public void createAppointment(Connection dbCon, RendezVousPatient apt) {
		
		try {
			String sql = "INSERT INTO appointments (Patient, ReasonForVisit, DateTime, IsPatientCheckedIn) "
					+ "VALUES (?, ?, ?, ?)";
			ps = dbCon.prepareStatement(sql);
			ps.setInt(1, apt.getId());
			ps.setString(2, apt.getRaisonConsultation());
			ps.setString(3, apt.getDate()+" "+apt.getDuree());
			ps.setInt(4, apt.getPatientEnregistrer());
			result = ps.executeUpdate();
		} catch (SQLException e) {
			System.err.println("SQLException: " + e.getMessage());
		} finally {
			ConnexionBD.closeJDBCObjects(dbCon, ps, rs);
		}
	}
	
	public void deleteAppointment(Connection dbCon, RendezVousDao apt) {
		
		try {
			
			String sql = "DELETE from appointments WHERE apptnumber = ?";
			ps = dbCon.prepareStatement(sql);
			ps.setString(1, apt.getAppNumber());
			result = ps.executeUpdate();
		
		} catch (SQLException e) {
			System.err.println("SQLException: " + e.getMessage());
		} finally {
			ConnexionBD.closeJDBCObjects(dbCon, ps, rs);
		}
	}	
	
	public void checkInAppointment(Connection dbCon, RendezVousDao apt) {
		
		try {
			
			String sql = "UPDATE appointments SET IsPatientCheckedIn = 1 WHERE apptnumber = ?";
			ps = dbCon.prepareStatement(sql);
			ps.setString(1, apt.result);
			result = ps.executeUpdate();
		
		} catch (SQLException e) {
			System.err.println("SQLException: " + e.getMessage());
		} finally {
			ConnexionBD.closeJDBCObjects(dbCon, ps, rs);
		}
	}
    
}
