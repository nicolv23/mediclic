<%-- 
    Document   : index
    Created on : 2022-03-11, 10:48:54
    Author     : Volta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Medi - Accueil</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <%@include file="entete.jsp" %>
        <script>
        document.getElementById("connexion").classList.remove("active");
        document.getElementById("contact").classList.remove("active");
        document.getElementById("accueil").classList.add("active");
        </script>
        <div>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <h1>Page d'accueil à faire test</h1>
            <c:if test="${sessionScope.nom != null}">
                <h2>Bonjour M./Mme ${sessionScope.nom}</h2>
            </c:if>
            <c:if test="${requestScope.message != null}">
                <h2>${requestScope.message}</h2>
            </c:if>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            
        </div>
        <%@include file="piedpage.jsp" %>
    </body>
</html>
