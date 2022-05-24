<%-- 
    Document   : rendezVous
    Created on : 2 mai 2022, 15 h 10 min 45 s
    Author     : Nicolas Lazarte
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Medi - Rendez Vous</title>
        <link rel="stylesheet" href="/css/priseRdv.css">
    </head>
    <body>
        <%@include file="entete.jsp" %>
        <br><br><br><br>
        <script>
            document.getElementsByClassName("active")[0].classList.remove("active");
            document.getElementById("rdv").classList.add("active");
        </script>
        <style>
body {
    text-align: center;
    
}
</style>
        <h1>Rendez Vous pour les patients de Medi-Clic</h1>
        <div class="row">
        <div class="col-md-6 offset-md-3 border p-4 shadow bg-light">
            <div class="col-12">
                <h3 class="fw-normal text-secondary fs-4 text-uppercase mb-4">Prendre Rendez Vous</h3>
            </div>
            <form action="">
                <div class="row g-3">
                    
            <c:choose>
                <c:when test="${sessionScope.nom != null}">
                    <div class="col-md-6">
                    <input type="text" class="form-control" value="${sessionScope.prenom}" name="prenom" readonly>
                    </div>
                    <div class="col-md-6">
                    <input type="text" class="form-control" value="${sessionScope.nom}" name="nom" readonly>
                    </div>
                    <div class="col-md-6">
                        <input type="tel" class="form-control" value="${sessionScope.assurance}" name="assurance" readonly>
                    </div>
                    <div class="col-md-6">
                    <input type="text" class="form-control" value="${sessionScope.mail}" name="mail" readonly>
                    </div>
                    <div class="col-md-6">
                        <input type="date" class="form-control" placeholder="Date du Rendez Vous">
                    </div>
                    <div class="col-md-6">
                        <input type="time" class="form-control" placeholder="Heure">
                    </div>
                </c:when>
                    
                <c:otherwise>
                    <div class="col-md-6">
                        <input type="text" class="form-control" placeholder="Prenom">
                    </div>
                    <div class="col-md-6">
                        <input type="text" class="form-control" placeholder="Nom">
                    </div>
                    <div class="col-md-6">
                        <input type="tel" class="form-control" placeholder="Assurance maladie">
                    </div>
                    <div class="col-md-6">
                        <input type="email" class="form-control" placeholder="Adresse Courriel">
                    </div>
                    <div class="col-md-6">
                        <input type="date" class="form-control" placeholder="Date du Rendez Vous">
                    </div>
                    <div class="col-md-6">
                        <input type="time" class="form-control" placeholder="Heure">
                    </div>
                </c:otherwise>    
            </c:choose>	

                    <div class="col-12">
                        <select class="form-select">
                            <option selected>Raison de la consulation</option>
                            <option value="1">Urgence Mineure</option>
                            <option value="2">Consultation prioritaire</option>
                            <option value="3">Suivi périodique ou préventif</option>
                            <option value="4">Suivi régulier</option>
                            <option value="5">Suivi de grossesse</option>
                            <option value="6">Suivi d'un enfant (0 à 5 ans)</option>
                        </select>
                    </div>
                    <div class="col-12">
                        <textarea class="form-control" placeholder="Plus d'informations"></textarea>
                    </div>
                    <div class="col-12 mt-5">                        
                        <button type="submit" class="btn btn-primary float-end">Confirmez Rendez Vous</button>
                        <button type="button" class="btn btn-outline-secondary float-end me-2">Annuler</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<br><br><br><br>
    <%@include file="piedpage.jsp" %>
    </body>
</html>
