<?php
include("../business_logic/funcion_bl.php");

$datos = FuncionBL::obtenerDatos();

?>

<?php include("templates/header.php") ?>

<h2>Funciones</h2>
<table>
    <tr>
        <th>Pelicula</th>
        <th>Sala</th>
        <th>Fecha de funcion</th>
        <th>Hora de funcion</th>
        <th>Precio de entrada</th>
    </tr>

    <?php
    if (!empty($datos)) {
        foreach ($datos as $categoria) {
            echo '<tr>';
            echo '<td>' . $categoria['pelicula'] . '</td>';
            echo '<td>' . $categoria['sala'] . '</td>';
            echo '<td>' . $categoria['fecha_funcion'] . '</td>';
            echo '<td>' . $categoria['hora_inicio'] . '</td>';
            echo '<td>' . $categoria['precio_entrada'] . '</td>';
            echo '</tr>';
        }
    } else {
        echo '<tr><td colspan="3">No hay datos en la base de datos.</td></tr>';
    }
    ?>
</table>

<?php include("templates/footer.php") ?>