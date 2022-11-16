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
            <div class="table-responsive pt-2">
                <table class="table table-hover display" id="maTable">
                    <thead class="text-info">
                        <th>N<sup>o</sup></th>
                        <th>Pr&#233;nom et Nom</th>
                        <th>N<sup>o</sup> Telephone</th>
                        <th>Adresse</th>
                        <th>Societe</th>
                        <th class="text-center">Action</th>
                    </thead>
                    <tbody>
                        <!-- contenu -->
                        <?php foreach ($LFournisseur as $data) : ?>
                            <?php if ($data[1] != "Null") : ?>
                                <tr>
                                    <td><?= ++$numbers ?></td>
                                    <td><?= $data['Prenom_fournisseur'] . " " . $data['Nom_fournisseur'] ?></td>
                                    <td><?= $data['Telephone'] ?></td>
                                    <td><?= $data['Adresse'] ?></td>
                                    <td><?= $data['Societe'] ?></td>
                                    <td class="text-center">
                                        <a href="<?= LINK ?>fournisseur/<?= $data['id'] ?>" class="btn"><span class="mdi mdi-eye text-warning" title="Details"></span></a>
                                        <a href="<?= LINK ?>fournisseur/<?= $data['id'] ?>" class="btn"><span class="mdi mdi-pen text-info" title="Modifier"></span></a>
                                        <!-- <a href="<?= LINK ?>commander/<?= $data['id'] ?>" class="btn"><span class="mdi mdi-credit-card-check text-success" title="commander"></span></a> -->
                                        <a data-id="fournisseur-<?= $data['id'] ?>" href="#" class="text-danger btn delete"><span class="mdi mdi-delete delete"></span></a>
                                    </td>
                                </tr>
                            <?php endif; ?>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- FIN -->
    </div>
</div>
<!-- /.content -->


<!-- MODAL -->

<!-- Modal -->
<div class="modal fade" id="add-fournisseur" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="" method="POST">
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