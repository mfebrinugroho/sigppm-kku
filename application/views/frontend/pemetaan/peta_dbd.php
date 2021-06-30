    <main id="main">
        <!-- ======= Values Section ======= -->
        <section id="values" class="values mt-5">

            <div class="container" data-aos="fade-up">

                <header class="section-header">
                    <h2><?= $judul ?></h2>
                    <p>Menampilkan Peta Statifikasi DBD Menurut IR Tahun <?= $rasioD['tahun'] ?></p>
                </header>

                <div class="row">

                    <div class="mx-auto mb-3">
                        <form action="" method="GET">
                            <div class="col-md-4">
                                <div class="input-group mt-2">
                                    <select class="form-select" name="cari" id="cari">
                                        <option selected disabled>--Pilih Tahun--</option>
                                        <?php for ($y = date('Y'); $y >= 2000; $y--) : ?>
                                            <?php if ($y == $this->input->get('cari')) : ?>
                                                <option value="<?= $y; ?>" selected><?= $y; ?></option>
                                            <?php else : ?>
                                                <option value="<?= $y; ?>"><?= $y; ?></option>
                                            <?php endif; ?>
                                        <?php endfor; ?>
                                    </select>
                                    <button class="btn btn-success" type="submit">Pilih</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <?php if (empty($pemetaan)) : ?>
                        <div class="alert alert-danger col-sm-12" role="alert">
                            Peta tidak tersedia.
                        </div>
                    <?php else : ?>
                        <div id="mapDBD"></div>
                        <div class="mt-5">
                            <p><strong>Insidence Rate (IR)</strong> merupakan jumlah kejadian/penyakit 
                            pada wilayah tertentu dalam kurun waktu tertentu per 100.000 
                            penduduk. Incidence Rate (IR) dapat digunakan untuk penyakit akut 
                            menular berjangka pendek.</p>
                            <p>Legenda :</p>
                            <ul>
                                <li>Rendah IR < 35</li>
                                <li>Sedang IR 35 – 55</li>
                                <li>Tinggi IR 55 - 75</li>
                                <li>Sangat Tinggi IR > 75</li>
                            </ul>
                        </div>
                    <?php endif; ?>

                </div>

            </div>

        </section><!-- End Values Section -->

    </main><!-- End #main -->