<!-- Content -->
<div class="content">
    <!-- Animated -->
    <!-- EN TETE -->
    <div class="bg-light shadow p-2">
        <div class="d-flex justify-content-between align-items-center flex-wrap">
            <div class="col">
                <h4 class="text-secondary p-0 m-0">Vous êtes au : <span class="text-info text-capitalize"><?= $page ?></span></h4>
                <?php if (!empty($error)) : ?>
                    <span class="text-danger">Rafraichir : <a href="<?= LINK ?><?= $page ?>"><span class="mdi mdi-reload text-primary mdi-spin"></span></a></span>
                <?php endif ?>
            </div>
            <?php if ($_SESSION['Role'] == "Admin") : ?>
                <div class="col d-flex justify-content-end">
                    <a href="#" data-bs-toggle="modal" data-bs-target="#affectation" class="btn btn-outline-primary mx-3">Affect&#233; un gérant</a>
                    <a href="#" data-bs-toggle="modal" data-bs-target="#add-magasin" class="btn btn-outline-success">Ajouter un magasin</a>
                </div>
            <?php endif; ?>
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
    <div class="animated fadeIn shadow-lg" style="height: 75vh;overflow-y: scroll">
        <!-- Widgets  -->

        <!-- DEBUT -->
        <div class="container-fluid">

            <?php if ($_SESSION['Role'] == "Admin") : ?>
                <!-- Contenu -->
                <h4 class="fw-bold p-2">Liste des magasins</h4>
                <hr>
                <div class="p-2 d-flex justify-content-start flex-wrap">
                    <?php if (!empty($LMagasin)) : ?>
                        <?php foreach ($LMagasin as $data) : ?>
                            <?php
                            $Total_vendu_jour = 0;
                            if (!empty($Vente_jour_gerant)) :
                                foreach ($Vente_jour_gerant as $data_vente) :
                                    if ($data['ID_gerant'] == $data_vente['Creer_par']) :
                                        $Total_vendu_jour += $data_vente['Montant_total'];
                                    endif;
                                endforeach;
                            endif;
                            ?>
                            <div class="col-12 col-md-4 col-lg-4">
                                <div class="card shadow p-2 m-2">
                                    <div class="card-header p-0 px-2">
                                        <h4 class="text-centeer fw-bold"><span class="text-primary fw-bold">REF :</span> <?= $data['Reference_mag'] ?></h4>
                                        <span class="text-info">Aujourd'hui : <span class="text-secondary fw-bold"><?= number_format($Total_vendu_jour, '0', '.', ' ') ?></span> <?= $franc ?></span>
                                    </div>
                                    <div class="card-body p-0">
                                        <div class="img-responsive text-center">
                                            <span class="mdi mdi-cart" style="font-size: 70px;"></span>
                                        </div>
                                    </div>
                                    <div class="card-footer">
                                        <div class="d-flex justify-content-between flex-wrap">
                                            <div class="col">
                                                <a href="<?= LINK ?>gestion_mag/<?= $data[0] ?>" class="btn btn-outline-success w-100">OUVRIR <span class="mdi mdi-arrow-right-bold"></span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach ?>
                    <?php endif ?>
                </div>
            <?php else : ?>
                <div class="p-2">
                    <div class="alert alert-success fw-bold text-center p-3" id="succ"><strong>Bienvenu au magasin ?</strong></div>
                </div>
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
                            <table class="table">
                                <tr>
                                    <th>Reference du magasin</th>
                                    <th>:</th>
                                    <td><?= $MAG['Reference_mag'] ?></td>
                                </tr>
                                <tr>
                                    <th>Article en stock</th>
                                    <th>:</th>
                                    <td><?= $nb_article ?> <span class="text-info">articles</span></td>
                                </tr>
                                <tr>
                                    <th>Article en rupture</th>
                                    <th>:</th>
                                    <td><?= $nb_rupture ?> <span class="text-danger">articles</span></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="col m-2">
                        <h5 class="text-center text-danger">Liste des produits en seuil</h5>
                        <?php if (!empty($product_)) : $nb = 0; ?>
                            <div class="table-responsive">
                                <table class="table table-hover display" id="maTable">
                                    <thead class="bg-info text-white">
                                        <th>#</th>
                                        <th>Ref</th>
                                        <th>Designation</th>
                                        <th>P.V / Unit</th>
                                        <th>Stock au magasin</th>
                                    </thead>
                                    <tbody>
                                        <?php foreach ($product_ as $data) : ?>
                                            <?php if ($data['Quantite_stock_magasin'] <= $data['Seuil_minimum']) : ?>
                                                <tr>
                                                    <td><?= ++$nb ?></td>
                                                    <td><?= $data['Reference_produit'] ?></td>
                                                    <td><?= $data['Nom_produit'] ?></td>
                                                    <td><?= number_format($data['Prix_vente_unitaire'], '0', '.', ' ') ?> <?= $franc ?></td>
                                                    <td><?= $data['Quantite_stock_magasin'] ?> <span class="mdi mdi-arrow-down-bold text-danger"></span></td>
                                                </tr>
                                            <?php endif; ?>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        <?php endif; ?>
                    </div>
                <?php endif; ?>
            <?php endif; ?>
        </div>
        <!-- PAS ADMIN ALORT -->
    </div>
</div>

<!-- FIN -->
<!-- /.content -->





<!-- MODAL -->

<!-- Modal LIAISON -->
<div class="modal fade" id="affectation" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="" method="POST">
                <div class="modal-header bg-primary">
                    <h1 class="modal-title fs-5 text-light" id="">Affectation</h1>
                </div>
                <div class="modal-body">
                    <div class="d-flex justify-content-start flex-wrap">

                        <div class="input-h col-12">
                            <select name="id" id="" class="form-control border-dark" required>
                                <option value="" class="text-primary">Selectionnez le magasin</option>
                                <?php foreach ($LMagasin as $data) : ?>
                                    <?php if (empty($data['ID_gerant']) && !is_numeric($data['ID_gerant'])) : ?>
                                        <option value="<?= $data[0] ?>"><?= $data[1] ?></option>
                                    <?php endif; ?>
                                <?php endforeach; ?>
                            </select>
                        </div>
                        <div class="input-h col-12 mt-2">
                            <select name="ID_gerant" id="" class="form-control border-dark" required>
                                <option value="" class="text-primary">Liste des g&#233;rant</option>
                                <option value="">----------------------------------</option>
                                <?php foreach ($LUser as $data) : ?>
                                    <?php if ($data['Role'] != "Admin") : ?>
                                        <option value="<?= $data[0] ?>"><?= $data[2] ?></option>
                                    <?php endif; ?>
                                <?php endforeach; ?>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Fermer</button>
                    <button type="submit" name="affectation" class="btn btn-success">Affect&#233;</button>
                </div>
            </form>
        </div>
    </div>
</div>



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