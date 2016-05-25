function add(id, nombre, alq, com){
    $.ajax({
        url: 'CarritoServlet',
        data: {
            accion: 'add',
            id: id,
            nombre: decodeURIComponent(nombre),
            precioAlq: alq,
            precioCom: com,
        },
        error: function () { //si existe un error en la respuesta del ajax
            alert("Se presento un error a la hora de añadir al carrito");
        },
        success: function (data) { //si todo esta correcto en la respuesta del ajax, la respuesta queda en el data
            alert(data);
        },
        type: 'POST'
    });
}

$(document).ready(function(){
   get(); 
});

function get(){
    $.ajax({
        url: 'CarritoServlet',
        data: {
            accion: 'get'
        },
        error: function () { //si existe un error en la respuesta del ajax
            alert("Se presento un error a la hora de cargar la información de las categorías en la base de datos");
        },
        success: function (data) { //si todo esta correcto en la respuesta del ajax, la respuesta queda en el data
            if (data === null || data.length <= 0){
                $('#carro').html("");
                $('#carro').append("<h2>No se ha añadido ningún elemento al carrito</h2>");
                $('#carro').append("<script src="+ "js/header.js"+"/></script>");
            }
            else {
                dibujarCarrito(data);
            }
        },
        type: 'POST',
        dataType: "json"
    });
}

function dibujarCarrito(dataJson) {
    //limpia la información que tiene la tabla
    $("#cart").html(""); 
    
    //muestra el enzabezado de la tabla
    var head = $("<thead />");
    var row = $("<tr />");
    head.append(row);
    $("#cart").append(head); 
    row.append($("<th><b>PRODUCTO</b></th>"));
    row.append($("<th><b>PRECIO</b></th>"));
    row.append($("<th><b>SUBTOTAL</b></th>"));
    
    for (var i = 0; i < dataJson.length; i++) {
        dibujarFilaCarrito(dataJson[i]);
    }
//    var foot = $("<tfoot />");
//    var rowFoot = $("<tr />");
//    foot.append(rowFoot);
//    $("#cart").append(foot);
//    
}

function dibujarFilaCarrito(rowData) {
    //Cuando dibuja la tabla en cada boton se le agrega la funcionalidad de cargar o eliminar la informacion
    //de un usuario
    var body = $("<tbody />");
    var row = $("<tr />");
    body.append(row);
    $("#cart").append(body); 
    row.append($("<td data-th='PRODUCTO'>"+
                    "<div class='row'>"+
                        "<div class='col-sm-10'>"+
                                "<h4 class='nomargin'>"+rowData.CNombre+"</h4>"+
                        "</div>"+
                    "</div>"+
                "</td>"));
    row.append($("<td data-th='PRECIO'>"+rowData.CPrecComp+"</td>"));
    row.append($("<td data-th='Subtotal' class='text-center'>"+rowData.CPrecComp+"</td>"));
    row.append($("<td class='actions' data-th=''>"+
                    "<button class='btn btn-info btn-sm'><i class='fa fa-refresh'></i></button>"+
                    "<button class='btn btn-danger btn-sm'><i class='fa fa-trash-o'></i></button>"+								
                "</td>"));
  
}