<%-- 
    Document   : index
    Created on : 27 de abr. de 2023, 09:42:14
    Author     : QI
--%>

<%@page import="model.User"%>
<%
    User userSession = (User) session.getAttribute("userSession");
    //out.print(userSession);
    if(userSession != null) {
        response.sendRedirect("index.html");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Game</title>
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="icon" href="img/logotipo.png"/>
        <link rel="stylesheet" href="style.css">
        <link rel="shortcut icon" href="fivicon.jpg" type="image/x-icon">
    </head>
    <body>
        <form class="container1" action="login_controller" method="post">
            <input type="text" name="user" id="user" class="fields" placeholder="Nome:" required>
            
            <input type="password" name="pass" id="pass" class="fields" placeholder="Senha:" required>
            
            <button type="submit" value="Entrar" class="submit">Entrar</button>
        </form>
    </body>
</html>
