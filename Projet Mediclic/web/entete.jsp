<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!doctype html>
<html lang="fr">
  <head>
  	<title>Entête</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" >

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/style.css">

	</head>
	<body>
	<section class="ftco-section">

		
		<div class="container">
			<div class="row justify-content-between">
				<div class="col">
					<a class="navbar-brand agrandissement" href="index.jsp">Medi <span>Clic</span></a>
				</div>
				<div class="col d-flex justify-content-end">
					<div class="social-media">
		    		<p class="mb-0 d-flex">
		    			<a href="https://facebook.com" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a>
		    			<a href="https://twitter.com" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a>
		    			<a href="https://instagram.com" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
		    			<a href="https://dribble.com" class="d-flex align-items-center justify-content-center"><span class="fa fa-dribbble"><i class="sr-only">Dribbble</i></span></a>
		    		</p>
	        </div>
				</div>
			</div>
		</div>
		<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	    
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="fa fa-bars"></span> Menu
	      </button>
				<form action="#" class="searchform order-lg-last">
                                    

        </form> 
                <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://127.0.0.1:3306/mediclic?serverTimezone=UTC&allowPublicKeyRetrieval=true&useSSL=false"
         user = "root"  password = "root"/>
                <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from mediclic.medecins;
      </sql:query>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav mr-auto">
	        	<li class="nav-item active" id="accueil"><a href="index.jsp" class="nav-link">Accueil</a></li>
	        	<li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Prendre un rendez-vous</a>
              <div class="dropdown-menu" aria-labelledby="dropdown04">
                  <c:forEach var = "row" items="${result.rows}">
                      <a class="dropdown-item" href="rendezVous.jsp" class="nav-link">${row.prenom} ${row.nom}</a>
                          <%--<c:out value = "${row.prenom}"/> <span>&nbsp;</span><c:out value = "${row.nom}"/>--%>
                      </a>
                  </c:forEach>
                 
              </div>
            </li>
            <c:choose>
                <c:when test="${sessionScope.nom != null}">
                    <li class="nav-item" id="deconnexion"><a href="deconnexion" class="nav-link">Se déconnecter</a></li>
                </c:when>
                    
                <c:otherwise>
                    <li class="nav-item" id="connexion"><a href="connexion.jsp" class="nav-link">Se connecter</a></li>
                </c:otherwise>    
            </c:choose>	
                  
	          <li class="nav-item" id="contact"><a href="contact.jsp" class="nav-link">Nous contacter</a></li>
                  <li class="nav-item" id="horaire"><a href="horaire.jsp" class="nav-link">Horaire</a></li>
                  <li class="nav-item" id="services"><a href="services.jsp" class="nav-link">Nos Services</a></li>
                <c:if test="${sessionScope.nom != null}">
                    <c:choose>
                        <c:when test="${sessionScope.sexe == 'Femme'}">
                          <li class="nav-item" id="profil"><a href="profil.jsp" class="nav-link"><img src="images/profilef.png" alt="Image de Profile" width="20" height="20">   ${sessionScope.prenom} ${sessionScope.nom}</a></li>  
                        </c:when>
                    
                        <c:otherwise>
                        <li class="nav-item" id="profil"><a href="profil.jsp" class="nav-link"><img src="images/profile.png" alt="Image de Profile" width="20" height="20">   ${sessionScope.prenom} ${sessionScope.nom}</a></li>
                    
                        </c:otherwise>    
                    </c:choose>	
                </c:if>
                <c:if test="${sessionScope.type == 'administrateur'}">
                    <li class="nav-item dropdown" id="modif">
                    <a class="nav-link dropdown-toggle" href="#" id="modifier" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Modifier</a>
                    <div class="dropdown-menu" aria-labelledby="modifier"> 
                        <a class="dropdown-item" href="afficherPatients" class="nav-link">Liste des patients</a>
                        <a class="dropdown-item" href="afficherMedecins" class="nav-link">Liste des médecins</a>
                       <a class="dropdown-item" href="afficherCliniques" class="nav-link">Liste des cliniques</a>
                    </li>
                </c:if>        
                        
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->

	</section>

	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>

	</body>
</html>

