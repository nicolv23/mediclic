/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.action;

import com.dao.admin.AdministrateurImplDao;
import com.model.admin.Administrateur;

/**
 *
 * @author Joma_
 */
public class AdministrateurAction {
    
    private static AdministrateurImplDao dao = new AdministrateurImplDao();
    
    public static Administrateur connexionAdmin(String email, String password) {
        Administrateur admin = dao.isExiste(email, password);
        return admin;
    }
    
}
