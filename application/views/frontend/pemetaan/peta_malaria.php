    <main id="main">
        <!-- ======= Values Section ======= -->
        <section id="values" class="values mt-5">

            <div class="container" data-aos="fade-up">

                <header class="section-header">
                    <h2><?= $judul ?></h2>
                    <p>Menampilkan Peta Statifikasi Malaria Menurut API Tahun <?= $rasioM['tahun'] ?></p>
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
                        <div id="mapMalaria"></div>
                        <div class="mt-5">
                            <p><strong>Annual Parasite Incidence (API)</strong> merupakan
                            jumlah penderita malaria yang telah mendapatkan konfirmasi
                            laboratorium positif pada lingkup suatu wilayah tertentu serta dan
                            dalam kurun waktu tertentu setiap/per 1000 orang penduduk</p>
                            <p>Legenda :</p>
                            <ul>
                                <li>LCI (Low Case Incidence) API < 1 : Hijau</li>
                                <li>MCI (Moderate Case Incidence) API 1 - < 5 : Kuning</li>
                                <li>HCI (High Case Incidence) API > 5 : Merah</li>
                            </ul>
                        </div>
                    <?php endif; ?>

                </div>

            </div>

        </section><!-- End Values Section -->

    </main><!-- End #main -->