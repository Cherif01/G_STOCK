<?php

use App\Autoloader;

session_start();
$id_session = session_id();
include './config/db.php';
include './Autoloader.php';
include './functions/functions.php';
$franc = "<span class='text-success fw-bold'> GNF</span>";


Autoloader::register();
if (!empty($_GET['page'])) {
    $page = $_GET['page'];
} else {
    $page = 'dashboard';
}
// controller la session de l'utilisateur
if (!empty($_SESSION)) :
    if (empty($_SESSION['Nom_utilisateur'] || empty($_SESSION['id_session']))) :
        session_destroy();
        $page = 'login';
    endif;
else :
    $page = 'login';
endif;

$controllersPages = scandir('controllers');
$viewsPages = scandir('views');
if (in_array($page . '.controller.php', $controllersPages)) {
    if (in_array($page . '.view.php', $viewsPages)) {
        require_once('./controllers/' . $page . '.controller.php');

        if ($page == 'login') :
            include('./includes/head.php');
            require_once('./views/' . $page . '.view.php');
        else :
            include('./includes/head.php');
            include('./includes/navbar.php');
            include('./includes/sidebar.php');
            require_once('./views/' . $page . '.view.php');
            include('./includes/footer.php');
        endif;
    }
} else {
    include('./includes/head.php');
    include('./includes/navbar.php');
    include('./includes/sidebar.php');
    require_once('./controllers/error.controller.php');
    require_once('./views/error.view.php');
    include('./includes/footer.php');
}
