<div class="page-content-wrapper ">

    <div class="container-fluid">

        <div class="row">
            <div class="col-sm-12">
                <div class="page-title-box">
                    <div class="btn-group float-right">
                        <ol class="breadcrumb hide-phone p-0 m-0">
                            <li class="breadcrumb-item"><a href="<?= site_url('user') ?>">Kelola Data User</a></li>
                            <li class="breadcrumb-item"><?= $judul ?></li>
                        </ol>
                    </div>
                    <h4 class="page-title"><?= $judul ?></h4>
                </div>
            </div>
        </div>
        <!-- end page title end breadcrumb -->

        <div class="row">
            <div class="col-lg-12 col-sm-12">
                <div class="card m-b-30">
                    <div class="card-body">
                        <h4 class="mt-0 header-title"><?= $judul ?></h4>
                        <div class="dropdown-divider mb-3"></div>

                        <?php if (empty($users)) : ?>
                            <?php redirect('user') ?>
                        <?php else : ?>
                            <div class="card-body">
                                <div class="form-group">
                                    <h6 class="header-title">Nama User :</h6>
                                    <p class="text-muted m-b-30"><?= $users['nama']; ?></p>
                                </div>
                                <div class="form-group">
                                    <h6 class="header-title">Username :</h6>
                                    <p class="text-muted m-b-30"><?= $users['username']; ?></p>
                                </div>
                                <div class="form-group">
                                    <h6 class="header-title">Alamat :</h6>
                                    <p class="text-muted m-b-30"><?= $users['alamat']; ?></p>
                                </div>
                                <div class="form-group">
                                    <h6 class="header-title">Level User :</h6>
                                    <p class="text-muted m-b-30"><?= $users['levelUser']; ?></p>
                                </div>
                                <div class="form-group">
                                    <h6 class="header-title">Gambar :</h6>
                                    <div class="row">
                                        <img src="<?= base_url('assets/gambar/user/') . $users['gambar']; ?>" class="img-thumbnail" width="200">
                                    </div>
                                </div>
                            </div> <!-- /.card-body -->
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
        <!--end row-->

    </div><!-- container -->

</div> <!-- Page content Wrapper -->

</div> <!-- content -->