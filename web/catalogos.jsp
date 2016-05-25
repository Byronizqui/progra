<%-- 
    Document   : catalogos
    Created on : 14/05/2016, 09:11:39 PM
    Author     : Byron
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/custom.css">
        <link rel="stylesheet" href="css/creative.css">
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/carrito.js"></script>
    </head>
    <body>
        <%@ include file="Fragmentos/header.jspf" %>
        <%
            out.println("<input id="+ "idPar" +" type=" + "hidden" +" name="+"id"+" value="+ request.getParameter("id") +">");
        %>
        <div class="no-padding" id="portfolio">
            <div class="container-fluid">
                <div class="row no-gutter" id="show">
                    
                </div>
            </div>
        </div>
        <script src="js/show.js"/></script>
    </body>
</html>
