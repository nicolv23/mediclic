<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Medi - Horaire</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.1.0/main.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/responsive.css">
    <style>
        <%@ include file="css/messagerie.css"%>
        <%@ include file="css/calendrier.css"%>
    </style>
    <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="js/jquery.convform.js"></script>
    <script type="text/javascript" src="js/messages.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.1.0/main.min.js"></script>
</head>
<body>
    <%@include file="entete.jsp" %>
    <script>
        document.getElementsByClassName("active")[0].classList.remove("active");
        document.getElementById("accueil").classList.add("active");
    </script>

    <div class="container mt-5">
        <h1 class="text-center">Disponibilités des médecins</h1>
        <div class="row justify-content-center my-4">
            <div class="col-md-4">
                <input type="date" id="date" class="form-control" placeholder="Date"/>
            </div>
            <div class="col-md-3">
                <input type="time" id="starttime" class="form-control" placeholder="Heure de début"/>
            </div>
            <div class="col-md-3">
                <input type="time" id="endtime" class="form-control" placeholder="Heure de fin"/>
            </div>
            <div class="col-md-2">
                <button class="btn btn-primary btn-block" onclick="addAppointment()">Ajouter</button>
            </div>
        </div>

        <div id="calendar"></div>
    </div>

    <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
                       url="jdbc:mysql://127.0.0.1:3306/mediclic?serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false"
                       user="root" password="root"/>
    <sql:query dataSource="${snapshot}" var="result">
        SELECT * FROM mediclic.rdv;
    </sql:query>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var calendarEl = document.getElementById('calendar');
            var calendar = new FullCalendar.Calendar(calendarEl, {
                initialView: 'dayGridMonth',
                events: [
                    <c:forEach var="row" items="${result.rows}">
                        {
                            title: '${row.title}',
                            start: '${row.start_date}',
                            end: '${row.end_date}'
                        }<c:if test="${!rowStatus.last}">,</c:if>
                    </c:forEach>
                ]
            });
            calendar.render();
        });

        function addAppointment() {
            var date = document.getElementById('date').value;
            var startTime = document.getElementById('starttime').value;
            var endTime = document.getElementById('endtime').value;

            if (date && startTime && endTime) {
                var newEvent = {
                    title: 'Rendez-Vous',
                    start: date + 'T' + startTime,
                    end: date + 'T' + endTime
                };
                var calendar = FullCalendar.Calendar.getCalendar();
                calendar.addEvent(newEvent);
            } else {
                alert("Veuillez remplir tous les champs.");
            }
        }
    </script>

    <%@include file="piedpage.jsp" %>
</body>
</html>
