<?php
include_once("conexion.php");

class FuncionDTO extends Conexion {
    public static function leerDatos() {
        try {
            $sql = "SELECT f.funcion_id, p.titulo AS pelicula, s.nombre AS sala, f.fecha_funcion, f.hora_inicio, f.precio_entrada
                    FROM funcion f 
                    INNER JOIN pelicula p ON f.pelicula_id = p.pelicula_id
                    INNER JOIN sala s ON f.sala_id = s.sala_id
                    WHERE f.estado_registro = true
                    ORDER BY f.funcion_id ASC";
            $stmt = Conexion::obtenerConexion()->prepare($sql);
            $stmt->execute();
            $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $result;

        } catch (PDOException $error) {
            echo $error->getMessage();
        }
    }

    public static function leerPorId($id) {
        try {
            $sql = "SELECT f.funcion_id, p.titulo AS pelicula, s.nombre AS sala, f.fecha_funcion, f.hora_inicio, f.precio_entrada
                    FROM funcion f 
                    INNER JOIN pelicula p ON f.pelicula_id = p.pelicula_id
                    INNER JOIN sala s ON f.sala_id = s.sala_id
                    WHERE f.estado_registro = true
                    AND f.funcion_id = :id";
            $stmt = Conexion::obtenerConexion()->prepare($sql);
            $stmt->bindParam(":id", $id);
            $stmt->execute();
            $result = $stmt->fetch();
            return $result;

        } catch (PDOException $error) {
            echo $error->getMessage();
        }
    }

    public static function leerPorPelicula($id) {
        try {
            $sql = "SELECT f.funcion_id, p.titulo AS pelicula, s.nombre AS sala, f.fecha_funcion, f.hora_inicio, f.precio_entrada
                    FROM funcion f 
                    INNER JOIN pelicula p ON f.pelicula_id = p.pelicula_id
                    INNER JOIN sala s ON f.sala_id = s.sala_id
                    WHERE f.estado_registro = true
                    AND f.pelicula_id = :id
                    ORDER BY f.fecha_funcion ASC, f.hora_inicio ASC";
            $stmt = Conexion::obtenerConexion()->prepare($sql);
            $stmt->bindParam(":id", $id);
            $stmt->execute();
            $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return $result;

        } catch (PDOException $error) {
            echo $error->getMessage();
        }
    }
}