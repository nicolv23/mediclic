<%-- 
    Document   : contact
    Created on : 2022-03-11, 13:54:07
    Author     : Volta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nous contacter</title>
        <link rel="stylesheet" href="css/inscription.css">
    </head>
    <body>
        <%@include file="entete.jsp" %>
        <script>
        document.getElementById("accueil").classList.remove("active");
        document.getElementById("connexion").classList.remove("active");
        document.getElementById("contact").classList.add("active");
        </script>
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
                  <input type="text" class="form-control" placeholder="Saisissez votre email" name="email" id="cusername">
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
