
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
     
}