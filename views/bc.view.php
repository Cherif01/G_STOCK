<!-- Content -->
<div class="content">
    <!-- Animated -->
    <!-- EN TETE -->
    <div class="bg-light shadow p-2">
        <div class="d-flex justify-content-between align-items-center flex-wrap">
            <div class="col-2">
                <h6 class="text-secondary"><span class="text-dark fw-bold"> Bon de commande</span></h6>
            </div>
            <div class="col d-flex justify-content-end align-items-center flex-wrap">
                <a href="#" data-bs-toggle="modal" data-bs-target="#cmd-new" class="btn btn-outline-primary mx-2">Nouveau produit <span class="mdi mdi-arrow-down-bold"></span></a>
                <a href="#" data-bs-toggle="modal" data-bs-target="#select-fournisseur" class="btn btn-outline-info mx-2">Fournisseur <span class="mdi mdi-account-arrow-down"></span></a>
                <a href="#" data-bs-toggle="modal" data-bs-target="#voir-bc" class="btn btn-outline-success mx-2">Voir & Imprimer <span class="mdi mdi-printer"></span></a>
                <a href="<?= LINK ?>bc/validation" class="btn btn-outline-danger mx-2">Valider et commencer nouveau</a>
            </div>
        </div>
    </div>
    <!-- FIN ENTETE -->
    <div class="clearfix m-2"></div>
    <div class="">
        <?php if (!empty($success)) : ?>
            <div class="alert alert-info bg-success  text-white small border-0" id="succ"><?= $success ?></div>
        <?php elseif (!empty($error)) : ?>
            <div class="alert alert-danger text-white bg-danger p-2 small border-0" id="err"><?= $error ?></div>
        <?php else : ?>
        <?php endif; ?>
    </div>
    <div class="animated fadeIn shadow-lg" style="height: 70vh;overflow-y: scroll">
        <!-- Widgets  -->
        <!-- DEBUT -->
        <div class="container-fluid">
            <?php if (str_contains($_GET['id'], 'historique')) : ?>
                <!-- FIN BC -->
                <div class="d-flex justify-content-between flex-wrap">
                    <div class="col-12 col-md-5">
                        <div class="table-responsive">
                            <div class="card shadow p-2">
                                <h4 class="text-center p-2">Historique des commande (Bon) / <a href="#" onclick="ImpressionScript('facture_histoire')" class="btn text-primary mx-1"> Imprimer <span class="mdi mdi-printer small"></span></a>
                                </h4>
                                <table id="" class="table table-hover">
                                    <thead class="text-info fw-bold">
                                        <tr class="header">
                                            <th>#</th>
                                            <th>N<sup>o</sup></th>
                                            <th>Montant HT</th>
                                            <th class="text-center">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php if (!empty($Tab_history)) : $nb = 0 ?>
                                            <?php foreach ($Tab_history  as $data) : ?>
                                                <tr>
                                                    <td><?= ++$nb ?></td>
                                                    <td><?= $data['Numero_bc'] ?></td>
                                                    <td><?= number_format($data[23], '0', '.', ' ') ?> GNF</td>
                                                    <td class="d-flex justify-content-center">
                                                        <form action="" method="post">
                                                            <button type="submit" name="num_fact" value="<?= $data['Numero_bc'] ?>" class="btn btn-outline-primary mx-1"><span class="mdi mdi-eye small"></span></button>
                                                        </form>
                                                    </td>
                                                </tr>
                                            <?php endforeach; ?>
                                        <?php endif; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- HISTORIQUE -->
                    <div class="col small">
                        <div class="card small" id="facture_histoire">
                            <!-- La facture -->
                            <!-- contenu de la facture vente -->
                            <div class="p-2 px-4">
                                <div class="">
                                    <div class="text-center">
                                        <h2 class="text-center text-primary fw-bold p-0 m-0">BON DE COMMANDE</h2>
                                        <span class="text-center text-secondary">Date de commande : //</span>
                                    </div>
                                    <hr>
                                    <div class="d-flex justify-content-between flex-wrap mb-2">
                                        <div class="col small">
                                            <p>
                                            <h6>Facture N<sup>o</sup> : <span class="text-secondary"> <?= ($Numero > 0) ? $Numero : "Aucune facture choisis" ?></span></h6>
                                            <h6>Entreprise : <span class="text-secondary">EST. B& Fr&#232;res</span></h6>
                                            <h6>Adresse : <span class="text-secondary">Bonfi</span></h6>
                                            <h6>Telephone : <span class="text-secondary">+224 626 37 01 38 </span></h6>
                                            </p>
                                        </div>
                                        <?php if (!empty($Fournisseur_cmd)) : ?>
                                            <div class="col small p-2">
                                                <p>
                                                <h6 class="">Fournisseur : <span class="text-secondary"><?= $Fournisseur_cmd['Prenom_fournisseur'] . " " . $Fournisseur_cmd['Nom_fournisseur'] ?></span></h6>
                                                <h6>Adresse : <span class="text-secondary"><?= $Fournisseur_cmd['Adresse'] ?></span></h6>
                                                <h6>Societ&#233; : <span class="text-secondary"><?= $Fournisseur_cmd['Societe'] ?></span></h6>
                                                <h6>Telephone : <span class="text-secondary">+224 <?= number_format($Fournisseur_cmd['Telephone'], '0', '3', ' ') ?> </span></h6>
                                                </p>
                                            </div>
                                        <?php endif ?>
                                    </div>
                                </div>
                                <table class="table table-striped">
                                    <thead class="text-danger">
                                        <th>N<sup>o</sup></th>
                                        <th>Article</th>
                                        <th>Qte</th>
                                        <th>P.U</th>
                                        <th>Total</th>
                                    </thead>
                                    <tbody class="text-dark">
                                        <?php if (!empty($Historique_search)) : $nb = 0 ?>
                                            <?php foreach ($Historique_search as $data) : ?>
                                                <tr>
                                                    <td><?= ++$nb ?></td>
                                                    <td><?= $data['Nom_produit'] ?></td>
                                                    <td><?= $data['Quantite_commander'] ?></td>
                                                    <td><?= number_format($data['Prix_achat_unitaire'], '0', '.', ' ') ?> GNF</td>
                                                    <td><?= number_format(($data['Prix_achat_unitaire'] * $data['Quantite_commander']), '0', '.', ' ') ?> GNF</td>
                                                </tr>
                                            <?php endforeach; ?>
                                        <?php endif; ?>
                                    </tbody>
                                </table>
                                <div class="offset-7 col small">
                                    <p>
                                    <h6>Montant total : <span class="text-info"> <?= number_format($Total, '0', '.', ' ') ?> GNF</span></h6>
                                    </p>
                                </div>
                                <div class="col-6 small">
                                    <table class="table border-light p-0">
                                        <tr class="p-0 m-0">
                                            <th>Statut de paiement</th>
                                            <th>:</th>
                                            <td class="text-secondary small">..............</td>
                                        </tr>
                                        <tr class="p-0 m-0">
                                            <th>Condition de paiement</th>
                                            <th>:</th>
                                            <td class="text-secondary small">..............</td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="d-flex justify-content-between flex-wrap mt-5 shadow border border-secondary p-5">
                                    <div class="col">
                                        <h6 class="text-dark text-center">
                                            <th class="fw-bold">Signature du prestataire</th> <br> <br>
                                            <span class="text-secondary">................</span>
                                        </h6>
                                    </div>
                                    <div class="col">
                                        <h6 class="text-dark text-center">
                                            <th class="fw-bold">Signature du fournisseur</th> <br> <br>
                                            <span class="text-secondary pt-3">................</span>
                                        </h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Fin facture -->
                    </div>
                </div>
            <?php else : ?>
                <!-- Contenu -->
                <div class="card-body">
                    <div class="text-center">
                        <h4 class="text-center m-0">BON DE COMMANDE</h4>
                        <span class="fw-bold text-secondary">Choisir un article pour l'ajouter au <span class="text-danger">(BON DE COMMNADE)</span> | <a href="<?= LINK ?>bc/historique" class="text-primary">Voir l'historique <span class="mdi mdi-history mdi-spin"></span></a></span> <br>
                        <a href="#" data-bs-toggle="modal" data-bs-target="#voir-bc" class="text-dark nav-link">Panier de commande : <span class="btn btn-outline-info"> <span class="mdi mdi-cart-variant"></span> <?= $nbre ?></span></a>
                    </div>
                    <!-- FIN BC -->
                    <div class=" mt-5">
                        <input class="form-control p-4 border border-success" id="myInput" type="text" placeholder="Trouver rapidement l'article a approvisionner">
                        <table id="" class="table table-bordered table-striped">
                            <thead class="text-info fw-bold">
                                <tr class="header">
                                    <th>#</th>
                                    <th>Reference</th>
                                    <th>Nom de l'article</th>
                                    <th>Dernier <span class="text-danger">(Prix-achat)</span></th>
                                    <th>Qte commande</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody id="myTable">
                                <?php if (!empty($Liste_article)) : $nb = 0 ?>
                                    <?php foreach ($Liste_article as $data) : ?>
                                        <form action="" method="POST">
                                            <tr>
                                                <td><?= ++$nb ?></td>
                                                <td><?= $data[1] ?></td>
                                                <td><?= $data[2] ?></td>
                                                <td><input type="text" name="Prix_achat_unitaire" class="form-control border-info" value="<?= $data['Prix_achat_unitaire'] ?>"></td>
                                                <td><input type="text" name="Quantite_commander" required class="form-control border-info" placeholder="Ex: 10"></td>
                                                <td>
                                                    <input type="hidden" name="Nom_produit" value="<?= $data[2] ?>">
                                                    <button type="submit" name="choice-in-table" class="btn border-0"><span class="mdi mdi-plus-circle mdi-24px text-success"></span></button>
                                                </td>
                                            </tr>
                                        </form>
                                    <?php endforeach; ?>
                                <?php endif; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            <?php endif; ?>
            <hr>

            <!-- MESSAGE OK -->
            <div class="text-center d-flex justify-content-center">
                <?php if (!empty($warning)) : ?>
                    <div class="alert alert-info  fw-bold border-0" id="succ"><?= $warning ?></div>
                <?php endif; ?>
            </div>
            <!-- MESSAGE OK -->

        </div>
        <!-- FIN -->
    </div>
</div>
<!-- /.content -->

<!-- Modal -->
<div class="modal fade" id="select-fournisseur" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="" method="POST">
                <div class="modal-header bg-info">
                    <h1 class="modal-title fs-5 text-white" id="selectFournisseur">choisir le fournisseur pour la commande ?</h1>
                </div>
                <div class="modal-body">
                    <!-- Prenom / Nom -->
                    <select name="ID_fournisseur" id="" class="form-select p-3" required>
                        <option value="">Fournisseur</option>
                        <?php foreach ($Fournisseur as $data) : ?>
                            <?php if ($data[1] != "Null") : ?>
                                <option value="<?= $data[0] ?>"><?= $data[2] . " " . $data[1] ?></option>
                            <?php endif; ?>
                        <?php endforeach ?>
                    </select>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Fermer</button>
                    <button type="submit" name="select-fournisseur" class="btn btn-success">Selectionnez</button>
                </div>
            </form>
        </div>
    </div>
</div>



<!-- Modal -->
<div class="modal fade" id="voir-bc" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <form action="fournisseur" method="POST">
                <div class="modal-header bg-success">
                    <h1 class="modal-title fs-5 text-white" id="selectFournisseur">Bon de commande</h1>
                    <div class="col text-end m-0 p-0">
                        <a href="#" class="btn btn-outline-light" onclick="ImpressionScript('facture')">Imprimer <span class="mdi mdi-printer"></span></a>
                    </div>
                </div>
                <div class="modal-body">
                    <div class="" id="facture">
                        <!-- La facture -->
                        <!-- contenu de la facture vente -->
                        <div class="p-2 px-4">
                            <div class="">
                                <div class="text-center">
                                    <h2 class="text-center text-primary fw-bold p-0 m-0">BON DE COMMANDE</h2>
                                    <span class="text-center text-secondary">Date de commande : <?= date('d - M - Y') ?></span>
                                </div>
                                <hr>
                                <div class="d-flex justify-content-between flex-wrap mb-2">
                                    <div class="col small">
                                        <p>
                                        <h6>Facture N<sup>o</sup> : <span class="text-secondary"><?= $Numero ?></span></h6>
                                        <h6>Entreprise : <span class="text-secondary">EST. B& Fr&#232;res</span></h6>
                                        <h6>Adresse : <span class="text-secondary">Bonfi</span></h6>
                                        <h6>Telephone : <span class="text-secondary">+224 626 37 01 38 </span></h6>
                                        </p>
                                    </div>
                                    <?php if (!empty($Fournisseur_cmd)) : ?>
                                        <div class="col small p-2">
                                            <p>
                                            <h6 class="">Fournisseur : <span class="text-secondary"><?= $Fournisseur_cmd['Prenom_fournisseur'] . " " . $Fournisseur_cmd['Nom_fournisseur'] ?></span></h6>
                                            <h6>Adresse : <span class="text-secondary"><?= $Fournisseur_cmd['Adresse'] ?></span></h6>
                                            <h6>Societ&#233; : <span class="text-secondary"><?= $Fournisseur_cmd['Societe'] ?></span></h6>
                                            <h6>Telephone : <span class="text-secondary">+224 <?= number_format($Fournisseur_cmd['Telephone'], '0', '3', ' ') ?> </span></h6>
                                            </p>
                                        </div>
                                    <?php endif ?>
                                </div>
                            </div>
                            <table class="table table-striped">
                                <thead class="text-danger">
                                    <th>N<sup>o</sup></th>
                                    <th>Article</th>
                                    <th>Qte</th>
                                    <th>P.U</th>
                                    <th>Total</th>
                                </thead>
                                <tbody class="text-dark">
                                    <?php if (!empty($BC)) : $nb = 0 ?>
                                        <?php foreach ($BC as $data) : ?>
                                            <tr>
                                                <td><?= ++$nb ?></td>
                                                <td><?= $data['Nom_produit'] ?></td>
                                                <td><?= $data['Quantite_commander'] ?></td>
                                                <td><?= number_format($data['Prix_achat_unitaire'], '0', '.', ' ') ?> GNF</td>
                                                <td><?= number_format(($data['Prix_achat_unitaire'] * $data['Quantite_commander']), '0', '.', ' ') ?> GNF</td>
                                            </tr>
                                        <?php endforeach; ?>
                                    <?php endif; ?>
                                </tbody>
                            </table>
                            <div class="offset-7 col small">
                                <p>
                                <h6>Montant total : <span class="text-info"> <?= number_format($TOTAL_commande, '0', '.', ' ') ?> GNF</span></h6>
                                </p>
                            </div>
                            <div class="col-6 small">
                                <table class="table border-light p-0">
                                    <tr class="p-0 m-0">
                                        <th>Statut de paiement</th>
                                        <th>:</th>
                                        <td class="text-secondary small">..............</td>
                                    </tr>
                                    <tr class="p-0 m-0">
                                        <th>Condition de paiement</th>
                                        <th>:</th>
                                        <td class="text-secondary small">..............</td>
                                    </tr>
                                </table>
                            </div>
                            <div class="d-flex justify-content-between flex-wrap mt-5 shadow border border-secondary p-5">
                                <div class="col">
                                    <h6 class="text-dark text-center">
                                        <th class="fw-bold">Signature du prestataire</th> <br> <br>
                                        <span class="text-secondary">................</span>
                                    </h6>
                                </div>
                                <div class="col">
                                    <h6 class="text-dark text-center">
                                        <th class="fw-bold">Signature du fournisseur</th> <br> <br>
                                        <span class="text-secondary pt-3">................</span>
                                    </h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Fin facture -->
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Fermer</button>
                </div>
            </form>
        </div>
    </div>
</div>



<!-- ADD NEW ARTICLE -->

<!-- Modal -->
<div class="modal fade" id="cmd-new" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="" method="POST">
                <div class="modal-header bg-primary">
                    <h1 class="modal-title fs-5 text-white" id="">Ajouter un article</h1>
                </div>
                <div class="modal-body">
                    <div class="d-flex justify-content-start flex-wrap">

                        <!-- Nom du produit -->
                        <div class="input-h col-12 mt-2">
                            <input type="text" name="Nom_produit" class="form-control p-4 border border-success" placeholder="Nom du produit" required>
                        </div>

                        <!-- PA produit -->
                        <div class="input-h col-12 mt-2">
                            <input type="number" min="1" max="999999999" name="Prix_achat_unitaire" class="form-control p-4 border border-success" placeholder="Prix d'achat">
                        </div>

                        <!-- Qte au stock produit -->
                        <div class="input-h col-12 mt-2">
                            <input type="number" min="1" max="100000" name="Quantite_commander" class="form-control p-4 border border-success" placeholder="Quantite commander">
                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Fermer</button>
                    <button type="submit" name="nouveau-produit" class="btn btn-success">Terminer</button>
                </div>
            </form>
        </div>
    </div>
</div>