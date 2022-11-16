<!-- Content -->
<div class="content">
    <!-- Animated -->
    <!-- EN TETE -->
    <div class="bg-light shadow p-2">
        <div class="d-flex justify-content-between flex-wrap">
            <div class="col">
                <h4 class="text-secondary">Page : <span class="text-info text-capitalize"><?= $page ?></h4>
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
            <div class="p-2 w-100">
                <!-- Rapport de vente en graphe -->
                <div id="chartContainer_" style="height: 65vh; width: 100%;"></div>
            </div>

        </div>
    </div>
</div>
<!-- /.content -->








<!-- Modal -->
<div class="modal fade" id="add-operation" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="" method="POST">
                <div class="modal-header bg-primary">
                    <h1 class="modal-title fs-5 text-white" id="addMagasin">Nouvelle op&#233;ration</h1>
                </div>
                <div class="modal-body">
                    <div class="input-h mr-3 col-12 mb-2">
                        <select name="Type" id="" class="form-select p-3 border-primary" required>
                            <option value="" class="text-primary">Type de l'operation</option>
                            <option value="Virement">Virement &#224; la Banque</option>
                            <option value="Entrer">Entrer de caisse</option>
                            <option value="Sortie">Sortie de caisse</option>
                            <option value="Charges">Charges/D&#233;penses</option>
                        </select>
                    </div>
                    <div class="input-h mb-2 col-12">
                        <input type="text" name="Libelle" class="form-control p-4 border border-primary" placeholder="Libelle">
                    </div>
                    <div class="input-h mb-2 col-12">
                        <input type="number" min="1000" max="999999999" name="Montant_operation" class="form-control p-4 border border-primary" placeholder="Montant de l'opération" required>
                    </div>
                    <div class="input-h mb-2 col-12">
                        <input type="text" name="Motif_operation" class="form-control p-4 border border-primary" placeholder="Motif de l'opération" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Fermer</button>
                    <button type="submit" name="addOPTS" class="btn btn-success">Valider</button>
                </div>
            </form>
        </div>
    </div>
</div>