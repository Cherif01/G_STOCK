<!-- Content -->
<div class="content bg-white">
    <!-- Animated -->
    <div class="clearfix m-2"></div>
    <div class="">
        <?php if (!empty($success)) : ?>
            <div class="alert alert-info bg-success  text-white small border-0" id="succ"><?= $success ?></div>
        <?php elseif (!empty($error)) : ?>
            <div class="alert alert-danger text-white bg-danger p-2 small border-0" id="err"><?= $error ?></div>
        <?php else : ?>
        <?php endif; ?>
    </div>

    <div class="container-fluid">
        <div class="d-flex justify-content-center text-center flex-wrap mb-5 bg-white">
            <div class="col-1"></div>
            <div class="col">
                <?php if (!empty($Docs)) : ?>
                    <?php foreach ($Docs as $data) : ?>
                        <div class="container-fluid">
                            <h1><?= $data['Titre'] ?></h1>
                            <hr>
                            <p>
                                <?= $data['Contenu'] ?>
                            </p>
                        </div>
                        <hr>
                    <?php endforeach ?>
                <?php endif; ?>
            </div>
            <div class="col-1"></div>
        </div>
    </div>

</div>