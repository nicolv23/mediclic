<%-- 
    Document   : index
    Created on : 2022-03-11, 10:48:54
    Author     : Volta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Medi - Profil</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <%@include file="entete.jsp" %>
        <script>
        document.getElementsByClassName("active")[0].classList.remove("active");
        document.getElementById("profil").classList.add("active");
        </script>
        <div>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <c:if test="${sessionScope.nom != null}">
                
                    
                    <c:if test="${sessionScope.type == 'patient'}">
                    <h2>Bonjour M./Mme ${sessionScope.nom}</h2>
                    <h2>Assurance :  ${sessionScope.assurance}</h2>
                    <h2>Sexe :  ${sessionScope.sexe}</h2>
                    <h2>Naissance :  ${sessionScope.naissance}</h2>
                    </c:if>
                    <c:if test="${sessionScope.type == 'medecin'}">
                    <h2>Bonjour Docteur ${sessionScope.nom}</h2>
                    <h2>Facturation :  ${sessionScope.facturation}</h2>
                    <h2>Spécialité :  ${sessionScope.specialite}</h2>
                    <h2>Coordonnées :  ${sessionScope.coordonnes}</h2>
                    </c:if>
                
            </c:if>
            <c:if test="${requestScope.message != null}">
                <h2>${requestScope.message}</h2>
            </c:if>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            
        </div>
        <%@include file="piedpage.jsp" %>
    </body>
</html>
