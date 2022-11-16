<!-- Content -->
<div class="content">
    <!-- Animated -->
    <!-- EN TETE -->
    <div class="bg-light shadow p-2">
        <div class="d-flex justify-content-between flex-wrap">
            <div class="col">
                <h4 class="text-secondary">Page : <span class="text-primary text-capitalize"><?= $page ?></span></h4>
            </div>
            <div class="col d-flex justify-content-end">
                <a href="<?= LINK ?>venteListe/" class="btn btn-info">Historique des ventes <span class="mdi mdi-arrow-right-bold"></span></a>
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
    <div class="animated fadeIn shadow-lg" style="height: 68vh;overflow-y: scroll">
        <!-- Widgets  -->
        <!-- DEBUT -->
        <div class="container-fluid">
            <!-- Contenu -->
            <div class="d-flex justify-content-between flex-wrap">
                <div class="col-12 col-md-12 col-lg-8 col-xl-8 d-none d-lg-block border-0 border-end border-white border-3">
                    <div class="responsive p-3">
                        <?php if (!empty($Cmde)) : ?>
                            <?php if (empty($_GET['id'])) : ?>
                                <table class="table table-hover display" id="maTable">
                                    <thead class="text-primary">
                                        <th>#</th>
                                        <th>Produit</th>
                                        <th>Stock</th>
                                        <th>Qte</th>
                                        <th>P.Vente</th>
                                        <th class="text-center">Action</th>
                                    </thead>
                                    <tbody>
                                        <?php if ($_SESSION['Role'] == "Admin") : ?>
                                            <?php if (!empty($Liste_article)) : $nb = 0; ?>
                                                <?php foreach ($Liste_article as $data) : ?>
                                                    <?php if ($data['Statut_produit'] != 500) : ?>
                                                        <tr class="border-secondary">
                                                            <td><?= ++$nb ?></td>
                                                            <td><?= $data['Nom_produit'] ?></td>
                                                            <td><?= $data['Quantite_produit'] ?></td>
                                                            <form action="" method="POST">
                                                                <td style="width: 80px;">
                                                                    <input type="number" class="form-control border-secondary" name="Quantite_vendu" min="1" max="<?= $data['Quantite_produit'] ?>" step="0" placeholder="Ex: 1" id="" required>
                                                                </td>
                                                                <td style="width: 120px;">
                                                                    <input type="hidden" name="ID_article" value="<?= $data[0] ?>">
                                                                    <input type="hidden" name="Ref_article" value="<?= $data['Reference_produit'] ?>">
                                                                    <input type="hidden" name="Nom_produit" value="<?= $data['Nom_produit'] ?>">
                                                                    <input type="hidden" name="Prix_achat_unitaire" value="<?= $data['Prix_achat_unitaire'] ?>">
                                                                    <input type="hidden" class="form-control border-secondary" name="Prix_vente_systeme" min="100" max="9999999999999" step="0" value="<?= $data['Prix_vente_unitaire'] ?>" id="" required>
                                                                    <input type="number" class="form-control border-secondary" name="Prix_vente_unitaire" min="100" max="9999999999999" step="0" value="<?= $data['Prix_vente_unitaire'] ?>" id="" required>
                                                                </td>
                                                                <td class="text-center small">
                                                                    <button type="submit" name="add-product" class="btn btn-outline-success"><span class="mdi mdi-arrow-right-bold"></span></button>
                                                                </td>
                                                            </form>
                                                        </tr>
                                                    <?php endif; ?>
                                                <?php endforeach; ?>
                                            <?php endif; ?>
                                        <?php else : ?>
                                            <!-- STOCK DU GERANT -->
                                            <?php if (!empty($Liste_article_gerant)) : $nb = 0; ?>
                                                <?php foreach ($Liste_article_gerant as $data) : ?>
                                                    <?php if ($data['Statut_produit'] != 500) : ?>
                                                        <tr class="border-secondary">
                                                            <td><?= ++$nb ?></td>
                                                            <td><?= $data['Nom_produit'] ?></td>
                                                            <td><?= $data['Quantite_stock_magasin'] ?></td>
                                                            <form action="" method="POST">
                                                                <td style="width: 80px;">
                                                                    <input type="number" class="form-control border-secondary" name="Quantite_vendu" min="1" max="<?= $data['Quantite_stock_magasin'] ?>" step="0" placeholder="Ex: 1" id="" required>
                                                                </td>
                                                                <td style="width: 120px;">
                                                                    <input type="hidden" name="ID_article" value="<?= $data[0] ?>">
                                                                    <input type="hidden" name="Ref_article" value="<?= $data['Reference_produit'] ?>">
                                                                    <input type="hidden" name="Nom_produit" value="<?= $data['Nom_produit'] ?>">
                                                                    <input type="hidden" name="Prix_achat_unitaire" value="<?= $data['Prix_achat_unitaire'] ?>">
                                                                    <input type="hidden" class="form-control border-secondary" name="Prix_vente_systeme" min="100" max="9999999999999" step="0" value="<?= $data['Prix_vente_unitaire'] ?>" id="" required>
                                                                    <input type="number" class="form-control border-secondary" name="Prix_vente_unitaire" min="100" max="9999999999999" step="0" value="<?= $data['Prix_vente_unitaire'] ?>" id="" required>
                                                                </td>
                                                                <td class="text-center small">
                                                                    <button type="submit" name="add-product" class="btn btn-outline-success"><span class="mdi mdi-arrow-right-bold"></span></button>
                                                                </td>
                                                            </form>
                                                        </tr>
                                                    <?php endif; ?>
                                                <?php endforeach; ?>
                                            <?php endif; ?>
                                        <?php endif; ?>
                                    <tbody>
                                </table>
                                <!-- Sinon si le get est demander alors -->
                            <?php else : ?>
                                <div class="" id="facture">
                                    <!-- La facture -->
                                    <!-- contenu de la facture vente -->
                                    <div class="card p-2 px-4">
                                        <div class="table-responsive">
                                            <div class="">
                                                <h2 class="text-center text-primary fw-bold">PROFORMA</h2>
                                                <hr>
                                                <div class="d-flex justify-content-between flex-wrapn">
                                                    <div class="col">
                                                        <p>
                                                        <h6>Facture N<sup>o</sup> : <span class="text-secondary"><?= $Cmde['Numero_commande'] ?></span></h6>
                                                        <h6>Entreprise : <span class="text-secondary">EST. B& Fr&#232;res</span></h6>
                                                        <h6>Adresse : <span class="text-secondary">Bonfi</span></h6>
                                                        <h6>Telephone : <span class="text-secondary">+224 626 37 01 38 </span></h6>
                                                        </p>
                                                    </div>
                                                    <?php if (!empty($Client_selectionnez)) : ?>
                                                        <div class="col">
                                                            <p>
                                                            <h6 class="">Client : <span class="text-secondary"><?= $Client_selectionnez['Prenom_client'] . " " . $Client_selectionnez['Nom_client'] ?></span></h6>
                                                            <h6>Adresse : <span class="text-secondary"><?= $Client_selectionnez['Adresse'] ?></span></h6>
                                                            <h6>Telephone : <span class="text-secondary">+224 <?= number_format($Client_selectionnez['Telephone'], '0', '3', ' ') ?> </span></h6>
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
                                                    <?php if (!empty($ALL_FACTURE_EN_COURS)) : $nb = 0 ?>
                                                        <?php foreach ($ALL_FACTURE_EN_COURS as $data) : ?>
                                                            <?php if (!empty($data[2])) : ?>
                                                                <tr>
                                                                    <td><?= ++$nb ?></td>
                                                                    <td><?= $data['Nom_produit'] ?></td>
                                                                    <td><?= $data['Quantite_vendu'] ?></td>
                                                                    <td><?= number_format($data['Prix_vente_unitaire'], '0', '.', ' ') ?> GNF</td>
                                                                    <td><?= number_format(($data['Prix_vente_unitaire'] * $data['Quantite_vendu']), '0', '.', ' ') ?> GNF</td>
                                                                </tr>
                                                            <?php endif; ?>
                                                        <?php endforeach; ?>
                                                    <?php endif; ?>
                                                </tbody>
                                            </table>
                                            <div class="offset-7 col small">
                                                <p>
                                                <h6>Total HT : <span class="text-primary"> <?= number_format($TSansRemise, '0', '.', ' ') ?> GNF</span></h6>
                                                <h6>Remise : <span class="text-danger"> <?= number_format($Remise, '0', '.', ' ') ?> %</span></h6>
                                                <h6>NET A Payer : <span class="text-success"> <?= number_format(($TSansRemise - (($TSansRemise * $Remise) / 100)), '0', '.', ' ') ?> GNF</span></h6>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Fin facture -->
                            <?php endif; ?>
                        <?php else : ?>
                            <div class="text-center">
                                <span class="mdi mdi-arrow-down-bold text-primary" style="font-size: 100px;"></span>
                                <hr>
                                <form action="" method="post">
                                    <button type="submit" name="new-commande" class="btn btn-outline-danger p-3">Commancer une nouvelle commande ?</button>
                                </form>
                            </div>
                        <?php endif; ?>
                    </div>
                </div>

                <!-- commande facture -->
                <div class="col-4 border-dark">
                    <div class="responsive-design-ui p-1">
                        <?php if (empty($_GET['id'])) : ?>
                            <div class="card p-2 shadow">
                                <div class="d-flex justify-content-between flex-wrap p-2 align-items-center">
                                    <div class="col-12 col-md-8 col-lg-8 small">
                                        <h6 class="text-dark">N<sup>o</sup> :
                                            <span class="text-primary"> C-0
                                                <?php if (!empty($Commande_num)) :
                                                    echo $Commande_num;
                                                endif; ?>
                                            </span>
                                        </h6>
                                    </div>
                                    <div class="col-12 col-md-4 col-lg-4 small">
                                        <?php if (!empty($Commande_num)) : ?>
                                            <form action="" method="post">
                                                <button type="submit" value="<?= $Commande_num ?>" name="annuler_cmd" class="btn btn-outline-danger w-100"><span class="ti-close small"></span> SUPP</button>
                                            </form>
                                        <?php endif; ?>
                                    </div>
                                </div>

                                <div class="table-responsive" style="height: 350px;overflow-y: scroll;">
                                    <table class="table small p-0 m-0">
                                        <thead class="text-info fw-bold small">
                                            <th>#</th>
                                            <th>Article</th>
                                            <th>Qte</th>
                                            <!-- <th>P.U</th> -->
                                            <th>Action</th>
                                        </thead>
                                        <tbody class="text-secondary fw-bold">
                                            <?php if (!empty($ALL_FACTURE_EN_COURS)) : $nb = 0 ?>
                                                <?php foreach ($ALL_FACTURE_EN_COURS as $data) : ?>
                                                    <?php if (!empty($data[2])) : ?>
                                                        <?php if ($data['Creer_par'] == $_SESSION['id_session']) : ?>
                                                            <tr>
                                                                <td><?= ++$nb ?></td>
                                                                <td><?= substr($data['Nom_produit'], 0, 5) ?>...</td>
                                                                <td><?= $data['Quantite_vendu'] ?></td>
                                                                <!-- <td><?= number_format($data['Prix_vente_unitaire'], '0', '.', ' ') ?></td> -->
                                                                <td>
                                                                    <form action="" method="post">
                                                                        <button type="submit" name="id_retrait_article" value="<?= $data[0] ?>" class="btn"><span class="mdi mdi-close text-danger"></span></button>
                                                                    </form>
                                                                </td>
                                                            </tr>
                                                        <?php endif; ?>
                                                    <?php endif; ?>
                                                <?php endforeach; ?>
                                            <?php endif; ?>
                                        </tbody>
                                        <tfoot class="text-small small">
                                            <tr class="m-0 p-0">
                                                <th>Total</th>
                                                <zth>:</zth>
                                                <?php if (!empty($TSansRemise)) : ?>
                                                    <td class="text-secondary"><?= number_format($TSansRemise, '0', '.', ' ') ?> FG</td>
                                                <?php else : ?>
                                                    <td class="text-secondary"><?= number_format(0, '0', '.', ' ') ?> FG</td>
                                                <?php endif; ?>
                                            </tr>
                                            <?php if (!empty($ALL_FACTURE_EN_COURS)) : ?>
                                                <tr class="m-0 p-0">
                                                    <!-- <th>Remise</th> -->
                                                    <!-- <th>:</th> -->
                                                    <td class="text-danger">
                                                        <?php if (empty($_GET['id'])) : ?>
                                                            <form action="" method="post">
                                                                <label for="" class="text-primary">Accorder une remise</label>
                                                                <input type="number" name="Remise" min="1" max="5" class="form-control w-100" placeholder=" %" id="">
                                                            </form>
                                                        <?php else : ?>
                                                            <input type="number" min="1" max="100" placeholder=" %" class="form-control" p-0 disabled id="">
                                                        <?php endif; ?>
                                                    </td>
                                                </tr>
                                            <?php endif; ?>
                                            <tr class="m-0 p-0 d-none">
                                                <th>T. NET</th>
                                                <th>:</th>
                                                <td class="text-success"><?= number_format($TSansRemise, '0', '.', ' ') ?> FG</td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        <?php else : ?>
                            <div class="card p-3">
                                <div class="d-flex justify-content-between align-items-center flex-wrap">
                                    <div class="col m-0 p-0">
                                        <th class="border-0">
                                            <a href="<?= LINK ?>vente_gerant/" class="btn btn-outline-danger"> <span class="mdi mdi-reply"></span> Back</a>
                                        </th>
                                    </div>
                                    <div class="col text-end m-0 p-0">
                                        <a href="#" class="btn text-dark" onclick="ImpressionScript('facture')">Imprimer</a>
                                    </div>
                                </div>
                                <hr>
                                <form action="" method="post" class="p-2 mb-0">
                                    <div class="input-group-select">
                                        <select name="ID_client" id="" class="form-control p-2 border-dark" required>
                                            <option value="" class="text-primary">Lier un client</option>
                                            <?php if (!empty($client)) : ?>
                                                <?php foreach ($client as $data) : ?>
                                                    <option value="<?= $data[0] ?>"><?= $data[1] . " " . $data[2] ?></option>
                                                <?php endforeach; ?>
                                            <?php endif; ?>
                                        </select>
                                    </div>
                                    <button type="submit" name="select-client" class="btn btn-info mt-2 w-100">Choisir</button>
                                </form>
                            </div>
                        <?php endif; ?>
                        <?php if (!empty($_GET['id'])) : ?>
                            <div class="text-center text-primary mb-2">
                                <span>------ Validation de la commande ------</span>
                            </div>

                            <div class="d-col mb-2">
                                <form action="" method="post">
                                    <div class="d-flex justify-content-between flex-wrap">
                                        <div class="col col-input input-group border-primary">
                                            <input type="hidden" name="Numero_commande" value="<?= $Commande_num ?>">
                                            <input type="hidden" name="ID_client" value="<?= $Client ?>">
                                            <input type="number" name="Montant_payer" min="0" max="<?= $TSansRemise - (($TSansRemise * $Remise) / 100) ?>" class="form-control border-primary mx-1" placeholder="Payer une avance" id="" required>
                                            <button type="submit" name="creance" class="btn btn-outline-primary">Cr&#233;dire</button>
                                        </div>
                                    </div>
                                </form>
                            </div>

                            <div class="text-center mb-1 text-success">
                                <span>Payer au comptant</span>
                            </div>

                            <div class="d-flex justify-content-between flex-wrap">
                                <div class="col mb-1">
                                    <th class="border-0">
                                        <form action="" method="post">
                                            <input type="hidden" name="Numero_commande" value="<?= $Cmde['Numero_commande'] ?>">
                                            <input type="hidden" name="ID_client" value="<?= $Client ?>">
                                            <button type="submit" class="btn btn-outline-success w-100" name="valider-cmd">Tout payer <span class="mdi mdi-check-all"></span></button>
                                        </form>
                                    </th>
                                </div>
                            </div>
                        <?php else : ?>
                            <?php if (!empty($Cmde[1])) : ?>
                                <th class="border-0">
                                    <a href="<?= LINK ?>vente_gerant/<?= $Cmde[1] ?>" class="btn btn-outline-info w-100" name="poursuivre_cmd">Poursuivre <span class="mdi mdi-arrow-right"></span></a>
                                </th>
                            <?php endif; ?>
                        <?php endif; ?>
                    </div>
                </div>
            </div>

        </div>
        <!-- FIN -->
    </div>
</div>
<!-- /.content -->