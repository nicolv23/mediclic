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
        <title>Medi - Connexion</title>
        <link rel="stylesheet" href="css/inscription.css">
    </head>
    <body>
        <%@include file="entete.jsp" %>
        <br><br>
            <script>
        document.getElementById("accueil").classList.remove("active");
        document.getElementById("contact").classList.remove("active");
        document.getElementById("connexion").classList.add("active");
        </script>
    <div class="contents">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-12 paddingajout">
            <div class="form-block mx-auto marginajout ">
              <div class="text-center mb-5">
              <h3>Connexion</h3>
              </div>
              <form action="#" method="post">
                  <br>
                <div class="form-group first">
                  <label for="cusername">Adresse courriel</label>
                  <input type="email" class="form-control" placeholder="Saisissez votre email" id="cusername">
                </div>
                <div class="form-group last mb-3">
                  <label for="cpassword">Mot de passe</label>
                  <input type="password" class="form-control" placeholder="Entrez votre mot de passe" id="cpassword">
                </div>
                  <br>
                  Vous n'êtes pas encore inscrits? <a class="pascompte" href="inscription.jsp">Créer un compte</a>
                  <br><br>



                <input type="submit" value="Se connecter" class="btn btn-block btn-primary">

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
