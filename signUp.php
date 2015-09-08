<?php
session_start();

$_SESSION['usuarioActual']=$_POST['usuario'];

//Guardar usuario en BD
?>