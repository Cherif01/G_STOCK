<!-- FIN ENTETE -->
<div class="clearfix m-2"></div>

<!-- DEBUT -->

<body class="bg-dark">
    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content shadow-lg">
                <div class="login-logo">
                    <a href="index.html">
                        <img class="align-content" src="images/logo.png" alt="">
                    </a>
                </div>
                <div class="login-form">
                    <div class="text-center">
                        <span class="mdi mdi-account-circle text-primary" style="font-size: 75px;"></span>
                        <div class="">
                            <?php if (!empty($success)) : ?>
                                <hr>
                                <div class="alert alert-info bg-success  text-white small border-0" id="succ"><?= $success ?></div>
                            <?php elseif (!empty($error)) : ?>
                                <hr>
                                <div class="alert alert-danger text-white bg-danger p-2 small border-0" id="err"><?= $error ?></div>
                            <?php else : ?>
                            <?php endif; ?>
                        </div>
                        <!-- Widgets  -->
                    </div>
                    <form action="" method="POST">
                        <div class="form-group">
                            <label>Votre nom d'utilisateur</label>
                            <input type="text" name="Nom_utilisateur" required class="form-control border-dark" placeholder="Nom d'utilisateur">
                        </div>
                        <div class="form-group">
                            <label>Mot de passe</label>
                            <input type="password" name="Mot_de_passe" required class="form-control border-dark" placeholder="Mot de passe">
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> Se rappeler de moi !
                            </label>
                            <label class="pull-right">
                                <a href="#">Mot de passe oubli&#233;?</a>
                            </label>

                        </div>
                        <button type="submit" name="login" class="btn btn-success btn-flat m-b-30 m-t-30">Connexion</button>
                        <div class="register-link m-t-15 text-center d-none">
                            <p>Pas de compte ? <a href="#"> Inscription</a></p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
    <script src="<?= LINK ?>assets/js/main.js"></script>

</body>
<!-- FIN -->
<!-- /.content -->