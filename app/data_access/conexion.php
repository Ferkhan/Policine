<?php
class Conexion {
    public $DB_HOST     = "ep-odd-meadow-ac42xgdx-pooler.sa-east-1.aws.neon.tech";
    public $DB_NAME     = "neondb";
    public $DB_USER     = "neondb_owner";
    public $DB_PASSWORD = "npg_AxTL2prJecQ7";
    public $DB_PORT     = "5432";
    public $conn       = null;

    // Método que permite realizar la conexión a la base de datos
    public static function obtenerConexion() {
        try {
            $connection = new Conexion();

            $dsn = "pgsql:host={$connection->DB_HOST};port={$connection->DB_PORT};dbname={$connection->DB_NAME};sslmode=require";

            $connection->conn = new PDO($dsn, $connection->DB_USER, $connection->DB_PASSWORD);
            return $connection->conn;

        } catch(PDOException $exp) {
            echo "Sin conexión: " . $exp->getMessage();
            return null;
        }
    }
}


