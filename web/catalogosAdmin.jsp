<%-- 
    Document   : catalogosAdmin
    Created on : 14/05/2016, 12:20:59 AM
    Author     : Byron
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de Catálogos</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/semantic.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/custom.css">
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/catalogos.js"/></script>
        <script src="js/usuariosAdmin.js"/></script>
        <script src="js/header.js"/></script>
        <script src="js/jquery.paginemytable.js"></script>
    </head>
    <body>
        <%@ include file="Fragmentos/header.jspf" %>
        <div class="modal fade" id="myModalFormulario2" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" id="myModalTitle">Insertar / Modificar Catalogos
                    </div>
                    <div class="modal-body" id="myModalMessage">
                        <form role="form" onsubmit="return false;" id="formCatalogos">
                            <div class="form-group" id="groupTipo">
                                <label for="tipo">Tipo:</label>
                                <select id="tipo" name="tipo" class="form-control" >
                                    <option value="pelicula">Pelicula</option>
                                    <option value="serie">Serie</option>
                                </select>
                            </div>
                            <div class="form-group" id="groupNombre">
                                <label for="nombre">Nombre:</label>
                                <input type="text" class="form-control" id="nombreCatalogo" placeholder="Nombre" >
                            </div>
                            <div class="form-group" id="groupDirector">
                                <label for="director">Director:</label>
                                <input type="text" class="form-control" id="nombreDirector" placeholder="Director" >
                            </div>
                            <div class="form-group" id="groupActorPrincipal">
                                <label for="actorPrincipal">Actor principal:</label>
                                <input type="text" class="form-control" id="actorPrincipal" placeholder="Actor principal" >
                            </div>
                            <div class="form-group" id="groupCategoria">
                                <label for="tipo">Categoria:</label>
                                <select id="categoria" name="tipo" class="form-control">
                                </select>
                            </div>
                            <div class="form-group" id="groupCantidad">
                                <label for="cantidad">Cantidad existente:</label>
                                <input type="text" class="form-control" id="cantidadE" placeholder="Catidad" >
                            </div>
                            <div class="form-group" id="groupPrecioAlquiler">
                                <label for="precioAlquiler">Precio alquiler:</label>
                                <input type="text" class="form-control" id="precioAlquiler" placeholder="Digite el precio en colones">
                            </div>
                            <div class="form-group" id="groupPrecioVenta">
                                <label for="precioVenta">Precio venta:</label>
                                <input type="text" class="form-control" id="precioVenta" placeholder="Digite el precio en colones">
                            </div>
                            <div class="form-group" id="groupUrl">
                                <label for="urlImagen">URL de la imagen:</label>
                                <input type="text" class="form-control" id="urlImagen" placeholder="Introduzca el url de la imagen">
                            </div>
                            <div class="form-group" id="groupDescrip">
                                <label for="descripcion">Descripción:</label> 
                                <textarea class="form-control" id="descrip" placeholder="Información del catálogo"></textarea>
                            </div>
                            <div class="form-group">
                                <input type="hidden" value="agregarCatalogo" id="catalogosAction"/>
                                <button type="button" class="btn btn-primary" id="enviarCatalogos">Guardar</button>
                                <button type="reset" class="btn btn-danger" id="cancelarCatalogos">Cancelar</button>
                            </div>
                         </form>
                    </div>
                </div>
            </div>
        </div>
        <div>
        <h2>Gestión de Catálogos</h2>
           <br/>
            <center>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModalFormulario2" id="btMostarForm">Insertar Catálogo</button>
            </center>
            <div>
                <table>
                    <tr class="center">
                        <td style="padding: 8px; padding-left: 200px ;vertical-align: top;" ><label for="buscar">Buscar catálogo por nombre: </label></td>
                        <td style="padding: 8px; vertical-align: top;"><input type="text" size="50" class="form-control" id="textBuscar" placeholder="Digite el nombre del catálogo"></td>
                        <td style="padding: 8px; vertical-align: top;"><button type="button" class="btn btn-info" id="buscarPorNombre">Buscar  <span class="glyphicon glyphicon-search"></span></button></td>
                    </tr>
                </table>
            </div>
            <table border="2" class="table table-hover table-condensed data-table ui" id="tablaCatalogos"></table>
       </div>
    </body>
</html>
