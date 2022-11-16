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

    $BON = ModeleClasse::getallbyName('table_bon_commande', 'Statut_bc', 100);
    $BC = [];
    $Numero = 0;
    $TOTAL_commande = 0;
    if (!empty($BON)) :
        $BC = $BON;
    else :
        $BC = [];
    endif;
    $nbre = 0;
    foreach ($BC as $count) :
        $nbre++;
        $Numero = $count['Numero_bc'];
        $TOTAL_commande += $count['Prix_achat_unitaire'] * $count['Quantite_commander'];
    endforeach;
    // FIN BON

    //Fournisseur
    $ListeFournisseur = ModeleClasse::getall('table_fournisseur');
    $Fournisseur = [];
    if (!empty($ListeFournisseur)) :
        $Fournisseur = $ListeFournisseur;
    else :
        $Fournisseur = [];
    endif;


    // FOURNISSEUR LIER SI TRUE
    $Req = ModeleClasse::getoneByname('Statut_bc', 'table_bon_commande', 100);
    // deb($Req);
    if (!empty($Req)) :
        $Fournisseur_cmd = ModeleClasse::getoneByname('id', 'table_fournisseur', $Req['ID_Fournisseur']);
    // deb($Fournisseur_cmd);
    endif;

    // HISTORIQUE BON DE COMMANDE
    $Historique_bc = ModeleClasse::getallJoinGROUP_CLAUSE('Total', 'table_bon_commande', 'ID_Fournisseur', 'table_fournisseur', 'id', 'Numero_bc');
    // deb($Historique_bc);
    $Tab_history = [];
    if (!empty($Historique_bc)) :
        $Tab_history = $Historique_bc;
    else :
        $Tab_history = [];
    endif;
} catch (\Throwable $th) {
    //throw $th;
    return $error = $th->getMessage();
}


// GET
if (!empty($_GET['id'])) :
    extract($_GET);
    // deb($_GET);
    if ($_GET['id'] == 'validation') :
        try {
            //code...
            $Verif = ModeleClasse::getoneByname('Statut_bc', 'table_bon_commande', 100);
            // deb($Verif);
            if (!$Verif) :
                return $error = "Aucun article dans le panier";
            endif;
            if (empty($Verif['ID_Fournisseur'])) :
                return $error = "Selectionner un fournisseur pour valider la commande...";
            endif;
            ModeleClasse::updateClause('table_bon_commande', 'Statut_bc', 200, 'Statut_bc', 100);
            return array(header('Location:' . LINK . 'bc'), $success = "Commande valider");
        } catch (\Throwable $th) {
            //throw $th;
            return $error = $th->getMessage();
        }
    endif;
endif;
// FIN GET


// POST
$Total = 0;
if (!empty($_POST)) :
    extract($_POST);
    // Generation
    // $caracteres = '0987654321abcdCDABCKEDefghijklmnKTXYZOPQRSopqrstuv0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    // $longueurMax = strlen($caracteres);
    // $CODE_GEN = '';
    // $longueur = 5;
    // for ($i = 0; $i < $longueur; $i++) {
    //     $CODE_GEN .= $caracteres[rand(0, $longueurMax - 1)];
    // }
    try {
        //code...
        $Dernier_cmd = ModeleClasse::getoneByname_clause_DESC('table_bon_commande', 'Statut_bc',  200);
        if (!empty($Dernier_cmd)) :
            $CODE_GEN = $Dernier_cmd['Numero_bc'] + 1;
        else :
            $CODE_GEN = 1;
        endif;
    } catch (\Throwable $th) {
        //throw $th;
        return $error = $th->getMessage();
    }

    if (isset($_POST['choice-in-table'])) :
        unset($_POST['choice-in-table']);
        $_POST['Numero_bc'] = $CODE_GEN;
        $_POST['Total'] = $Prix_achat_unitaire * $Quantite_commander;
        $_POST['Creer_par'] = $_SESSION['id_session'];
        $_POST['Modifier_par'] = $_SESSION['id_session'];
        $_POST['Statut_bc'] = 100;
        extract($_POST);
        // deb($_POST);
        try {
            $Verif = ModeleClasse::getoneByname('Nom_produit', 'table_bon_commande', $Nom_produit);
            // deb($Verif);
            if ($Verif['Statut_bc'] == 100) :
                return $error = "Article deja placer aux nouvelles commande.";
            endif;
            //code...
            ModeleClasse::add('table_bon_commande', $_POST);
            return array(header('Location:' . LINK . 'bc'), $success = "Article ajouter au bon");
        } catch (\Throwable $th) {
            //throw $th;
            return $error = $th->getMessage();
        }
    elseif (isset($_POST['nouveau-produit'])) :
        unset($_POST['nouveau-produit']);
        $_POST['Numero_bc'] = $CODE_GEN;
        $_POST['Total'] = $Prix_achat_unitaire * $Quantite_commander;
        $_POST['Creer_par'] = $_SESSION['id_session'];
        $_POST['Modifier_par'] = $_SESSION['id_session'];
        $_POST['Statut_bc'] = 100;
        extract($_POST);
        // deb($_POST);
        try {
            $Verif = ModeleClasse::getoneByname('Nom_produit', 'table_bon_commande', $Nom_produit);
            // deb($Verif);
            if ($Verif['Statut_bc'] == 100) :
                return $error = "Article deja placer aux nouvelles commande.";
            endif;
            //code...
            ModeleClasse::add('table_bon_commande', $_POST);
            return array(header('Location:' . LINK . 'bc'), $success = "Article ajouter au bon");
        } catch (\Throwable $th) {
            //throw $th;
            return $error = $th->getMessage();
        }
    elseif (isset($_POST['select-fournisseur'])) :
        unset($_POST['select-fournisseur']);
        try {
            //code...
            $Verif = ModeleClasse::getoneByname('Statut_bc', 'table_bon_commande', 100);
            // deb($Verif);
            if (!$Verif) :
                return $error = "Aucun article dans le panier";
            endif;
            // deb($_POST);
            ModeleClasse::updateClause('table_bon_commande', 'ID_fournisseur', $ID_fournisseur, 'Statut_bc', 100);
            return array(header('Location:' . LINK . 'bc'), $success = "Fournisseur Choisis");
        } catch (\Throwable $th) {
            //throw $th;
            return $error = $th->getMessage();
        }
    elseif (isset($_POST['num_fact'])) :
        unset($_POST['num_fact']);
        // HISTORIQUE BON DE COMMANDE
        try {
            //code...
            $Historique_search = ModeleClasse::getallJoinclose('table_bon_commande', 'ID_Fournisseur', 'table_fournisseur', 'id', 'Numero_bc', $num_fact);
            // deb($Historique_search);
            foreach ($Historique_search as $data) :
                $Numero = $data['Numero_bc'];
                $Total += $data['Total'];
                $Fournisseur_cmd = $data;
            endforeach;
        } catch (\Throwable $th) {
            //throw $th;
            return $error = $th->getMessage();
        }
    else :
    endif;

endif;
