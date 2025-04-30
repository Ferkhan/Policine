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
        @import url("https://fonts.googleapis.com/css2?family=Kaushan+Script&display=swap");
        @import url("https://fonts.googleapis.com/css2?family=DM+Serif+Text:ital@0;1&display=swap");

        :root {
            --color-fondo:rgb(1, 23, 34);
            --color-secundario:rgb(4, 37, 54);
            --color-terciario:rgb(13, 45, 62);
            --color-acentuar:rgb(231, 201, 28); 
            --color-acentuar-secundario:rgb(196, 138, 46);
            --color-texto: #fff;
            --color-texto-secundario: #555;
            --fuente-principal: "DM Serif Text", serif;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: var(--color-fondo);
            color: var(--color-texto);
            margin: 0;
            padding: 0;
        }

        header {
            background-color: var(--color-secundario);
            /* Cambiando el color de fondo */
            color: #fff;
            padding: 10px;
            font-family: 'Roboto', sans-serif;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        header>div {
            max-width: 1200px;
            height: 70px;
            margin: 0 auto;
            /* Centrando el encabezado */
            width: 95%;
            /* Reduciendo el ancho del encabezado */
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        #wrapper_logo {
            display: flex;
            align-items: center;
            gap: 40px;
            font-family: var(--fuente-principal);
            font-size: 45px;
        }

        nav {
            display: flex;
            align-items: center;
            gap: 40px;
            margin: 0;
            padding: 0;
        }

        nav a {
            text-decoration: none;
            color: #fff;
            font-size: 16px;
            font-weight: bold;
            transition: color 0.3s ease;
            color: var(--color-acentuar);
        }

        nav a:hover {
            color: var(--color-acentuar-secundario);
        }

        nav p {
            margin: 0;
            padding: 10px;
        }

        #btn_cerrar {
            background-color: var(--color-acentuar);
            padding: 8px 18px;
            border-radius: 5px;
            color: var(--color-fondo);
            transition: background-color 0.3s ease;
        }

        #btn_cerrar:hover {
            background-color: var(--color-acentuar-secundario);
        }
    </style>
</head>
<body>
    <header>
        <div>
            <div id="wrapper_logo">
                <img src="<?php echo $logo; ?>" alt="Logo" style="height: 50px;margin-bottom: 0;">
                <h1 style="margin: 0; font-size: 40px;"><?php echo $titulo; ?></h1>
            </div>
            <nav>
                <p>Bienvenido, <?php echo $nombre_usuario; ?></p>
                <a href="<?php echo $enlace . "user_interface/cartelera.php"; ?>">Peliculas</a>
                <a href="<?php echo $enlace . 'business_logic/cerrar_sesion_bl.php'; ?>" id="btn_cerrar">Cerrar Sesión</a>
            </nav>
        </div>
    </header>
