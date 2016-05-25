<%-- 
    Document   : carrito
    Created on : 21/05/2016, 03:55:21 PM
    Author     : Byron
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/font-awesome-4.5.0/css/font-awesome.min.css" />
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/custom.css">
        <script src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/carrito.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <%@ include file="Fragmentos/header.jspf" %>
        <div class="container" id="carro">
            <table id="cart" class="table table-hover table-condensed">
                <!--
                <tfoot>
                    <tr class="visible-xs">
                            <td class="text-center"><strong>Total 1.99</strong></td>
                    </tr>
                    <tr>
                            <td><a href="#" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
                            <td colspan="2" class="hidden-xs"></td>
                            <td class="hidden-xs text-center"><strong>Total $1.99</strong></td>
                            <td><a href="#" class="btn btn-success btn-block">Checkout <i class="fa fa-angle-right"></i></a></td>
                    </tr>
                </tfoot>
                -->
            </table>
        </div>
        <script src="js/header.js"/></script>
    </body>
</html>
