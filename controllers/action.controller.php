<?php

use App\modeles\ModeleClasse;
// deb($_SESSION);


if (!empty($_GET)) {
    extract($_GET);
    // stock
    if (str_contains($id, "stock")) :
        $extract = explode("-", $id);
        $deleteID = $extract[1];
        $_POST['id'] = $deleteID;
        extract($_POST);
        // deb($id);
        try {
            ModeleClasse::delete($id, 'table_produit');
            header('Location:' . LINK . 'stock');
        } catch (\Throwable $th) {
            return $error = $th->getMessage();
        }
    // client
    elseif (str_contains($id, "client")) :
        $extract = explode("-", $id);
        $deleteID = $extract[1];
        $_POST['id'] = $deleteID;
        extract($_POST);
        // deb($id);
        try {
            ModeleClasse::delete($id, 'table_client');
            header('Location:' . LINK . 'client');
        } catch (\Throwable $th) {
            return $error = $th->getMessage();
        }
    // fournisseur
    elseif (str_contains($id, "fournisseur")) :
        $extract = explode("-", $id);
        $deleteID = $extract[1];
        $_POST['id'] = $deleteID;
        extract($_POST);
        // deb($id);
        try {
            ModeleClasse::delete($id, 'table_fournisseur');
            header('Location:' . LINK . 'fournisseur');
        } catch (\Throwable $th) {
            return $error = $th->getMessage();
        }
    // table_creance
    elseif (str_contains($id, "history")) :
        $extract = explode("-", $id);
        $deleteID = $extract[1];
        $come_back = $extract[2];
        $_POST['id'] = $deleteID;
        $ID_CMD = $come_back;
        extract($_POST);
        try {
            ModeleClasse::delete($id, 'table_creance');
            unset($_POST);
            if ($_SESSION['Role'] == "Admin") :
                $Vente_refresh = ModeleClasse::getoneByname('Numero_commande', 'table_vente', $ID_CMD);
                $_POST['Etat_paiement'] = "creance";
                $_POST['id'] = $Vente_refresh[0];
                // deb($Vente_refresh);
                extract($_POST);
                ModeleClasse::update('table_vente', $_POST, $id);
            else :
                $Vente_refresh = ModeleClasse::getoneByname('Numero_commande', 'table_vente_gerant', $ID_CMD);
                $_POST['Etat_paiement'] = "creance";
                $_POST['id'] = $Vente_refresh[0];
                // deb($Vente_refresh);
                extract($_POST);
                ModeleClasse::update('table_vente_gerant', $_POST, $id);
            endif;
            header('Location:' . LINK . 'venteListe/' . $Vente_refresh[1]);
        } catch (\Throwable $th) {
            return $error = $th->getMessage();
        }
    else :
    // deb($_GET);
    endif;
}
