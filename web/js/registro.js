$(document).ready(function() {
    
    $("#login").click(function() {
       login(); 
    });
    $("#cancelarUsuarios").click(function () {
        //limpiarForm();
        $("#myModalFormulario3").modal("hide");
    });
    $("#agregarUsuario").click(function() {
        enviar(); 
    });
    
   
});

function login() {
    $.ajax({
            url: 'UsuariosServelt',
            data: {
                accion: 'iniciarSesion',
                email: $("#email").val(),
                contrasena: $("#contra").val()
            },
            error: function () { //si existe un error en la respuesta del ajax
                mostrarMensaje("alert alert-danger", "Se genero un error, contacte al administrador (Error del ajax)", "Error!");
            },
            success: function (data) { //si todo esta correcto en la respuesta del ajax, la respuesta queda en el data
                $('#loginForm').trigger("reset");
                $("#deleteMessage").modal("hide");
                $('#login2').text("Cerrar sesion");
                $("#nombreUsuario").html("");
                var x = document.getElementById('nombreUsuario');
                x.innerHTML = "<p style= "+"color:#fff"+">Bienvenido "+ data.UNombre + "</p>";
                $(location).attr('href', 'http://localhost:8080/WebAppMovieStar/usuariosAdmin.jsp');
            },
            type: 'POST',
            dataType: 'json'
        });
};


 function mostrarMensaje(classCss, msg, neg) {
    //se le eliminan los estilos al mensaje
    $("#mesajeResult").removeClass();

    //se setean los estilos
    $("#mesajeResult").addClass(classCss);

    //se muestra la capa del mensaje con los parametros del metodo
    $("#mesajeResult").fadeIn("slow");
    $("#mesajeResultNeg").html(neg);
    $("#mesajeResultText").html(msg);
    $("#mesajeResultText").html(msg);
}
 
 function enviar() {
    if (validar()) {
        //Se envia la información por ajax
         $.ajax({
            
            url: 'UsuariosServelt',
            data: {
                accion: 'agregarUsuario',
                usuario: $("#user").val(),
                contrasena: $("#pass").val(),
                idUsuario: $("#id").val(),
                nombre: $("#fname").val(),
                apellidos: $("#lname").val(),
                direccion: $("#direc").val(),
                fechaNacimiento: $("#cumple").val(),
                correo: $("#email2").val(),
                telCasa: $("#phone").val(),
                telCel: $("#cellphone").val(),
                tipo: $("#tipo2").val()
            },
            error: function () { //si existe un error en la respuesta del ajax
                mostrarMensaje("alert alert-danger", "Se genero un error, contacte al administrador (Error del ajax)", "Error!");
            },
            success: function (data) { //si todo esta correcto en la respuesta del ajax, la respuesta queda en el data
                var respuestaTxt = data.substring(2);
                var tipoRespuesta = data.substring(0, 2);
                if (tipoRespuesta === "C~") {
                    alert("Usted se ha ingresado correctamente");
                } else {
                    if (tipoRespuesta === "E~") {
                    } else {
                        alert("Lo sentimos, ha ocurrido un error");
                        //mostrarMensaje("alert alert-danger", "Se genero un error, contacte al administrador", "Error!");
                    }
                }

            },
            type: 'POST'
        });
    } else {
        alert("el usuario NO se ingreso correctamente");
    }
   
}

function validar() {
    var validacion = true;
    //Elimina estilo de error en los css
    //notese que es sobre el grupo que contienen el input
    $("#groupUser").removeClass("has-error");
    $("#groupPass").removeClass("has-error");
    $("#groupId").removeClass("has-error");
    $("#groupName").removeClass("has-error");
    $("#groupLName").removeClass("has-error");
    $("#groupEmail2").removeClass("has-error");
    $("#groupCumple").removeClass("has-error");
    $("#groupPhone").removeClass("has-error");
    $("#groupCellPhone").removeClass("has-error");
    $("#groupDirec").removeClass("has-error");

    //valida cada uno de los campos del formulario
    //Nota: Solo si fueron digitados
    if (!testInputData("cellphone", numbersOnly) || $("#cellphone").val().length > 8) {
        $("#groupCellPhone").addClass("has-error");
        validacion = false;
    }
    
    if (!testInputData("phone", numbersOnly) || $("#phone").val().length > 8) {
        $("#groupPhone").addClass("has-error");
        validacion = false;
    }
    
    if (!testInputData("id", numbersOnly) || $("#id").val().length > 9) {
        $("#groupId").addClass("has-error");
        validacion = false;
    }
   
    if ($("#fname").val() === "" || $("#fname").val().length > 15) {
        $("#groupName").addClass("has-error");
        validacion = false;
    }
    
    if ($("#direc").val() === "" || $("#direc").val().length > 45) {  //lastname
        $("#groupDirec").addClass("has-error");
        validacion = false;
    }
    
    if ($("#lname").val() === "" || $("#lname").val().length > 25) {  //lastname
        $("#groupLName").addClass("has-error");
        validacion = false;
    }
    
    if ($("#user").val() === "" || $("#user").val().length > 15) {
        $("#groupUser").addClass("has-error");
        validacion = false;
    }
    
    if ($("#pass").val() === "" || $("#pass").val().length > 15) {
        $("#groupPass").addClass("has-error");
        validacion = false;
    }
    
    if ($("#email2").val() === "" || $("#email2").val().length > 15) {
        $("#groupEmail2").addClass("has-error");
        validacion = false;
    }
    
    return validacion;
}


function testInputData(myfield, restrictionType) {
  var myData = document.getElementById(myfield).value;
  if(myData!==''){
   if(restrictionType.test(myData)){
    return true;
   }else{
     return false;
   }
  }
  return;
    
 }

 var numbersOnly = /^\d+$/;
 var decimalOnly = /^\s*-?[1-9]\d*(\.\d{1,2})?\s*$/;
 var uppercaseOnly = /^[A-Z]+$/;
 var lowercaseOnly = /^[a-z]+$/;
 var stringOnly = /^[A-Za-z0-9]+$/;
