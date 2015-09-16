<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Sala De Juegos</title>

		<!--Estilos-->
		 <link rel="icon" href="http://www.octavio.com.ar/favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/estilo.css">
		<link rel="stylesheet" type="text/css" href="css/animacion.css">
		<link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/ingreso.css" rel="stylesheet">
		<!--final de Estilos-->

		<!--Lógica-Programación-->

<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        <script type="text/javascript">
        function registrar()
        {
        	window.location.href="formUsuarioJquery.php";
        }
        function login()
        {

        	var elUsuario=$("#nombreUsuario").val();
        	var laClave=$("#claveUsuario").val();

        	var funcionAjax =$.ajax({url:"ValidarUsuario.php", type:"post",
        		data:{
        			usuario:elUsuario,
        			clave:laClave
        			}});


        	funcionAjax.done(function(respuesta){

        		if(respuesta=="correcto")
        		{
					$("#MensajeError").val("");
					window.location.href="menu.php"; 			// vamos al menu
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

        </script>
        <!--Final de Lógica-Programación -->

<style type="text/css">





</style>
	</head>
	<body style="zoom: 0.8;">

		<div id="header">


Ingreso a la sala

        </div>
		<div class="CajaInicio animated bounceInRight">
			<br><br>
			
	 <div id="formLogin" class="container">

      <form  class="form-ingreso " onsubmit="login();return false;">
        <h2 class="form-ingreso-heading">Ingrese sus datos</h2>
        <label for="correo" class="sr-only">Correo electrónico</label>
                <input type="email" id="correo" class="form-control" placeholder="Correo electrónico" required="" autofocus="" value="<?php  if(isset($_COOKIE["registro"])){echo $_COOKIE["registro"];}?>">
        <label for="clave" class="sr-only">Clave</label>
        <input type="password" id="clave" minlength="4" class="form-control" placeholder="clave" required="">
        <div class="checkbox">
          <label>
            <input type="checkbox" id="recordarme" checked> Recordame
          </label>
          
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Ingresar</button>
      <p>octavio@admin.com.ar</p>
      <p>1234</p>
      </form>
      <br>
		<form  class="form-ingreso " >
        <h5 class="form-ingreso-heading">Información</h5>
        <input type="text"  class="form-control" readonly id="MensajeError" >
        <h3 class="form-ingreso-heading">Registrar</h3>

                <button class="btn btn-lg btn-warning btn-block" onclick="registrar()" type="button">Registrar</button>
   				

      </form>


    </div> <!-- /container -->



			
				


			


		</div>

		<center>

		</center>

	</body>
</html>
