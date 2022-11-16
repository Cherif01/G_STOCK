<?php

use App\modeles\ModeleClasse;

if ($_SESSION['Role'] != "Admin") :

    try {
        //code...
        $Magasin_get = ModeleClasse::getOneJoinclose('table_magasin', 'ID_gerant', 'table_utilisateur', 'id', 'table_utilisateur.id', $_SESSION['id_session']);
        $MAG = [];
        if (!empty($Magasin_get)) :
            $MAG = $Magasin_get;
        else :
            $MAG = [];
        endif;
        // deb($MAG);
    } catch (\Throwable $th) {
        //throw $th;
        return $error = $th->getMessage();
    }

    // BDD ARTICLE
    // Recuperation dans la table article pour un utilisateur
    try {
        //code...
        $Article_magasin = ModeleClasse::getallJoinclose('table_stock_magasin', 'ID_article', 'table_produit', 'id', 'table_stock_magasin.Id_gerant', $_SESSION['id_session']);
        $product_ = [];
        if (!empty($Article_magasin)) :
            $product_ = $Article_magasin;
        else :
            $product_ = [];
        endif;
        // deb($product_);
        $nb_article = 0;
        $nb_rupture = 0;
        foreach ($product_ as $data) :
            ++$nb_article;
            if ($data['Quantite_stock_magasin'] <= $data['Seuil_minimum']) :
                ++$nb_rupture;
            endif;
        endforeach;
        // deb($product_);
    } catch (\Throwable $th) {
        //throw $th;
        return $error = $th->getMessage();
    }

else :

    try {
        //code...
        $Vente_jour_gerant = ModeleClasse::getallbyName('table_vente_gerant', 'Creer_le', date('Y-m-d'));
        // deb($Vente_jour_gerant);
        // Caisse
    } catch (\Throwable $th) {
        //throw $th;
        return $error = $th->getMessage();
    }


    //$_POST
    if (!empty($_POST)) :
        if ($_SERVER['REQUEST_METHOD'] == "POST") :
            extract($_POST);
            if (isset($_POST['addMag'])) :
                unset($_POST['addMag']);
                // Insertion
                try {
                    // deb($_POST);
                    ModeleClasse::add('table_magasin', $_POST);
                    header('Location:' . LINK . 'magasin');
                } catch (\Throwable $th) {
                    //throw $th;
                    return $error = $th->getMessage();
                }
            elseif (isset($_POST['affectation'])) :
                unset($_POST['affectation']);
                // Affectation
                // deb($_POST);
                try {
                    $Verification = ModeleClasse::getoneByname('ID_gerant', 'table_magasin', $ID_gerant);
                    // deb($Verification);
                    if (!empty($Verification)) :
                        return $error = "Utilisateur d&#233;j&#224; affect&#233; &#224; un magasin !";
                    else :
                        ModeleClasse::update('table_magasin', $_POST, $id);
                        header('Location:' . LINK . 'magasin');
                    endif;
                } catch (\Throwable $th) {
                    //throw $th;
                    return $error = $th->getMessage();
                }


            endif;
        endif;
    endif;

    // Recuperation dans la table
    try {
        //code...
        $Liste_mag = ModeleClasse::getall('table_magasin');
        $LMagasin = [];
        if (!empty($Liste_mag)) :
            $LMagasin = $Liste_mag;
        else :
            $LMagasin = [];
        endif;
    } catch (\Throwable $th) {
        //throw $th;
        return $error = $th->getMessage();
    }

endif;


// Recuperation dans la table utilisateur
try {
    //code...
    $Liste_user = ModeleClasse::getall('table_utilisateur');
    $LUser = [];
    if (!empty($Liste_user)) :
        $LUser = $Liste_user;
    else :
        $LUser = [];
    endif;
} catch (\Throwable $th) {
    //throw $th;
    return $error = $th->getMessage();
}
