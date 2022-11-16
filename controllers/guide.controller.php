<?php

use App\modeles\ModeleClasse;

try {
    //code...
    $Docs = ModeleClasse::getall('table_guide');
} catch (\Throwable $th) {
    //throw $th;
    return $error = $th->getMessage();
}


// $_GET
if (!empty($_GET['id'])) :
    extract($_GET);
    try {
        $Post_get = ModeleClasse::getoneByname('id', 'table_guide', $id);
        //    deb($Post_get);
    } catch (\Throwable $th) {
        return $error = $th->getMessage();
    }
endif;
// FIN GET


// RECUPERATION
if (!empty($_POST)) :
    extract($_POST);
    // deb($_POST);

    if (isset ($_POST['add'])) :
        deb($_POST);
        unset($_POST['add']);
        try {
            //code...
            ModeleClasse::add('table_guide', $_POST);
            header('Location:' . LINK . 'guide');
        } catch (\Throwable $th) {
            return $error = $th->getMessage();
        }
    elseif (isset($_POST['update-post'])) :
        unset($_POST['update-post']);
        // deb($_POST);
        $_POST['id'] = $id;
        extract($_POST);
        try {
            ModeleClasse::update('table_guide', $_POST, $id);
            header('Location:' . LINK . 'guide');
        } catch (\Throwable $th) {
            return $error = $th->getMessage();
        }
    endif;

endif;
