<div class="dropdown-divider"></div>
<li>
    <a href="<?= site_url('dashboard') ?>" class="waves-effect">
        <i class="mdi mdi-airplay"></i>
        <span> Dashboard </span>
    </a>
</li>

<li class="menu-title">KELOLA DATA</li>
<li>
    <a href="<?= site_url('kecamatan') ?>" class="waves-effect">
        <i class="mdi mdi-database"></i>
        <span> Data Kecamatan </span>
    </a>
</li>
<li>
    <a href="<?= site_url('penyakit') ?>" class="waves-effect">
        <i class="mdi mdi-hospital"></i>
        <span> Data Penyakit </span>
    </a>
</li>
<li>
    <a href="<?= site_url('user') ?>" class="waves-effect">
        <i class="mdi mdi-account-multiple"></i>
        <span> Data User </span>
    </a>
</li>

<li class="menu-title">MENU</li>
<li class="has_sub">
    <a href="#" class="waves-effect"><i class="mdi mdi-map-marker-multiple"></i> <span> Pemetaan </span> <span class="float-right"><i class="mdi mdi-chevron-right"></i></span></a>
    <ul class="list-unstyled">
        <li><a href="<?= site_url('pemetaan/malaria') ?>">Malaria</a></li>
    </ul>
    <ul class="list-unstyled">
        <li><a href="<?= site_url('pemetaan/dbd') ?>">DBD</a></li>
    </ul>
    <ul class="list-unstyled">
        <li><a href="<?= site_url('pemetaan/kusta') ?>">Kusta</a></li>
    </ul>
</li>