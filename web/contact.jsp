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
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="entete.jsp" %>
        <script>
        document.getElementById("accueil").classList.remove("active");
        document.getElementById("connexion").classList.remove("active");
        document.getElementById("inscription").classList.remove("active");
        document.getElementById("contact").classList.add("active");
        </script>
        <div>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <h1>Page de contact à faire</h1>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            
        </div>
        <%@include file="piedpage.jsp" %>
    </body>
</html>
