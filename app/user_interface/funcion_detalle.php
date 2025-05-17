<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

if (!isset($_SESSION['usuario_id'])) {
    header('Location: inicio_sesion.php');
    exit;
}

if (!$_POST && !isset($_SESSION['pelicula_id'])) {
    header('Location: cartelera.php');
    exit;
}

$_SESSION['pelicula_id'] = $_POST['pelicula_id'];

include_once("../business_logic/funcion_bl.php");
include_once("../business_logic/pelicula_bl.php");
include_once("templates/header.php"); // header.php will output HTML and check login

$pelicula = PeliculaBL::obtenerPorId($_SESSION['pelicula_id']);
$funciones = FuncionBL::obtenerPorPelicula($_SESSION['pelicula_id']);

?>

<link rel="stylesheet" href="../../resources/css/funcion_detalle.css">
<div class="contenedor">
    <?php
    if (!empty($pelicula)) {
        echo '<div class="descripcion">';
        echo '<h1>' . htmlspecialchars($pelicula['titulo'] ?? 'Película no encontrada') . '</h1>';
        echo '<img src="../../resources/images/' . htmlspecialchars($pelicula['portada_imagen'] ?? 'default.jpg') . '" alt="portada">';
        echo '<p><strong>Duración:</strong> ' . htmlspecialchars($pelicula['duracion_min'] ?? 'N/A') . ' minutos</p>';
        echo '<p><strong>Director:</strong> ' . htmlspecialchars($pelicula['director'] ?? 'N/A') . '</p>';
        echo '<p><strong>Clasificacion:</strong> ' . htmlspecialchars($pelicula['clasificacion'] ?? 'N/A') . '</p>';
        echo '<p><strong>Genero:</strong> ' . htmlspecialchars($pelicula['genero'] ?? 'N/A') . '</p>';
        echo '<h3>Sinopsis</h3>';
        echo '<p>' . htmlspecialchars($pelicula['sinopsis'] ?? 'Sinopsis no disponible.') . '</p>';
        echo '</div>';
    } else {
        echo '<div class="descripcion"><p>Información de la película no disponible. Por favor, seleccione una película de la <a href="cartelera.php">cartelera</a>.</p></div>';
    }
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
                        echo '<td>' . htmlspecialchars($funcion['sala']) . '</td>';
                        echo '<td>' . htmlspecialchars($funcion['fecha_funcion']) . '</td>';
                        echo '<td>' . htmlspecialchars($funcion['hora_inicio']) . '</td>';
                        echo '<td>' . htmlspecialchars($funcion['precio_entrada']) . '</td>';
                        echo '</tr>';
                    }
                } else {
                    echo '<tr><td colspan="4">No hay horarios disponibles para esta película.</td></tr>';
                }
                ?>
            </table>
        </div>

        <!-- Trailer de la película -->
        <?php if (!empty($pelicula) && isset($pelicula['trailer_url'])): ?>
        <h2>Trailer</h2>
        <iframe width="560" height="315" src="<?php echo htmlspecialchars($pelicula['trailer_url']); ?>" title="Trailer de pelicula" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
        <?php endif; ?>
    </div>
</div>

<?php include("templates/footer.php") ?>
