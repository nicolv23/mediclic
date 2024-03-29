
package com.dao.patient;

import com.model.patient.Patient;
import java.util.List;

/**
 *
 * @author Mohand
 */
public interface PatientDao {
    
     List<Patient> findAll();
     Patient isExiste(String email, String password);
     boolean create(Patient patient);
     boolean delete(int id);
     boolean update(Patient patient);
     
     Patient findById(int id);
}