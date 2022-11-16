<!-- INFOS USER -->
<?php

use App\modeles\ModeleClasse;

include_once('controllers/stock.controller.php');
$Magasin = ModeleClasse::getoneByname('ID_gerant', 'table_magasin', $_SESSION['id_session']);
// deb($Magasin);

?>

<!-- Right Panel -->
<div id="right-panel" class="right-panel">
    <!-- Header-->
    <header id="header" class="header">
        <div class="top-left">
            <div class="navbar-header bg-transparent">
                <a class="navbar-brand" href="./"><img src="<?= LINK ?>assets/logo/logo.png" class="w-25" alt="Logo"></a>
                <!-- <a class="navbar-brand hidden" href="./"><img src="<?= LINK ?>assets/logo/logo.png" alt="Logo"></a> -->
                <a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>
            </div>
        </div>
        <div class="top-right d-flex align-items-center justify-content-center">
            <div class="col text-light small">
                <?php if (date('H') <= 12) : ?>
                    Bonjour, <span class="text-warning"><?= $_SESSION['Name'] ?></span> <br>
                <?php else : ?>
                    Bonsoir, <span class="text-warning"><?= $_SESSION['Name'] ?></span> <br>
                <?php endif; ?>
                Role : <span class="text-warning"><?= $_SESSION['Role'] ?></span> <br>
            </div>
            <div class="col text-white fw-bold small">
                <?php if (!empty($Magasin)) : ?>
                    G&#233;rant du magasin : <span class="text-warning"><?= $Magasin['Reference_mag'] ?></span> <br>
                <?php else : ?>
                <?php endif ?>
            </div>
            <?php if ($_SESSION['Role'] == "Admin") : ?>
                <div class="col d-flex p-1">
                    <a href="<?= LINK ?>bc" class="btn btn-outline-light mx-2" id="guide">
                        <span>Bon de commande <i class="mdi mdi-file"></i></span>
                    </a>
                    <a href="<?= LINK ?>guide" class="btn btn-outline-light mx-2" id="guide">
                        <span>write <i class="mdi mdi-pen"></i></span>
                    </a>
                </div>
            <?php endif; ?>
            <div class="mx-3 p-1">
                <a href="<?= LINK ?>documentation" class="btn btn-light" id="docs">
                    <span>Guide <i class="mdi mdi-help"></i></span>
                </a>
            </div>
            <div class="header-menu">
                <div class="header-left">
                    <!-- <button class="search-trigger"><i class="fa fa-search"></i></button>
                    <div class="form-inline">
                        <form class="search-form">
                            <input class="form-control mr-sm-2" type="text" placeholder="Search ..." aria-label="Search">
                            <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                        </form>
                    </div> -->
                    <?php if ($_SESSION['Role'] == "Admin") : ?>
                        <div class="dropdown for-notification">
                            <button type="button" class="btn btn-primary position-relative" id="notification" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fa fa-bell"></i>
                                <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                    <?= $nb_ ?>
                                    <span class="visually-hidden">unread messages</span>
                                </span>
                            </button>
                            <div class="dropdown-menu shadow text-center" aria-labelledby="notification">
                                <p class="text-info"><?= $nb_ ?> articles &#224; <br> approvisionner</p>
                                <a class="dropdown-item media" href="#">
                                    <div class="text-center">
                                        <span class="mdi mdi-cart text-secondary" style="font-size: 40px;"></span>
                                        <p><a class="btn btn-outline-danger" href="<?= LINK ?>approvisionnement">Approvisionner</a></p>
                                    </div>
                                </a>
                            </div>
                        </div>
                    <?php endif ?>

                    <div class="dropdown for-message d-none">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="message" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-envelope"></i>
                            <span class="count bg-primary">4</span>
                        </button>
                        <div class="dropdown-menu" aria-labelledby="message">
                            <p class="red">You have 4 Mails</p>
                            <a class="dropdown-item media" href="#">
                                <span class="photo media-left"><img alt="avatar" src="<?= LINK ?>assets/images/avatar/1.jpg"></span>
                                <div class="message media-body">
                                    <span class="name float-left">Jonathan Smith</span>
                                    <span class="time float-right">Just now</span>
                                    <p>Hello, this is an example msg</p>
                                </div>
                            </a>
                            <a class="dropdown-item media" href="#">
                                <span class="photo media-left"><img alt="avatar" src="<?= LINK ?>assets/images/avatar/2.jpg"></span>
                                <div class="message media-body">
                                    <span class="name float-left">Jack Sanders</span>
                                    <span class="time float-right">5 minutes ago</span>
                                    <p>Lorem ipsum dolor sit amet, consectetur</p>
                                </div>
                            </a>
                            <a class="dropdown-item media" href="#">
                                <span class="photo media-left"><img alt="avatar" src="<?= LINK ?>assets/images/avatar/3.jpg"></span>
                                <div class="message media-body">
                                    <span class="name float-left">Cheryl Wheeler</span>
                                    <span class="time float-right">10 minutes ago</span>
                                    <p>Hello, this is an example msg</p>
                                </div>
                            </a>
                            <a class="dropdown-item media" href="#">
                                <span class="photo media-left"><img alt="avatar" src="<?= LINK ?>assets/images/avatar/4.jpg"></span>
                                <div class="message media-body">
                                    <span class="name float-left">Rachel Santos</span>
                                    <span class="time float-right">15 minutes ago</span>
                                    <p>Lorem ipsum dolor sit amet, consectetur</p>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>

                <div class="user-area dropdown float-right">
                    <a href="#" class="dropdown-toggle active" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <?php if (!empty($_SESSION['Profile'])) : ?>
                            <img class="user-avatar rounded-circle" src="<?= LINK ?>upload/profile/<?= $_SESSION['Profile'] ?>" alt="User Avatar">
                        <?php else : ?>
                            <img class="user-avatar rounded-circle" src="<?= LINK ?>assets/images/admin.jpg" alt="User Avatar">
                        <?php endif; ?>
                    </a>

                    <div class="user-menu dropdown-menu">
                        <a class="nav-link" href="<?= LINK ?>profile"><i class="fa fa- user"></i>Profile</a>
                        <a class="nav-link" href="<?= LINK ?>logout"><i class="fa fa-power -off"></i>Logout</a>
                    </div>
                </div>

            </div>
        </div>
    </header>
    <!-- /#header -->


    <style>
        #header {
            background-color: #50577A;
        }

        .animated {
            background-color: #EAEAEA;
            border-left: 1px solid black;
        }
        
        
        
    </style>