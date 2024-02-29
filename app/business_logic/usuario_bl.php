<?php
include("../data_access/usuario_dto.php");

class UsuarioDTO {
    public static function obtenerDatos() {
        return PeliculaDTO::leerDatos();
    }

    public static function obtenerPorId($id) {
        return PeliculaDTO::leerPorId($id);
    }
}