<?php

$enlace = "http://192.168.1.19/Policine/resources/images/";
$logos = [
    "Facebook" => "facebook.png",
    "Instagram" => "instagram.png",
    "Twitter" => "twitter.png",
    "TikTok" => "tik-tok.png",
    "Linkedin" => "linkedin.png"
];

$redesSociales = [
    "Facebook"  => "https://www.facebook.com",
    "Instagram" => "https://www.instagram.com",
    "Twitter"   => "https://www.twitter.com",
    "TikTok"    => "https://www.tik-tok.com",
    "Linkedin"  => "https://www.linkedin.com"
];


$sobreNosotros = [
    "Contactanos" => "#",
];
?>

<footer style="background-color: #000; color: #fff; padding: 20px; text-align: center;">
    <div>
        <?php foreach ($redesSociales as $redSocial => $link): 
            echo '<a href="' . $link . '">';
            echo '<img src="' . $enlace . $logos[$redSocial] . '" alt="logo" style="height: 40px; margin-left: 10px; margin-bottom: 0px">';
            echo '</a>';
        endforeach; ?>
    </div>
    <div style="text-align: center; margin-top: 0px;">
        <p>Policine © 2024. Todos los derechos reservados.</p>
        <p>Desarrollado por: Grupo 3 - Sistemas Operativos 2023B</p>
    </div>
</footer>
