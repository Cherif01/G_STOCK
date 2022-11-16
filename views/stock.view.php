<!-- Content -->
<div class="content">
    <!-- Animated -->
    <!-- EN TETE -->
    <div class="bg-light shadow p-2">
        <div class="d-flex justify-content-between flex-wrap align-items-center">
            <div class="col">
                <?php if (!empty($_GET['id']) && !is_numeric($_GET['id'])) : ?>
                    <h5 class="text-secondary"> <span class="text-secondary"><?= $page ?> => Modification de l'article : <?= $Art_get['Reference_produit'] ?></span></h5>
                <?php else : ?>
                    <h4 class="text-secondary">Vous êtes au : <span class="text-primary text-capitalize"><?= $page ?></span></h4>
                <?php endif; ?>
            </div>
            <?php if ($_SESSION['Role'] == "Admin") : ?>
                <div class="col d-flex justify-content-end">
                    <a href="#" data-bs-toggle="modal" data-bs-target="#stock-faible" class="btn btn-outline-danger mx-3">Article epuisé <span class="mdi mdi-cart"></span></a>
                    <a href="#" data-bs-toggle="modal" data-bs-target="#add-product" class="btn btn-outline-primary">Ajouter un article <span class="mdi mdi-plus"></span></a>
                </div>
            <?php else : ?>
                <div class="col d-flex justify-content-end">
                    <a href="<?= LINK ?>package" class="btn btn-outline-info mx-3">Stock Principal <span class="mdi mdi-package"></span></a>
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
    <div class="animated fadeIn shadow-lg rounded-2">
        <!-- Widgets  -->
        <!-- DEBUT -->
        <div class="container-fluid" style="height: 63vh;overflow-y: scroll">
            <?php if (!empty($_GET['id']) && is_numeric($_GET['id'])) : ?>
                <div class="">
                    <a href="<?= LINK ?>stock" class="btn"><span class="mdi mdi-reply text-danger"></span> Retour</a>
                </div>
                <div class="d-flex justify-content-between flex-wrap">
                    <div class="col-12 col-md-12 col-lg-12 p-4 px-0">
                        <form action="" method="POST" enctype="multipart/form-data">
                            <div class="d-flex justify-content-between flex-wrap">
                                <div class="col">
                                    <div class="d-flex justify-content-between flex-wrap">
                                        <div class="col-12">
                                            <!-- Reference produit -->
                                            <div class="input-h">
                                                <label for="" class="text-primary fw-bold">R&#233;f&#233;rence</label>
                                                <input type="text" name="Reference_produit" value="<?= $Art_get['Reference_produit'] ?>" class="form-control p-4 border border-success" placeholder="Référence du produit" required>
                                            </div>
                                        </div>
                                        <div class="col-12 mt-2">
                                            <!-- Nom du produit -->
                                            <div class="input-h">
                                                <label for="" class="text-primary fw-bold">Nom du produit</label>
                                                <input type="text" name="Nom_produit" value="<?= $Art_get['Nom_produit'] ?>" class="form-control p-4 border border-success" placeholder="Nom du produit">
                                            </div>
                                        </div>

                                        <div class="col-6">
                                            <!-- PA produit -->
                                            <div class="input-h mt-2">
                                                <label for="" class="text-primary fw-bold">P.Achat du produit</label>
                                                <input type="number" min="1" max="999999999" value="<?= $Art_get['Prix_achat_unitaire'] ?>" name="Prix_achat_unitaire" class="form-control p-4 border border-success" placeholder="Prix d'achat">
                                            </div>

                                        </div>
                                        <div class="col-6">
                                            <!-- PV produit -->
                                            <div class="input-h mt-2">
                                                <label for="" class="text-primary fw-bold">P.Vente du produit</label>
                                                <input type="number" min="1" max="999999999" value="<?= $Art_get['Prix_vente_unitaire'] ?>" name="Prix_vente_unitaire" class="form-control p-4 border border-success" placeholder="Prix de vente">
                                            </div>
                                        </div>

                                        <div class="col-6">
                                            <!-- Qte au stock produit -->
                                            <div class="input-h mt-2">
                                                <label for="" class="text-primary fw-bold">Quantite au stock du produit</label>
                                                <input type="number" min="0" max="100000" value="<?= $Art_get['Quantite_produit'] ?>" name="Quantite_produit" class="form-control p-4 border border-success" placeholder="Quantite initiale">
                                            </div>
                                        </div>

                                        <div class="col-6">
                                            <!-- SEUIL -->
                                            <div class="input-h mt-2">
                                                <label for="" class="text-primary fw-bold">Seuil minimum du produit</label>
                                                <input type="number" min="1" max="100" value="<?= $Art_get['Seuil_minimum'] ?>" name="Seuil_minimum" class="form-control p-4 border border-success" placeholder="Quantite initiale">
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <!-- fin col-left -->

                                <!-- Debut col right -->
                                <div class="col">
                                    <div class="d-flex justify-content-between flex-wrap">
                                        <div class="col">
                                            <label for="" class="text-primary fw-bold">Date de perumption</label>
                                            <!-- Date perumption produit -->
                                            <div class="input-h">
                                                <input type="date" name="Date_perumption" value="<?= $Art_get['Date_perumption'] ?>" class="form-control p-4 border border-success">
                                            </div>
                                        </div>
                                        <div class="col">
                                            <label for="" class="text-primary fw-bold">Image illustratif</label>
                                            <!-- Date perumption produit -->
                                            <div class="input-h">
                                                <input type="file" name="Image" class="form-control p-4 pt-0 border border-success">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <!-- Fournisseur -->
                                        <div class="input-h mt-2">
                                            <label for="" class="text-primary fw-bold">Fournisseur du produit</label>
                                            <select class="form-control p-2 border-success" name="ID_fournisseur">
                                                <option value="">Selectionner un Fournisseur</option>
                                                <?php if (!empty($Fournisseur)) : ?>
                                                    <?php foreach ($Fournisseur as $data) : ?>
                                                        <option value="<?= $data[0] ?>"><?= $data[1] . " " . $data[2] ?></option>
                                                    <?php endforeach; ?>
                                                <?php endif; ?>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-12 mt-3">
                                        <label for="" class="text-primary fw-bold">Description</label>
                                        <!-- Description -->
                                        <textarea name="Description" value="<?= $Art_get['Description'] ?>" id="" cols="30" rows="3" class="form-control border border-success" placeholder="Decrire le produit"></textarea>
                                    </div>


                                    <div class="modal-footer mt-2 p-3 pt-0">
                                        <button type="submit" name="update-product" class="btn btn-primary w-100 p-2">Terminer</button>
                                    </div>
                                </div>
                                <!-- fin right -    col  -->

                            </div>
                        </form>
                    </div>
                </div>
            <?php elseif (!empty($_GET['id']) && !is_numeric($_GET['id'])) : ?>
                <div class="">
                    <a href="<?= LINK ?>stock" class="btn"><span class="mdi mdi-reply text-danger"></span> Retour</a>
                </div>
                <div class="d-flex justify-content-between flex-wrap align-items-center">
                    <div class="col-12 col-md-3 col-lg-3 p-2 px-0">
                        <?php if (!empty($Art_get['Image'])) : ?>
                            <div class="img-product">
                                <img src="<?= LINK ?>upload/produit/<?= $Art_get['Image'] ?>" class="w-100 rounded-3 shadow" style="height: 40vh;" alt="">
                            </div>
                        <?php else : ?>
                            <div class="img-product text-center">
                                <!-- <img src="<?= LINK ?>upload/produit/<?= $Art_get['Image'] ?>" style="height: 53vh;" alt=""> -->
                                <span class="mdi mdi-cart text-secondary" style="font-size: 100px;"></span>
                            </div>
                        <?php endif; ?>
                    </div>
                    <div class="col-12 col-md-6 col-lg-6 p-5 px-2">
                        <table class="table table-hover">
                            <tr>
                                <th>REFERENCE</th>
                                <th>:</th>
                                <td><?= $Art_get['Reference_produit'] ?></td>
                            </tr>
                            <tr>
                                <th>Name</th>
                                <th>:</th>
                                <td><?= $Art_get['Nom_produit'] ?></td>
                            </tr>
                            <tr>
                                <th>Stock</th>
                                <th>:</th>
                                <td><?= $Art_get['Quantite_produit'] ?></td>
                            </tr>
                            <tr>
                                <th>PA. Produit</th>
                                <th>:</th>
                                <td><?= number_format($Art_get['Prix_achat_unitaire'], 0, '.', ' ') ?> GNF</td>
                            </tr>
                            <tr>
                                <th>PV. Produit</th>
                                <th>:</th>
                                <td><?= number_format($Art_get['Prix_vente_unitaire'], 0, '.', ' ') ?> GNF</td>
                            </tr>
                            <tr>
                                <th>Type</th>
                                <th>:</th>
                                <td><?= $Art_get['Type_unite_unitaire'] ?></td>
                            </tr>
                            <tr>
                                <th>Seuil</th>
                                <th>:</th>
                                <td><?= $Art_get['Seuil_minimum'] ?></td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-12 col-md-3 col-lg-3 shadow-lg p-1 px-2 border-0 border-start border-2 border-success">
                        <table class="table table-hover">
                            <tr>
                                <th>Date Exp</th>
                                <th>:</th>
                                <?php $date = date_create($Art_get['Date_perumption']); ?>
                                <td><?= date_format($date, 'd-M-Y') ?></td>
                            </tr>
                            <tr>
                                <th>Categorie</th>
                                <th>:</th>
                                <td><?= $Art_get['Categorie'] ?></td>
                            </tr>
                            <tr>
                                <th>Fournisseur</th>
                                <th>:</th>
                                <td><?= $Art_get['ID_fournisseur'] ?></td>
                            </tr>
                        </table>
                    </div>
                </div>
            <?php else : ?>
                <!-- Contenu -->
                <h4 class="fw-bold">Liste des articles</h4>
                <!-- Affichage des articles -->
                <div class="table-responsive">
                    <table id="maTable" class="table display">
                        <thead class="text-danger">
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Reference</th>
                                <th scope="col">Nom du produit</th>
                                <!-- <th scope="col">P.A (GNF)</th> -->
                                <th scope="col">P.V (GNF)</th>
                                <th scope="col">Qte Stock</th>
                                <th class="text-center" scope="col">ACTION</th>
                            </tr>
                        </thead>
                        <tbody class="">
                            <?php if ($_SESSION['Role'] == "Admin") : ?>
                                <?php if (!empty($Liste_article)) : $nb = 0; ?>
                                    <?php foreach ($Liste_article as $data) : ?>
                                        <?php if ($data['Statut_produit'] != 500) : ?>
                                            <tr class="border-light">
                                                <td><?= ++$nb ?></td>
                                                <td><?= $data['Reference_produit'] ?></td>
                                                <td><?= $data['Nom_produit'] ?></td>
                                                <!-- <td><?= number_format($data['Prix_achat_unitaire'], '0', '.', ' ') ?></td> -->
                                                <td><?= number_format($data['Prix_vente_unitaire'], '0', '.', ' ') ?> <?= $franc ?></td>
                                                <?php if ($data['Quantite_produit'] >= $data['Seuil_minimum']) : ?>
                                                    <td><?= $data['Quantite_produit'] ?> <span class="mdi mdi-arrow-up-bold text-success"></span></td>
                                                <?php else : ?>
                                                    <td><?= $data['Quantite_produit'] ?> <span class="mdi mdi-arrow-down-bold text-danger"></span></td>
                                                <?php endif; ?>
                                                <td class="text-center">
                                                    <a href="<?= LINK ?>stock/voir-<?= $data['id'] ?>" class="btn btn-outline-dark"><span class="mdi mdi-eye" title="Voir plus de details"></span></a>
                                                    <a href="<?= LINK ?>stock/<?= $data['id'] ?>" class="btn btn-outline-primary"><span class="mdi mdi-pen-plus" title="Modifier"></span></a>
                                                    <a data-id="stock-<?= $data['id'] ?>" href="#" class="btn btn-outline-danger delete"><span class="mdi mdi-close delete" title="Supprimer"></span></a>
                                                </td>
                                            </tr>
                                        <?php endif; ?>
                                    <?php endforeach; ?>
                                <?php endif; ?>
                            <?php else : ?>
                                <!-- STOCK DU GERANT -->
                                <?php if (!empty($Liste_article_gerant)) : $nb = 0; ?>
                                    <?php foreach ($Liste_article_gerant as $data) : ?>
                                        <?php if ($data['Statut_produit'] != 500) : ?>
                                            <tr class="border-light">
                                                <td><?= ++$nb ?></td>
                                                <td><?= $data['Reference_produit'] ?></td>
                                                <td><?= $data['Nom_produit'] ?></td>
                                                <!-- <td><?= number_format($data['Prix_achat_unitaire'], '0', '.', ' ') ?></td> -->
                                                <td><?= number_format($data['Prix_vente_unitaire'], '0', '.', ' ') ?> <?= $franc ?></td>
                                                <?php if ($data['Quantite_stock_magasin'] >= $data['Seuil_minimum']) : ?>
                                                    <td><?= $data['Quantite_stock_magasin'] ?> <span class="mdi mdi-arrow-up-bold text-success"></span></td>
                                                <?php else : ?>
                                                    <td><?= $data['Quantite_stock_magasin'] ?> <span class="mdi mdi-arrow-down-bold text-danger"></span></td>
                                                <?php endif; ?>
                                                <td class="text-center">/</td>
                                            </tr>
                                        <?php endif; ?>
                                    <?php endforeach; ?>
                                <?php endif; ?>
                            <?php endif; ?>
                        </tbody>
                    </table>
                </div>
            <?php endif; ?>
        </div>

        <!-- FIN -->
    </div>
</div>
<!-- /.content -->





<!-- MODAL -->

<!-- Modal -->
<div class="modal fade" id="stock-faible" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-danger">
                <h1 class="modal-title fs-5 text-white" id="addMagasin">Alert de rupture !</h1>
            </div>
            <div class="modal-body">
                <!-- Contenu -->
                <h5 class="fw-bold text-center p-1">Article epuis&#233;</h5>
                <hr>
                <!-- Affichage des articles -->
                <div class="table-responsive" style="height: 50vh;overflow-y: scroll;">
                    <table id="maTable" class="table table-hover display">
                        <thead class="text-danger">
                            <tr>
                                <th colspan="2" scope="col">#</th>
                                <th scope="col">Nom du produit</th>
                                <th scope="col">Qte Stock</th>
                                <th class="text-center" scope="col">ACTION</th>
                            </tr>
                        </thead>
                        <tbody class="">
                            <?php if (!empty($Liste_article)) : $nb = 0; ?>
                                <?php foreach ($Liste_article as $data) : ?>
                                    <form action="approvisionnement" method="POST">
                                        <?php if ($data['Statut_produit'] != 500) : ?>
                                            <?php if ($data['Quantite_produit'] < 1) : ?>
                                                <tr class="border-light">
                                                    <td><?= ++$nb ?></td>
                                                    <td><input type="checkbox" name="ID_PRODUIT" id="" required value="<?= $data['id'] ?>"></td>
                                                    <td><?= $data['Nom_produit'] ?></td>
                                                    <td><?= $data['Quantite_produit'] ?> <span class="mdi mdi-arrow-down-bold text-danger"></span></td>
                                                    <td class="text-center">
                                                        <button type="submit" name="Trouve" class="btn btn-outline-primary"><span class="mdi mdi-cart"></span></button>
                                                    </td>
                                                </tr>
                                            <?php endif; ?>
                                        <?php endif; ?>
                                    </form>
                                <?php endforeach; ?>
                            <?php endif; ?>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Fermer</button>
            </div>
        </div>
    </div>
</div>





<!-- Modal -->
<div class="modal fade" id="add-product" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="" method="POST">
                <div class="modal-header bg-primary">
                    <h1 class="modal-title fs-5 text-white" id="addMagasin">Ajouter un article</h1>
                </div>
                <div class="modal-body">
                    <div class="d-flex justify-content-start flex-wrap">

                        <!-- Reference produit -->
                        <div class="input-h col-12">
                            <input type="text" name="Reference_produit" class="form-control p-4 border border-success" placeholder="Référence du produit" required>
                        </div>

                        <!-- Nom du produit -->
                        <div class="input-h col-12 mt-2">
                            <input type="text" name="Nom_produit" class="form-control p-4 border border-success" placeholder="Nom du produit" required>
                        </div>

                        <!-- PA produit -->
                        <div class="input-h col-12 mt-2">
                            <input type="number" min="1" max="999999999" name="Prix_achat_unitaire" class="form-control p-4 border border-success" placeholder="Prix d'achat">
                        </div>
                        <!-- PV produit -->
                        <div class="input-h col-12 mt-2">
                            <input type="number" min="1" max="999999999" name="Prix_vente_unitaire" class="form-control p-4 border border-success" placeholder="Prix de vente">
                        </div>

                        <!-- Qte au stock produit -->
                        <div class="input-h col-12 mt-2">
                            <input type="number" min="1" max="100000" name="Quantite_produit" class="form-control p-4 border border-success" placeholder="Quantite initiale">
                        </div>

                        <!-- Fournisseur -->
                        <div class="input-h col-12 mt-2">
                            <select class="form-control p-2 border-success" name="ID_fournisseur">
                                <option value="">Selectionner un Fournisseur</option>
                                <?php if (!empty($Fournisseur)) : ?>
                                    <?php foreach ($Fournisseur as $data) : ?>
                                        <?php if (!empty($data[1])) : ?>
                                            <option value="<?= $data[0] ?>"><?= $data[1] . " " . $data[2] ?></option>
                                        <?php endif; ?>
                                    <?php endforeach; ?>
                                <?php endif; ?>
                            </select>
                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Fermer</button>
                    <button type="submit" name="add-product" class="btn btn-success">Terminer</button>
                </div>
            </form>
        </div>
    </div>
</div>