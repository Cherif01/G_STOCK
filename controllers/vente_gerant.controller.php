<?php

use App\modeles\ModeleClasse;
// STOCK GERANT
try {
    //code...
    $Liste_stock_gerant = ModeleClasse::getallJoinclose('table_produit', 'id', 'table_stock_magasin', 'ID_article', 'Id_gerant', $_SESSION['id_session']);
    $client = ModeleClasse::getallbyName('table_client', 'Creer_par', $_SESSION['id_session']);
    $Liste_article_gerant = [];
    if (!empty($Liste_stock_gerant)) :
        $Liste_article_gerant = $Liste_stock_gerant;
    else :
        $Liste_article_gerant = [];
    endif;
    // deb($Liste_article_gerant);
} catch (\Throwable $th) {
    //throw $th;
    return $error = $th->getMessage();
}

// Table_cmd
try {
    $Cmde = ModeleClasse::getoneByname_clause('Statut_commande', 'table_commande_gerant', 100, 'Creer_par', $_SESSION['id_session']);
    // deb($Cmde);
    $ALL_FACTURE_EN_COURS = ModeleClasse::getallJoinclose('table_commande_gerant', 'Numero_commande', 'table_vente_gerant', 'Numero_commande', 'Statut_commande', 100);
    // deb($ALL_FACTURE_EN_COURS);
    // TOTAL_FACTURE_SANS_REMISE
    $TSansRemise = 0;
    $Remise = 0;
    foreach ($ALL_FACTURE_EN_COURS as $data) :
        if ($data['Creer_par'] == $_SESSION['id_session']) :
            $TSansRemise += ($data['Prix_vente_unitaire'] * $data['Quantite_vendu']);
            $Remise = $data['Remise'];
            $Commande_num = $data['Numero_commande'];
            $Client = $data['ID_client'];
            if (!empty($Client)) :
                $CLI = ModeleClasse::getoneByname('id', 'table_client', $Client);
                $Name_client =  $CLI[1] . " " . $CLI[2];
            endif;
            $Id_vente = $data['id'];
        endif;
    endforeach;
} catch (\Throwable $th) {
    //throw $th;
    return $error = $th->getMessage();
}


// $_GET
if (!empty($_GET['id'])) :
    extract($_GET);
// deb($_GET);
endif; // end - GET


// Begin POST
if (!empty($_POST)) :
    extract($_POST);
    // deb($_POST);

    if (isset($_POST['new-commande'])) :
        unset($_POST['new-commande']);
        try {
            $Cmde = ModeleClasse::getoneByname_DESC('table_commande_gerant');
            // deb($Cmde);
            if (!empty($Cmde)) :
                // deb($Cmde);
                $_POST['Numero_commande'] = $Cmde['Numero_commande'] + 1;
                $_POST['Statut_vente'] = 100;
                $_POST['Creer_par'] = $_SESSION['id_session'];
                $_POST['Modifier_par'] = $_SESSION['id_session'];
                extract($_POST);
                ModeleClasse::add('table_vente_gerant', $_POST);
                unset($_POST['Statut_vente']);
                $_POST['Creer_par'] = $_SESSION['id_session'];
                $_POST['Modifier_par'] = $_SESSION['id_session'];
                $_POST['Statut_commande'] = 100;
                extract($_POST);
                ModeleClasse::add('table_commande_gerant', $_POST);
                header('Location:' . LINK . 'vente_gerant');
            else :
                // deb(1);
                $_POST['Numero_commande'] = 1;
                $_POST['Creer_par'] = $_SESSION['id_session'];
                $_POST['Modifier_par'] = $_SESSION['id_session'];
                $_POST['Statut_vente'] = 100;
                extract($_POST);
                ModeleClasse::add('table_vente_gerant', $_POST);
                unset($_POST['Statut_vente']);
                $_POST['Creer_par'] = $_SESSION['id_session'];
                $_POST['Modifier_par'] = $_SESSION['id_session'];
                $_POST['Statut_commande'] = 100;
                extract($_POST);
                ModeleClasse::add('table_commande_gerant', $_POST);
                header('Location:' . LINK . 'vente_gerant');
            endif;
        } catch (\Throwable $th) {
            //throw $th;
            return $error = $th->getMessage();
        }

    elseif (isset($_POST['add-product'])) :
        unset($_POST['add-product']);

        // // deb($Prix_vente_unitaire);
        // if ($Prix_vente_unitaire == $Prix_vente_systeme) :
        //     $_POST['Reduction'] = 0;
        // // elseif ($Prix_vente_unitaire > $Prix_vente_systeme) :
        // //     return $warning = "Vente fraudulueuse";
        // else :
        //     $_POST['Reduction'] = (($Prix_vente_systeme - $Prix_vente_unitaire) * $Quantite_vendu);
        // endif;
        $_POST['Numero_commande'] = $Cmde[1];
        $_POST['Statut_commande'] = 100;
        $_POST['Creer_par'] = $_SESSION['id_session'];
        $_POST['Modifier_par'] = $_SESSION['id_session'];
        extract($_POST);
        unset($_POST['Prix_vente_systeme']);
        // deb($_POST);
        try {
            //code...
            $Commande = ModeleClasse::getallbyName('table_commande_gerant', 'Statut_commande', 100);
            // deb($Commande);
            $Verif = [];
            foreach ($Commande as $data) :
                if (!empty($data['Ref_article'])) :
                    if ($data['Ref_article'] == $Ref_article) :
                        return $warning = "Article d&#233;j&#224; ajouter dans le panier";
                    endif;
                endif;
            endforeach;
            ModeleClasse::add('table_commande_gerant', $_POST);
            unset($_POST);
            header('Location:' . LINK . 'vente_gerant');
        } catch (\Throwable $th) {
            //throw $th;
            return $error = $th->getMessage();
        }
    elseif (isset($_POST['Remise'])) :
        // deb($_POST);
        try {
            //code...
            ModeleClasse::updateClause('table_vente_gerant', 'Remise', $Remise, 'Statut_vente', 100);
            header('Location:' . LINK . 'vente_gerant');
        } catch (\Throwable $th) {
            return $error = $th->getMessage();
            //throw $th;
        }
    // LIER UN CLIENT
    elseif (isset($_POST['select-client'])) :
        unset($_POST['select-client']);
        $_POST['id'] = [];
        foreach ($ALL_FACTURE_EN_COURS as $search) :
            $_POST['id'] = $search['id'];
        endforeach;
        extract($_POST);
        // deb($_POST);
        try {
            ModeleClasse::update('table_vente_gerant', $_POST, $id);
            header('Location:' . LINK . 'vente_gerant/' . $_GET['id']);
        } catch (\Throwable $th) {
            return $error = $th->getMessage();
            //throw $th;
        }
    elseif (isset($_POST['valider-cmd'])) :
        unset($_POST['valider-cmd']);

        if (!empty($ID_client)) :
            try {
                //code...
                $CL = ModeleClasse::getoneByname('id', 'table_client', $ID_client);
                $_POST['Nom_client'] = $CL[1] . " " . $CL[2];
            } catch (\Throwable $th) {
                //throw $th;
                return $error = $th->getMessage();
            }
        else :
            unset($_POST['ID_client']);
        endif;
        // deb($_POST);
        try {
            //code...
            $_POST['Etat_paiement'] = "Payer";
            $_POST['Creer_par'] = $_SESSION['id_session'];
            $_POST['Modifier_par'] = $_SESSION['id_session'];
            $_POST['Montant_total_SR'] = $TSansRemise;
            $_POST['Montant_total'] = ($TSansRemise - (($TSansRemise * $Remise) / 100));
            extract($_POST);
            // deb($_POST);
            ModeleClasse::update('table_vente_gerant', $_POST, $Id_vente);
            // unset($_POST);
            ModeleClasse::updateClause('table_vente_gerant', 'Statut_vente', 200, 'Numero_commande', $Numero_commande);
            ModeleClasse::updateClause('table_commande_gerant', 'Statut_commande', 200, 'Numero_commande', $Numero_commande);
            // deb(1);
            $list_cmd = ModeleClasse::getallByname('table_commande_gerant', 'Numero_commande', $Numero_commande);
            unset($_POST);
            // deb($list_cmd);
            foreach ($list_cmd as $data) :
                if (!empty($data['Ref_article'])) :
                    $_POST['id'] = $data['ID_article'];
                    extract($_POST);
                    $Art = ModeleClasse::getoneByname_clause('ID_article', 'table_stock_magasin', $id, 'Id_gerant', $_SESSION['id_session']);
                    // deb($Art);
                    if ($Art['Id_gerant'] == $_SESSION['id_session']) :
                        $Quantite_produit_last = $Art['Quantite_stock_magasin'];
                        $_POST['Quantite_stock_magasin'] = $Quantite_produit_last - $data['Quantite_vendu'];
                    endif;
                    extract($_POST);
                    // deb($_POST);
                    ModeleClasse::update('table_stock_magasin', $_POST, $Art[0]);
                endif;
            endforeach;
            // deb($list_cmd);
            header('Location:' . LINK . 'vente_gerant');
        } catch (\Throwable $th) {
            return $error = $th->getMessage();
            //throw $th;
        }
    // Creancer un client
    elseif (isset($_POST['creance'])) :
        unset($_POST['creance']);
        // deb($_POST);
        if (empty($ID_client)) :
            return $error = "Veillez choisir / Enregistrer un client pour <span class='text-danger'>CREDIRE</span>";
        endif;

        try {
            //code...
            $CL = ModeleClasse::getoneByname('id', 'table_client', $ID_client);
        } catch (\Throwable $th) {
            //throw $th;
            return $error = $th->getMessage();
        }

        try {
            $_POST['Creer_par'] = $_SESSION['id_session'];
            $_POST['Modifier_par'] = $_SESSION['id_session'];
            extract($_POST);
            // deb($_POST);
            ModeleClasse::add('table_creance', $_POST);
            unset($_POST);
            $_POST['Nom_client'] = $CL[1] . " " . $CL[2];
            $_POST['Etat_paiement'] = "creance";
            $_POST['Montant_total'] = ($TSansRemise - (($TSansRemise * $Remise) / 100));
            extract($_POST);
            // deb($_POST);
            ModeleClasse::update('table_vente_gerant', $_POST, $Id_vente);
            ModeleClasse::updateClause('table_vente_gerant', 'Statut_vente', 200, 'Numero_commande', $Numero_commande);
            ModeleClasse::updateClause('table_commande_gerant', 'Statut_commande', 200, 'Numero_commande', $Numero_commande);
            $list_cmd = ModeleClasse::getallByname('table_commande_gerant', 'Numero_commande', $Numero_commande);
            unset($_POST);
            foreach ($list_cmd as $data) :
                if (!empty($data['Ref_article'])) :
                    $_POST['id'] = $data['ID_article'];
                    extract($_POST);
                    $Art = ModeleClasse::getoneByname_clause('ID_article', 'table_stock_magasin', $id, 'Id_gerant', $_SESSION['id_session']);
                    // deb($_POST);
                    if ($Art['Id_gerant'] == $_SESSION['id_session']) :
                        $Quantite_produit_last = $Art['Quantite_stock_magasin'];
                        $_POST['Quantite_stock_magasin'] = $Quantite_produit_last - $data['Quantite_vendu'];
                    endif;
                    extract($_POST);
                    ModeleClasse::update('table_stock_magasin', $_POST, $Art[0]);
                endif;
            endforeach;
            // deb($list_cmd);
            header('Location:' . LINK . 'vente_gerant');
        } catch (\Throwable $th) {
            return $error = $th->getMessage();
            //throw $th;
        }
    // Suppression d'un article de la commande
    elseif (isset($_POST['id_retrait_article'])) :
        // deb($_POST);
        try {
            //code...
            ModeleClasse::delete($id_retrait_article, 'table_commande_gerant');
            header('Location:' . LINK . 'vente_gerant');
        } catch (\Throwable $th) {
            return $error = $th->getMessage();
            //throw $th;
        }
    // Annuler une commande en cours
    elseif (isset($_POST['annuler_cmd'])) :
        // deb($_POST);
        try {
            //code...
            ModeleClasse::delete_clause('table_commande_gerant', 'Numero_commande', $annuler_cmd);
            ModeleClasse::delete_clause('table_vente_gerant', 'Numero_commande', $annuler_cmd);
            header('Location:' . LINK . 'vente_gerant');
        } catch (\Throwable $th) {
            return $error = $th->getMessage();
            //throw $th;
        }
    else :
    // autres
    endif;

// Insertion
endif; // FIN POST