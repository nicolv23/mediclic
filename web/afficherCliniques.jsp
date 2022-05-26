<%-- 
    Document   : afficherCliniques
    Created on : 2022-05-21, 18:23:46
    Author     : Joma_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Medi - Cliniques</title>
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
        <h1 class="display-4 text-center">Liste des cliniques</h1>
        <br><br>
        <c:if test="${requestScope.message != null}">
            <h4 style="color:forestgreen">${requestScope.message}</h4>
        </c:if>
        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nom</th>
                    <th>Coordonnées</th>
                    <th>Services</th>
                    <th>Modifier</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="clinique" items="${requestScope.listeCliniques}">
                    <tr>
                        <td>${clinique.id}</td>
                        <td>${clinique.nom}</td>
                        <td>${clinique.coordonnees}</td>
                        <td>${clinique.services}</td>
                        <td>
                            <form action="adminClinique" method="get">
                                <input type="hidden" name="id" value="${clinique.id}">
                                <input class="bg-warning" type="submit" name="modifier" value="Modifier">
                                <input class="bg-danger text-light" type="submit" name="supprimer" value="Supprimer">
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <center>
            <a href="ajoutClinique.jsp" class="btn btn-primary" role="button">Ajouter une clinique</a>
        </center>    
        </div>    
        

    
        <br><br><br><br>

        <%@include file="piedpage.jsp" %>
    </body>
</html>
