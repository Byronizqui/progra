<%-- 
    Document   : categoriasAdmin
    Created on : 14/05/2016, 12:20:40 AM
    Author     : Byron
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión de categorías</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/semantic.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/custom.css">
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/categorias.js"/></script>
        <script src="js/header.js"/></script>
        <script src="js/jquery.paginemytable.js"></script>
    </head>
    <body>
        <%@ include file="Fragmentos/header.jspf" %>
        <div class="modal fade" id="myModalFormulario" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" id="myModalTitle">Insertar / Modificar Categorias
                    </div>
                    <div class="modal-body" id="myModalMessage">
                        <form role="form" onsubmit="return false;" id="formCategorias">
                            <div class="form-group" id="groupNombreCategoria">
                                <label for="nombre">Nombre:</label>
                                <input type="text" class="form-control" id="nombreCategoria" placeholder="Nombre" >
                            </div>
                            <div class="form-group">
                                <label for="observaciones">Observaciones:</label>
                                <textarea class="form-control" maxlength="400" rows="3" id="observaciones"></textarea>
                            </div>
                            <div class="form-group">
                                <input type="hidden" value="agregarCategoria" id="categoriasAction"/>
                                <button type="button" class="btn btn-primary" id="enviarCategoria">Guardar</button>
                                <button type="reset" class="btn btn-danger" id="cancelarCategorias">Cancelar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div> 
        <div>
        <h2>Gestión de Categorias</h2>
            <br/>
            <center>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModalFormulario" id="btMostarForm">Insertar Categoría</button>
            </center>
            <div>
                <table>
                    <tr class="center">
                        <td style="padding: 8px; padding-left: 200px ;vertical-align: top;" ><label for="buscar">Buscar categorías por nombre: </label></td>
                        <td style="padding: 8px; vertical-align: top;"><input type="text" size="50" class="form-control" id="textBuscar" placeholder="Digite el nombre del categorías"></td>
                        <td style="padding: 8px; vertical-align: top;"><button type="button" class="btn btn-info" id="buscarPorNombre">Buscar  <span class="glyphicon glyphicon-search"></span></button></td>
                    </tr>
                </table>
            </div>
            <table border="2" class="table table-hover table-condensed data-table ui" id="tablaCategorias"></table>
        </div>
    </body>
</html>
