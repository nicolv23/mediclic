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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/responsive.css">
       
        <style>
            <%@ include file="css/messagerie.css"%>
</style>
<link rel="stylesheet" type="text/css" href="css/jquery.convform.css">
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/jquery.convform.js"></script>
<script type="text/javascript" src="js/messages.js"></script>
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
    height: 100%;
    background-image: url("images/mediclic.jpg");
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
}
</style>
    <center>
        <h1>Rendez Vous pour les patients de Medi-Clic</h1>
        </center>
    
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
                        <a href="index.jsp">
                        <input type="button" class="btn btn-outline-secondary float-end me-2" value="Annuler">
                        </a>
                    </div>
                </div>
            </form>
        </div>
    </div>
    
</div>
<div class="logo_messagerie">
                <i class="fa fa-comments" aria-hidden="true"></i>
            </div>

<div class="boite_messagerie">
    <div class="my-conv-form-wrapper">
        <form action="" method="GET" class="hidden">
                    
                    
            <div data-conv-fork="category">
                <input type="text" data-conv-question="Bienvenue chez Mediclic! Comment puis-je vous aider? <br> 
                       Veuillez choisir parmi les options suivantes (Inscription, Rendez-Vous, Connexion, Services)<br>" name="category">
       
                <div data-conv-case="Connexion">
                    <input type="text" name="connexion" data-conv-question="Veuillez cliquer l'onglet Connexion pour vous connecter<br>">    
                </div>
                
                <div data-conv-case="Services">
                    <input type="text" name="services" data-conv-question="Cliquez sur l'onglet Nos Services pour savoir ce que Mediclic offre à votre disposition<br>"> 
                </div>
        
                <div data-conv-case="Inscription">
                    <input type="text" name="services" data-conv-question="Pour vous inscrire, vous devez cliquer sur l'onglet Se Connecter et sur le lien Créer un compte
                           et vous pouvez choisir de créer un compte pour Patient ou Médecin<br>"> 
        </div>
        <div data-conv-case="Rendez-Vous">
          <input type="text" name="services" data-conv-question="Pour prendre un Rendez-Vous, vous devez cliquer sur l'onglet Prendre un Rendez-Vous et sélectionner un médecin parmi la liste
                 qui va vous mener à la page pour remplir le formulaire <br>"> 
        </div>
      </div>
<br><br><br><br>
    <%@include file="piedpage.jsp" %>
    </body>
</html>
