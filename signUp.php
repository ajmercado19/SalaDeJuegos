<?php
session_start();

if(isset($_POST['usuario']) && isset($_POST['clave']) && $_POST['nombre'] && isset($_POST['apellido']) && isset($_POST['legajo']) && isset($_POST['dire']) && isset($_POST['fecha']))
    {
        $_SESSION['usuarioActual']=$_POST['usuario'];
        $email = $_POST['usuario'];
        //
        $ruta=getcwd();  //ruta directorio actual
        $rutaDestino=$ruta."/Fotos/";
    	$NOMEXT=explode(".", $_FILES['fichero0']['name']);
        $EXT=end($NOMEXT);
        $nomarch=$NOMEXT[0].".".$EXT;  // no olvidar el "." separador de nombre/ext
        $rutaActual = $ruta."/FotosTemp/".$nomarch;
        $nuevoNombre = $email.".".$EXT;
        //Renombro con el email/usuario
        rename ($ruta."/FotosTemp/".$nomarch,$ruta."/FotosTemp/".$nuevoNombre);
        $rutaActual = $ruta."/FotosTemp/".$nuevoNombre;
        echo $nomarch;
        echo "	</br>";
        echo $rutaActual;
         echo "	</br>";
        echo $rutaDestino.$nuevoNombre;
         echo "	</br>";
        //Muevo a carpeta Fotos
		rename($rutaActual,$rutaDestino.$nuevoNombre);
        //

        echo "Foto Guardada con éxito en carpeta Fotos del servidor";
        //Guardar usuario en BD
    }
    
    else
    {
    	echo "Error: Debe ingresar todos los campos";
    }
    
?>