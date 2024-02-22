<?php
include("../data_access/funcion_dto.php");

class FuncionBL {

    public static function obtenerDatos() {
        return FuncionDTO::leerDatos();
    }

    public static function obtenerPorId($id) {
        return FuncionDTO::leerPorId($id);
    }
}
