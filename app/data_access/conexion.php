<?php
class Conexion {
    // public $host       = "localhost";
    // public $dbname     = "DB_Policine";
    // public $username   = "ferkhan";
    // public $password   = "ferkhan";
    // public $conn       = null;

    public $host       = "yamabiko.proxy.rlwy.net";
    public $dbname     = "railway";
    public $username   = "postgres";
    public $password   = "EQdgiIzhThISqvEbupPkpSxSCWHrwZiw";
    public $port       = "51372";
    public $conn       = null;

    // Método que permite realizarla la conexión a la base de datos
    public static function obtenerConexion() {
        try {
            $connection = new Conexion();
            $connection->conn = new PDO ("pgsql: host = $connection->host; port = $connection->port; dbname = $connection->dbname", $connection->username, $connection->password);
            // echo "Conexión exitosa";
            return $connection->conn;
        } catch(PDOException $exp) {
            echo "Sin conexión: " . $exp;
        }

    }
}


