<?php

use App\modeles\ModeleClasse;

if (!empty($_POST)) {
    // deb($)
    // $_POST['mot_de_passe'] = substr(md5($_POST['mot_de_passe']), 10) . "@" . md5($_POST['mot_de_passe']) . "@" . substr(md5($_POST['mot_de_passe']), -20);
    if (isset($_POST['login'])) :
        $_POST['Mot_de_passe'] = md5($_POST['Mot_de_passe']);
        if (empty($_SESSION['Role'])) :
            extract($_POST);
            if (!empty($_POST['Nom_utilisateur'])) :
                try {
                    //code...
                    $user = ModeleClasse::checkUserInfo('table_utilisateur', $Nom_utilisateur, $Mot_de_passe);
                    if ($user) {
                        unset($_POST);
                        $infos_users = ModeleClasse::getoneByname('Nom_utilisateur', 'table_utilisateur', $Nom_utilisateur);
                        // deb($infos_users);
                        $_SESSION['id_session'] = $infos_users[0];
                        $_SESSION['Role'] = $infos_users['Role'];
                        $_SESSION['Nom_utilisateur'] = $infos_users['Nom_utilisateur'];
                        $_SESSION['Name'] = $infos_users['Name'];
                        $_SESSION['Profile'] = $infos_users['Image'];
                        header('Location:' . LINK . 'dashboard');
                    } else {
                        return $error = "Aucune correspondance trouver !";
                    }
                } catch (\Throwable $th) {
                    //throw $th;
                    return $error = $th->getMessage();
                }
            endif;
        endif;
    endif;
}
