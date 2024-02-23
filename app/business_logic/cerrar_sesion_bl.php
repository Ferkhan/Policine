<?php
session_start();
session_unset();
session_destroy();
header('Location: ../user_interface/inicio_sesion.php');