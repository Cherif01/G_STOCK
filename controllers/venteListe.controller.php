<?php

use App\modeles\ModeleClasse;

// RECUPERATION
try {
    //code...
    if ($_SESSION['Role'] == "Admin") :
        $Liste = ModeleClasse::getallDescClause('table_vente', 'Creer_par', $_SESSION['id_session']);
    else :
        $Liste = ModeleClasse::getallDescClause('table_vente_gerant', 'Creer_par', $_SESSION['id_session']);
    endif;
    $Liste_vente = [];
    if (!empty($Liste)) :
        $Liste_vente = $Liste;
    else :
        $Liste_vente = [];
    endif;
} catch (\Throwable $th) {
    //throw $th;
    return $error = $th->getMessage();
}

if (!empty($_GET['id'])) :
    extract($_GET);
    // details de la commande demander
    // deb($_GET);
    try {
        if ($_SESSION['Role'] == "Admin") :
            //code...
            $Details_cmd = ModeleClasse::getallbyName('table_commande', 'Numero_commande', $id);
            // deb($Details_cmd);
            $Table_vente_get = ModeleClasse::getoneByname('Numero_commande', 'table_vente', $id);
            // deb($Table_vente_get);
            $client_paiement = ModeleClasse::getallbyName('table_creance', 'Numero_commande', $id);
        // deb($client_paiement);
        else :
            //code...
            $Details_cmd = ModeleClasse::getallbyName('table_commande_gerant', 'Numero_commande', $id);
            // deb($Details_cmd);
            $Table_vente_get = ModeleClasse::getoneByname('Numero_commande', 'table_vente_gerant', $id);
            // deb($Table_vente_get);
            $client_paiement = ModeleClasse::getallbyName('table_creance', 'Numero_commande', $id);
        // deb($client_paiement);
        endif;
        $M_payer = 0;
        if (!empty($client_paiement)) :
            foreach ($client_paiement as $data) :
                if ($data['Creer_par'] == $_SESSION['id_session']) :
                    $M_payer += $data['Montant_payer'];
                endif;
            endforeach;
        endif;
    } catch (\Throwable $th) {
        //throw $th;
        return $warning = $th->getMessage();
    }
endif;

// POST
if (!empty($_POST)) :
    extract($_POST);
    if (isset($_POST['creance'])) :
        unset($_POST['creance']);
        $_POST['Creer_par'] = $_SESSION['id_session'];
        $_POST['Modifier_par'] = $_SESSION['id_session'];
        // deb($_POST);
        try {
            if ($Montant_payer == $Reste) :
                // Validation de la facture
                unset($_POST['Reste']);
                ModeleClasse::add('table_creance', $_POST);
                unset($_POST);
                $_POST['Etat_paiement'] = "Payer";
                extract($_POST);
                // deb($_POST);
                if ($_SESSION['Role'] == "Admin") :
                    ModeleClasse::update('table_vente', $_POST, $Table_vente_get[0]);
                else :
                    ModeleClasse::update('table_vente_gerant', $_POST, $Table_vente_get[0]);
                endif;
                header('Location:' . LINK . 'venteListe/' . $_GET['id']);
            else :
                // deb($_POST);
                unset($_POST['Reste']);
                ModeleClasse::add('table_creance', $_POST);
                // header('Location:' . LINK . 'venteListe/' . $_GET['id']);
                return $success = "Paiement placer avec succès !";
            endif;
        } catch (\Throwable $th) {
            //throw $th;
            return $error = $th->getMessage();
        }
    endif;
endif;
