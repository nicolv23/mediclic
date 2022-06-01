
package com.dao.rdv;

import com.model.rdv.RDV;
import java.util.List;

/**
 *
 * @author Mohand
 */
public interface RDVDao {
    
     List<RDV> findAll();
     RDV isExiste(String nomPatient, String nomMedecin);
     boolean create(RDV rendezVous);
     boolean delete(int id);
     boolean update(RDV rendezVous);
     
     RDV findById(int id);
}