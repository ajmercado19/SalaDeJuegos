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
                $consulta =$objetoAccesoDato->RetornarConsulta("INSERT into usuario (nombre,apellido,legajo,direccion,fecha,mail,foto)values(:paramNombre,:paramApellido,:paramLegajo,:paramDireccion,:paramFecha,:paramMail,:paramFoto)");
                $consulta->bindValue(':paramNombre',$this->nombre, PDO::PARAM_INT);
                $consulta->bindValue(':paramApellido', $this->apellido, PDO::PARAM_STR);
                $consulta->bindValue(':paramLegajo', $this->legajo, PDO::PARAM_STR);
                $consulta->bindValue(':paramDireccion', $this->direccion, PDO::PARAM_STR);
                $consulta->bindValue(':paramFecha', $this->fecha, PDO::PARAM_STR);
                $consulta->bindValue(':paramMail', $this->mail, PDO::PARAM_STR);
                $consulta->bindValue(':paramFoto', $this->foto, PDO::PARAM_STR);
                $consulta->execute();       
                return $objetoAccesoDato->RetornarUltimoIdInsertado();
     }
   
}
?>