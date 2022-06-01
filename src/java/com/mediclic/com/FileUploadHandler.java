/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package com.mediclic.com;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.tomcat.util.http.fileupload.FileItem;
//import org.apache.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileItemFactory;
//import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext;

/**
 *
 * @author Nicolas Lazarte
 */
public class FileUploadHandler extends HttpServlet {
    
    private static final long serialVersionUID = 1;
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        doPost(request, response);
    
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String nom_fichier = null;
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        boolean isMultipartContent = ServletFileUpload.isMultipartContent(request);
        if(!isMultipartContent){
            return;
        }
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        try {
            List < FileItem > fields = upload.parseRequest(new ServletRequestContext(request));
            Iterator < FileItem > it = fields.iterator();
            if(!it.hasNext()){
                return;
            }
            while (it.hasNext()) {
                FileItem fileItem = it.next();
                boolean isFormField = fileItem.isFormField();
                if (isFormField){
                    if (nom_fichier == null){
                        if (fileItem.getFieldName().equalsIgnoreCase("file_name")) {
                            nom_fichier = fileItem.getString();
                        }
                    }
                } else{
                    if (fileItem.getSize() > 0){
                        File dossier = new File("C:\\Patients_mediclic");
                        if(!dossier.exists()){
                            dossier.mkdirs();
                        }
                        fileItem.write(new File("C:\\Patients_mediclic\\" + fileItem.getName()));
                    }
                }
            }
        } catch (Exception e){
            e.printStackTrace();
        } finally {
            out.println("<script type='text/javascript'>");
            out.println("window.location.href='envoyerDocuments.jsp?nomFichier="+nom_fichier+"'");
            out.println("</script>");
            out.close();
        }
    }
    
}
