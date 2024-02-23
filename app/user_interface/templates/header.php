<?php
$logo = ""; // Ruta al logo que vamos a utilizar.
$titulo = "Ubicacion";
$menu = [
    // "Fecha" => "#",
    "Peliculas" => "#"
];
?>

<!DOCTYPE html>
<html>
<head>
    <title>Policine <?php echo $titulo; ?></title>
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
                    <li><a href="inicio_sesion.php" style="background-color: #ff0; padding: 10px 20px;">Iniciar sesion</a></li>
                </ul>
            </nav>
        </div>
    </header>
</body>

   