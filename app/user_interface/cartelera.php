<?php
include("../business_logic/pelicula_bl.php");

$datos = PeliculaBL::obtenerDatos();

?>

<?php include_once("templates/header.php"); ?>

<h2>Películas en cartelera</h2>
<table>
    <tr>
        <!-- <th>ID</th> -->
        <th>Titulo</th>
        <th>Director</th>
        <th>Clasificacion</th>
        <th>Genero</th>
        <th>Duracion</th>
        <th>Fecha de Estreno</th>
        <th>Sinopsis</th>
        <!-- <th>Portada</th> -->
        
    </tr>
    <?php
    if (!empty($datos)) {
        foreach ($datos as $categoria) {
            echo '<tr>';
            // echo '<td>' . $categoria['pelicula_id'] . '</td>';
            echo '<td>' . $categoria['titulo'] . '</td>';
            echo '<td>' . $categoria['director'] . '</td>';
            echo '<td>' . $categoria['clasificacion'] . '</td>';
            echo '<td>' . $categoria['genero'] . '</td>';
            echo '<td>' . $categoria['duracion_min'] . '</td>';
            echo '<td>' . $categoria['fecha_estreno'] . '</td>';
            echo '<td>' . $categoria['sinopsis'] . '</td>';
            // echo '<td><img src="' . $categoria['portada_imagen'] . '" alt=""></td>';
            echo '</tr>';
        }
    } else {
        echo '<tr><td colspan="3">No hay datos en la base de datos.</td></tr>';
    }
    ?>
</table>

<?php include_once("templates/footer.php"); ?>