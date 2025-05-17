<?php
include("../business_logic/pelicula_bl.php");
$datos = PeliculaBL::obtenerDatos();
include_once("templates/header.php"); 
?>

<link rel="stylesheet" href="../../resources/css/cartelera.css">

<div class="container">
    <h1>Cartelera</h1>
    <div class="peliculas">
        <?php
        if (!empty($datos)) {
            foreach ($datos as $categoria) {
                echo '<div class="pelicula">';
                echo '<form action="funcion_detalle.php" method="post">';
                echo '<h2>' . $categoria['titulo'] . '</h2>';
                echo '<img src="../../resources/images/' . $categoria['portada_imagen'] . '" alt="portada">';
                echo '<p>' . $categoria['clasificacion'] . '</p>';
                echo '<p>' . $categoria['genero'] . '</p>';
                echo '<input type="hidden" name="pelicula_id" value="' . $categoria['pelicula_id'] . '">';
                echo '<input id="btn_seleccionar"  type="submit" value="Seleccionar">';
                echo '</form>';
                echo '</div>';
            }
            
        } else {
            echo '<p>No hay películas en cartelera</p>';
        }
        ?>
    </div>
</div>

<?php include_once("templates/footer.php"); ?>
