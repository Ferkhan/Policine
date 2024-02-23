<?php
include_once("conexion.php");

class PeliculaDTO extends Conexion {
    public static function leerDatos() {
        try {
            $sql = "SELECT p.pelicula_id, p.titulo, c.nombre AS clasificacion, g.nombre AS genero, p.director, p.sinopsis, p.duracion_min, p.fecha_estreno, p.portada_imagen
                    FROM pelicula p
                    INNER JOIN clasificacion c ON p.clasificacion_id = c.clasificacion_id
                    INNER JOIN genero g ON p.genero_id = g.genero_id
                    WHERE p.estado_cartelera = true AND p.estado_registro = true";
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
            $sql = "SELECT p.pelicula_id, p.titulo, c.nombre AS clasificacion, g.nombre AS genero, p.director, p.sinopsis, p.duracion_min, p.fecha_estreno, p.portada_imagen
                    FROM pelicula p 
                    INNER JOIN clasificacion c ON p.clasificacion_id = c.clasificacion_id
                    INNER JOIN genero g ON p.genero_id = g.genero_id
                    WHERE p.estado_cartelera = true AND p.estado_registro = true
                    AND p.pelicula_id = :id";
            $stmt = Conexion::obtenerConexion()->prepare($sql);
            $stmt->bindParam(":id", $id);
            $stmt->execute();
            $result = $stmt->fetch();
            return $result;

        } catch (PDOException $error) {
            echo $error->getMessage();
        }
    }
}