 <!-- Left Panel -->
 <aside id="left-panel" class="left-panel sidebar shadow-lg">
     <nav class="navbar navbar-expand-sm navbar-default h-100 p-0">
         <div id="main-menu" class="main-menu collapse navbar-collapse">
             <ul class="nav navbar-nav fw-bold">
                 <li class="li_sidebar" id="dashboard">
                     <a href="<?= LINK ?>dashboard" class="nav-link"><i class="menu-icon ti-dashboard"></i><span>Tableau de bord</span> </a>
                 </li>
                 <li class="li_sidebar" id="magasin">
                     <a href="<?= LINK ?>magasin" class="nav-link"> <i class="menu-icon ti-home"></i><span>Magasin</span> </a>
                 </li>
                 <li class="li_sidebar" id="stock">
                     <a href="<?= LINK ?>stock" class="nav-link"> <i class="menu-icon  ti-server"></i><span>Stock</span> </a>
                 </li>
                 <li class="li_sidebar" id="vente">
                     <?php if ($_SESSION['Role'] == "Admin") : ?>
                         <a href="<?= LINK ?>vente" class="nav-link"> <i class="menu-icon ti-shopping-cart-full"></i><span>Vente</span> </a>
                     <?php else : ?>
                         <a href="<?= LINK ?>vente_gerant" class="nav-link"> <i class="menu-icon ti-shopping-cart-full"></i><span>Vente</span></a>
                     <?php endif; ?>
                 </li>
                 <li class="li_sidebar" id="client">
                     <a href="<?= LINK ?>client" class="nav-link"> <i class="menu-icon ti-user"></i><span>Client</span> </a>
                 </li>
                 <?php if ($_SESSION['Role'] == "Admin") : ?>
                     <li class="li_sidebar" id="fournisseur">
                         <a href="<?= LINK ?>fournisseur" class="nav-link"> <i class="menu-icon ti-truck"></i><span>Fournisseur</span> </a>
                     </li>
                 <?php endif; ?>
                 <?php if ($_SESSION['Role'] == "Admin") : ?>
                     <li class="li_sidebar" id="approvisionnement">
                         <a href="<?= LINK ?>approvisionnement" class="nav-link"> <i class="menu-icon ti-plus"></i><span>Approvisionner</span> </a>
                     </li>
                 <?php endif; ?>
                 <li class="li_sidebar" id="caisse">
                     <a href="<?= LINK ?>caisse" class="nav-link"> <i class="menu-icon ti-package"></i><span>Caisse</span> </a>
                 </li>
                 <li class="li_sidebar" id="rapport">
                     <a href="<?= LINK ?>rapport" class="nav-link"> <i class="menu-icon ti-bar-chart-alt"></i><span>Rapport</span> </a>
                 </li>
                 <?php if ($_SESSION['Role'] == "Admin") : ?>
                     <li class="menu-title text-light">Extras Pages</li><!-- /.menu-title -->
                     <?php if ($_SESSION['Role'] == "Admin") : ?>
                         <li class="li_sidebar d-none" id="setting">
                             <a href="<?= LINK ?>setting" class="nav-link"> <i class="menu-icon ti-settings"></i><span>Parametre</span> </a>
                         </li>
                         <li class="li_sidebar" id="user">
                             <a href="<?= LINK ?>user" class="nav-link"> <i class="menu-icon fa fa-sign-in"></i><span>Utilisateur</span> </a>
                         </li>
                         <li class="li_sidebar" id="documentation">
                             <a href="<?= LINK ?>documentation" class="nav-link"> <i class="menu-icon fa fa-paper-plane"></i><span>Help ?</span> </a>
                         </li>
                     <?php endif; ?>
                 <?php endif; ?>

                 <li class="li_sidebar">
                     <a href="<?= LINK ?>logout" class="nav-link text-danger"> <i class="menu-icon ti-hand-point-right text-danger"></i>Deconnexion </a>
                 </li>
             </ul>
         </div><!-- /.navbar-collapse -->
     </nav>
 </aside>
 <!-- /#left-panel -->

 <style>
     .navbar-default {
         background-color: #404258;
     }
     .li_sidebar a span{
        color: #DEF5E5;
     }
     .li_sidebar:hover{
        background-color: #6B728E;
     }
     .active{
        background-color: #EEEEEE;
        padding: 5px;

     }
     .active a span{
        color: #404258;
     }
 </style>