/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao.clinique;

import com.model.clinique.Clinique;
import java.util.List;

/**
 *
 * @author Joma_
 */
public interface CliniqueDao {
    
    List<Clinique> findAll();
    boolean delete(int id);
    boolean update(Clinique clinique);
    boolean create(Clinique clinique);
    
}
