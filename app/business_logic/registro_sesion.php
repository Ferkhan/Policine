<?php

include("conexion.php");
include("pelicula_dto.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $nombres = $_POST["nombres"];
    $apellidos = $_POST["apellidos"];
    $correo = $_POST["correo"];
    $direccion = $_POST["direccion"];
    $password = $_POST["contrasena"];
    
    try {

        $conexion = new Conexion();
        $conn = $conexion->obtenerConexion();
    
        $sql = "INSERT INTO {$conexion->TBL_USUARIO} (nombres, apellidos, correo, direccion, contrasena) 
        VALUES (:nombres, :apellidos, :correo, :direccion, :contrasena)";
        $stmt = $conn->prepare($sql);
    
        $stmt->bindParam(":nombres", $nombres);
        $stmt->bindParam(":apellidos", $apellidos);
        $stmt->bindParam(":correo", $correo);
        $stmt->bindParam(":direccion", $direccion);
        $stmt->bindParam(":contrasena", $password);
    
        $stmt->execute();
    
        header("Location: inicio_sesion.php");
        exit();
    } catch (PDOException $error) {
        echo "Error al registrar usuario: " . $error->getMessage();
    }
    
}