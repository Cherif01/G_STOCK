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
            <!-- Contenu -->
            <h4 class="fw-bold">Liste des articles</h4>
            <!-- Affichage des articles -->
            <div class="table-responsive">
                <table id="maTable" class="table display">
                    <thead class="text-info">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Reference</th>
                            <th scope="col">Nom du produit</th>
                            <th scope="col">Qte Disponible</th>
                        </tr>
                    </thead>
                    <tbody class="">
                        <?php if ($_SESSION['Role'] != "Admin") : ?>
                            <?php if (!empty($Liste_article)) : $nb = 0; ?>
                                <?php foreach ($Liste_article as $data) : ?>
                                    <?php if ($data['Statut_produit'] != 500) : ?>
                                        <tr class="border-light">
                                            <td><?= ++$nb ?></td>
                                            <td><?= $data['Reference_produit'] ?></td>
                                            <td><?= $data['Nom_produit'] ?></td>
                                            <?php if ($data['Quantite_produit'] >= $data['Seuil_minimum']) : ?>
                                                <td><?= $data['Quantite_produit'] ?> <span class="mdi mdi-arrow-up-bold text-success"></span></td>
                                            <?php else : ?>
                                                <td><?= $data['Quantite_produit'] ?> <span class="mdi mdi-arrow-down-bold text-danger"></span></td>
                                            <?php endif; ?>
                                        </tr>
                                    <?php endif; ?>
                                <?php endforeach; ?>
                            <?php endif; ?>
                        <?php endif; ?>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- FIN -->
    </div>
</div>
<!-- /.content -->





<!-- MODAL -->