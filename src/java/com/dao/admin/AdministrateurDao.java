/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao.admin;

import com.model.admin.Administrateur;

/**
 *
 * @author Joma_
 */
public interface AdministrateurDao {
    
    Administrateur isExiste(String email, String password);
    
}
