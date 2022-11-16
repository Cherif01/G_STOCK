<?php

use App\modeles\ModeleClasse;

if (!empty($_SESSION)) :
    if ($_SESSION['Role'] != "Admin") :
        header('Location:' . LINK . 'error');
    endif;
endif;

// deb($_SESSION);
// Recuperation dans la table
try {
    //code...
    $Liste_frs = ModeleClasse::getall('table_fournisseur');
    $LFournisseur = [];
    $numbers = 0;
    if (!empty($Liste_frs)) :
        $LFournisseur = $Liste_frs;
    else :
        $LFournisseur = [];
    endif;
} catch (\Throwable $th) {
    //throw $th;
    return $error = $th->getMessage();
}

// $_POST
if (!empty($_POST)) :
    if ($_SERVER['REQUEST_METHOD'] == "POST") :
        extract($_POST);
        if (isset($_POST['add-fournisseur'])) :
            unset($_POST['add-fournisseur']);
            try {
                // insertion dans la table fournisseur
                ModeleClasse::add('table_fournisseur', $_POST);
                header('Location:' . LINK . $page);
            } catch (\Throwable $th) {
                //throw $th;
                return $error = $th->getMessage();
            }

        endif;
    endif;
endif;
//FIN POST