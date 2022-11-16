<?php

use App\modeles\ModeleClasse;


// RECUPERATION
try {
    //code...
    $Liste = ModeleClasse::getall('table_produit');
    $Liste_article = [];
    if (!empty($Liste)) :
        $Liste_article = $Liste;
    else :
        $Liste_article = [];
    endif;

    //Fournisseur
    $ListeFournisseur = ModeleClasse::getall('table_fournisseur');
    $Fournisseur = [];
    if (!empty($ListeFournisseur)) :
        $Fournisseur = $ListeFournisseur;
    else :
        $Fournisseur = [];
    endif;
} catch (\Throwable $th) {
    //throw $th;
    return $error = $th->getMessage();
}


// $_POST
if (!empty($_POST)) :
    extract($_POST);
    if (isset($_POST['Trouve'])) :
        unset($_POST['Trouve']);
        // deb($_POST);
        try {
            //code...
            $trouve = ModeleClasse::getoneByname('id', 'table_produit', $ID_PRODUIT);
            // deb($trouve);
        } catch (\Throwable $th) {
            //throw $th;
            return $error = $th->getMessage();
        }
    elseif (isset($_POST['appro_article'])) :
        unset($_POST['appro_article']);
        // deb($_POST);
        $QTE_APPRO = $Quantite_approvisionnement;
        $ID = $id_article;

        try {
            $Get_Article = ModeleClasse::getoneByname('id', 'table_produit', $id_article);
            $STOCK = $Get_Article['Quantite_produit'];
            // deb($Get_Article);
            ModeleClasse::add('table_approvisionnement', $_POST);
            unset($_POST);
            $_POST['Quantite_produit'] = $STOCK + $QTE_APPRO;
            extract($_POST);
            ModeleClasse::update('table_produit', $_POST, $ID);
            // header('Location:' . LINK . 'approvisionnement');
            return $warning = "Article approvisionné avec succès...";
        } catch (\Throwable $th) {
            return $error = $th->getMessage();
        }
    endif;
endif;
