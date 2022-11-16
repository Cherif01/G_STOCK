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
                <a href="<?= LINK ?>documentation" class="btn btn-outline-primary">Nouveau guide</a>
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
    <div class="animated fadeIn shadow-lg">
        <!-- Widgets  -->

        <!-- DEBUT -->
        <div class="container-flui">
            <!-- Contenu -->
            <div class="d-flex justify-content-between">
                <div class="col-md-8">
                    <?php if (empty($_GET['id'])) : ?>
                        <div class="card">
                            <div class="card-header text-center alert alert-info">
                                <h4>Ajouter un nouveau guide d'utilisation du syst&#232;me</h4>
                            </div>
                            <div class="card-body">
                                <form method="post" action="">
                                    <div class="mb-3">
                                        <label><strong>Titre du Guide :</strong></label>
                                        <input type="text" name="Titre" class="form-control p-3 border-danger" required>
                                    </div>
                                    <div class="mb-1">
                                        <label><strong>Description :</strong></label>
                                        <!-- <textarea id="mytextarea" rows="13" name="Contenu" required class="form-control border-primary"></textarea><br> -->
                                        <textarea id="mytextarea" rows="13" name="Contenu"></textarea>
                                    </div>
                                    <div class="d-flex justify-content-center">
                                        <button type="submit" name="add" class="btn btn-danger p-2 w-100">Enregistrer dans la bdd</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    <?php else : ?>
                        <div class="card">
                            <div class="card-header text-center alert alert-info">
                                <h4>Modification du contenu</h4>
                            </div>
                            <div class="card-body">
                                <form method='post' action=''>
                                    <div class="mb-3">
                                        <label><strong>Titre :</strong></label>
                                        <input type="text" name="Titre" class="form-control p-3 border-primary" value="<?= $Post_get['Titre'] ?>" required>
                                    </div>
                                    <div class="mb-1">
                                        <label><strong>Description :</strong></label>
                                        <textarea id="mytextarea" required rows="13" name="Contenu" value="<?= $Post_get['Contenu'] ?>"></textarea>
                                        <div class="d-flex justify-content-center mt-2">
                                            <button type="submit" name="update-post" class="btn btn-primary p-2 w-100">Modifier</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    <?php endif; ?>
                </div>

                <div class="col">
                    <div class="card">
                        <div class="card-header">
                            <h4>Publier</h4>
                        </div>
                        <div class="card-body">
                            <?php if (!empty($Docs)) : ?>
                                <?php foreach ($Docs as $data) : ?>
                                    <div class="col-12 shadow p-3" style="height: 120px;overflow-y: scroll;">
                                        <h5 class="text-primary"><?= $data['Titre'] ?> ( <a href="<?= LINK . $page . "/" . $data[0] ?>" class="text-danger small">Modifier <span class="mdi mdi-pen text-danger"></span></a> ) </h5>
                                        <p class="text-primary"><?= $data['Contenu'] ?></p>
                                    </div>
                                    <hr>
                                <?php endforeach; ?>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end form -->
        </div>
    </div>
</div>