<!-- Content -->
<div class="content">
    <!-- Animated -->
    <!-- EN TETE -->
    <div class="bg-light shadow p-2">
        <div class="d-flex justify-content-between flex-wrap">
            <div class="col">
                <h4 class="text-secondary">Page : <span class="text-info text-capitalize"><?= $page ?></span></h4>
            </div>
            <div class="col d-flex justify-content-end">
                <a href="#" data-bs-toggle="modal" data-bs-target="#add-fournisseur" class="btn btn-outline-primary">Ajouter un fournisseur</a>
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
            <div class="card-body">
                <div class="text-center">
                    <h4 class="text-center m-0">APPROVISIONNEMENT DU STOCK</h4>
                    <span class="fw-bold text-info">Choisir un article pour l'approvisionner</span>
                </div>


                <?php if (!empty($trouve)) : ?>
                    <div class="d-flex justify-content-between align-items-center shadow-lg p-3">
                        <div class="d-flex justify-content-between flex wrap">
                            <div class="col-12 col-lg-8 col-md-8">
                                <div class="d-flex justify-content-between flex wrap align-items-center p-2">
                                    <div class="col-4">
                                        <?php if (!empty($trouve['Image'])) : ?>
                                            <div class="card-body p-2">
                                                <img src="<?= LINK ?>upload/produit/<?= $trouve['Image'] ?>" class="w-100 rounded -cicle" alt="">
                                            </div>
                                        <?php else : ?>
                                            <div class="card-body p-2">
                                                <img src="<?= LINK ?>assets/images/logo.png" class="w-100 rounded -cicle" alt="">
                                            </div>
                                        <?php endif ?>
                                    </div>
                                    <div class="col p-2">
                                        <table class="table">
                                            <tr>
                                                <th>REFERENCE</th>
                                                <th>:</th>
                                                <td><?= $trouve['Reference_produit'] ?></td>
                                            </tr>
                                            <tr>
                                                <th>Nom de l'article</th>
                                                <th>:</th>
                                                <td><?= $trouve['Nom_produit'] ?></td>
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
                                                <th>Type d'article</th>
                                                <th>:</th>
                                                <td><?= $trouve['Type_unite_unitaire'] ?></td>
                                            </tr>
                                            <tr>
                                                <th>PV/Unit</th>
                                                <th>:</th>
                                                <td><?= number_format($trouve['Prix_vente_unitaire'], '0', '.', ' ') ?> <?= $franc ?></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-4 col-lg-4 shadow p-3 border border-2 border-start border-bottom border-primary">
                                <div class="text-center">
                                    <marquee behavior="alternate" direction="right"> <span class="mdi mdi-cart text-secondary" style="font-size: 50px;"></span></marquee>
                                </div>
                                <!-- Formulaire d'approvisionnement -->
                                <div class="border-primary">
                                    <?php if (!empty($trouve)) : ?>
                                        <form action="" method="post">
                                            <input type="hidden" name="id_article" value="<?= $trouve[0] ?>" id="">
                                            <!-- Fournisseur -->
                                            <div class="input-group mb-2">
                                                <span class="mdi mdi-account text-white bg-primary border p-1"></span>
                                                <select name="id_fournisseur" class="form-select p-2 border-primary" id="">
                                                    <option value="0">Approvisionner chez ?</option>
                                                    <?php foreach ($Fournisseur as $data) : ?>
                                                        <?php if ($data[1] != "Null") : ?>
                                                            <option value="<?= $data[0] ?>"><?= $data[2] . " " . $data[1] ?></option>
                                                        <?php endif; ?>
                                                    <?php endforeach ?>
                                                </select>
                                            </div>

                                            <div class="input-group">
                                                <span class="mdi mdi-cart text-white bg-primary border p-1"></span>
                                                <input type="text" name="Quantite_approvisionnement" class="form-control p-3 border-primary" placeholder="Ex: 100" required min="1" max="999999">
                                            </div>
                                            <div class="btn-dow mt-2">
                                                <button type="submit" name="appro_article" class="btn btn-outline-success w-100">Approvisionner</button>
                                            </div>
                                        </form>
                                    <?php endif ?>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endif; ?>

                <!-- FIN APPRO -->

                <div class=" mt-5">
                    <input class="form-control p-4 border border-success" id="myInput" type="text" placeholder="Trouver rapidement l'article a approvisionner">
                    <table id="" class="table table-bordered table-striped">
                        <thead>
                            <tr class="header">
                                <th>#</th>
                                <th>Reference</th>
                                <th>Nom de l'article</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody id="myTable">
                            <?php if (empty($_POST['Trouve'])) : ?>
                                <?php foreach ($Liste_article as $data) : ?>
                                    <form action="" method="POST">
                                        <tr>
                                            <td><input type="checkbox" required></td>
                                            <td><?= $data[1] ?></td>
                                            <td><?= $data[2] ?></td>
                                            <td>
                                                <input type="hidden" name="ID_PRODUIT" value="<?= $data[0] ?>">
                                                <button type="submit" name="Trouve" class="btn border-0"><span class="mdi mdi-cart mdi-24px text-danger"></span></button>
                                            </td>
                                        </tr>
                                    </form>
                                <?php endforeach; ?>
                            <?php endif; ?>
                        </tbody>
                    </table>
                </div>
            </div>
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
<div class="modal fade" id="add-fournisseur" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="fournisseur" method="POST">
                <div class="modal-header bg-primary">
                    <h1 class="modal-title fs-5 text-white" id="addFournisseur">Ajouter un fournisseur</h1>
                </div>
                <div class="modal-body">
                    <!-- Prenom / Nom -->
                    <div class="d-flex justify-content-between flex-wrap">
                        <div class="col-12 col-lg-6 p-2">
                            <label for="">Pr&#233;nom du fournisseur</label>
                            <input type="text" class="form-control border-secondary" name="Prenom_fournisseur" placeholder="Ex: John" id="" required>
                        </div>
                        <div class="col-12 col-lg-6 p-2">
                            <label for="">Nom du fournisseur</label>
                            <input type="text" class="form-control border-secondary" name="Nom_fournisseur" placeholder="Ex: Doe" id="">
                        </div>
                    </div>

                    <div class="col-12 p-2">
                        <label for="">Telephone</label>
                        <input type="text" class="form-control border-secondary" name="Telephone" placeholder="Ex: 62x xx xx xx" id="" required>
                    </div>

                    <div class="col-12 p-2">
                        <label for="">Adresse</label>
                        <input type="text" class="form-control border-secondary" name="Adresse" placeholder="Ex: adr....xx" id="">
                    </div>

                    <div class="col-12 p-2">
                        <label for="">Societ&#233;</label>
                        <input type="text" class="form-control border-secondary" placeholder="Ex: xxxx sarl" name="Societe" id="">
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Fermer</button>
                    <button type="submit" name="add-fournisseur" class="btn btn-success">Enregistrer</button>
                </div>
            </form>
        </div>
    </div>
</div>