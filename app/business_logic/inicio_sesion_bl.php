<?php
include('../data_access/usuario_dto.php');

session_start();
echo 'echo echo';
if (!empty($_POST['correo']) && !empty($_POST['clave'])) {
    $usuario = UsuarioDTO::leerPorCorreo($_POST['correo']);
    echo '<br>primer if';
    echo $usuario['nombre_completo'];
    if (count($usuario) > 0 && $usuario['clave'] == $_POST['clave']) {
        echo '<br>segundo if';
        $_SESSION['usuario_id'] = $usuario['usuario_id'];
        header("Location: ../user_interface/cartelera.php");
        die();
    } else {
        echo 'else';
        header("Location: ../user_interface/inicio_sesion.php");
        // echo '<script>alert("Hola");</script>';
    }
}
echo 'medio';
header("Location: ../user_interface/inicio_sesion.php");
echo '<br>fin de programa';