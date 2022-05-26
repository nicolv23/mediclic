<%-- 
    Document   : disponibilitesHoraire
    Created on : 21-May-2022, 17:01:43
    Author     : Metafora
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Medi - Horaire</title>
        <link rel="stylesheet" href="css/style.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
              rel ="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.1.0/main.min.css">
        <script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.1.0/main.min.js"></script>
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
        <style>
    <%@ include file="css/calendrier.css"%>
    <%@ include file="js/calendrier.js"%>
</style>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    </head>
    <body>
        <%@include file="entete.jsp" %>
        <script>
        document.getElementsByClassName("active")[0].classList.remove("active");
        document.getElementById("accueil").classList.add("active");
        </script>
      
            <br><br><br><br><br>
           <style>
body {
    height: 100%;
    background-image: url("images/mediclic.jpg");
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
}
</style>
           <div class ="titre">Disponibilités des médecins</div>
<input type="date" id='date'/>
<input type="time" id='starttime'/>
<input type="time" id='endtime'/>
<button>Ajouter</button>

 <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://127.0.0.1:3306/mediclic?serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false"
         user = "root"  password = "root"/>
                <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from mediclic.rdv;
      </sql:query>
       
         
<div class = "calendar-container">
    <div class="header">
        <ul class="weekdays">
            <li>Dimanche</li>
            <li>Lundi</li>
            <li>Mardi</li>
            <li>Mercredi</li>
            <li>Jeudi</li>
            <li>Vendredi</li>
            <li>Samedi</li>
        </ul>
        
        <ul class="daynumbers">
            <li>20</li>
            <li>21</li>
            <li>22</li>
            <li>23</li>
            <li>24</li>
            <li>25</li>
            <li>26</li>
        </ul>
    </div>
    
    <div class="timeslots-container">
        <ul class="timeslots">
            <li>8<sup>h</sup></li>
            <li>9<sup>h</sup></li>
            <li>10<sup>h</sup></li>
            <li>11<sup>h</sup></li>
            <li>12<sup>h</sup></li>
            <li>13<sup>h</sup></li>
            <li>14<sup>h</sup></li>
            <li>15<sup>h</sup></li>
            <li>16<sup>h</sup></li>
            <li>17<sup>h</sup></li>
            <li>18<sup>h</sup></li>
            <li>19<sup>h</sup></li>
            <li>20<sup>h</sup></li>
        </ul>
    </div>
    
    <div class="event-container">
        <div class="slot slot-1">
            <div class="event-status"></div>
            <span>Rendez-Vous A</span>
        </div>
    </div>
        
    </div>


 <%@include file="piedpage.jsp" %>
        </body>
</html>
