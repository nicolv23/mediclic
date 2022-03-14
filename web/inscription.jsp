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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    </head>
    <body>
        <%@include file="entete.jsp" %>
        <script>
        document.getElementsByClassName("active")[0].classList.remove("active");
        document.getElementById("connexion").classList.add("active");
        </script>
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
