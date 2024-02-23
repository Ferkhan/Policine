<?php
$enlace = '192.168.127.184/Policine';
$logo = ""; // Ruta al logo que vamos a utilizar.
$titulo = "Policine";
$menu = [
    // "Fecha" => "#",
    "Peliculas" => "#"
];
?>

<!DOCTYPE html>
<html>
<head>
    <title><?php echo $titulo; ?></title>
</head>
<body>
    <header style="background-color: #000; color: #fff; padding: 20px;">
        <div style="display: flex; justify-content: space-between;">
            <div>
                <img src="<?php echo $logo; ?>" alt="Logo" style="height: 50px;">
                <span style="margin-left: 20px;"><?php echo $titulo; ?></span>
            </div>
            <nav>
                <ul style="list-style-type: none; display: flex; gap: 20px;">
                    <?php foreach ($menu as $item => $link): ?>
                        <li><a href="<?php echo $link; ?>"><?php echo $item; ?></a></li>
                    <?php endforeach; ?>
                    <?php
                    echo '<li><a href="' . $enlace . 'business_logic/cerrar_sesion_bl.php" style="background-color: #ff0; padding: 10px 20px;">Cerrar Sesion</a></li>'
                    ?>
                </ul>
            </nav>
        </div>
    </header>
</body>

   