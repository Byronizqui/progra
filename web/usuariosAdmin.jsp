<%-- 
    Document   : usuariosAdmin
    Created on : 08-may-2016, 0:34:55
    Author     : Mery Zúñiga
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Usuario Administrador</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/semantic.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/custom.css">
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/usuarios.js"></script>
        <link rel="shortcut icon" href="media/icon.ico">
        <script src="js/header.js"/></script>
        <script src="js/jquery.paginemytable.js"></script>
    </head>
    <body>
        <%@ include file="Fragmentos/header.jspf" %>
        <div class="modal fade" id="myModalFormulario3" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" id="myModalTitle">Insertar / Modificar Usuarios</h4>
                    </div>
                    <div class="modal-body" id="myModalMessage">
                        <form role="form" onsubmit="return false;" id="formUsuarios">
                            <div class="form-group" id="groupTipoUsuario">
                                <label for="tipoUsuario">Tipo de usuario:</label>
                                <select id="tipo" name="tipoUsuario" class="form-control">
                                    <option value="usuarioCliente">Usuario cliente</option>
                                    <option value="usuarioAdministrador">Usuario Administrador</option>
                                </select>
                            </div>
                            <div class="form-group" id="groupIde">
                                <label for="id">Identificación:</label>
                                <input type="number" class="form-control" id="ide" placeholder="Numero de indentificación" >
                            </div>
                            <div class="form-group" id="groupUsuario">
                                <label for="usuario">Usuario:</label>
                                <input type="text" class="form-control" id="usuario" placeholder="Usuario" >
                            </div>
                            <div class="form-group" id="groupContrasena">
                                <label for="pass">Contraseña:</label>
                                <input type="password" class="form-control" id="contrasena">
                            </div>
                            <div class="form-group" id="groupNombre">
                                <label for="nombre">Nombre:</label>
                                <input type="text" class="form-control" id="nombre">
                            <div class="form-group" id="groupApellidos">
                                <label for="apellidos">Apellidos:</label>
                                <input type="text" class="form-control" id="apellidos">
                            </div>
                            <div class="form-group" id="groupCorreo">
                                <label for="correo">Correo:</label>
                                <input type="text" class="form-control" id="correo">
                            </div>
                            <div class="form-group" id="groupFechaNac">
                                <label for="fechaNac">Fecha de nacimiento:</label>
                                <input type="date" name="bday" class="form-control" id="fechaNac" >
                            </div>
                            <div class="form-group" id="groupDireccion">
                                <label for="direccion">Dirección:</label>
                                <input type="text" class="form-control" id="direccion">
                            </div>
                            <div class="form-group" id="groupTelCasa">
                                <label for="telCasa">Teléfono de casa:</label>
                                <input type="text" class="form-control" id="telCasa">
                            </div>
                            <div class="form-group" id="groupTelCel">
                                <label for="telCel">Teléfono celular:</label>
                                <input type="text" class="form-control" id="telCel">
                            </div>
                            <div class="form-group">
                                <input type="hidden" value="agregarUsuario" id="usuariosAction"/>
                                <button type="button" class="btn btn-primary" id="enviarUsuarios">Guardar</button>
                                <button type="reset" class="btn btn-danger" id="cancelarUsuarios">Cancelar</button>
                            </div>
                         </form>
                    </div>
                </div>
            </div>
          </div> 
        </div>
       <div>
        <h2>Gestión de Usuarios</h2>
           <br/>
            <center>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModalFormulario3" id="btMostarForm">Insertar Usuario</button>
            </center>
            <div>
                <table>
                    <tr class="center">
                        <td style="padding: 8px; padding-left: 200px ;vertical-align: top;" ><label for="buscar">Buscar usuario por identificación: </label></td>
                        <td style="padding: 8px; vertical-align: top;"><input type="text" size="50" class="form-control" id="textBuscar" placeholder="Digitela cedula del usuario"></td>
                        <td style="padding: 8px; vertical-align: top;"><button type="button" class="btn btn-info" id="buscarPorNombre">Buscar  <span class="glyphicon glyphicon-search"></span></button></td>
                    </tr>
                </table>
            </div>
            <table border="2" class="table table-hover table-condensed data-table ui" id="tablaUsuarios"></table>
       </div>
    </body>
</html>
