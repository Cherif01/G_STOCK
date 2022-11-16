<!-- Content -->
<div class="content">
    <!-- Animated -->
    <!-- EN TETE -->
    <div class="bg-light shadow p-2">
        <div class="d-flex justify-content-between flex-wrap">
            <div class="col-6">
                <h4 class="text-secondary">Page : <span class="text-info text-capitalize"><?= $page ?></span></h4>
            </div>
            <div class="col-2">
                <?php if (!empty($success) || !empty($error)) :
                ?>
                    <div class="text-center">
                        <a href="<?= LINK ?>venteListe/<?= $_GET['id'] ?>" class="btn btn-outline-secondary">Actualiser <span class="mdi mdi-reload text-primary mdi-spin"></span></a>
                    </div>
                <?php endif;
                ?>
            </div>
            <div class="col-4 d-flex justify-content-end">
                <a href="<?= LINK ?>vente/" class="btn btn-outline-danger mx-3"><span class="mdi mdi-reply"></span> Retour &#224; la vente</a>
                <a href="<?= LINK ?>venteListe/" class="btn btn-outline-primary"><span class="mdi mdi-reply-all-outline"></span> Liste</a>
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
            <!-- Contenu -->
            <div class="table-responsive p-1">
                <?php if (!empty($_GET['id'])) : ?>
                    <!-- Details d'une vente clicker -->
                    <div class="d-flex justify-content-between flex-wrap">
                        <div class="p-2 col-8 m-2 bg-light">
                            <table class="table table-hover">
                                <thead class="text-">
                                    <th>#</th>
                                    <th>Article</th>
                                    <th>Qte</th>
                                    <th>P.U</th>
                                    <th>Reduct<sup>o</sup>/Art</th>
                                </thead>
                                <tbody class="">
                                    <?php if (!empty($Details_cmd)) : $nb = 0 ?>
                                        <?php foreach ($Details_cmd as $data) : ?>
                                            <?php if (!empty($data[2])) : ?>
                                                <tr>
                                                    <td><?= ++$nb ?></td>
                                                    <td><?= $data['Nom_produit'] ?></td>
                                                    <td><?= $data['Quantite_vendu'] ?></td>
                                                    <td><?= number_format($data['Prix_vente_unitaire'], '0', '.', ' ') ?> GNF</td>
                                                    <td><?= number_format(($data['Reduction'] / $data['Quantite_vendu']), '0', '.', ' ') ?> GNF</td>
                                                </tr>
                                            <?php endif; ?>
                                        <?php endforeach; ?>
                                    <?php endif; ?>
                                </tbody>
                                <tfoot class="col-1 small">
                                    <tr class="m-0 p-0">
                                        <th>Total</th>
                                        <th>:</th>
                                        <td class="text-success"><?= number_format($Table_vente_get['Montant_total_SR'], '0', '.', ' ') ?> <?= $franc ?></td>
                                    </tr>
                                    <tr class="m-0 p-0">
                                        <th>Remise</th>
                                        <th>:</th>
                                        <td class="text-"><span class=""><?= $Table_vente_get['Remise'] ?></span> %</td>
                                    </tr>
                                    <tr class="m-0 p-0">
                                        <th>T. NET</th>
                                        <th>:</th>
                                        <td class="text-success"><?= number_format(($Table_vente_get['Montant_total']), '0', '.', ' ') ?> <?= $franc ?></td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>

                        <!-- 2e cadrant -->
                        <div class="col border-0 border-2 border-start border-info text-dark p-3 m-2">
                            <div class="card bg-">
                                <h5 class="text-start text-center p-2 text-">D&#233;tails de la facture</h5>
                                <hr class="m-0 p-0">
                            </div>
                            <table class="table table-hover small">
                                <tr>
                                    <th>Client</th>
                                    <th>:</th>
                                    <td><?= $Table_vente_get['Nom_client'] ?></td>
                                </tr>
                                <tr>
                                    <th>Etat paiement</th>
                                    <th>:</th>
                                    <?php if ($Table_vente_get['Etat_paiement'] == "Payer") : ?>
                                        <td><span class="mdi mdi-check-all text-success"></span> valider</td>
                                    <?php else : ?>
                                        <td><span class="mdi mdi-check text-danger"></span> Non r&#233;gler</td>
                                    <?php endif; ?>
                                </tr>
                                <tr class="text-primary fw-bold">
                                    <th>Avance</th>
                                    <th>:</th>
                                    <td><?= number_format($M_payer, '0', '.', ' ') ?> FG</td>
                                </tr>
                                <tr class="text-danger fw-bold">
                                    <th>Reste</th>
                                    <th>:</th>
                                    <td><?= number_format(($Table_vente_get['Montant_total'] - $M_payer), '0', '.', ' ') ?> FG</td>
                                </tr>
                            </table>
                            <hr>
                            <?php if (($Table_vente_get['Montant_total'] - $M_payer) != 0) : ?>
                                <?php if ($Table_vente_get['Etat_paiement'] != "Payer") : ?>
                                    <!-- Payer une avance de plus -->
                                    <div class="d-col mb-2">
                                        <form action="" method="post">
                                            <div class="d-flex justify-content-between flex-wrap">
                                                <div class="col col-input input-group border-primary">
                                                    <input type="hidden" name="Numero_commande" value="<?= $_GET['id'] ?>">
                                                    <input type="hidden" name="ID_client" value="<?= ($Table_vente_get['ID_client']) ?>">
                                                    <input type="number" name="Montant_payer" min="1000" max="<?= ($Table_vente_get['Montant_total'] - $M_payer) ?>" class="form-control border-primary mx-1" placeholder="Payer une avance" id="" required>
                                                    <input type="hidden" name="Reste" value="<?= ($Table_vente_get['Montant_total'] - $M_payer) ?>">
                                                    <button type="submit" name="creance" class="btn btn-outline-primary">Payer <span class="mdi mdi-check-all"></span></button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                <?php else : ?>
                                    <div class="text-center">
                                        <div class="alert alert-info p-2">
                                            <marquee behavior="alternate" direction="left">Payement d&#233;j&#224; r&#233;gler</marquee>
                                            <span class="text-center small">Ce paiement à été régler au comptant</span>
                                        </div>
                                    </div>
                                <?php endif; ?>
                            <?php else : ?>
                                <div class="text-center">
                                    <div class="alert alert-success p-2">
                                        <marquee behavior="alternate" direction="left">Payement r&#233;gler</marquee>
                                    </div>
                                </div>
                            <?php endif; ?>
                        </div>
                    </div>

                    <hr>
                    <div class="d-flex justify-content-between flex-wrap align-items-center">
                        <div class="col-12 col-md-8 col-lg-8 m-1">
                            <h6 class="text-start text-primary">Historique des versements</h6>
                            <div class="bg-light p-2">
                                <div class="bg-light">
                                    <table class="table display" id="maTable">
                                        <thead>
                                            <th>#</th>
                                            <th>Date</th>
                                            <th>Montant verser</th>
                                            <th class="text-center">Action</th>
                                        </thead>
                                        <tbody>
                                            <?php if (!empty($client_paiement)) : $nb = 0 ?>
                                                <?php foreach ($client_paiement as $data) : ?>
                                                    <?php if ($data['Creer_par'] == $_SESSION['id_session']) : ?>
                                                        <?php $d = date_create($data['Creer_le']); ?>
                                                        <tr>
                                                            <td><?= ++$nb ?></td>
                                                            <td><?= date_format($d, 'd-M-Y') ?></td>
                                                            <td><?= number_format($data['Montant_payer'], '0', '.', ' ') ?> GNF</td>
                                                            <td class="text-center">
                                                                <a data-id="history-<?= $data[0] ?>-<?= $_GET['id'] ?>" href="#" class="btn btn-outline-danger delete"><span class="mdi mdi-close delete"></span> Exclure</a>
                                                            </td>
                                                        </tr>
                                                    <?php endif; ?>
                                                <?php endforeach ?>
                                            <?php endif; ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="img-responsive text-center">
                                <!-- <img src="<?= LINK ?>assets/image/3.png" class="w-50" alt=""> -->
                                <span class="mdi mdi-cable-data" style="font-size: 200px;"></span>
                            </div>
                        </div>
                    </div>

                <?php else : ?>
                    <!-- Liste des ventes -->
                    <div class="table-responsive p-2 card">
                        <table class="table table-hover display" id="maTable">
                            <thead class="text-danger">
                                <th>N<sup>o</sup> commande</th>
                                <th>Client</th>
                                <th>T&#233;l&#233;phone</th>
                                <th>Etat de paiement</th>
                                <th>Montant</th>
                                <th class="text-center">Action</th>
                            </thead>
                            <tbody class="text-">
                                <!-- contenu -->
                                <?php foreach ($Liste_vente as $data) : ?>
                                    <tr>
                                        <td>BG-00<?= $data['Numero_commande'] ?></td>
                                        <td><?= $data['Nom_client'] ?></td>
                                        <td>000 00 00 00</td>
                                        <?php if ($data['Etat_paiement'] == "Payer") : ?>
                                            <td><span class="mdi mdi-check-all text-success"></span> valider</td>
                                        <?php else : ?>
                                            <td><span class="mdi mdi-check text-danger"></span> Non r&#233;gler</td>
                                        <?php endif; ?>
                                        <td><?= number_format($data['Montant_total'], '0', '.', ' ') ?> GNF</td>
                                        <td class="text-center">
                                            <a href="<?= LINK ?>venteListe/<?= $data['Numero_commande'] ?>" class="btn btn-outline-info"><span class="mdi mdi-eye" title="Voir tous les comptes avec ce fournisseurs"></span></a>
                                            <!-- <a href="#" class="btn"><span class="mdi mdi-cart-outline text-success" title="Commencer un nouveau compte"></span></a> -->
                                            <!-- <a data-id="client-<?= $data['id'] ?>" href="#" class="text-danger btn delete"><span class="mdi mdi-delete delete"></span></a> -->
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                <?php endif; ?>
            </div>
        </div>
        <!-- FIN -->
    </div>
</div>
<!-- /.content -->


<!-- MODAL -->