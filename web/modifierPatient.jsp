<%-- 
    Document   : modifierPatient
    Created on : 2022-05-20, 16:04:03
    Author     : Joma_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Medi - Modifier patient</title>
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
                                <h3>Modifier un patient</h3>
                            </div>
                            <form action="adminPatient" method="post">
                                <c:if test="${patient != null}"> 
                                <input type="hidden" name="id" value="${patient.id}">    
                                <div class="form-group first">
                                    <label for="nom">Nom</label>
                                   <input type="text" class="form-control" value="${patient.nom}" placeholder="Nouveau nom" name="nom" id="nom" required>
                                </div>  
                                <div class="form-group first">
                                    <label for="prenom">Prénom</label>
                                      <input type="text" class="form-control" value="${patient.prenom}" placeholder="Nouveau prénom" name="prenom" id="prenom" required>
                                </div>  
                                <div class="form-group first">
                                    <label for="assurance">Numéro d'assurance maladie</label>
                                    <input type="text" class="form-control" value="${patient.assurance}" placeholder="BOUF94011419" name="assurance" id="assurance" required>
                                </div>
                                <div class="form-group first">
                                    <label for="naissance">Date de naissance</label>
                                    <input type="text" class="form-control" value="${patient.naissance}" placeholder="30-01-2000" name="naissance" id="naissance" required>
                                </div>  
                                <div class="form-group first">
                                    <label for="username">Adresse courriel</label>
                                    <input type="email" class="form-control" value="${patient.mail}" placeholder="nouveau-mail@gmail.com" name="email" id="username" required>
                                </div>
                                <div class="form-group last mb-3">
                                    <label for="password">Mot de passe</label>
                                    <input type="password" class="form-control" value="${patient.password}" placeholder="Nouveau mot de passe" name="password" id="password" required>
                                </div>
                               
                                </c:if>


                                <br>
                                
                                <input type="submit" name="patientModifie" value="Soumettre" class="btn btn-block btn-primary">

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
