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
        <title>Medi - M-Inscription</title>
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
        <style>
body {
    height: 100%;
    background-image: url("images/mediclic_background.jpg");
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
}
</style>
    
    <div class="contents">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-12 paddingajout">
            <div class="form-block mx-auto marginajout">
              <div class="text-center mb-5">
              <h3>Inscription d'un médecin</h3>
              </div>
              <form action="inscriptionMedecin" method="post">
                  
                <div class="form-group first">
                  <label for="nom">Nom</label>
                  <input type="text" class="form-control" placeholder="Votre nom" name="nom" id="nom" required>
                </div>  
                <div class="form-group first">
                  <label for="prenom">Prénom</label>
                  <input type="text" class="form-control" placeholder="Votre prénom" name="prenom" id="prenom" required>
                </div>
                <div class="form-group first">
                  <label for="specialite">Spécialité</label>
                  <%--
                    <select class="form-select" name="specialite" id="specialite" required>
                            <option value="1">Cardiologue</option>
                            <option value="2">Neurologue</option>
                            <option value="3">Dermatologue</option>
                            <option value="4">Médecin de famille</option>
                            <option value="5">Nutritionniste</option>
                            <option value="6">Chirurgien</option>
                            <option value="7">Pédiatre</option>
                    </select>
                  --%>
                  <input type="text" class="form-control" placeholder="Specialité" name="specialite" id="specialite" required>
                    </div>
                <div class="form-group first">
                  <label for="numpro">Numéro de téléphone professionnel</label>
                  <input type="text" class="form-control" placeholder="(514)826-2123" name="numpro" id="numpro" required>
                </div>
                <div class="form-group first">
                  <label for="facturation">Facturation</label>
                  <input type="number" class="form-control" placeholder="350" name="facturation" id="facturation" required>
                </div>  
                <div class="form-group first">
                  <label for="coordonnees">Coordonnées</label>
                  <input type="text" class="form-control" placeholder="89 Rue de la Commune Est" name="coordonnees" id="coordonnees" required>
                </div>
                <div class="form-group first">
                  <label for="lieuJob">Lieu de travail</label>
                  <input type="text" class="form-control" placeholder="Hôpital Jean-Talon" name="lieuJob" id="lieuJob" required>
                </div>    
                <div class="form-group first">
                  <label for="username">Adresse courriel</label>
                  <input type="email" class="form-control" placeholder="votre-email@gmail.com" name="email" id="username" required>
                </div>
                <div class="form-group last mb-3">
                  <label for="password">Mot de passe</label>
                  <input type="password" class="form-control" placeholder="Votre mot de passe" name="password" id="password" required>
                </div>
                <div class="form-group last mb-3">
                  <label for="cpassword">Confirmer votre mot de passe</label>
                  <input type="password" class="form-control" placeholder="Votre mot de passe" id="cpassword" required>
                </div>
                <div class="form-group last mb-3">
                  <label>Sexe :</label><br>
                  <input type="radio" id="homme" name="sexe" value="Homme">
                  <label for="homme">Homme</label><br>
                  <input type="radio" id="femme" name="sexe" value="Femme">
                  <label for="femme">Femme</label>
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
