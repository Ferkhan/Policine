<?php
session_start();

if (isset($_SESSION['usuario_id'])) {
    header('Location: app/user_interface/cartelera.php');
    die();
}

header('Location: app/user_interface/inicio_sesion.php');
die();