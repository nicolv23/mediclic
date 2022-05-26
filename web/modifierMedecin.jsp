<%-- 
    Document   : modifierMedecin
    Created on : 2022-05-20, 17:35:04
    Author     : Joma_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Medi - Modifier médecin</title>
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
        <div class="contents">

            <div class="container">
                <div class="row align-items-center justify-content-center">
                    <div class="col-md-12 paddingajout">
                        <div class="form-block mx-auto marginajout">
                            <div class="text-center mb-5">
                                <h3>Modifier un médecin</h3>
                            </div>
                            <form action="adminMedecin" method="post">
                                <c:if test="${medecin != null}">
                                <input type="hidden" name="id" value="${medecin.id}">

                                <div class="form-group first">
                                    <label for="nom">Nom</label>
                                    <input type="text" class="form-control" value="${medecin.nom}" placeholder="Nouveau nom" name="nom" id="nom" required>
                                </div>  
                                <div class="form-group first">
                                    <label for="prenom">Prénom</label>
                                    <input type="text" class="form-control" value="${medecin.prenom}" placeholder="Nouveau prénom" name="prenom" id="prenom" required>
                                </div>  
                                <div class="form-group first">
                                    <label for="specialite">Spécialité</label>
                                    <input type="text" class="form-control" value="${medecin.specialite}" placeholder="Chirurgien" name="specialite" id="specialite" required>
                                </div>
                                <div class="form-group first">
                                    <label for="numpro">Numéro de téléphone professionnel</label>
                                    <input type="text" class="form-control" value="${medecin.numpro}" placeholder="(514)826-2123" name="numpro" id="numpro" required>
                                </div>
                                <div class="form-group first">
                                    <label for="facturation">Facturation</label>
                                    <input type="number" class="form-control" value="${medecin.facturation}" placeholder="350" name="facturation" id="facturation" required>
                                </div>  
                                <div class="form-group first">
                                    <label for="coordonnees">Coordonnées</label>
                                    <input type="text" class="form-control" value="${medecin.coordonnes}" placeholder="89 Rue de la Commune Est" name="coordonnees" id="coordonnees" required>
                                </div>
                                <div class="form-group first">
                                    <label for="lieuJob">Lieu de travail</label>
                                    <input type="text" class="form-control" value="${medecin.lieuTravail}" placeholder="Hôpital Jean-Talon" name="lieuJob" id="lieuJob" required>
                                </div>
                                <div class="form-group first">
                                    <label for="username">Adresse courriel</label>
                                    <input type="email" class="form-control" value="${medecin.mail}" placeholder="nouveau-mail@gmail.com" name="email" id="username" required>
                                </div>
                                <div class="form-group last mb-3">
                                    <label for="password">Mot de passe</label>
                                    <input type="password" class="form-control" value="${medecin.password}" placeholder="Nouveau mot de passe" name="password" id="password" required>
                                </div>
                                </c:if>
                                

                                <br>
                                
                                <input type="submit" name="medecinModifie" value="Soumettre" class="btn btn-block btn-primary">

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>




        <br><br><br><br>

        <%@include file="piedpage.jsp" %>
    </body>
</html>
