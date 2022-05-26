/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao.medecin;

import com.model.medecin.Medecin;
import java.util.List;

/**
 *
 * @author Nicolas Lazarte
 */
public interface MedecinDao {
    
    List<Medecin> findAll();
    Medecin isExiste(String email, String password);
    boolean create(Medecin medecin);
    boolean delete(int id);
    boolean update(Medecin medecin);
    
}
