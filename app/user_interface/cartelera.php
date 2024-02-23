<?php
include("../business_logic/pelicula_bl.php");
$datos = PeliculaBL::obtenerDatos();
?>

<?php include_once("templates/header.php"); ?>

<link rel="stylesheet" href="../../resources/css/cartelera.css">
<h2>Películas en cartelera</h2>

<div class="container">
    <h1>Cartelera</h1>
    <div class="peliculas">
        <?php
        if (!empty($datos)) {
            foreach ($datos as $categoria) {
                echo '<div class="pelicula">';
                // echo '<td>' . $categoria['pelicula_id'] . '</td>';
                echo '<h2>' . $categoria['titulo'] . '</h2>';
                echo '<img src="../../resources/images/' . $categoria['portada_imagen'] . '" alt="portada">';
                echo '<p>' . $categoria['clasificacion'] . '</p>';
                echo '<p>' . $categoria['genero'] . '</p>';
                echo '<input type="button" value="Seleccionar">';
                echo '</div>';
            }
        } else {
            echo '<p>No hay películas en cartelera</p>';
        }
        ?>
    </div>
</div>

<?php include_once("templates/footer.php"); ?>