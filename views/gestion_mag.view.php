<!-- Content -->
<div class="content">
    <!-- Animated -->
    <!-- EN TETE -->
    <div class="bg-light shadow p-2">
        <div class="d-flex justify-content-between flex-wrap align-items-center">
            <div class="col">
                <h4 class="text-secondary">Page : <span class="text-info text-capitalize"><?= $page ?></span></h4>
            </div>
            <div class="col d-flex justify-content-end">
                <a href="#" data-bs-toggle="modal" data-bs-target="#add-magasin" class="btn btn-outline-success">Add...</a>
            </div>
        </div>
    </div>
    <!-- FIN ENTETE -->
    <div class="clearfix m-2"></div>
    <div class="">
        <?php

        use App\modeles\ModeleClasse;

        if (!empty($success)) : ?>
            <div class="alert alert-info bg-success  text-white small border-0" id="succ"><?= $success ?></div>
        <?php elseif (!empty($error)) : ?>
            <div class="alert alert-danger text-white bg-danger p-2 small border-0" id="err"><?= $error ?></div>
        <?php else : ?>
        <?php endif; ?>
    </div>
    <div class="animated fadeIn shadow-lg" style="height: 75vh;overflow-y: scroll">
        <!-- Widgets  -->

        <!-- DEBUT -->
        <div class="container-fluid">
            <!-- Contenu -->
            <?php if (!empty($MAG)) : ?>
                <hr>
                <div class="p-2 d-flex justify-content-between flex-wrap pb-0">
                    <div class="col-12 col-md-5 col-lg-5">
                        <!-- ADRESSE GERANT / MAGASIN -->
                        <div class="card shadow p-2">
                            <div class="card-header">
                                <h4 class="text-centeer fw-bold"><span class="text-primary fw-bold">REF :</span> <?= $MAG['Reference_mag'] ?></h4>
                            </div>
                            <div class="card-body p-0">
                                <div class="img-responsive text-center">
                                    <span class="mdi mdi-cart text-dark" style="font-size: 40px;"></span>
                                </div>
                                <table class="table">
                                    <tr>
                                        <th>Gerant</th>
                                        <th>:</th>
                                        <td><?= $MAG['Name'] ?></td>
                                    </tr>
                                    <tr>
                                        <th>N<sup>o</sup>:Tel</th>
                                        <th>:</th>
                                        <td><?= $MAG['Telephone'] ?></td>
                                    </tr>
                                    <tr>
                                        <th>Adresse magasin</th>
                                        <th>:</th>
                                        <td><?= $MAG['Adresse_mag'] ?></td>
                                    </tr>
                                    <tr class="d-none">
                                        <th>Description magasin</th>
                                        <th>:</th>
                                        <td><?= $MAG['Description_mag'] ?></td>
                                    </tr>
                                </table>
                            </div>
                            <div class="card-footer p-0">
                                <table class="table">
                                    <?php if ($MAG['Statut_mag'] == 200) : ?>
                                        <tr>
                                            <th>STATUT</th>
                                            <th>:</th>
                                            <td class="text-success fw-bold">Actif</td>
                                        </tr>
                                    <?php else : ?>
                                        <tr>
                                            <th>STATUT</th>
                                            <th>:</th>
                                            <td class="text-danger fw-bold">Hors service</td>
                                        </tr>
                                    <?php endif ?>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <form action="" method="post">
                            <div class="card-body te">
                                <h4 class="text-center m-0">Envoie des articles</h4>
                                <marquee behavior="alternate" direction="left">Choisir un article pour l'envoyer a ce stock...</marquee>
                                <div class="d-flex align-items-center">
                                    <select data-placeholder="Selectionner un produit" name="ID_PRODUIT" required class="standardSelect form-control" tabindex="1">
                                        <option value="" label="default"></option>
                                        <?php foreach ($Liste_article as $data) : ?>
                                            <option class="" value="<?= $data[0] ?>"><?= $data['Reference_produit'] ?> / <?= $data['Nom_produit'] ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                    <button type="submit" name="Trouve" class="btn border-0"><span class="mdi mdi-magnify text-success mdi-24px"></span></button>
                                </div>
                            </div>
                        </form>
                        <?php if (!empty($trouve)) : ?>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="col-4">
                                    <div class="card-body p-2">
                                        <img src="<?= LINK ?>upload/produit/<?= $trouve['Image'] ?>" class="w-75 rounded -cicle" alt="">
                                    </div>
                                </div>
                                <div class="col">
                                    <table class="table">
                                        <tr>
                                            <th>REFERENCE</th>
                                            <th>:</th>
                                            <td><?= $trouve['Reference_produit'] ?></td>
                                        </tr>
                                        <tr class="d-none">
                                            <th>Nom du produit</th>
                                            <th>:</th>
                                            <td><?= $trouve['Nom_produit'] ?></td>
                                        </tr>
                                        <tr>
                                            <th>Qte au stock</th>
                                            <th>:</th>
                                            <td><?= $trouve['Quantite_produit'] ?></td>
                                        </tr>
                                        <tr>
                                            <th>PV/Unit</th>
                                            <th>:</th>
                                            <td><?= $trouve['Prix_vente_unitaire'] ?></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        <?php endif; ?>

                        <!-- Formulaire d'envoie dans un magasin -->
                        <div class="shadow border-primary">
                            <?php if (!empty($trouve)) : ?>
                                <?php if (!empty($MAG)) : ?>
                                    <form action="" method="post">
                                        <div class="input-group d-flex justify-content-between align-items-center">
                                            <input type="hidden" min="0" name="id_magasin" value="<?= $MAG[0] ?>" class="form-control border-primary fw-bold" readonly>
                                            <input type="hidden" min="0" name="id_gerant" value="<?= $MAG[6] ?>" class="form-control border-primary fw-bold" readonly>
                                            <input type="hidden" min="0" name="ID_article" value="<?= $trouve[0] ?>" class="form-control border-primary fw-bold" readonly>
                                            <input type="text" value="<?= $trouve[2] ?>" class="form-control border-primary fw-bold" readonly>
                                            <span class="mdi mdi-arrow-right-bold mdi-24px border"></span>
                                            <input type="number" name="Quantite_stock_magasin" min="0" max="<?= $trouve['Quantite_produit'] ?>" required class="form-control border-success fw-bold" placeholder="Qte à envoyer...">
                                            <button type="submit" name="send_qte" class="btn"><span class="mdi mdi-send text-success"></span></button>
                                        </div>
                                    </form>
                                <?php endif; ?>
                            <?php endif; ?>
                        </div>

                    </div>

                </div>
                <div class="card table-responsive p-2 m-2">
                    <div class="table-responsive">
                        <h5 class="text-center text-primary">Liste des produits au magasin</h5>
                        <table class="table table-hover display" id="maTable">
                            <thead class="bg-info text-white">
                                <th>#</th>
                                <th>Ref</th>
                                <th>Designation</th>
                                <th>P.V / Unit</th>
                                <th>Stock au magasin</th>
                                <th>Approvis...</th>
                                <th class="text-center">Action</th>
                            </thead>
                            <tbody>
                                <?php if (!empty($product_)) : $nb = 0; ?>
                                    <?php foreach ($product_ as $data) : ?>
                                        <tr>
                                            <td><?= ++$nb ?></td>
                                            <td><?= $data['Reference_produit'] ?></td>
                                            <td><?= $data['Nom_produit'] ?></td>
                                            <td><?= number_format($data['Prix_vente_unitaire'], '0', '.', ' ') ?> <?= $franc ?></td>
                                            <?php if ($data['Quantite_stock_magasin'] > 0) : ?>
                                                <td><?= $data['Quantite_stock_magasin'] ?></td>
                                            <?php else : ?>
                                                <td class="text-danger small">Article &#233;puis&#233; (<?= $data['Quantite_stock_magasin'] ?>) <span class="mdi mdi-arrow-down-bold text-danger"></span></td>
                                            <?php endif; ?>
                                            <form action="" method="post">
                                                <input type="hidden" name="ID_article" value="<?= $data['ID_article'] ?>">
                                                <td><input type="number" name="Quantite_appro" class="form-control" placeholder="Ex: 10" min="1" max="1000" id="" required></td>
                                                <td class="text-center">
                                                    <button type="submit" name="appro_mag" class="btn btn-outline-success"><span class="mdi mdi-plus-circle"></span></button>
                                                </td>
                                            </form>
                                        </tr>
                                    <?php endforeach; ?>
                                <?php endif; ?>
                            </tbody>
                        </table>
                    </div>
                </div>

                <hr>
                <!-- Historique des ventes au magaasin -->
                <div class="card table-responsive p-2 m-2">
                    <h5 class="text-center text-primary">Historique des ventes</h5>
                    <hr>
                    <div class="table-responsive p-2 card">
                        <table class="table table-hover" id="maTable">
                            <thead class="text-danger">
                                <th>N<sup>o</sup> commande</th>
                                <th>MT Facture (GNF)</th>
                                <th>Payer (GNF)</th>
                                <th>Reste (GNF)</th>
                                <th>Statut</th>
                            </thead>
                            <tbody class="text-dark">
                                <!-- contenu -->
                                <?php if (!empty($Historique_vente)) : ?>
                                    <?php foreach ($Historique_vente as $data) : ?>
                                        <?php $Credit = ModeleClasse::getallbyName_grou2Clause('table_creance', 'Creer_par', $data['Creer_par'], 'Numero_commande', $data['Numero_commande'], 'Montant_payer'); ?>
                                        <?php //deb($Credit);
                                        ?>
                                        <tr>
                                            <td>BG_GR-00<?= $data['Numero_commande'] ?></td>
                                            <td><?= number_format($data['Montant_total'], '0', '.', ' ') ?></td>
                                            <?php if ($data['Etat_paiement'] == "Payer") : ?>
                                                <td><?= number_format($data['Montant_total'], '0', '.', ' ') ?></td>
                                            <?php else : ?>
                                                <td><?= number_format($Credit[9], '0', '.', ' ') ?></td>
                                            <?php endif; ?>
                                            <?php if ($data['Etat_paiement'] == "Payer") : ?>
                                                <td><?= number_format((0), '0', '.', ' ') ?></td>
                                            <?php else : ?>
                                                <td><?= number_format(($data['Montant_total'] - $Credit[9]), '0', '.', ' ') ?></td>
                                            <?php endif; ?>
                                            <?php if ($data['Etat_paiement'] == "Payer") : ?>
                                                <td><span class="mdi mdi-check-all text-success"></span> valider</td>
                                            <?php else : ?>
                                                <td><span class="mdi mdi-check text-danger"></span> Non r&#233;gler</td>
                                            <?php endif; ?>
                                        </tr>
                                    <?php endforeach; ?>
                                <?php endif; ?>
                            </tbody>
                        </table>
                    </div>
                </div>

                <hr>
                <!-- GESTION DE LA CAISSE -->
                <div class="card table-responsive p-2 m-2">
                    <h5 class="text-center text-primary">CAISSE DU GERANT</h5>
                    <hr>
                    <!-- DEBUT -->
                    <div class="container-fluid">
                        <!-- Contenu -->
                        <!-- Widgets  -->
                        <div class="row pt-3">
                            <div class="col-lg-3 col-md-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="stat-widget-five">
                                            <div class="stat-icon dib flat-color-1">
                                                <i class="pe-7s-cash"></i>
                                            </div>
                                            <div class="stat-content">
                                                <div class="text-left dib">
                                                    <div class="stat-text"><span class="small"><?= number_format($TVendu, '0', '.', ' ') ?></span></div>
                                                    <div class="stat-heading"><span class="text-primary mdi mdi-arrow-left-bold"></span> Total Vendu</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="stat-widget-five">
                                            <div class="stat-icon dib flat-color-3">
                                                <i class="pe-7s-cash"></i>
                                            </div>
                                            <div class="stat-content">
                                                <div class="text-left dib">
                                                    <div class="stat-text"><span class="small"><?= number_format($Credit_client_nr, '0', '.', ' ') ?></span></div>
                                                    <div class="stat-heading"><span class="text-warning mdi mdi-arrow-up-left-bold"></span> En cr&#233;dit </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="stat-widget-five">
                                            <div class="stat-icon dib flat-color-2">
                                                <i class="mdi mdi-finance"></i>
                                            </div>
                                            <div class="stat-content">
                                                <div class="text-left dib">
                                                    <div class="stat-text"><span class="small"><?= number_format($TProfit, '0', '.', ' ') ?></span></div>
                                                    <div class="stat-heading"> <span class="text-info mdi mdi-plus-circle"></span> Bénéfices</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-6">
                                <div class="card border-success shadow-lg bg-light" style="border-top-right-radius: 30px;border-bottom-left-radius: 30px;">
                                    <div class="card-body">
                                        <div class="stat-widget-five">
                                            <div class="stat-icon dib flat-color-4 text-success">
                                                <i class="mdi mdi-scale-unbalanced"></i>
                                            </div>
                                            <div class="stat-content">
                                                <div class="text-left dib">
                                                    <div class="stat-text"><span class="fw-bold"><?= number_format((($TVendu + $Entrer) - ($Credit_client_nr + $Sortie + $Virement + $Charges)), '0', '.', ' ') ?></span></div>
                                                    <div class="stat-heading text-success"><span class="text-success mdi mdi-arrow-up-bold"></span> Caisse</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /Widgets -->
                        <!-- 2e widgets -->
                        <!-- Widgets  -->
                        <div class="row">
                            <div class="col-lg-3 col-md-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="stat-widget-five">
                                            <div class="stat-icon dib flat-color-1">
                                                <i class="mdi mdi-bank"></i>
                                            </div>
                                            <div class="stat-content">
                                                <div class="text-left dib">
                                                    <div class="stat-text"><span class="small"><?= number_format($Virement, '0', '.', ' ') ?></span></div>
                                                    <div class="stat-heading"><span class="text-primary mdi mdi-arrow-right-bold"></span> Virement</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="stat-widget-five">
                                            <div class="stat-icon dib flat-color-3">
                                                <i class="mdi mdi-cash-refund"></i>
                                            </div>
                                            <div class="stat-content">
                                                <div class="text-left dib">
                                                    <div class="stat-text"><span class="small"><?= number_format($Sortie, '0', '.', ' ') ?></span></div>
                                                    <div class="stat-heading"><span class="text-warning mdi mdi-arrow-left-bold"></span> Sortie </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="stat-widget-five">
                                            <div class="stat-icon dib flat-color-2">
                                                <i class="mdi mdi-cash-register"></i>
                                            </div>
                                            <div class="stat-content">
                                                <div class="text-left dib">
                                                    <div class="stat-text"><span class="small"><?= number_format($Entrer, '0', '.', ' ') ?></span></div>
                                                    <div class="stat-heading"> <span class="text-success mdi mdi-arrow-up-right-bold"></span> Entrer</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="stat-widget-five">
                                            <div class="stat-icon dib flat-color-4">
                                                <i class="mdi mdi-file-sign"></i>
                                            </div>
                                            <div class="stat-content">
                                                <div class="text-left dib">
                                                    <div class="stat-text"><span class="small"><?= number_format($Charges, '0', '.', ' ') ?></span></div>
                                                    <div class="stat-heading"><span class="text-danger mdi mdi-arrow-down-bold"></span> Charges</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /Widgets -->


                        <div class="text-center border border-3 border-primary p-1 flat-color-2">
                            <h4 class="text-center flat-color-3">Op&#233;ration sur la caisse</h4>
                        </div>
                        <hr>
                        <div class="table-responsive">
                            <table class="table table-hover" id="maTable">
                                <thead class="text-danger">
                                    <th>#</th>
                                    <th>Operation</th>
                                    <th>Libell&#233;</th>
                                    <th>Motif</th>
                                    <th>Montant</th>
                                </thead>
                                <tbody>
                                    <?php if (!empty($LOperation)) : $nb = 0 ?>
                                        <?php foreach ($LOperation as $data) : ?>
                                            <tr>
                                                <td><?= ++$nb ?></td>
                                                <td><?= $data['Type'] ?></td>
                                                <td><?= $data['Libelle'] ?></td>
                                                <td><?= $data['Motif_operation'] ?></td>
                                                <td><?= number_format($data['Montant_operation'], '0', '.', ' ') ?> <?= $franc ?></td>
                                            </tr>
                                        <?php endforeach; ?>
                                    <?php endif; ?>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>


            <?php else : ?>
                <!-- Magasin non lier a un utlisateur -->
                <div class="text-center p-3">
                    <h1>Aucun gerant !</h1>
                </div>
            <?php endif ?>
            <hr>
        </div>
    </div>
    <!-- FIN -->
</div>
<!-- /.content -->





<!-- MODAL -->

<!-- Modal -->
<div class="modal fade" id="add-magasin" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="" method="POST">
                <div class="modal-header bg-info">
                    <h1 class="modal-title fs-5" id="addMagasin">Ajouter un magasin</h1>
                </div>
                <div class="modal-body">
                    <div class="d-flex justify-content-start flex-wrap">
                        <div class="input-h mr-3 col-12">
                            <input type="text" name="Reference_mag" class="form-control p-4 border border-success" placeholder="Référence du magasin">
                        </div>
                        <div class="input-h mr-3 col-12 mt-2">
                            <input type="text" name="Adresse_mag" class="form-control p-4 border border-success" placeholder="Adresse du magasin">
                        </div>
                        <div class="col-12 mt-2">
                            <input type="text" name="Description_mag" class="form-control p-4 border border-success" placeholder="Description du magasin">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Fermer</button>
                    <button type="submit" name="addMag" class="btn btn-success">Valider</button>
                </div>
            </form>
        </div>
    </div>
</div>