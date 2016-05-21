<%-- 
    Document   : admin
    Created on : 14/05/2016, 03:49:27 AM
    Author     : Byron
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administración de MovieStar</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/custom.css">
        <script src="js/jquery.min.js"></script>
        <script src="js/admin.js"/></script>
        <script src="js/bootstrap.min.js"></script>
        
        
    </head>
    <body>
        <%@ include file="Fragmentos/header.jspf" %>
        <button type="button" id="categoria" class="btn btn-primary btn-block">Administrar categorías</button>
        <button type="button" id="catalogos" class="btn btn-primary btn-block">Administrar catálogos</button>
        <button type="button" id="usuarios" class="btn btn-primary btn-block">Administrar usuarios</button>
        <script src="js/header.js"/></script>
    </body>
    
</html>
