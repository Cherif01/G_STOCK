<?php

use App\modeles\ModeleClasse;
// deb($_GET);

if (!empty($_GET['id'])) :
    // Recuperation dans la table
    try {
        //code...
        $Magasin_get = ModeleClasse::getOneJoinclose('table_magasin', 'ID_gerant', 'table_utilisateur', 'id', 'table_magasin.id', $_GET['id']);
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
        $Article_magasin = ModeleClasse::getallJoinclose('table_stock_magasin', 'ID_article', 'table_produit', 'id', 'table_stock_magasin.Id_magasin', $_GET['id']);
        $product_ = [];
        if (!empty($Article_magasin)) :
            $product_ = $Article_magasin;
        else :
            $product_ = [];
        endif;
        // deb($product_);

        // deb($Magasin_get);
        // historique vente
        if (!empty($MAG)) :
            $History = ModeleClasse::getallDescClause('table_vente_gerant', 'Creer_par', $MAG['ID_gerant']);
            $Historique_vente = [];
            if (!empty($History)) :
                $Historique_vente = $History;
            else :
                $Historique_vente = [];
            endif;
        endif;
        // deb($Historique_vente);

    } catch (\Throwable $th) {
        //throw $th;
        return $error = $th->getMessage();
    }

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
    } catch (\Throwable $th) {
        //throw $th;
        return $error = $th->getMessage();
    }
endif;


// Details de la caisse
// Recuperation dans la table
if (!empty($MAG)) :
    try {
        //code...
        $Liste_operation = ModeleClasse::getallbyName('table_caisse', 'Creer_par',  $MAG['ID_gerant']);
        $LOperation = [];
        $numbers = 0;
        if (!empty($Liste_operation)) :
            $LOperation = $Liste_operation;
        else :
            $LOperation = [];
        endif;

        // OPERATION COMPTE
        $Virement = 0;
        $Entrer = 0;
        $Sortie = 0;
        $Charges = 0;
        foreach ($LOperation as $count) :
            // deb($count);
            if ($count['Type'] == "Virement") :
                $Virement += $count['Montant_operation'];
            elseif ($count['Type'] == "Entrer") :
                $Entrer += $count['Montant_operation'];
            elseif ($count['Type'] == "Sortie") :
                $Sortie += $count['Montant_operation'];
            elseif ($count['Type'] == "Charges") :
                $Charges += $count['Montant_operation'];
            else :
            endif;
        endforeach;


        // VENTE=
        // deb("Bienvenu a la caisse");
        $TVendu = 0;
        $Credit_client_nr = 0;
        $Total_vendu = ModeleClasse::getallbyName('table_vente_gerant', 'Creer_par',  $MAG['ID_gerant']);
        if (!empty($Total_vendu)) :
            foreach ($Total_vendu as $data) :
                if ($data['Statut_vente'] == 200) :
                    $TVendu += $data['Montant_total'];
                endif;
                // Test creance
                $avance = 0;
                if (!empty($data['ID_client'] && $data['Etat_paiement'] == "creance")) :
                    // deb($data);
                    $Avancer = ModeleClasse::getallbyName('table_creance', 'ID_client', $data['ID_client']);
                    // deb($Avancer);
                    foreach ($Avancer as $paye) :
                        $avance += $paye['Montant_payer'];
                    endforeach;
                    $Credit_client_nr += $data['Montant_total'] - $avance;
                endif;
            endforeach;
        else :
            $TVendu = 0;
            $Credit_client_nr = 0;
            $avance = 0;
        endif;

        // BENEFICE
        $B_realiser = ModeleClasse::getallbyName('table_commande_gerant', 'Creer_par',  $MAG['ID_gerant']);
        if (!empty($B_realiser)) :
            $TProfit = 0;
            foreach ($B_realiser as $data) :
                if (!empty($data['ID_article'])) :
                    $TProfit += (($data['Prix_vente_unitaire'] - $data['Prix_achat_unitaire']) * $data['Quantite_vendu']);
                endif;
            endforeach;
        else :
            $TProfit = 0;
        endif;
    } catch (\Throwable $th) {
        //throw $th;
        return $error = $th->getMessage();
    }

endif; // FIN DETAILS CAISSE

// $_POST
if (!empty($_POST)) :
    extract($_POST);
    if (isset($_POST['Trouve'])) :
        unset($_POST['Trouve']);
        try {
            //code...
            $trouve = ModeleClasse::getoneByname('id', 'table_produit', $ID_PRODUIT);
            // deb($trouve);
        } catch (\Throwable $th) {
            //throw $th;
            return $error = $th->getMessage();
        }
    elseif (isset($_POST['send_qte'])) :
        unset($_POST['send_qte']);
        try {
            //code...
            $article = ModeleClasse::getoneByname('id', 'table_produit', $ID_article);
            // deb($_POST);
            // Verif
            $VERIF = ModeleClasse::getall('table_stock_magasin');
            foreach ($VERIF as $data) :
                if (($data['Id_magasin'] == $id_magasin) && ($data['ID_article'] == $ID_article)) :
                    return $error = "Article d&#233;j&#224; envoyer !";
                endif;
            endforeach;
            // deb($VERIF);
            // fin verif
            // deb($article);
            ModeleClasse::add('table_stock_magasin', $_POST);
            unset($_POST);
            $_POST['id'] = $article[0];
            $_POST['Quantite_produit'] = $article['Quantite_produit'] - $Quantite_stock_magasin;
            extract($_POST);
            ModeleClasse::update('table_produit', $_POST, $id);
            header('Location:' . LINK . 'gestion_mag/' . $_GET['id']);
        } catch (\Throwable $th) {
            //throw $th;
            return $error = $th->getMessage();
        }
    elseif (isset($_POST['appro_mag'])) :
        unset($_POST['appro_mag']);
        // deb($_POST);
        $QTE_APPRO = $Quantite_appro;
        $ID = $ID_article;

        try {
            $Get_Article = ModeleClasse::getoneByname('id', 'table_produit', $ID_article);
            $Get_stock_mag = ModeleClasse::getoneByname('ID_article', 'table_stock_magasin', $ID_article);
            $STOCK = $Get_Article['Quantite_produit'];
            $STOCK_mag = $Get_stock_mag['Quantite_stock_magasin'];
            if ($QTE_APPRO > $STOCK) :
                return $error = "Quantite insuffisant au stock ... ";
            endif;
            // deb($Get_Article);
            $_POST['Quantite_stock_magasin'] = $STOCK_mag + $QTE_APPRO;
            extract($_POST);
            // deb($_POST);
            ModeleClasse::updateClause('table_stock_magasin', 'Quantite_stock_magasin', $Quantite_stock_magasin, 'ID_article', $ID_article);
            unset($_POST);
            $_POST['Quantite_produit'] = $STOCK - $QTE_APPRO;
            extract($_POST);
            ModeleClasse::updateClause('table_produit', 'Quantite_produit', $Quantite_produit, 'id', $ID_article);
            header('Location:' . LINK . 'gestion_mag/' . $_GET['id']);
        } catch (\Throwable $th) {
            return $error = $th->getMessage();
        }

    endif;
endif;
