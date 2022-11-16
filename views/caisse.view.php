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
                <a href="#" class="btn btn-outline-primary mx-2" data-bs-toggle="modal" data-bs-target="#add-operation">Ajouter une op&#233;ration <span class="mdi mdi-arrow-down-bold"></span></a>
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
            <!-- Widgets  -->
            <div class="row pt-3">
                <div class="col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="stat-widget-five">
                                <div class="stat-icon dib flat-color-1">
                                    <i class="pe-7s-cash"></i>
                                </div>
                                <div class="stat-content">
                                    <div class="text-left dib">
                                        <div class="stat-text"><span class="small"><?= number_format($TVendu, '0', '.', ' ') ?></span></div>
                                        <div class="stat-heading"><span class="text-primary mdi mdi-arrow-left-bold"></span> Total Vendu</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="stat-widget-five">
                                <div class="stat-icon dib flat-color-3">
                                    <i class="pe-7s-cash"></i>
                                </div>
                                <div class="stat-content">
                                    <div class="text-left dib">
                                        <div class="stat-text"><span class="small"><?= number_format($Credit_client_nr, '0', '.', ' ') ?></span></div>
                                        <div class="stat-heading"><span class="text-warning mdi mdi-arrow-up-left-bold"></span> En cr&#233;dit </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="stat-widget-five">
                                <div class="stat-icon dib flat-color-2">
                                    <i class="mdi mdi-finance"></i>
                                </div>
                                <div class="stat-content">
                                    <div class="text-left dib">
                                        <div class="stat-text"><span class="small"><?= number_format($TProfit, '0', '.', ' ') ?></span></div>
                                        <div class="stat-heading"> <span class="text-info mdi mdi-plus-circle"></span> Bénéfices</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="card border-success shadow-lg bg-light" style="border-top-right-radius: 30px;border-bottom-left-radius: 30px;">
                        <div class="card-body">
                            <div class="stat-widget-five">
                                <div class="stat-icon dib flat-color-4 text-success">
                                    <i class="mdi mdi-scale-unbalanced"></i>
                                </div>
                                <div class="stat-content">
                                    <div class="text-left dib">
                                        <div class="stat-text"><span class="fw-bold"><?= number_format((($TVendu + $Entrer) - ($Credit_client_nr + $Sortie + $Virement + $Charges)), '0', '.', ' ') ?></span></div>
                                        <div class="stat-heading text-success"><span class="text-success mdi mdi-arrow-up-bold"></span> Caisse</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /Widgets -->
            <!-- 2e widgets -->
            <!-- Widgets  -->
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="stat-widget-five">
                                <div class="stat-icon dib flat-color-1">
                                    <i class="mdi mdi-bank"></i>
                                </div>
                                <div class="stat-content">
                                    <div class="text-left dib">
                                        <div class="stat-text"><span class="small"><?= number_format($Virement, '0','.',' ') ?></span></div>
                                        <div class="stat-heading"><span class="text-primary mdi mdi-arrow-right-bold"></span> Virement</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="stat-widget-five">
                                <div class="stat-icon dib flat-color-3">
                                    <i class="mdi mdi-cash-refund"></i>
                                </div>
                                <div class="stat-content">
                                    <div class="text-left dib">
                                        <div class="stat-text"><span class="small"><?= number_format($Sortie, '0','.',' ') ?></span></div>
                                        <div class="stat-heading"><span class="text-warning mdi mdi-arrow-left-bold"></span> Sortie </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="stat-widget-five">
                                <div class="stat-icon dib flat-color-2">
                                    <i class="mdi mdi-cash-register"></i>
                                </div>
                                <div class="stat-content">
                                    <div class="text-left dib">
                                        <div class="stat-text"><span class="small"><?= number_format($Entrer, '0','.',' ') ?></span></div>
                                        <div class="stat-heading"> <span class="text-success mdi mdi-arrow-up-right-bold"></span> Entrer</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="stat-widget-five">
                                <div class="stat-icon dib flat-color-4">
                                    <i class="mdi mdi-file-sign"></i>
                                </div>
                                <div class="stat-content">
                                    <div class="text-left dib">
                                        <div class="stat-text"><span class="small"><?= number_format($Charges, '0','.',' ') ?></span></div>
                                        <div class="stat-heading"><span class="text-danger mdi mdi-arrow-down-bold"></span> Charges</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /Widgets -->


            <div class="text-center border border-3 border-primary p-1 flat-color-2">
                <h4 class="text-center flat-color-3">Op&#233;ration sur la caisse</h4>
            </div>
            <hr>
            <div class="table-responsive">
                <table class="table table-hover" id="maTable">
                    <thead class="text-danger">
                        <th>#</th>
                        <th>Operation</th>
                        <th>Libell&#233;</th>
                        <th>Motif</th>
                        <th>Montant</th>
                    </thead>
                    <tbody>
                        <?php if (!empty($LOperation)) : $nb = 0 ?>
                            <?php foreach ($LOperation as $data) : ?>
                                <tr>
                                    <td><?= ++$nb ?></td>
                                    <td><?= $data['Type'] ?></td>
                                    <td><?= $data['Libelle'] ?></td>
                                    <td><?= $data['Motif_operation'] ?></td>
                                    <td><?= number_format($data['Montant_operation'], '0', '.', ' ') ?> <?= $franc ?></td>
                                </tr>
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