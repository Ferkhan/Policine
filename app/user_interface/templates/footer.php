<?php
$logo = ""; // Ruta al logo que vamos a utilizar.
$redesSociales = [
    "Facebook" => "facebook.png",
    "Instagram" => "instagram.png",
    "Twitter" => "twitter.png",
    "TikTok" => "tik-tok.png",
    "Linkedin" => "linkedin.png"
];
$sobreNosotros = [
    "Contactanos" => "#",
];
?>

<footer style="background-color: #000; color: #fff; padding: 20px;">
    <div style="display: flex; justify-content: space-between;">
        <div>
            <img src="<?php echo $logo; ?>" alt="Logo" style="height: 50px;">
            <?php foreach ($redesSociales as $redSocial => $link):
                echo '<img src="../../../resources/images/' . $redSocial . '" alt="logo">';
                // echo '<!-- <a href="https://www.flaticon.es/iconos-gratis/facebook" title="facebook iconos">Facebook</a> -->
            endforeach; ?>
        </div>
        <div>
            <h3>Sobre nosotros</h3>
            <ul>
                <?php foreach ($sobreNosotros as $item => $link): ?>
                    <li><a href="<?php echo $link; ?>"><?php echo $item; ?></a></li>
                <?php endforeach; ?>
            </ul>
        </div>
    </div>
    <div style="text-align: center; margin-top: 20px;">
        <p>Policine � 2024. Todos los derechos reservados.</p>
        <p>Desarrollado por: Grupo 3 - Sistemas Operativos 2023B</p>
    </div>
</footer>
