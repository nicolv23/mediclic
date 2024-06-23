<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Medi - Services</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="css/responsive.css">
    <style>
        <%@ include file="css/messagerie.css"%>
        <%@ include file="css/services.css"%>
        body {
            height: 100%;
            background-image: url("images/mediclic.jpg");
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }
        .services {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }
        .card {
            background: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            margin: 20px;
            padding: 20px;
            width: 300px;
            text-align: center;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s;
        }
        .card:hover {
            transform: scale(1.05);
        }
        .card i {
            font-size: 50px;
            margin-bottom: 15px;
        }
        .card h1 {
            font-size: 24px;
            margin-bottom: 15px;
        }
        .card .content {
            font-size: 16px;
        }
    </style>
    <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="js/jquery.convform.js"></script>
    <script type="text/javascript" src="js/messages.js"></script>
</head>
<body>
    <%@include file="entete.jsp" %>
    <script>
        document.getElementsByClassName("active")[0].classList.remove("active");
        document.getElementById("accueil").classList.add("active");
    </script>

    <div class="container mt-5">
        <div class="titre text-center">
            <h1>Nos Services</h1>
        </div>
        <div class="services">
            <div class="card">
                <i class="fa fa-user-md" aria-hidden="true"></i>
                <h1>Médecine familiale</h1>
                <div class="content">
                    <p>Le médecin de famille se retrouve généralement dans une clinique familiale, un hôpital. Un médecin de famille peut également faire partie d'un groupe de médecine de famille (GMF).
                    Trouvez un médecin de famille ou un GMF près de chez vous à l'aide du répertoire de Mediclic.</p>
                </div>
            </div>

            <div class="card">
                <i class="fa fa-heartbeat" aria-hidden="true"></i>
                <h1>Suivi de grossesse</h1>
                <div class="content">
                    <p>Votre grossesse peut être suivie sur le plan médical, par un médecin (généraliste ou gynécologue) ou par une sage-femme, en libéral, à l'hôpital ou dans un centre de protection maternelle et infantile (PMI).</p>
                </div>
            </div>

            <div class="card">
                <i class="fa fa-hospital-o" aria-hidden="true"></i>
                <h1>Consultation prioritaire</h1>
                <div class="content">
                    <p>Si un problème de santé préoccupant nécessite une consultation médicale dans la prochaine semaine (ex. : perte de poids rapide, toux persistante), vous pouvez prendre rendez-vous avec votre médecin de famille à Mediclic.</p>
                </div>
            </div>

            <div class="card">
                <i class="fa fa-stethoscope" aria-hidden="true"></i>
                <h1>Consultation spécialisée</h1>
                <div class="content">
                    <p>Obtenez une consultation avec un spécialiste pour des problèmes de santé spécifiques nécessitant une expertise particulière.</p>
                </div>
            </div>

            <div class="card">
                <i class="fa fa-ambulance" aria-hidden="true"></i>
                <h1>Urgences médicales</h1>
                <div class="content">
                    <p>Nos services d'urgence sont disponibles 24/7 pour répondre à toute situation médicale nécessitant une intervention immédiate.</p>
                </div>
            </div>

            <div class="card">
                <i class="fa fa-flask" aria-hidden="true"></i>
                <h1>Laboratoire et analyses</h1>
                <div class="content">
                    <p>Accédez à une gamme complète de services de laboratoire pour vos analyses médicales et diagnostiques.</p>
                </div>
            </div>
        </div>
    </div>

    <%@include file="piedpage.jsp" %>
</body>
</html>
