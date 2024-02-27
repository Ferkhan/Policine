<?php

$enlace = "http://192.168.1.19/Policine/app/";
$logo = "http://192.168.1.19/Policine/resources/images/epn.png"; // Ruta al logo que vamos a utilizar.
$titulo = "Policine";
$menu = [
    // "Fecha" => "#",
    "Peliculas" => "#"
];
?>
   
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $titulo; ?></title>
</head>
<body>
    <header style="background-color: #000; color: #fff; padding: 10px;">
        <div style="display: flex; justify-content: space-between;">
            <div>
                <img src="<?php echo $logo; ?>" alt="Logo" style="height: 50px;margin-bottom: 0;">
                <span style="margin-left: 0px; font-size: 40px; font-weight: bold;"><?php echo $titulo; ?></span>
            </div>
            <nav>
                <ul style="list-style-type: none; display: flex; gap: 20px;">
                    <?php foreach ($menu as $item => $link): ?>
                        <li><a href="<?php echo $link; ?>"><?php echo $item; ?></a></li>
                    <?php endforeach;
                    echo '<li><a href="' . $enlace . 'business_logic/cerrar_sesion_bl.php" style="background-color: #ff0; padding: 10px 20px;">Cerrar Sesion</a></li>'
                    ?>
                </ul>
            </nav>
        </div>
    </header>

   