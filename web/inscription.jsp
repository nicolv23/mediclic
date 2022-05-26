<%-- 
    Document   : inscription
    Created on : 2022-03-11, 12:41:18
    Author     : Volta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Medi - Inscription</title>
        <link rel="stylesheet" href="css/inscription.css">
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
        <script>
        document.getElementsByClassName("active")[0].classList.remove("active");
        document.getElementById("accueil").classList.add("active");
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
    <br><br>
    <div class="contents">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-12 paddingajout">
            <div class="form-block mx-auto marginajout">
              <div class="text-center mb-5">
              <h3>Inscription</h3>
              <h5>Êtes-vous un client ou un médecin ?</h5>
              </div>
                <div class="logo_messagerie">
                <i class="fa fa-comments" aria-hidden="true"></i>
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

    

      <input data-conv-question="Entrez votre adresse courriel" data-pattern="^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" type="email" name="email" required placeholder="What's your e-mail?">

      <select data-conv-question="Veuillez confirmer">
        <option value="Oui">Confirmer</option>
      </select>

  	</form>
	</div>
</div>
              <center>
                  <a href="inscriptionPatient.jsp" class="btn btn-info" role="button">Client</a>
                  &nbsp;&nbsp;&nbsp;&nbsp;
                  <a href="inscriptionMedecin.jsp" class="btn btn-primary" role="button">Médecin</a>
              </center>
                  <br>
                  Vous avez déjà un compte? <a class="pascompte" href="connexion.jsp">Se connecter</a>
            </div>
          </div>
        </div>
      </div>
    </div>

    
  </div>
        <br><br><br><br><br><br><br><br><br><br>
        <%@include file="piedpage.jsp" %>
    </body>
</html>
