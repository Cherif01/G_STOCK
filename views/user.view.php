<!-- Content -->
<div class="content">
    <!-- Animated -->
    <!-- EN TETE -->
    <div class="bg-light shadow p-2">
        <div class="d-flex justify-content-between flex-wrap">
            <div class="col">
                <h4 class="text-secondary">Page : <span class="text-info text-capitalize"><?= $page ?> / Monnaie <span class="text-success">(GNF)</span></span></h4>
            </div>
            <div class="col d-flex justify-content-end">
                <a href="#" class="btn btn-outline-primary mx-2" data-bs-toggle="modal" data-bs-target="#add-user">Nouveau utilisateur <span class="mdi mdi-arrow-down-bold"></span></a>
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
        <div class="container-fluid p-2">
            <!-- Contenu -->
            <div class="text-center p-1 flat-color-4">
                <h4 class="text-center flat-color-4">Liste des utilisateursm de mon entreprise</h4>
            </div>
            <hr>
            <div class="table-responsive">
                <table class="table table-hover" id="maTable">
                    <thead class="text-primary">
                        <th>#</th>
                        <th>Username</th>
                        <th>Nom complet</th>
                        <th>Telephone</th>
                        <th>Adresse</th>
                        <th>Role</th>
                        <th>Etat</th>
                        <th class="text-center">Action</th>
                    </thead>
                    <tbody>
                        <?php if (!empty($LUser)) : $nb = 0 ?>
                            <?php foreach ($LUser as $data) : ?>
                                <?php if ($data['Role'] != "Admin") : ?>
                                    <tr>
                                        <td><?= ++$nb ?></td>
                                        <td><?= $data['Nom_utilisateur'] ?></td>
                                        <td><?= $data['Name'] ?></td>
                                        <td><?= $data['Telephone'] ?></td>
                                        <td><?= $data['Adresse'] ?></td>
                                        <td><?= $data['Role'] ?></td>
                                        <?php if ($data['Statut_utilisateur'] != 500) : ?>
                                            <td class="text-success">Actif</td>
                                        <?php else : ?>
                                            <td class="text-danger">Suspendu</td>
                                        <?php endif; ?>
                                        <td class="text-center">
                                            <a href="<?= LINK ?>setting/<?= $data['id'] ?>" class="btn"><span class="mdi mdi-eye text-primary" title="Details"></span></a>
                                            <a href="<?= LINK ?>setting/<?= $data['id'] ?>" class="btn"><span class="mdi mdi-pen text-info" title="Modifier"></span></a>
                                            <a data-id="userDel-<?= $data['id'] ?>" href="#" class="text-danger btn delete"><span class="mdi mdi-delete delete"></span></a>
                                        </td>
                                    </tr>
                                <?php endif; ?>
                            <?php endforeach; ?>
                        <?php endif; ?>
                    </tbody>
                </table>
            </div>

        </div>
    </div>
</div>
<!-- /.content -->








<!-- Modal -->
<div class="modal fade" id="add-user" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="" method="POST">
                <div class="modal-header bg-primary">
                    <h1 class="modal-title fs-5 text-white" id="addMagasin">Creer un nouveau utilisateur</h1>
                </div>
                <div class="modal-body">
                    <div class="input-h mb-2 col-12">
                        <input type="hidden" name="Mot_de_passe" value="<?= md5("0000") ?>">
                        <input type="hidden" name="Image" value="avatar.png">
                        <input type="text" name="Name" class="form-control p-4 border border-primary" placeholder="Nom complet du gerant" required>
                    </div>
                    <div class="input-h mb-2 col-12">
                        <input type="text" name="Nom_utilisateur" class="form-control p-4 border border-primary" placeholder="Username" required>
                    </div>
                     <div class="input-h mb-2 col-12">
                        <select name="Role" id="" class="form-select p-3 border-primary" required>
                            <option value="">Role de l'utilisateur</option>
                            <option value="utilisateur">Utilisateur</option>
                            <option value="Admin">Administrateur</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Fermer</button>
                    <button type="submit" name="addUser" class="btn btn-success">Valider</button>
                </div>
            </form>
        </div>
    </div>
</div>