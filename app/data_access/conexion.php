<?php
class Conexion {
    // public $host       = "localhost";
    // public $dbname     = "DB_Policine";
    // public $username   = "ferkhan";
    // public $password   = "ferkhan";
    // public $conn       = null;

    public $DB_HOST     = "yamabiko.proxy.rlwy.net";
    public $DB_NAME     = "railway";
    public $DB_USER     = "postgres";
    public $DB_PASSWORD = "EQdgiIzhThISqvEbupPkpSxSCWHrwZiw";
    public $DB_PORT     = "51372";


    // public $DB_HOST       = getenv("DB_HOST");
    // public $DB_NAME       = getenv("DB_NAME");
    // public $DB_USER       = getenv("DB_USER");
    // public $DB_PASSWORD   = getenv("DB_PASSWORD");
    // public $DB_PORT       = getenv("DB_PORT");
    public $conn       = null;

    // Método que permite realizarla la conexión a la base de datos
    public static function obtenerConexion() {
        try {
            $connection = new Conexion();
            $dsn = "pgsql:host={$connection->DB_HOST};port={$connection->DB_PORT};dbname={$connection->DB_NAME}";
            $connection->conn = new PDO($dsn, $connection->DB_USER, $connection->DB_PASSWORD);

            // echo "Conexión exitosa";
            return $connection->conn;
        } catch(PDOException $exp) {
            echo "Sin conexión: " . $exp;
        }

    }
}


