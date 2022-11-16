<!-- Content -->
<div class="content">
    <!-- Animated -->
    <div class="animated fadeIn shadow-lg p-3">
        <!-- Widgets  -->
        <div class="d-flex justify-content-between flex-wrap">
            <div class="col-12 col-md-6 col-lg-4">
                <div class="card">
                    <div class="card-body">
                        <div class="stat-widget-five">
                            <div class="stat-icon dib flat-color-1">
                                <i class="pe-7s-cash"></i>
                            </div>
                            <div class="stat-content">
                                <div class="text-left dib">
                                    <div class="stat-text small fs-6"><span class="count_"><?= number_format($TOTAL_VENTE, '0', '.', ' ') ?></span> GNF</div>
                                    <div class="stat-heading">Vente du jour</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-12 col-md-6 col-lg-4">
                <div class="card">
                    <div class="card-body">
                        <div class="stat-widget-five">
                            <div class="stat-icon dib flat-color-2">
                                <i class="pe-7s-cart"></i>
                            </div>
                            <div class="stat-content">
                                <div class="text-left dib">
                                    <div class="stat-text small fs-6"><span class="count_"><?= number_format($Total_depense, '0', '.', ' ') ?></span> GNF</div>
                                    <div class="stat-heading">Depenses du jour</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-12 col-md-6 col-lg-4">
                <div class="card">
                    <div class="card-body">
                        <div class="stat-widget-five">
                            <div class="stat-icon dib flat-color-3">
                                <i class="pe-7s-browser"></i>
                            </div>
                            <div class="stat-content">
                                <div class="text-left dib">
                                    <div class="stat-text small fs-6"><span class="count_"><?= number_format($TOTAL_CREDIT_JOUR, '0', '.', ' ') ?></span> GNF</div>
                                    <div class="stat-heading">Credis du jour</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-12 col-md-6 col-lg-4 d-none">
                <div class="card">
                    <div class="card-body">
                        <div class="stat-widget-five">
                            <div class="stat-icon dib flat-color-4">
                                <i class="pe-7s-users"></i>
                            </div>
                            <div class="stat-content">
                                <div class="text-left dib">
                                    <div class="stat-text small fs-6"><span class="count_"><?= number_format($Total_caisse, '0', '.', ' ') ?></span> GNF</div>
                                    <div class="stat-heading">T. Vous ?</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Widgets -->

        <div class="clearfix"></div>
        <!-- Orders -->
        <?php if ($_SESSION['Role'] != "Admin") : ?>
            <div class="orders">
                <div class="row d-none">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="box-title">5 derni&#232;res ventes </h4>
                            </div>
                            <div class="card-body--">
                                <div class="table-stats order-tabl ov-h p-3">
                                    <table class="table table-hover display">
                                        <thead class="bg-danger">
                                            <th scope="col" class="text-white">Date</th>
                                            <th scope="col" class="text-white">N<sup>o</sup></th>
                                            <th scope="col" class="text-white">Client</th>
                                            <th scope="col" class="text-white">T&#233;l&#233;phone</th>
                                            <th scope="col" class="text-white">Statut</th>
                                            <th scope="col" class="text-white">Montant</th>
                                            <th scope="col" class="text-white">Pay&#233;</th>
                                            <th scope="col" class="text-white">Reste</th>
                                            <th scope="col" class="text-center">Action</th>
                                        </thead>
                                        <tbody>
                                            <!-- contenu -->
                                            <?php if (!empty($Liste_vente)) : $nb = 0; ?>
                                                <?php foreach ($Liste_vente as $data) : ++$nb ?>
                                                    <?php if ($data['Etat_paiement'] != "Payer") : ?>
                                                        <?php if ($data['Creer_par'] == $_SESSION['id_session']) : ?>
                                                            <?php if ($nb <= 5) : ?>
                                                                <tr class="pb-0">
                                                                    <td><?= $data['Creer_le'] ?></td>
                                                                    <td>BG-00<?= $data['Numero_commande'] ?></td>
                                                                    <td><?= $data['Nom_client'] ?></td>
                                                                    <td>611 00 00 00</td>
                                                                    <?php if ($data['Etat_paiement'] == "Payer") : ?>
                                                                        <td><span class="mdi mdi-check-all text-success"></span> valider</td>
                                                                    <?php else : ?>
                                                                        <td><span class="mdi mdi-check text-danger"></span> Non payer</td>
                                                                    <?php endif; ?>
                                                                    <td><?= number_format($data['Montant_total'], '0', '.', ' ') ?> <?= $franc ?></td>
                                                                    <td><?= number_format($data['SUM(Montant_payer)'], '0', '.', ' ') ?> <?= $franc ?></td>
                                                                    <td><?= number_format(($data['Montant_total'] - $data['SUM(Montant_payer)']), '0', '.', ' ') ?> <?= $franc ?></td>
                                                                    <td>
                                                                        <a href="<?= LINK ?>venteListe/<?= $data['Numero_commande'] ?>" class="btn btn-danger"><span class="badge badge-complete mdi mdi-eye-arrow-right"> voir</span></a>
                                                                    </td>
                                                                </tr>
                                                            <?php endif; ?>
                                                        <?php endif; ?>
                                                    <?php endif; ?>
                                                <?php endforeach; ?>
                                            <?php endif; ?>
                                        </tbody>
                                    </table>
                                </div> <!-- /.table-stats -->
                            </div>
                        </div> <!-- /.card -->
                    </div> <!-- /.col-lg-8 -->
                </div>
            </div>
        <?php endif; ?>
        <!-- /.orders -->
        <?php if ($_SESSION['Role'] != "Admin") : ?>
            <div class="col-12 text-center bg-transparent">
                <img src="<?= LINK ?>assets/images/gif_stock.gif" class="w-75" alt="" />
            </div>
        <?php endif; ?>

        <!-- To Do and Live Chat -->
        <?php if ($_SESSION['Role'] == "Admin") : ?>
            <div class="d-flex justify-content-between flex-wrap">
                <div class="col-12 col-lg-6">
                    <div class="card p-3">
                        <h4 class="card-title box-title text-center">Mon Entreprise en 2022</h4>
                        <div class="card-content">
                            <div id="chartContainer" style="height: 370px; width: 100%;"></div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-6">
                    <div class="card p-3">
                        <h4 class="card-title box-title">Liste des tâches</h4>
                        <div class="card-content">
                            <div id="chartContainer2" style="height: 370px; width: 100%;"></div>
                        </div>
                    </div>
                </div>
            </div>
        <?php endif; ?>
        <!-- FIN CHART -->
    </div>

    <div class="row d-none">
        <div class="col-lg-6">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title box-title">Liste des tâches</h4>
                    <div class="card-content">
                        <div class="todo-list">
                            <div class="tdl-holder">
                                <div class="tdl-content">
                                    <ul>
                                        <li>
                                            <label>
                                                <input type="checkbox"><i class="check-box"></i><span>Conveniently fabricate interactive technology for ....</span>
                                                <a href='#' class="fa fa-times"></a>
                                                <a href='#' class="fa fa-pencil"></a>
                                                <a href='#' class="fa fa-check"></a>
                                            </label>
                                        </li>
                                        <li>
                                            <label>
                                                <input type="checkbox"><i class="check-box"></i><span>Creating component page</span>
                                                <a href='#' class="fa fa-times"></a>
                                                <a href='#' class="fa fa-pencil"></a>
                                                <a href='#' class="fa fa-check"></a>
                                            </label>
                                        </li>
                                        <li>
                                            <label>
                                                <input type="checkbox" checked><i class="check-box"></i><span>Follow back those who follow you</span>
                                                <a href='#' class="fa fa-times"></a>
                                                <a href='#' class="fa fa-pencil"></a>
                                                <a href='#' class="fa fa-check"></a>
                                            </label>
                                        </li>
                                        <li>
                                            <label>
                                                <input type="checkbox" checked><i class="check-box"></i><span>Design One page theme</span>
                                                <a href='#' class="fa fa-times"></a>
                                                <a href='#' class="fa fa-pencil"></a>
                                                <a href='#' class="fa fa-check"></a>
                                            </label>
                                        </li>

                                        <li>
                                            <label>
                                                <input type="checkbox" checked><i class="check-box"></i><span>Creating component page</span>
                                                <a href='#' class="fa fa-times"></a>
                                                <a href='#' class="fa fa-pencil"></a>
                                                <a href='#' class="fa fa-check"></a>
                                            </label>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div> <!-- /.todo-list -->
                    </div>
                </div> <!-- /.card-body -->
            </div><!-- /.card -->
        </div>

        <div class="col-lg-6">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title box-title">Communications</h4>
                    <div class="card-content">
                        <div class="messenger-box">
                            <ul>
                                <li>
                                    <div class="msg-received msg-container">
                                        <div class="avatar">
                                            <img src="images/avatar/64-1.jpg" alt="">
                                            <div class="send-time">11.11 am</div>
                                        </div>
                                        <div class="msg-box">
                                            <div class="inner-box">
                                                <div class="name">
                                                    John Doe
                                                </div>
                                                <div class="meg">
                                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis sunt placeat velit ad reiciendis ipsam
                                                </div>
                                            </div>
                                        </div>
                                    </div><!-- /.msg-received -->
                                </li>
                                <li>
                                    <div class="msg-sent msg-container">
                                        <div class="avatar">
                                            <img src="images/avatar/64-2.jpg" alt="">
                                            <div class="send-time">11.11 am</div>
                                        </div>
                                        <div class="msg-box">
                                            <div class="inner-box">
                                                <div class="name">
                                                    John Doe
                                                </div>
                                                <div class="meg">
                                                    Hay how are you doing?
                                                </div>
                                            </div>
                                        </div>
                                    </div><!-- /.msg-sent -->
                                </li>
                            </ul>
                            <div class="send-mgs">
                                <div class="yourmsg">
                                    <input class="form-control" type="text">
                                </div>
                                <button class="btn msg-send-btn">
                                    <i class="pe-7s-paper-plane"></i>
                                </button>
                            </div>
                        </div><!-- /.messenger-box -->
                    </div>
                </div> <!-- /.card-body -->
            </div><!-- /.card -->
        </div>
    </div>
    <!-- /To Do and Live Chat -->
    <!-- .animated -->
    <!-- /.content -->