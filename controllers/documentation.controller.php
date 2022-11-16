<?php

use App\modeles\ModeleClasse;

// RECUPERATION

try {
    //code...
    $Docs = ModeleClasse::getall('table_guide');
} catch (\Throwable $th) {
    //throw $th;
    return $error = $th->getMessage();
}
