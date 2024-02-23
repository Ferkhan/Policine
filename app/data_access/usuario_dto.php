<?php
include_once("conexion.php");

class UsuarioDTO extends Conexion {
    public static function leerDatos() {
        try {
            $sql = "SELECT * FROM usuario u
                    WHERE u.estado_registro = true";
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
            $sql = "SELECT * FROM usuario u
                    WHERE u.estado_registro = true
                    AND u.usuario_id = :id";
            $stmt = Conexion::obtenerConexion()->prepare($sql);
            $stmt->bindParam(":id", $id);
            $stmt->execute();
            $result = $stmt->fetch();
            return $result;

        } catch (PDOException $error) {
            echo $error->getMessage();
        }
    }

    public static function leerPorCorreo($correo) {
        try {
            $sql = "SELECT * FROM usuario u
                    WHERE u.estado_registro = true
                    AND u.correo = :correo";
            $stmt = Conexion::obtenerConexion()->prepare($sql);
            $stmt->bindParam(":correo", $correo);
            $stmt->execute();
            $result = $stmt->fetch();
            return $result;

        } catch (PDOException $error) {
            echo $error->getMessage();
        }
    }
}