<?php
include("../data_access/funcion_dto.php");

class FuncionBL {

    public static function obtenerDatos() {
        return FuncionDTO::leerDatos();
    }

    public static function obtenerPorId($id) {
        return FuncionDTO::leerPorId($id);
    }

    public static function obtenerPorPelicula($id) {
        return FuncionDTO::leerPorPelicula($id);
    }
}
