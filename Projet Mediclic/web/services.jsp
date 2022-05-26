<%-- 
    Document   : services
    Created on : 23 mai 2022, 17 h 43 min 47 s
    Author     : Nicolas Lazarte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Medi - Services</title>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/responsive.css">
       
        <style>
            <%@ include file="css/messagerie.css"%>
</style>
<link rel="stylesheet" type="text/css" href="css/jquery.convform.css">
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/jquery.convform.js"></script>
<script type="text/javascript" src="js/messages.js"></script>
    </head>
        <%@include file="entete.jsp" %>
        <script>
        document.getElementsByClassName("active")[0].classList.remove("active");
        document.getElementById("accueil").classList.add("active");
        </script>
        
            <br><br><br><br><br>
            <style>
                 <%@include file = "css/services.css" %>
                        
body {
    height: 100%;
    background-image: url("images/mediclic.jpg");
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
} 
</style>
 <body>
    <div class = "titre">
        <h1>Nos Services</h1>
    </div>
    <div class="services">
        <div class = "card">
            <i class="fa fa-user-md" aria-hidden="true"></i>
            <h1>Medecine familiale</h1>
            <div class="content">
                <p>Le médecin de famille se retrouve généralement dans une clinique familiale, un hôpital. Un médecin de famille peut également faire partie d'un groupe de médecine de famille (GMF).
                    Trouvez un médecin de famille ou un GMF près de chez vous à l'aide du répertoire de Mediclic.
                </p>  
                 </div>
            </div>
       
        
        <div class = "card">
           <i class="fa fa-heartbeat" aria-hidden="true"></i>
            <h1>Suivi de grossesse</h1>
            <div class="content">
                <p>Comment se passe le suivi de grossesse ? 
Votre grossesse peut être suivie sur le plan médical, par un médecin (généraliste ou gynécologue) ou par une sage-femme, en libéral, à l'hôpital ou dans un centre de protection maternelle et infantile (PMI).
                </p>  
                
            </div>
        </div>
        
         <div class = "card">
           <i class="fa fa-hospital-o" aria-hidden="true"></i>
            <h1>Consultation prioritaire </h1>
            <div class="content">
                <p>Si un problème de santé préoccupant nécessite une consultation médicale dans la prochaine semaine <br> (ex. : perte de poids rapide, toux persistante), vous pouvez prendre rendez-vous avec votre médecin de famille à Mediclic.
                </p>  
                
            </div>
        </div>
        
    </div>
   
   
            
     <%@include file="piedpage.jsp" %>
    </body>
</html>

