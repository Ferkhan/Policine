<?php
class Conexion {
    private $host       = "192.168.127.184";
    private $dbname     = "DB_Policine";
    private $username   = "ferkhan";
    private $password   = "ferkhan";
    private $conn       = null;
    protected   $TBL_PELICULA   = "pelicula",
                $TBL_USUARIO    = "usuario",
                $TBL_FUNCION    = "funcion";

    // Método que permite realizarla conección conexión a la base de datos


    public static function obtenerConexion() {
        try {
            $connection = new Conexion();
            $connection->conn = new PDO ("pgsql: host = $connection->host; dbname = $connection->dbname", $connection->username, $connection->password);
            // echo "Conexión exitosa";
            return $connection->conn;
        } catch(PDOException $exp) {
            echo "Sin conexión: " . $exp;
        }

    }
}


