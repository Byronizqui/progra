$(document).ready(function(){
   var id = $('#idPar').val();
   cargarCategorias(id);
});

function cargarCategorias(id){
    $.ajax({
        url: 'CatalogosServlet',
        data: {
            accion: 'showCatalogos',
            id: id
        },
        error: function () { //si existe un error en la respuesta del ajax
            alert("Se presento un error a la hora de cargar la información de las categorías en la base de datos");
        },
        success: function (data) { //si todo esta correcto en la respuesta del ajax, la respuesta queda en el data
            if (data.length <= 0){
                $('#show').html("");
                $('#show').append("<h2>Lastimosamente no hay nada en esta categoría :(</h2>");
                $('#show').append("<script src="+ "js/header.js"+"/></script>");
            }
            else {
                dibujarCatalogo(data);
            }
        },
        type: 'POST',
        dataType: "json"
    });
}

function dibujarCatalogo(data){
    $('#show').html("");
    for (var i =0; i < data.length; i++){
        $('#show').append("<div class='col-lg-4 col-sm-6'"+
                "><div class='portfolio-box'><img src="+data[i].CUrlImg+
                " class='img-responsive' alt=''>"+
                            "<div class='portfolio-box-caption'>"+
                                "<div class='portfolio-box-caption-content'>"+
                                    "<div class='project-category text-faded'>"+data[i].CNombre+
                                    "</div>"+
                                    "<div class='project-name'>"+data[i].CDescrip+
                                         "<br/>"+
                                        "Precio de venta: ₡" + data[i].CPrecComp +"<br/>"+
                                        "Precio de renta: ₡"+ data[i].CPrecAlqu +"<br/>"+
                                        "<button type='submit' class='btn btn-default'"+
                                        "><span class='glyphicon glyphicon-shopping-cart'></span></button>"+
                                    "</div>"+
                                "</div>"+
                            "</div>"+
                        "</div>"+
                    "</div> ");
    }
    $('#show').append("<script src="+ "js/header.js"+"/></script>");
}