<?php
include("../data_access/pelicula_dto.php");

class PeliculaBL {

    public static function obtenerDatos() {
        return PeliculaDTO::leerDatos();
    }

    public static function obtenerPorId($id) {
        return PeliculaDTO::leerPorId($id);
    }
}

