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

// STOCK GERANT
// RECUPERATION
try {
    //code...
    $Liste_stock_gerant = ModeleClasse::getallJoinclose('table_produit', 'id', 'table_stock_magasin', 'ID_article', 'Id_gerant', $_SESSION['id_session']);
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


try {
    //code...
    $List_f = ModeleClasse::getall('table_fournisseur');
    $Fournisseur = [];
    if (!empty($List_f)) :
        $Fournisseur = $List_f;
    else :
        $Fournisseur = [];
    endif;
} catch (\Throwable $th) {
    //throw $th;
    return $error = $th->getMessage();
}


// GET
if (!empty($_GET['id'])) :
    extract($_GET);
    if (str_contains($_GET['id'], "voir")) :
        $extract = explode("-", $id);
        $deleteID = $extract[1];
        $_POST['id'] = $deleteID;
        extract($_POST);
        // deb($id);
        try {
            //code...
            $Art_get = ModeleClasse::getoneByname('id', 'table_produit', $id);
            // deb($Art_get);
        } catch (\Throwable $th) {
            //throw $th;
            return $error = $th->getMessage();
        }
    elseif (is_numeric($_GET['id'])) :
        try {
            //code...
            $Art_get = ModeleClasse::getoneByname('id', 'table_produit', $id);
            // deb($Art_get);
        } catch (\Throwable $th) {
            //throw $th;
            return $error = $th->getMessage();
        }
    endif;

endif;

// POST
if (!empty($_POST)) :
    extract($_POST);

    if (isset($_POST['add-product'])) :
        unset($_POST['add-product']);
        if (!empty($_FILES)) {
            $_POST['Image'] = $_FILES['Image']['name'];
            extract($_FILES);
            /* Getting file name */
            $filename = $_FILES['Image']['name'];

            /* Location */
            $location = "upload/produit/" . $filename;
            $imageFileType = pathinfo($location, PATHINFO_EXTENSION);
            $imageFileType = strtolower($imageFileType);

            /* Valid extensions */
            $valid_extensions = array("jpg", "jpeg", "png", "gif");

            $response = 0;
            /* Check file extension */
            if (in_array(strtolower($imageFileType), $valid_extensions)) {
                /* Upload file */
                if (move_uploaded_file($_FILES['Image']['tmp_name'], $location)) {
                    $response = $location;
                }
            }
        }
        if (empty($_FILES['Image']['name'])) {
            array_pop($_POST);
        }

        try {
            //code...
            $Verif = ModeleClasse::getoneByname('Reference_produit', 'table_produit', $Reference_produit);
            if(!empty($Verif)) :
                return array($error = "Cette Reference est déjà lier à un autre produit...", header('Refresh: 3'));
            endif;
            // deb($_POST);
            ModeleClasse::add('table_produit', $_POST);
            header('Location:' . LINK . 'stock');
        } catch (\Throwable $th) {
            //throw $th;
            return $error = $th->getMessage();
        }

    // deb($_POST);
    elseif (isset($_POST['update-product'])) :
        unset($_POST['update-product']);
        // deb($_POST);
        if (!empty($_FILES)) {
            $_POST['Image'] = $_FILES['Image']['name'];
            extract($_FILES);
            /* Getting file name */
            $filename = $_FILES['Image']['name'];

            /* Location */
            $location = "upload/produit/" . $filename;
            $imageFileType = pathinfo($location, PATHINFO_EXTENSION);
            $imageFileType = strtolower($imageFileType);

            /* Valid extensions */
            $valid_extensions = array("jpg", "jpeg", "png", "gif");

            $response = 0;
            /* Check file extension */
            if (in_array(strtolower($imageFileType), $valid_extensions)) {
                /* Upload file */
                if (move_uploaded_file($_FILES['Image']['tmp_name'], $location)) {
                    $response = $location;
                }
            }
        }
        if (empty($_FILES['Image']['name'])) {
            array_pop($_POST);
        }
        try {
            // deb($_POST);
            ModeleClasse::update('table_produit', $_POST, $_GET['id']);
            header('Location:' . LINK . 'stock');
        } catch (\Throwable $th) {
            //throw $th;
            return $error = $th->getMessage();
        }
    endif;

endif;
