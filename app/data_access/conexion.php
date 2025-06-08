<?php
class Conexion {
    // public $host       = "localhost";
    // public $dbname     = "DB_Policine";
    // public $username   = "ferkhan";
    // public $password   = "ferkhan";
    // public $conn       = null;

    public $DB_HOST     = "ep-odd-meadow-ac42xgdx-pooler.sa-east-1.aws.neon.tech";
    // public $DB_HOST     = "policine-poli-1";
    public $DB_NAME     = "neondb";
    public $DB_USER     = "neondb_owner";
    public $DB_PASSWORD = "npg_AxTL2prJecQ7";
    public $DB_PORT     = "5432";

    // public $DB_HOST       = getenv("DB_HOST");
    // public $DB_NAME       = getenv("DB_NAME");
    // public $DB_USER       = getenv("DB_USER");
    // public $DB_PASSWORD   = getenv("DB_PASSWORD");
    // public $DB_PORT       = getenv("DB_PORT");
    public $conn       = null;

    // Método que permite realizar la conexión a la base de datos
    public static function obtenerConexion() {
        try {
            $connection = new Conexion();

            // Obtener el endpoint ID (la primera parte del hostname)
            $endpointId = explode('.', $connection->DB_HOST)[0];

            // Codificar correctamente el parámetro options con URL encoding
            $options = rawurlencode("--endpoint=$endpointId");

            // Construir el DSN con sslmode=require y el parámetro options
            $dsn = "pgsql:host={$connection->DB_HOST};port={$connection->DB_PORT};dbname={$connection->DB_NAME};sslmode=require;options=$options";

            // Crear la conexión PDO
            $connection->conn = new PDO($dsn, $connection->DB_USER, $connection->DB_PASSWORD);
            return $connection->conn;

        } catch(PDOException $exp) {
            echo "Sin conexión: " . $exp->getMessage();
            return null;
        }
    }


}


