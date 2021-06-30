                <div class="page-content-wrapper ">

                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="page-title-box">
                                    <div class="btn-group float-right">
                                        <ol class="breadcrumb hide-phone p-0 m-0">
                                            <li class="breadcrumb-item"><a href="<?= site_url('kecamatan') ?>">Kelola Data Kecamatan</a></li>
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
                                    <?php if (empty($kecamatan)) : ?>
                                        <?php redirect('kecamatan') ?>
                                    <?php else : ?>
                                        <div class="card-body">
                                            <h4 class="mt-0 header-title"><?= $judul ?></h4>
                                            <div class="dropdown-divider mb-3"></div>

                                            <?= form_open_multipart('kecamatan/tambah'); ?>
                                            <div class="card-body">
                                                <div class="form-group">
                                                    <h6 class="header-title">Nama :</h6>
                                                    <p class="text-muted m-b-30"><?= $kecamatan['nama']; ?></p>
                                                </div>
                                                <div class=" form-group">
                                                    <h6 class="header-title">Keterangan :</h6>
                                                    <p class="text-muted m-b-30"><?= $kecamatan['keterangan']; ?></p>
                                                </div>
                                                <div class="form-group">
                                                <h6 class="header-title">GeoJSON :</h6>
                                                    <p class="text-muted m-b-30"><a href="<?= site_url('assets/geojson/') . $kecamatan['geojson']; ?>" target="_BLANK"><?= $kecamatan['geojson']; ?></a></p>
                                                </div>
                                            </div>
                                            <!-- /.card-body -->

                                            </form>



                                        </div>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                        <!--end row-->

                    </div><!-- container -->

                </div> <!-- Page content Wrapper -->

                </div> <!-- content -->