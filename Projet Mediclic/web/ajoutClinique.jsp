<%-- 
    Document   : ajoutClinique
    Created on : 2022-05-22, 11:22:39
    Author     : Joma_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Medi - Ajouter clinique</title>
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
                                <h3>Ajout d'une clinique</h3>
                            </div>
                            <form action="adminClinique" method="post">

                                <div class="form-group first">
                                    <label for="nom">Nom</label>
                                    <input type="text" class="form-control" placeholder="Hôpital Santa Cabrini" name="nom" id="nom" required>
                                </div>    
                                <div class="form-group first">
                                    <label for="coordonnees">Coordonnées</label>
                                    <input type="text" class="form-control" placeholder="89 Rue de la Commune Est" name="coordonnees" id="coordonnees" required>
                                </div>
                                <div class="form-group last mb-3">
                                    <label for="services">Services</label>
                                    <input type="text" class="form-control" placeholder="Urgence, Suivi de grossesse, Radiologie" name="services" id="services" required>
                                </div>
                               
                                

                                <br>
                                
                                <input type="submit" name="cliniqueAjoute" value="Ajouter" class="btn btn-block btn-primary">

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
