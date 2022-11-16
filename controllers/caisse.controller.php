<?php

use App\modeles\ModeleClasse;


// Recuperation dans la table
try {
    //code...
    $Liste_operation = ModeleClasse::getallbyName('table_caisse', 'Creer_par', $_SESSION['id_session']);
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


    // VENTE
    if ($_SESSION['Role'] == "Admin") :
        $TVendu = 0;
        $Credit_client_nr = 0;
        $Total_vendu = ModeleClasse::getallbyName('table_vente', 'Creer_par', $_SESSION['id_session']);
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
                    // $Credit_client_nr += $data['Montant_total'] - $avance;
                endif;
            endforeach;
        endif;

        // BENEFICE
        $TProfit = 0;
        $B_realiser = ModeleClasse::getallbyName('table_commande', 'Creer_par', $_SESSION['id_session']);
        if (!empty($B_realiser)) :
            foreach ($B_realiser as $data) :
                if (!empty($data['ID_article'])) :
                    $TProfit += (($data['Prix_vente_unitaire'] - $data['Prix_achat_unitaire']) * $data['Quantite_vendu']);
                endif;
            endforeach;
        endif;
    else :
        // deb("Bienvenu a la caisse");
        $TVendu = 0;
        $Credit_client_nr = 0;
        $Total_vendu = ModeleClasse::getallbyName('table_vente_gerant', 'Creer_par', $_SESSION['id_session']);
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
        $B_realiser = ModeleClasse::getallbyName('table_commande_gerant', 'Creer_par', $_SESSION['id_session']);
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
    endif;
} catch (\Throwable $th) {
    //throw $th;
    return $error = $th->getMessage();
}

// $_POST
if (!empty($_POST)) :
    extract($_POST);
    // deb($_POST);
    if (isset($_POST['addOPTS'])) :
        unset($_POST['addOPTS']);
        $_POST['Creer_par'] = $_SESSION['id_session'];
        $_POST['Modifier_par'] = $_SESSION['id_session'];
        extract($_POST);
        try {
            //code...
            ModeleClasse::add('table_caisse', $_POST);
            header('Location:' . LINK . 'caisse');
        } catch (\Throwable $th) {
            //throw $th;
        }
    endif;
endif; // fin post