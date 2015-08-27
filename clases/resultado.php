<?php
class Resultado
{
   public $usuario;
   public $juego;
   public $resultado;
 
  
   public static function TraerTodosLosResultados()
   {
            $objetoAccesoDato = AccesoDatos::dameUnObjetoAcceso(); 
            $consulta =$objetoAccesoDato->RetornarConsulta("select * from resultado");
            $consulta->execute();           
            return $consulta->fetchAll(PDO::FETCH_CLASS, "Resultado"); 

   }
}
?>