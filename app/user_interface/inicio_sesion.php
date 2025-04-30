<?php
session_start();

$mensaje = isset($_SESSION['mensaje_inicio']) ? $_SESSION['mensaje_inicio'] : "";
unset($_SESSION['mensaje_registro']);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link hred="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="../../resources/css/inicio_sesion.css">
    <title>Policine</title>
</head>
<body>
    <form action="../business_logic/inicio_sesion_bl.php" method="post">
        <h1>INICIAR SESION</h1>
        <?php echo "<p>" . $mensaje . "</p>"; ?>
        <hr>
        <i class="fa-solid fa-user"></i>
        <label>Correo</label>
        <input type="email" name="correo" placeholder="Ingrese su correo">

        <br>
        <i class="fa-solid fa-unlock"></i>
        <label>Contraseña    </label>
        <input type="password" name="clave" placeholder="Ingrese su contraseña">
        <hr>
        <button type="submit">Iniciar Sesion</button>
        <a href="crear_cuenta.php">Crear Cuenta</a>
    </form>
</body>
</html>
