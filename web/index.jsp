<%-- 
    Document   : index
    Created on : 05/05/2016, 10:40:35 PM
    Author     : Byron
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import=" java.sql.*, java.util.*,java.io.*" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Video Star</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
        <link rel="stylesheet" type="text/css" href="css/font-awesome-4.5.0/css/font-awesome.min.css" />
        <script src="js/principal.js"></script>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/ajSlider.js"></script>
        <script src="js/myJs.js"></script> 
        <script src="js/registro.js"/></script>
        <script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
        <link rel="stylesheet" href="css/custom.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <%@ include file="Fragmentos/header.jspf" %>
            <div id="ajSlider">
            </div>
            <div class="container" id="cont">
            <div class="row">
                <div class="col-sm-12">
                    <div class="page-header">
                        <h3>Lo más reciente</h3>
                    </div>
                    <div id="myCarousel" class="row carousel slide" data-ride="carousel">
                        <div class="carousel-inner" id="reciente">
                            <div class='item active'>
                                <ul class='thumbnails' id="activo">
                                </ul>
                            </div>
                        <div class="control-box" id="prevNext">                            
                        </div>  
                    </div>
                </div>      
            </div>
            </div>
        </div>
                    <script src="js/header.js"/></script>
    
        <footer>
            <div id="footer" class="container well">
                <div>
                    <div class="row">
                        <h3 class="footertext">Sobre Nosotros:</h3>
                        <br>
                        <div class="col-md-4">
                            <i class="fa fa-university bigicon fa-5x"></i>
                            <br>
                            <h4 class="footertext">MovieStar</h4>
                            <p class="footertext">MovieStar nace como parte del proyecto de Programación IV de la Universidad Nacional de Costa Rica.<br>
                          </div>
                        <div class="col-md-4">
                            <i class="fa fa-eye bigicon fa-5x"></i>
                            <br>
                            <h4 class="footertext">Objetivo</h4>
                            <p class="footertext">El objetivo de nuestro proyecto es simular un comercio dedicado al alquiler/venta de peliculas y/o series.<br>
                          </div>
                          <div class="col-md-4">
                                <i class="fa fa-code bigicon fa-5x"></i>
                                <h4 class="footertext">Programadores</h4>
                                <p class="footertext"><i class="fa fa-female bigicon fa-2x"></i> Meribeth Zúñiga Zúñiga.<br>
                                <p class="footertext"><i class="fa fa-male bigicon fa-2x"></i> Bayron Picado Obando.<br>
                          </div>
                        </div>
                    <div class="row">
                        <p class="footertext">Copyright 2016</p>
                    </div>
                </div>
            </div>
        </footer>
            <script src="js/carrusel.js"/></script>
    </body>
</html>

