<?php 
session_start();
require_once("clases/usuario.php");
require_once("clases/AccesoDatos.php");
//echo $_POST['usuario'];
//echo $_POST['clave'];

if(usuario::validarusuario($_POST['usuario'],$_POST['clave']))

//if ($_POST['usuario']=="octavio" && $_POST['clave']=="1234")
{

	$_SESSION['usuarioActual']=$_POST['usuario'];
	echo "correcto";

}else
{
	echo "no esta en la base de datos";
}






?>