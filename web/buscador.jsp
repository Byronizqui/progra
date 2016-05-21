<%-- 
    Document   : usuariosAdmin
    Created on : 08-may-2016, 0:34:55
    Author     : Mery Zúñiga
--%>

<%-- 
    Document   : usuariosAdmin
    Created on : 08-may-2016, 0:34:55
    Author     : Mery Zúñiga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Resultados de búsqueda</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
        <link rel="stylesheet" type="text/css" href="css/font-awesome-4.5.0/css/font-awesome.min.css" />
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/creative.css">
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
        <link rel="shortcut icon" href="media/icon.ico">  
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/custom.css">
        <link rel="shortcut icon" href="media/icon.ico">
        
    </head>
    <body>
        <%@ include file="Fragmentos/header.jspf" %>
        <h3>Resultados de búsqueda: </h3></br>
           
            <%
              out.println("<input id="+ "name" +" type=" + "hidden" +" name="+"nombre"+" value="+ request.getParameter("name") +">");
            %>
            <div class="no-padding" id="portfolio">
                <div class="container-fluid">
                    <div class="row no-gutter" id="search">

                    </div>
                </div>
            </div>  
<!--            <div class="container2" id="buscar"></div>  -->
   <script src="js/buscador.js"/></script>
    </body>
    
</html>
