<%-- 
    Document   : inscription
    Created on : 2022-03-11, 12:41:18
    Author     : Volta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Medi - Inscription</title>
        <link rel="stylesheet" href="css/inscription.css">
    </head>
    <body>
        <%@include file="entete.jsp" %>
        <script>
        document.getElementById("accueil").classList.remove("active");
        document.getElementById("connexion").classList.add("active");
        document.getElementById("contact").classList.remove("active");
        document.getElementById("connexion").innerHTML = "<a href=\"connexion.jsp\" class=\"nav-link\">S'inscrire</a>";
        </script>
    
    <div class="contents">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-12 paddingajout">
            <div class="form-block mx-auto marginajout">
              <div class="text-center mb-5">
              <h3>Inscription</h3>
              </div>
              <form action="#" method="post">
                  
                <div class="form-group first">
                  <label for="nom">Nom</label>
                  <input type="text" class="form-control" placeholder="Votre nom" id="nom">
                </div>  
                <div class="form-group first">
                  <label for="prenom">Prénom</label>
                  <input type="text" class="form-control" placeholder="Votre prénom" id="prenom">
                </div>  
                <div class="form-group first">
                  <label for="username">Adresse courriel</label>
                  <input type="email" class="form-control" placeholder="votre-email@gmail.com" id="username">
                </div>
                <div class="form-group last mb-3">
                  <label for="password">Mot de passe</label>
                  <input type="password" class="form-control" placeholder="Votre mot de passe" id="password">
                </div>
                <div class="form-group last mb-3">
                  <label for="cpassword">Confirmer votre mot de passe</label>
                  <input type="password" class="form-control" placeholder="Votre mot de passe" id="cpassword">
                </div>
                
                <div class="d-sm-flex mb-5 align-items-center">
                  <label class="control control--checkbox mb-3 mb-sm-0"><span class="caption">Je suis d'accord avec les <a href="#">Termes et Conditions</a></span>
                    <input type="checkbox"/>
                    <div class="control__indicator"></div>
                  </label>
                </div>
   
                  <br>
                  Vous avez déjà un compte? <a class="pascompte" href="connexion.jsp">Se connecter</a>
                  <br><br>
                <input type="submit" value="S'inscrire" class="btn btn-block btn-primary">

              </form>
            </div>
          </div>
        </div>
      </div>
    </div>

    
  </div>

        <%@include file="piedpage.jsp" %>
    </body>
</html>
