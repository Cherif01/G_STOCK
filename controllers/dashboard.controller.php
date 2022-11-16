<?php

use App\modeles\ModeleClasse;
// deb($_SESSION);
// deb($_SERVER);
// deb($_SERVER);


// RECUPERATION
try {
    //code...
    if ($_SESSION['Role'] == "Admin") :
        $Liste = ModeleClasse::getallJoinLibreGroup('Montant_payer', 'table_vente', 'Numero_commande', 'table_creance', 'Numero_commande');
    else :
        $Liste = ModeleClasse::getallJoinLibreGroup('Montant_payer', 'table_vente_gerant', 'Numero_commande', 'table_creance', 'Numero_commande');
    endif;
    $Liste_vente = [];
    if (!empty($Liste)) :
        $Liste_vente = $Liste;
    else :
        $Liste_vente = [];
    endif;
    // deb($Liste_vente);

    // deb($MT);


    // VENTE DU JOUR
    if ($_SESSION['Role'] == "Admin") :
        $Vente_jour_admin = ModeleClasse::getallbyName('table_vente', 'Creer_le', date('Y-m-d'));
        $Vente_jour_gerant = ModeleClasse::getallbyName('table_vente_gerant', 'Creer_le', date('Y-m-d'));
        $Paiement_jour = ModeleClasse::getallbyName('table_creance', 'Creer_le', date('Y-m-d'));
        // getallJoinclose('table_creance', 'Numero_commande', 'table_vente', 'Numero_commande' 'Creer_le', date('Y-m-d'));
        $Caisse_admin = ModeleClasse::getallbyName('table_vente', 'Creer_par', $_SESSION['id_session']);
        // deb($Vente_jour_admin);

        // Caisse
        $Total_caisse = 0;
        foreach ($Caisse_admin as $data) :
            $Total_caisse += $data['Montant_total'];
        endforeach;
        // deb($Vente_jour_admin);
        $Total_admin = 0;
        $Total_credit_admin = 0;
        $Num_cmd_admin = 0;
        $created_by_admin = 0;
        foreach ($Vente_jour_admin as $data) :
            $Total_admin += $data['Montant_total'];
            if ($data['Etat_paiement'] == 'creance') :
                $Total_credit_admin += $data['Montant_total'];
                $Num_cmd_admin = $data['Numero_commande'];
                $created_by_admin = $data['Creer_par'];
            endif;
        endforeach;
        // deb($Total_admin);
        // gerant vente
        $Total_gerant = 0;
        $Total_credit_gerant = 0;
        $Num_cmd_gerant = 0;
        $created_by_gerant = 0;
        foreach ($Vente_jour_gerant as $data) :
            $Total_gerant += $data['Montant_total'];
            if ($data['Etat_paiement'] == 'creance') :
                $Total_credit_gerant += $data['Montant_total'];
                $Num_cmd_gerant = $data['Numero_commande'];
                $created_by_gerant = $data['Creer_par'];
            endif;
        endforeach;
        // CREANCE
        // deb($Num_cmd_admin);
        // deb($Total_credit_gerant);
        $Payer1 = 0;
        $Payer2 = 0;
        $TPayer = 0;
        foreach ($Paiement_jour as $data) :
            if (($data['Numero_commande'] == $Num_cmd_admin)) :
                if ($data['Creer_par'] == $created_by_admin) :
                    $Payer1 += $data['Montant_payer'];
                endif;
            endif;
        // if (($data['Numero_commande'] == $Num_cmd_gerant)) :
        //     if ($data['Creer_par'] == $created_by_gerant) :
        //         $Payer2 += $data['Montant_payer'];
        //     endif;
        // endif;
        endforeach;
        $TPayer += $Payer1;
        // deb($TPayer);
        $TOTAL_CREDIT_JOUR = ($Total_credit_admin - $TPayer);
        $TOTAL_VENTE = $Total_admin;
    else :
        $Vente_jour_gerant = ModeleClasse::getallbyName('table_vente_gerant', 'Creer_le', date('Y-m-d'));
        $Caisse_gerant = ModeleClasse::getallbyName('table_vente_gerant', 'Creer_par', $_SESSION['id_session']);
        // deb($Caisse_gerant);

        // Caisse
        $Total_caisse = 0;
        foreach ($Caisse_gerant as $data) :
            $Total_caisse += $data['Montant_total'];
        endforeach;

        $Total_gerant = 0;
        $Total_credit_gerant = 0;
        foreach ($Vente_jour_gerant as $data) :
            if ($data['Creer_par'] == $_SESSION['id_session']) :
                $Total_gerant += $data['Montant_total'];
                if ($data['Etat_paiement'] == 'creance') :
                    $Total_credit_gerant += $data['Montant_total'];
                endif;
            endif;
        endforeach;
        $TOTAL_VENTE = $Total_gerant;
        $TOTAL_CREDIT_JOUR = $Total_credit_gerant;
    endif;

    // DEPENSES
    $Charges_jour = ModeleClasse::getallbyName('table_caisse', 'Type', 'Charges');
    // deb($Charges_jour);
    $Total_depense = 0;
    foreach ($Charges_jour as $data) :
        if ($data['Creer_par'] == $_SESSION['id_session']) :
            if ($data['Creer_le'] == date('Y-m-d')) :
                $Total_depense += $data['Montant_operation'];
            endif;
        endif;
    endforeach;
} catch (\Throwable $th) {
    //throw $th;
    return $error = $th->getMessage();
}

// CHART
if ($_SESSION['Role'] == "Admin") :
    try {

        $All_vente_admin = ModeleClasse::getall('table_vente');
        $All_vente_gerant = ModeleClasse::getall('table_vente_gerant');
        $All_charges = ModeleClasse::getallbyName('table_caisse', 'Type', 'Charges');
        // deb($All_charges);

        $Liste1_ = ModeleClasse::getallbyName('table_vente', 'Etat_paiement', 'creance');
        $Liste1_1 = ModeleClasse::getallbyName('table_vente_gerant', 'Etat_paiement', 'creance');
        $credit_payer = ModeleClasse::getall('table_creance');
        // deb($Liste1_);
        $MT1 = 0;
        $MT2 = 0;
        $MT3 = 0;
        $CREANCE = 0;

        $n_cmd_admin = 0;
        $n_cmd_gerant = 0;
        foreach ($Liste1_ as $data) :
            $MT1 += $data['Montant_total'];
        // array_push($n_cmd_admin, $data[''])
        endforeach;
        foreach ($Liste1_1 as $data) :
            $MT2 += $data['Montant_total'];
        endforeach;
        foreach ($credit_payer as $data) :
            $MT3 += $data['Montant_payer'];
        endforeach;
        $CREANCE += (($MT1 + $MT2) - $MT3);
        $MONTANT_TOTAL_CREDITER = $MT1 + $MT2;

        // deb($MONTANT_TOTAL_CREDITER);

        //GAUCHE
        $T1 = 0;
        $T2 = 0;
        $GT = 0;
        foreach ($All_vente_admin as $data) :
            $T1 += $data['Montant_total'];
        endforeach;
        foreach ($All_vente_gerant as $data) :
            $T2 += $data['Montant_total'];
        endforeach;
        $GT += $T1 + $T2;
        // DEPENSE
        $T_depenses = 0;
        foreach ($All_charges as $data) :
            $T_depenses += $data['Montant_operation'];
        endforeach;
        $dataPoints1 = array(
            array("label" => "VENTE TOTAL " . date('Y'), "y" => $GT),
            array("label" => "DEPENSE ", "y" => $T_depenses),
            array("label" => "CREANCE ", "y" => 0),
        );
        // DROITE
        $dataPoints2 = array(
            array("label"=>"Chrome", "y"=>64.02),
            array("label"=>"Firefox", "y"=>12.55),
            array("label"=>"IE", "y"=>8.47),
            array("label"=>"Safari", "y"=>6.08),
            array("label"=>"Edge", "y"=>4.29),
            array("label"=>"Others", "y"=>4.59)
        );
    } catch (\Throwable $th) {
        //throw $th;
        return $error = $th->getMessage();
    }
endif;

// FIN CHART

if (!empty($_GET['id'])) :
    extract($_GET);
// details de la commande demander
// deb($_GET);
endif;
