<?php
include('../data_access/usuario_dto.php');

session_start();
if (!empty($_POST['correo']) && !empty($_POST['clave'])) {
    $usuario = UsuarioDTO::leerPorCorreo($_POST['correo']);
    if (isset($usuario) > 0 && $usuario['clave'] == md5($_POST['clave'])) {
        $_SESSION['usuario_id'] = $usuario['usuario_id'];
        $_SESSION['usuario_nombre'] = $usuario['nombre_completo'];
        header("Location: ../user_interface/cartelera.php");
        die();
    } else {
        header("Location: ../user_interface/inicio_sesion.php");
    }
}
header("Location: ../user_interface/inicio_sesion.php");