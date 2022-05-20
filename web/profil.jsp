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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    </head>
    <body>
        <%@include file="entete.jsp" %>
        <script>
        document.getElementsByClassName("active")[0].classList.remove("active");
        document.getElementById("profil").classList.add("active");
        </script>
        <style>
body {
    height: 100%;
    background-image: url("images/mediclic_background.jpg");
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
}
</style>
        <div>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <c:if test="${sessionScope.nom != null}">
                
                <div class="text-center"> 
                    <c:if test="${sessionScope.type == 'patient'}">
                    <h1 class="display-3">Bonjour M./Mme ${sessionScope.nom}</h1>
                    <h1 class="display-3">Assurance :  ${sessionScope.assurance}</h1>
                    <h1 class="display-3">Sexe :  ${sessionScope.sexe}</h1>
                    <h1 class="display-3">Naissance :  ${sessionScope.naissance}</h1>
                    </c:if>
                    <c:if test="${sessionScope.type == 'medecin'}">
                    <h1 class="display-3">Bonjour Docteur ${sessionScope.nom}</h1>
                    <h1 class="display-3">Facturation :  ${sessionScope.facturation}</h1>
                    <h1 class="display-3">Spécialité :  ${sessionScope.specialite}</h1>
                    <h1 class="display-3">Coordonnées :  ${sessionScope.coordonnes}</h1>
                    </c:if>
                    <c:if test="${sessionScope.type == 'administrateur'}">
                    <h1 class="display-3">Bonjour M./Mme ${sessionScope.nom}</h1>
                    <h1 class="display-3">Email : ${sessionScope.mail}</h1>
                    </c:if>
                </div>       
            </c:if>
            <c:if test="${requestScope.message != null}">
                <h2>${requestScope.message}</h2>
            </c:if>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            
        </div>
        <%@include file="piedpage.jsp" %>
    </body>
</html>
