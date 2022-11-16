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
                <a href="#" data-bs-toggle="modal" data-bs-target="#add-client" class="btn btn-outline-primary">Ajouter un client</a>
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
                        <th>Ville</th>
                        <th class="text-center">Action</th>
                    </thead>
                    <tbody>
                        <!-- contenu -->
                        <?php if (!empty($LClient)) : ?>
                            <?php foreach ($LClient as $data) : ?>
                                <tr>
                                    <td><?= ++$numbers ?></td>
                                    <td><?= $data['Prenom_client'] . " " . $data['Nom_client'] ?></td>
                                    <td><?= $data['Telephone'] ?></td>
                                    <td><?= $data['Adresse'] ?></td>
                                    <td><?= $data['Nom_ville'] ?></td>
                                    <td class="text-center">
                                        <a href="<?= LINK ?>client/<?= $data['id'] ?>" class="btn"><span class="mdi mdi-eye text-secondary" title="Voir tous les comptes avec ce fournisseurs"></span></a>
                                        <a href="<?= LINK ?>client/<?= $data['id'] ?>" class="btn"><span class="mdi mdi-pen text-primary" title="Commencer un nouveau compte"></span></a>
                                        <a data-id="client-<?= $data['id'] ?>" href="#" class="text-danger btn delete"><span class="mdi mdi-delete delete"></span></a>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
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

<!-- Modal -->
<div class="modal fade" id="add-client" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="" method="POST">
                <div class="modal-header bg-primary">
                    <h1 class="modal-title fs-5 text-white" id="addClient">Ajouter un client</h1>
                </div>
                <div class="modal-body">
                    <!-- Prenom / Nom -->
                    <div class="d-flex justify-content-between flex-wrap">
                        <div class="col-12 col-lg-6 p-2">
                            <label for="">Pr&#233;nom du client</label>
                            <input type="text" class="form-control border-secondary" placeholder="Ex: John" name="Prenom_client" required>
                        </div>
                        <div class="col-12 col-lg-6 p-2">
                            <label for="">Nom du client</label>
                            <input type="text" class="form-control border-secondary" placeholder="Ex: Doe" name="Nom_client">
                        </div>
                    </div>

                    <div class="col-12 p-2">
                        <label for="">Telephone</label>
                        <input type="text" class="form-control border-secondary" placeholder="Ex: 62x xx xx xx" name="Telephone" id="" required>
                    </div>

                    <div class="col-12 p-2">
                        <label for="">Adresse</label>
                        <input type="text" class="form-control border-secondary" placeholder="Ex: xxxxx-xxxx " name="Adresse" id="">
                    </div>

                    <div class="col-12 p-2">
                        <label for="" class="">Ville du client</label>
                        <select class="form-select border-secondary" name="ID_ville" id="">
                            <option value="" class="text-primary">Ville du client</option>
                            <?php foreach ($LVille as $ville) : ?>
                                <option value="<?= $ville[0] ?>"><?= $ville['Nom_ville'] ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Fermer</button>
                    <button type="submit" name="add-client" class="btn btn-success">Enregistrer le client</button>
                </div>
            </form>
        </div>
    </div>
</div>