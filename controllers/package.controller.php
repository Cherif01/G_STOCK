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
    // parcourir
    $nb_ = 0;
    foreach($Liste_article as $data_) :
        if($data_['Quantite_produit'] <= $data_['Seuil_minimum']) :
            ++$nb_;
        endif;
    endforeach;

} catch (\Throwable $th) {
    //throw $th;
    return $error = $th->getMessage();
}