<%-- 
    Document   : afficherMedecins
    Created on : 2022-05-20, 12:09:24
    Author     : Joma_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Medi - Patients</title>
        <link rel="stylesheet" href="css/inscription.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    </head>
    <body>
        <%@include file="entete.jsp" %>
        <br><br>
            <script>
        document.getElementsByClassName("active")[0].classList.remove("active");
        document.getElementById("modif").classList.add("active");
        </script>
         <style>
body {
    height: 100%;
    background-image: url("images/mediclic.jpg");
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
}
</style>
        <div class='container-fluid'>
        <h1 class="display-4 text-center">Liste des médecins</h1>
        <br><br>
        <c:if test="${requestScope.message != null}">
            <h4 style="color:forestgreen">${requestScope.message}</h4>
        </c:if>
        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Spécialité</th>
                    <th>Numéro de téléphone professionnel</th>
                    <th>Coordonnées</th>
                    <th>Lieu d'exercice</th>
                    <th>Email</th>
                    <th>Mot de passe</th>
                    <th>Modifier</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="medecin" items="${requestScope.listeMedecins}">
                    <tr>
                        <td>${medecin.id}</td>
                        <td>${medecin.nom}</td>
                        <td>${medecin.prenom}</td>
                        <td>${medecin.specialite}</td>
                        <td>${medecin.numpro}</td>
                        <td>${medecin.coordonnes}</td>
                        <td>${medecin.lieuTravail}</td>
                        <td>${medecin.mail}</td>
                        <td>${medecin.password}</td>
                        <td>
                            <form action="adminMedecin" method="get">
                                <input type="hidden" name="id" value="${medecin.id}">
                                <input class="bg-warning" type="submit" name="modifier" value="Modifier">
                                <input class="bg-danger text-light" type="submit" name="supprimer" value="Supprimer">
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
            <center>
            <a href="ajoutMedecin.jsp" class="btn btn-primary" role="button">Ajouter un médecin</a>
        </center>    

        </div>    
        

    
        <br><br><br><br>

        <%@include file="piedpage.jsp" %>
    </body>
</html>
