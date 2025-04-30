<?php
class Conexion {
    // public $host       = "localhost";
    // public $dbname     = "DB_Policine";
    // public $username   = "ferkhan";
    // public $password   = "ferkhan";
    // public $conn       = null;

    // public $DB_HOST    = $_ENV["ayamabiko.proxy.rlwy.net"];
    // public $DB_NAME     =    $_ENV=["railway"];
    // public $DB_USER   =    $_ENV=["postgres"];
    // public $DB_PASSWORD   =    $_ENV=["EQdgiIzhThISqvEbupPkpSxSCWHrwZiw"];
    // public $DB_PORT       =    $_ENV=["51372"];


    public $DB_HOST       = getenv("DB_HOST");
    public $DB_NAME       = getenv("DB_NAME");
    public $DB_USER       = getenv("DB_USER");
    public $DB_PASSWORD   = getenv("DB_PASSWORD");
    public $DB_PORT       = getenv("DB_PORT");
    public $conn       = null;

    // Método que permite realizarla la conexión a la base de datos
    public static function obtenerConexion() {
        try {
            $connection = new Conexion();
            $connection->conn = new PDO ("pgsql: host = $connection->DB_HOST; port = $connection->DB_PORT; dbname = $connection->DB_NAME", $connection->DB_USER, $connection->DB_PASSWORD);
            // echo "Conexión exitosa";
            return $connection->conn;
        } catch(PDOException $exp) {
            echo "Sin conexión: " . $exp;
        }

    }
}


