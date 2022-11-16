<?php

use App\modeles\ModeleClasse;


// Recuperation dans la table
try {
    //code...
    $Liste_client = ModeleClasse::getallJoinclose('table_client', 'ID_ville', 'table_ville', 'id', 'table_client.Creer_par', $_SESSION['id_session']);
    $LClient = [];
    $numbers = 0;
    if (!empty($Liste_client)) :
        $LClient = $Liste_client;
    else :
        $LClient = [];
    endif;
} catch (\Throwable $th) {
    //throw $th;
    return $error = $th->getMessage();
}


// Recuperation dans la table
try {
    //code...
    $Liste_ville = ModeleClasse::getall('table_ville');
    $LVille = [];
    if (!empty($Liste_ville)) :
        $LVille = $Liste_ville;
    else :
        $LVille = [];
    endif;
} catch (\Throwable $th) {
    //throw $th;
    return $error = $th->getMessage();
}


// $_POST
if (!empty($_POST)) :
    if ($_SERVER['REQUEST_METHOD'] == "POST") :
        extract($_POST);
        if (isset($_POST['add-client'])) :
            unset($_POST['add-client']);
            $_POST['Creer_par'] = $_SESSION['id_session'];
            $_POST['Modifier_par'] = $_SESSION['id_session'];
            try {
                //code...
                // insertion dans la table client
                ModeleClasse::add('table_client', $_POST);
                header('Location:' . LINK . 'client');
            } catch (\Throwable $th) {
                //throw $th;
                return $error = $th->getMessage();
            }

        endif;
    endif;
endif;
//FIN POST