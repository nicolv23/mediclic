<%-- 
    Document   : inscription
    Created on : 2022-03-11, 12:41:18
    Author     : Volta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

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
        document.getElementsByClassName("active")[0].classList.remove("active");
        document.getElementById("connexion").classList.add("active");
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
            <div class="form-block mx-auto marginajout ">
              <div class="text-center mb-5">
              <h3>Connexion</h3>
              </div>
              <c:if test="${requestScope.message != null}">
                 <div class="text-center mb-5">
                     <h4 style="color:crimson">${requestScope.message}</h4>
                 </div>
              </c:if>
                
              <c:if test="${requestScope.messageInscription != null}">
                 <div class="text-center mb-5">
                     <h4 style="color:forestgreen">${requestScope.messageInscription}</h4>
                 </div>
              </c:if>
              
              <form action="connexion" method="post">
                  <br>
                <div class="form-group first">
                  <label for="cusername">Adresse courriel</label>
                  <input type="email" name="email" class="form-control" placeholder="Saisissez votre email" id="cusername" required>
                </div>
                <div class="form-group last mb-3">
                  <label for="cpassword">Mot de passe</label>
                  <input type="password" name="password" class="form-control" placeholder="Entrez votre mot de passe" id="cpassword" required>
                </div>
                  <br>
                  Vous n'êtes pas encore inscrit ? <a class="pascompte" href="inscription.jsp">Créer un compte</a>
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
