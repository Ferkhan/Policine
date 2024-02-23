<?php
include_once("../business_logic/funcion_bl.php");
include_once("../business_logic/pelicula_bl.php");
include_once("templates/header.php");

session_start();

if ($_POST) {
    $_SESSION['pelicula_id'] = $_POST['pelicula_id'];
    $bandera = $_POST['pelicula_id'];
    header("Location: funcion_detalle.php");
    die();
} 

$pelicula   = isset($_SESSION['pelicula_id']) ? PeliculaBL::obtenerPorId($_SESSION['pelicula_id']) : [];
$funciones  = isset($_SESSION['pelicula_id']) ? FuncionBL::obtenerPorPelicula($_SESSION['pelicula_id']) : [];

// $pelicula_id    = $_SESSION['pelicula_id'];
?>

<link rel="stylesheet" href="../../resources/css/funcion_detalle.css">
<div class="contenedor">
    <?php
    echo '<div class="descripcion">';
        echo '<h1>' . $pelicula['titulo'] . '</h1>';
        echo '<img src="../../resources/images/' . $pelicula['portada_imagen'] . '" alt="portada">';
        echo '<p>Duracion: ' . $pelicula['duracion_min'] . ' minutos</p>';
        echo '<p>Director: ' . $pelicula['director'] . '</p>';
        echo '<p>Clasificacion: ' . $pelicula['clasificacion'] . '</p>';
        echo '<p>Genero: ' . $pelicula['genero'] . '</p>';
        echo '<h3>Sinopsis</h3>';
        echo '<p>' . $pelicula['sinopsis'] . '</p>';
        // echo '<h3>Trailer</h3>';
        // echo '<iframe src="' . $pelicula['trailer_ulr'] . '" with="500" height="100" frameborder="0"></iframe>';
        // echo '<iframe width="560" height="315" src="https://www.youtube.com/watch?v=7wtfhZwyrcc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>';
    echo '</div>';
    ?>
    <iframe src="" with="500" height="100" frameborder="0"></iframe>
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
    </div>
</div>

<?php include("templates/footer.php") ?>