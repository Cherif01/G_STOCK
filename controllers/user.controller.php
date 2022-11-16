<?php

use App\modeles\ModeleClasse;


// Recuperation dans la table
try {
    //code...
    $Liste_utilisateur = ModeleClasse::getallDesc('table_utilisateur');
    $LUser = [];
    $numbers = 0;
    if (!empty($Liste_utilisateur)) :
        $LUser = $Liste_utilisateur;
    else :
        $LUser = [];
    endif;

} catch (\Throwable $th) {
    //throw $th;
    return $error = $th->getMessage();
}

// $_POST
if (!empty($_POST)) :
    extract($_POST);
    if (isset($_POST['addUser'])) :
        unset($_POST['addUser']);
        $_POST['Creer_par'] = $_SESSION['id_session'];
        $_POST['Modifier_par'] = $_SESSION['id_session'];
        extract($_POST);
        try {
            // deb($_POST);
            //code...
            ModeleClasse::add('table_utilisateur', $_POST);
            header('Location:' . LINK . 'user');
        } catch (\Throwable $th) {
            //throw $th;
        }
    endif;
endif; // fin post