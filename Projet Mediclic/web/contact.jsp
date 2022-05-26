<%-- 
    Document   : contact
    Created on : 2022-03-11, 13:54:07
    Author     : Volta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Medi - Contact</title>
        <link rel="stylesheet" href="css/inscription.css">
    </head>
    <body>
        <%@include file="entete.jsp" %>
        
        <script>
        document.getElementsByClassName("active")[0].classList.remove("active");
        document.getElementById("accueil").classList.add("active");
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
              <h3>Contact</h3>
              </div>
              <form action="https://formsubmit.co/mediclic0@gmail.com" method="post">
                  <br>
                <div class="form-group first">
                  <label for="cusername">Adresse courriel</label>
  
                  
            <c:choose>
                <c:when test="${sessionScope.nom != null}">
                    <input type="text" class="form-control" value="${sessionScope.mail}" name="email" id="cusername" disabled>
                </c:when>
                    
                <c:otherwise>
                    <input type="text" class="form-control" placeholder="Entrez votre mail" name="email" id="cusername">
                </c:otherwise>    
            </c:choose>	
                </div>
                <div class="form-group last mb-3">
                  <label for="cpassword">Message</label>
                  <textarea rows="6" name="message" class="form-control" placeholder="Message..." required=""></textarea>
                </div>

                  <br><br>



                <input type="submit" value="Envoyer" class="btn btn-block btn-primary">

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
