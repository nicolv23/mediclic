<%-- 
    Document   : index
    Created on : 2022-03-11, 10:48:54
    Author     : Volta
--%>

<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Medi - Envoi de documents</title>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    </head>
    <body>
        <%@include file="entete.jsp" %>
        <script>
        document.getElementsByClassName("active")[0].classList.remove("active");
        document.getElementById("accueil").classList.add("active");
        </script>
        <div>
            <br><br><br><br><br>
            <style>
body {
    height: 100%;
     background-image: url("images/mediclic.jpg");
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
}
</style>
<br><br><br><br><br><br><br><br><br><br><br><br>
<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://127.0.0.1:3306/mediclic?serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false"
         user = "root"  password = "root"/>
                                <br><br>
                <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from mediclic.medecins;
      </sql:query>
        <div class="text-center">
            <center>
                <h2 class="display-2">Envoi de documents au médecin sélectionné</h2><br><br><br>
            </center>
              <form action="FileUploadHandler" enctype="multipart/form-data" method="post">
                                   Entrer le nom du fichier <input type="text" name="file_name" /><br>
                                       Choisir fichier<input type="file" name="file2" /> 
                                       <input type="submit" value="Téléverser" /> 
                               </form> 
            
            <%
                String file_name=(String)request.getParameter("filename");
                if(file_name!=null){
                    out.println(file_name+" Fichier téléversé!");
                }
            %>
            
        </div>        
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            
        </div>
        <%@include file="piedpage.jsp" %>
    </body>
</html>
