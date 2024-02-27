<?php
class Conexion {
    public $host       = "192.168.1.23";
    public $dbname     = "DB_Policine";
    public $username   = "ferkhan";
    public $password   = "ferkhan";
    public $conn       = null;

    // Método que permite realizarla la conexión a la base de datos
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


