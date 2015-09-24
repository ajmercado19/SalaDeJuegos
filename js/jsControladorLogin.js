  function login()
        {
             $("#MensajeError").val("Verificando... ");
           
            DatosLogin={};
            DatosLogin.usuario= $("#correo").val();
            DatosLogin.clave=$("#clave").val();;
           

            var funcionAjax =$.ajax({
                url:"ValidarUsuario.php",
                 type:"post",
                data: DatosLogin               
                });


            funcionAjax.done(function(respuesta){
                alert(respuesta);
                if(respuesta=="correcto")
                {
                    $("#MensajeError").val("");
                    window.location.href="menu.php";            // vamos al menu
                }
                else
                {
                    $("#MensajeError").val("NO esta registrado... ");

                    // mostrar mensaje "no esta en la base"
                    //vamos al registro
                    //window.location.href="registroJquery.php";
                }
        });



        }
