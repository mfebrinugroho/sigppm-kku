    <main id="main">
        <!-- ======= Values Section ======= -->
        <section id="values" class="values mt-5">

            <div class="container" data-aos="fade-up">

                <header class="section-header">
                    <h2><?= $judul ?></h2>
                    <p>Menampilkan Peta Statifikasi Kusta Menurut PR Tahun <?= $rasioK['tahun'] ?></p>
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
                        <div id="mapKusta"></div>
                        <div class="mt-5">
                            <p><strong>Prevalence Rate (PR)</strong> merupakan satuan 
                            jumlah kejadian penyakit yang terjadi dalam wilayah tertentu dan 
                            pada kurun waktu tertentu pula yakni per 10.000 penduduk. Prevalence Rate (PR) 
                            dapat digunakan pada kasus penyakit kronis menular yang berjangka panjang.</p>
                            <p>Legenda :</p>
                            <ul>
                                <li>Belum Eliminasi PR > 1</li>
                                <li>Sudah Eliminasi PR < 1</li>
                            </ul>
                        </div>
                    <?php endif; ?>

                </div>

            </div>

        </section><!-- End Values Section -->

    </main><!-- End #main -->