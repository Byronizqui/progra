$(document).ready(function(){
   cargarCategorias(); 
   $("#buscadorBoton").click(function () {
       // buscarCatalogo();
       $(location).attr("href", "buscador.jsp?name="+$('#buscador').val());
    });
});

function cargarCategorias(){
    $.ajax({
        url: 'CategoriasServlet',
        data: {
            accion: 'consultarCategorias'
        },
        error: function () { //si existe un error en la respuesta del ajax
            alert("Se presento un error a la hora de cargar la información de las categorías en la base de datos");
        },
        success: function (data) { //si todo esta correcto en la respuesta del ajax, la respuesta queda en el data
            dibujarCategorias(data);
        },
        type: 'POST',
        dataType: "json"
    });
};

function dibujarCategorias(data){
    $('#pelisub').html("");
    $('#seriessub').html("");
    for (var i =0; i < data.length; i++){
        var nombre = data[i].CNombre;
        var tipo = nombre.substring(0, 2);
        var texto = "<li><a href=" + "catalogos.jsp?id="+ data[i].CId
                +">"+nombre.substring(2, data[i].length) +"</a></li>";
        if (tipo === "P~")
            $('#pelisub').append(texto);
        else if (tipo === "S~")
            $('#seriessub').append(texto);
    }
};