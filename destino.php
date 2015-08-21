<?php
session_start();

$_SESSION['usuarioActual']=$_POST['usuario'];

setcookie('ultimoUsuario',$_POST['usuario']);

var_dump($_SESSION);
echo "<br>";
echo "con request :". $_REQUEST['usuario'];
echo "<br>";
echo  "con get :".$_GET['usuario'];
echo "<br>";
echo  "con post :".$_POST['usuario'];

header("location:menu.php");


?>