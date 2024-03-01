<?php
session_start();

$enlace = "http://localhost/Policine/app/";
$logo = "http://localhost/Policine/resources/images/epn.png"; // Ruta al logo que vamos a utilizar.
$titulo = "Policine";
$nombre_usuario = $_SESSION['usuario_nombre'];
$menu = [
    // "Fecha" => "#",
    "Peliculas" => $enlace . "user_interface/cartelera.php"
];
?>
   
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $titulo; ?></title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #000;
            color: #fff;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #1f1f1f; /* Cambiando el color de fondo */
            color: #fff;
            padding: 10px;
            font-family: 'Roboto', sans-serif;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        header > div {
            max-width: 1200px;
            margin: 0 auto; /* Centrando el encabezado */
            width: 95%; /* Reduciendo el ancho del encabezado */
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        nav ul {
            list-style-type: none;
            display: flex;
            gap: 20px;
            margin: 0;
            padding: 0;
        }

        nav ul li a {
            text-decoration: none;
            color: #fff;
            font-size: 16px;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        nav ul li a:hover {
            color: #ffcc00;
        }

        nav ul li p {
            margin: 0;
            padding: 10px;
        }

        nav ul li:last-child a {
            background-color: #ff0;
            padding: 10px 20px;
            border-radius: 5px;
            color: #000;
            transition: background-color 0.3s ease;
        }

        nav ul li:last-child a:hover {
            background-color: #ffcc00;
        }
    </style>
</head>
<body>
    <header>
        <div>
            <div>
                <img src="<?php echo $logo; ?>" alt="Logo" style="height: 50px;margin-bottom: 0;">
            </div>
            <h1 style="margin: 0; font-size: 32px;"><?php echo $titulo; ?></h1>
            <nav>
                <ul>
                    <li><a href="<?php echo $enlace . "user_interface/cartelera.php"; ?>">Peliculas</a></li>
                    <li><p>Bienvenido, <?php echo $nombre_usuario; ?></p></li>
                    <li><a href="<?php echo $enlace . 'business_logic/cerrar_sesion_bl.php'; ?>">Cerrar Sesión</a></li>
                </ul>
            </nav>
        </div>
    </header>
