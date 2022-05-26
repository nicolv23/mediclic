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
        <title>Medi - Accueil</title>
        <link rel="stylesheet" href="css/style.css">
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

        <div class="text-center">
            <h1 class="display-1">Bienvenue chez MediClic !</h1>
            <c:if test="${sessionScope.nom != null}">
                <c:if test="${sessionScope.sexe == 'Homme'}">
                               <h1 class="display-3">Bonjour M. ${sessionScope.nom}</h1>
                               <h1 class="display-3">( ${sessionScope.type} )</h1>
                        </c:if>
                        <c:if test="${sessionScope.sexe == 'Femme'}">
                               <h1 class="display-3">Bonjour Mme. ${sessionScope.nom}</h1>
                               <h1 class="display-3">( ${sessionScope.type} )</h1>
                        </c:if>
            </c:if>
            <c:if test="${requestScope.message != null}">
                <h1 class="display-2">${requestScope.message}</h1>
            </c:if>
            <%--Ajouter Assistant Virtuel --%>
         
        </div>        
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            
       
        <%@include file="piedpage.jsp" %>
    </body>
</html>
