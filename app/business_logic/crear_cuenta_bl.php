<?php
include("../data_access/usuario_dto.php");

session_start();

if (!$_POST) {
    header("Location: ../user_interface/inicio_sesion.php"); die();
}

if ($_POST['clave'] != $_POST['confirmar']) {
    $_SESSION['mensaje_registro'] = "Las contraseñas no coinciden";
    header("Location: ../user_interface/crear_cuenta.php"); die();   
}

$usuarios = UsuarioDTO::leerPorCorreo($_POST['correo']);
if (!empty($usuarios['correo'])) {
    $_SESSION['mensaje_registro'] = "Ya existe una cuenta registrada con ese correo";
    header("Location: ../user_interface/crear_cuenta.php"); die(); 
}

$datos['nombre_completo'] = $_POST['nombre_completo'];
$datos['correo'] = $_POST['correo'];
$datos['direccion'] = $_POST['direccion'];
$datos['clave'] = md5($_POST['clave']);
print_r($datos);
if (UsuarioDTO::insertarRegistro($datos)) {
    $_SESSION['mensaje_inicio'] = "Cuenta creada con exito";
    header("Location: ../user_interface/inicio_sesion.php"); die();
    unset($_SESSION['mensaje_registro']);
} else {
    $_SESSION['mensaje_registro'] = "Hubo un problema al crear la cuenta";
    header("Location: ../user_interface/crear_cuenta.php"); die(); 
}
