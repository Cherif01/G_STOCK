<?php

use App\modeles\ModeleClasse;

try {
    //code...
    // VENTE
    if ($_SESSION['Role'] == "Admin") :
        $Vente = ModeleClasse::getallbyName('table_vente', 'Creer_par', $_SESSION['id_session']);
    else :
        $Vente = ModeleClasse::getallbyName('table_vente_gerant', 'Creer_par', $_SESSION['id_session']);
    endif;
    if (!empty($Vente)) :
        $nb = 0;
        $Montant1 = 0;
        $Montant2 = 0;
        $Montant3 = 0;
        $Montant4 = 0;
        $Montant5 = 0;
        $Montant6 = 0;
        $Montant7 = 0;
        $Montant8 = 0;
        $Montant9 = 0;
        $Montant10 = 0;
        $Montant11 = 0;
        $Montant12 = 0;
        foreach ($Vente as $data) :
            $date = date_create($data['Creer_le']);
            $valeur_date = date_format($date, 'm');
            if ($valeur_date == 01) :
                $Montant1 += $data['Montant_total'];
            elseif ($valeur_date == 02) :
                $Montant2 += $data['Montant_total'];
            elseif ($valeur_date == 03) :
                $Montant3 += $data['Montant_total'];
            elseif ($valeur_date == 04) :
                $Montant4 += $data['Montant_total'];
            elseif ($valeur_date == 05) :
                $Montant5 += $data['Montant_total'];
            elseif ($valeur_date == 06) :
                $Montant6 += $data['Montant_total'];
            elseif ($valeur_date == 07) :
                $Montant7 += $data['Montant_total'];
            elseif ($valeur_date == 8) :
                $Montant8 += $data['Montant_total'];
            elseif ($valeur_date == 9) :
                $Montant9 += $data['Montant_total'];
            elseif ($valeur_date == 10) :
                $Montant10 += $data['Montant_total'];
            elseif ($valeur_date == 11) :
                $Montant11 += $data['Montant_total'];
            elseif ($valeur_date == 12) :
                $Montant12 += $data['Montant_total'];
            else :
                $Montant = 0;
            endif;
        endforeach;
        $dataPoints_ = array(
            array("y" => $Montant1, "label" => "Janv"),
            array("y" => $Montant2, "label" => "Fev"),
            array("y" => $Montant3, "label" => "Mars"),
            array("y" => $Montant4, "label" => "Avril"),
            array("y" => $Montant5, "label" => "Mai"),
            array("y" => $Montant6, "label" => "Juin"),
            array("y" => $Montant7, "label" => "Juillet"),
            array("y" => $Montant8, "label" => "Août"),
            array("y" => $Montant9, "label" => "Sept"),
            array("y" => $Montant10, "label" => "Oct"),
            array("y" => $Montant11, "label" => "Nov"),
            array("y" => $Montant12, "label" => "Dec")
        );
    endif;
} catch (\Throwable $th) {
    //throw $th;
    return $error = $th->getMessage();
}
