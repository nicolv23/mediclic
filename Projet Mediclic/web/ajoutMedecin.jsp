<%-- 
    Document   : ajoutMedecin
    Created on : 2022-05-21, 16:09:19
    Author     : Joma_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Medi - M-Ajout</title>
        <link rel="stylesheet" href="css/inscription.css">
    </head>
    <body>
        <%@include file="entete.jsp" %>
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
    <div class="contents">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-12 paddingajout">
            <div class="form-block mx-auto marginajout">
              <div class="text-center mb-5">
              <h3>Ajout d'un médecin</h3>
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
                  <input type="text" class="form-control" placeholder="Chirurgien" name="specialite" id="specialite" required>
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
                
                
                <input type="submit" name="ajoutAdmin" value="Ajouter" class="btn btn-block btn-primary">

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
