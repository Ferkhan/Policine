<?php
session_start();

$mensaje = isset($_SESSION['mensaje_registro']) ? $_SESSION['mensaje_registro'] : "";

?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Policine</title>
    <link rel="stylesheet" href="../../resources/css/crear_cuenta.css">
</head>
<body>
    <div class="container">
        <h2>Crear un cuenta</h2>
        <?php echo "<p>" . $mensaje . "</p>"; ?>
        <form action="../business_logic/crear_cuenta_bl.php" method="POST">
            <div class="form-group">
                <label for="nombre_completo">Nombre completo:</label>
                <input type="text" id="nombre_completo" name="nombre_completo" required>
            </div>
            <div class="form-group">
                <label for="correo">Correo:</label>
                <input type="text" id="correo" name="correo" required>
            </div>
            <div class="form-group">
                <label for="direccion">Direccion de domicilio:</label>
                <input type="text" id="direccion" name="direccion" required>
            </div>
            <div class="form-group">
                <label for="clave">Contraseña:</label>
                <input type="password" id="clave" name="clave" required>
            </div>
            <div class="form-group">
                <label for="confirmar">Confirmar la contraseña:</label>
                <input type="password" id="confirmar" name="confirmar" required>
            </div>
            <button type="submit">Registrar</button>
        </form>
        <a href="inicio_sesion.php">¿Ya tienes una cuenta? Inicia sesión</a>
    </div>
</body>
</html>
