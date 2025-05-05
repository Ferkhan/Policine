<?php
include_once("../business_logic/funcion_bl.php");
include_once("../business_logic/pelicula_bl.php");
include_once("templates/header.php");

// session_start();

if ($_POST) {
    $_SESSION['pelicula_id'] = $_POST['pelicula_id'];
    header("Location: funcion_detalle.php");
    die();
} 

$pelicula   = isset($_SESSION['pelicula_id']) ? PeliculaBL::obtenerPorId($_SESSION['pelicula_id']) : [];
$funciones  = isset($_SESSION['pelicula_id']) ? FuncionBL::obtenerPorPelicula($_SESSION['pelicula_id']) : [];
?>

<link rel="stylesheet" href="../../resources/css/funcion_detalle.css">
<div class="contenedor">
    <?php
    echo '<div class="descripcion">';
        echo '<h1>' . $pelicula['titulo'] . '</h1>';
        echo '<img src="../../resources/images/' . $pelicula['portada_imagen'] . '" alt="portada">';
        echo '<p><strong>Duración:</strong> ' . $pelicula['duracion_min'] . ' minutos</p>';
        echo '<p><strong>Director:</strong> ' . $pelicula['director'] . '</p>';
        echo '<p><strong>Clasificacion:</strong> ' . $pelicula['clasificacion'] . '</p>';
        echo '<p><strong>Genero:</strong> ' . $pelicula['genero'] . '</p>';
        echo '<h3>Sinopsis</h3>';
        echo '<p>' . $pelicula['sinopsis'] . '</p>';
    echo '</div>';
    ?>
    
    <div class="funcion">
        <div class="pelicula">
            <h2>Horarios de Función</h2>
            <table>
                <tr>
                    <th>Sala</th>
                    <th>Fecha de funcion</th>
                    <th>Hora de funcion</th>
                    <th>Precio de entrada</th>
                </tr>

                <?php
                if (!empty($funciones)) {
                    foreach ($funciones as $funcion) {
                        echo '<tr>';
                        echo '<td>' . $funcion['sala'] . '</td>';
                        echo '<td>' . $funcion['fecha_funcion'] . '</td>';
                        echo '<td>' . $funcion['hora_inicio'] . '</td>';
                        echo '<td>' . $funcion['precio_entrada'] . '</td>';
                        echo '</tr>';
                    }
                } else {
                    echo '<tr><td colspan="4">No hay horarios disponibles para la película</td></tr>';
                }
                ?>
            </table>
        </div>

        <!-- Trailer de la película -->
        <h2>Trailer</h2>
        <iframe width="560" height="315" src="<?php echo $pelicula['trailer_url']; ?>" title="Trailer de pelicula" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
    </div>
</div>

<?php include("templates/footer.php") ?>
