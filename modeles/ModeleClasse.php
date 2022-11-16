<?php

namespace App\modeles;

class ModeleClasse
{
    static function getall($table)
    {
        global $connect;
        $req = $connect->query("SELECT * FROM " . $table);
        $result = $req->fetchAll();
        return $result;
    }

    // GET ALL DES - CLAUSE
    static function getallDescClause($table, $champ, $value)
    {
        global $connect;
        $req = $connect->query("SELECT * FROM " . $table . " WHERE " . $champ . "=" . $value . " ORDER BY id DESC");
        $result = $req->fetchAll();
        return $result;
    }

    // DESC ALL
    static function getallDesc($table)
    {
        global $connect;
        $req = $connect->query("SELECT * FROM " . $table . " ORDER BY id DESC");
        $result = $req->fetchAll();
        return $result;
    }

    static function getallJoin2($tablepk, $tablefk)
    {
        global $connect;
        $req = $connect->query("SELECT * FROM " . $tablepk . " INNER JOIN " . $tablefk . " WHERE " . $tablepk . ".id=" . $tablefk . ".id");
        $result = $req->fetchAll();
        return $result;
    }

    // Libre
    static function getallJoinLibre($tablepk, $pk, $tablefk, $fk)
    {
        global $connect;
        $req = $connect->query("SELECT * FROM " . $tablepk . " INNER JOIN " . $tablefk . " WHERE " . $tablepk . "." . $pk . "=" . $tablefk . "." . $fk);
        $result = $req->fetchAll();
        return $result;
    }

    // Libre GROUP
    static function getallJoinLibreGroup($sumval, $tablepk, $pk, $tablefk, $fk)
    {
        global $connect;
        $req = $connect->query("SELECT *, SUM($sumval) FROM " . $tablepk . " INNER JOIN " . $tablefk . " WHERE " . $tablepk . "." . $pk . "=" . $tablefk . "." . $fk . " GROUP BY " . $tablefk . "." . $fk);
        $result = $req->fetchAll();
        return $result;
    }

    //JOINTURE Libre GROUP
    static function getallJoinGROUP_CLAUSE($sumval, $tablepk, $pk, $tablefk, $fk, $clause)
    {
        global $connect;
        $req = $connect->query("SELECT *, SUM($sumval) FROM " . $tablepk . " INNER JOIN " . $tablefk . " WHERE " . $tablepk . "." . $pk . "=" . $tablefk . "." . $fk . " GROUP BY " . $clause);
        $result = $req->fetchAll();
        return $result;
    }

    // clause
    static function getallJoinclose($tablepk, $pk, $tablefk, $fk, $clause, $getId)
    {
        global $connect;
        $req = $connect->query("SELECT * FROM " . $tablepk . " INNER JOIN " . $tablefk . " WHERE " . $tablepk . "." . $pk . "=" . $tablefk . "." . $fk . " AND " . $clause . " = " . $getId);
        $result = $req->fetchAll();
        return $result;
    }

    static function getOneJoinclose($tablepk, $pk, $tablefk, $fk, $clause, $getId)
    {
        global $connect;
        $req = $connect->query("SELECT * FROM " . $tablepk . " INNER JOIN " . $tablefk . " WHERE " . $tablepk . "." . $pk . "=" . $tablefk . "." . $fk . " AND " . $clause . " = " . $getId);
        $result = $req->fetch();
        return $result;
    }


    //    static function sendJson($info){
    //     }
    static function delete($id, $table)
    {
        global $connect;
        $connect->query("DELETE FROM " . $table . " WHERE id=" . $id);
    }

    // DELETE CLAUSE
    static function delete_clause($table, $champ, $id)
    {
        global $connect;
        $connect->query("DELETE FROM " . $table . " WHERE " . $champ . "=" . $id);
    }

    static function getone($id, $table)
    {
        global $connect;
        $req = $connect->query("SELECT * FROM " . $table . " WHERE id=" . $id);
        $result = $req->fetch();
        return $result;
    }

    static function getoneByname($name, $table, $value)
    {
        global $connect;
        $req = $connect->prepare("SELECT * FROM " . $table . " WHERE " . $name . "= ?");
        $req->execute([$value]);
        $result = $req->fetch();
        return $result;
    }

    // GetOne clause
    static function getoneByname_clause($name, $table, $value, $session, $id_session)
    {
        global $connect;
        $req = $connect->prepare("SELECT * FROM " . $table . " WHERE " . $name . "= ? AND " . $session . "= ?");
        $req->execute([$value, $id_session]);
        $result = $req->fetch();
        return $result;
    }

    // GetOne clause_DESC
    static function getoneByname_clause_DESC($table, $name, $value)
    {
        global $connect;
        $req = $connect->prepare("SELECT * FROM " . $table . " WHERE " . $name . "= ? ORDER BY id DESC LIMIT 1");
        $req->execute([$value]);
        $result = $req->fetch();
        return $result;
    }

    // checkUser
    static function checkUserInfo($table, $Username, $Mot_de_passe)
    {
        global $connect;
        $req = $connect->prepare("SELECT * FROM " . $table . " WHERE Nom_utilisateur=? AND Mot_de_passe=?");
        $req->execute([$Username, $Mot_de_passe]);
        $result = $req->fetch();
        return $result;
    }

    // GET ONE BY DESC
    static function getoneByname_DESC($table)
    {
        global $connect;
        $req = $connect->query("SELECT * FROM " . $table . " ORDER BY id DESC LIMIT 1");
        $result = $req->fetch();
        return $result;
    }

    // UPDATE SIMPLE
    static function updateClause($table, $champ, $value, $clause, $clauseVal)
    {
        global $connect;
        $req = $connect->prepare("UPDATE " . $table . " SET " . $champ . " = ? WHERE " . $clause . "= ?");
        $req->execute([$value, $clauseVal]);
        $result = $req->fetch();
        return $result;
    }

    // UPDATE SIMPLE
    static function updateSimpe($table, $champ, $value)
    {
        global $connect;
        $req = $connect->prepare("UPDATE " . $table . " SET " . $champ . " = ?");
        $req->execute([$value]);
        $result = $req->fetch();
        return $result;
    }


    // GeallByName egality
    static function getallbyName($table, $name, $value)
    {
        global $connect;
        $req = $connect->prepare("SELECT * FROM " . $table . " WHERE " . $name . "= ?");
        $req->execute([$value]);
        $result = $req->fetchAll();
        return $result;
    }

    // GeallByName different by clause
    static function getallbyNameDiff($table, $name, $value)
    {
        global $connect;
        $req = $connect->prepare("SELECT * FROM " . $table . " WHERE " . $name . "!= ?");
        $req->execute([$value]);
        $result = $req->fetchAll();
        return $result;
    }


    // LE DERNIER ELEMENT
    static function getallbyNameDESC($table, $name, $value)
    {
        global $connect;
        $req = $connect->query("SELECT * FROM " . $table . " WHERE " . $name . "=" . $value . " ORDER BY id DESC LIMIT 1");
        $result = $req->fetchAll();
        return $result;
    }

    // GETAll GROUP
    static function getallbyName_group($table, $name, $value, $var)
    {
        global $connect;
        $req = $connect->query("SELECT *, SUM($var) FROM " . $table . " WHERE " . $name . "=" . $value);
        $result = $req->fetchAll();
        return $result;
    }

    // GETAll GROUP
    static function getallbyName_grou2Clause($table, $name, $value, $clause, $val, $var)
    {
        global $connect;
        $req = $connect->query("SELECT *, SUM($var) FROM " . $table . " WHERE " . $name . "=" . $value." AND ".$clause."=".$val);
        $result = $req->fetch();
        return $result;
    }

    // Se connecter
    static function loginUser($table, $champ1, $value1, $champ2, $value2)
    {
        global $connect;
        $req = $connect->prepare("SELECT * FROM " . $table . " WHERE " . $champ1 . "= ? AND " . $champ2 . "= ?");
        $req->execute([$value1, $value2]);
        $result = $req->fetch();
        return $result;
    }

    public static function add($table, $post): void
    {
        $dat = [];
        $names = "";
        foreach ($post as $p => $v) {
            array_push($dat, $v);
            $names .= $p . "=?,";
        }
        $names = "INSERT INTO " . $table . " SET " . substr($names, 0, -1);
        global $connect;
        $req = $connect->prepare($names);
        $req->execute($dat);
    }


    public static function update($table, $post, $id): void
    {
        $dat = [];
        $names = "";
        foreach ($post as $p => $v) {
            array_push($dat, $v);
            $names .= $p . "=?,";
        }
        array_push($dat, $id);
        $names = "UPDATE " . $table . " SET " . substr($names, 0, -1) . "WHERE id=?";
        global $connect;
        $req = $connect->prepare($names);
        $req->execute($dat);
    }
}
