<?php
class usuario
{

  public $id;
  public $nombre;
  public $apellido;
  public $legajo;
  public $direccion;
  public $mail;
  public $fecha;
  public $foto;
  public $clave;
    

 
  
   public static function TraerTodosLosResultados()
   {
            $objetoAccesoDato = AccesoDatos::dameUnObjetoAcceso(); 
            $consulta =$objetoAccesoDato->RetornarConsulta("select * from usuario");
            $consulta->execute();           
            return $consulta->fetchAll(PDO::FETCH_CLASS, "usuario"); 

   }
  public function InsertarUsuario()
     {
                $objetoAccesoDato = AccesoDatos::dameUnObjetoAcceso(); 
                $consulta =$objetoAccesoDato->RetornarConsulta("INSERT into usuario (nombre,apellido,legajo,direccion,fecha,mail,foto,clave)values(:paramNombre,:paramApellido,:paramLegajo,:paramDireccion,:paramFecha,:paramMail,:paramFoto,:paramClave)");
                $consulta->bindValue(':paramNombre',$this->nombre, PDO::PARAM_INT);
                $consulta->bindValue(':paramApellido', $this->apellido, PDO::PARAM_STR);
                $consulta->bindValue(':paramLegajo', $this->legajo, PDO::PARAM_STR);
                $consulta->bindValue(':paramDireccion', $this->direccion, PDO::PARAM_STR);
                $consulta->bindValue(':paramFecha', $this->fecha, PDO::PARAM_STR);
                $consulta->bindValue(':paramMail', $this->mail, PDO::PARAM_STR);
                $consulta->bindValue(':paramFoto', $this->foto, PDO::PARAM_STR);
                $consulta->bindValue(':paramClave', $this->clave, PDO::PARAM_STR);
                $consulta->execute();       
                return $objetoAccesoDato->RetornarUltimoIdInsertado();
     }
     public function validarusuario($usuario,$clave)
     {
            $objetoAccesoDato = AccesoDatos::dameUnObjetoAcceso(); 
            $consulta =$objetoAccesoDato->RetornarConsulta("select * from usuario where mail='$usuario' and clave='$clave'");
            $consulta->execute();
            return $consulta->fetchAll(PDO::FETCH_CLASS, "usuario");

     }
   
}
?>