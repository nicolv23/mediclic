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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    </head>
    <body>
        <%@include file="entete.jsp" %>
        <script>
        document.getElementsByClassName("active")[0].classList.remove("active");
        document.getElementById("accueil").classList.add("active");
        </script>
        <div>
            <br><br><br><br><br>
            <style>
body {
    height: 100%;
    background-image: url("images/mediclic_background.jpg");
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
}
</style>
<br><br><br><br><br><br><br><br><br><br><br><br>
        <div class="text-center">
            <h1 class="display-1">Bienvenue chez MediClic !</h1>
            <c:if test="${sessionScope.nom != null}">
                <h1 class="display-2">Bonjour M./Mme ${sessionScope.nom}</h1>
                <h1 class="display-3">( ${sessionScope.type} )</h1>
            </c:if>
            <c:if test="${requestScope.message != null}">
                <h1 class="display-2">${requestScope.message}</h1>
            </c:if>
        </div>        
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            
        </div>
        <%@include file="piedpage.jsp" %>
    </body>
</html>
