$(document).ready(function(){
   $('#login2').click(function(){
      usuario = new Usuario(Number(get("id")),get("clave"),0);
            Proxy.userLogin(usuario,
                function(usuario){
                    switch(usuario.tipo){
                        case 0: // usuario no existe
                            window.alert("Invalido");
                            break;
                        case 1: // admin
                            document.location = "/SistemaClinica/ModuloAdmin/home.jsp";
                            break;
                        case 2: // medico
                            document.location = "/SistemaClinica/ModuloMedico/home.jsp";
                            break;
                        case 3:// paciente
                            document.location = "/SistemaClinica/ModuloPaciente/home.jsp";
                    }
                }); 
   }); 
});

