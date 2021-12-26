<script>
    <?php
    foreach ($pemetaan as $pmt) {
        $jumlahPenduduk = $pmt['jumlahPenduduk'];
        $total_kasus = $pmt['jumlah_kasus'];
        $ir = $total_kasus / $jumlahPenduduk * 100000;

        $data[$pmt['nama']] = number_format($ir, 2);
    }
    ?>
    var PERHITUNGAN = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {

        $data[$pmt['nama']] = $pmt['jumlah_kasus'];
    }
    ?>
    var POSITIF = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {

        $data[$pmt['nama']] = number_format($pmt['jumlahPenduduk'], 0, '', '.');
    }
    ?>
    var JML_PENDUDUK = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {
        $laki = $pmt['totalL'];

        $data[$pmt['nama']] = $laki;
    }
    ?>
    var LAKILAKI = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {
        $perempuan = $pmt['totalP'];

        $data[$pmt['nama']] = $perempuan;
    }
    ?>
    var PEREMPUAN = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {
        $data[$pmt['nama']] = $pmt['dbd1'];
    }
    ?>
    var DBD1 = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {
        $data[$pmt['nama']] = $pmt['dbd14'];
    }
    ?>
    var DBD14 = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {
        $data[$pmt['nama']] = $pmt['dbd59'];
    }
    ?>
    var DBD59 = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {
        $data[$pmt['nama']] = $pmt['dbd1014'];
    }
    ?>
    var DBD1014 = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {
        $data[$pmt['nama']] = $pmt['dbd1519'];
    }
    ?>
    var DBD1519 = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {
        $data[$pmt['nama']] = $pmt['dbd2044'];
    }
    ?>
    var DBD2044 = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {
        $data[$pmt['nama']] = $pmt['dbd45'];
    }
    ?>
    var DBD45 = <?= json_encode($data) ?>;

    // Peta Dasar Koordinat tengah KKKU [-1.1505796, 109.5429503]
    var map = L.map('mapDBD').setView([-1.1505796, 109.5429503], 9);
    var LayerKita = L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
        attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
        maxZoom: 18,
        id: 'mapbox/streets-v11',
        tileSize: 512,
        zoomOffset: -1,
        accessToken: 'pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw'
    });
    map.addLayer(LayerKita);
    // End Peta Dasar

    // control that shows state info on hover
    var info = L.control();

    info.onAdd = function(map) {
        this._div = L.DomUtil.create('div', 'info');
        this.update();
        return this._div;
    };

    info.update = function(props) {
        this._div.innerHTML = '<h4>Incidence Rate</h4>' + (props ?
        '<br><b>Kecamatan : </b>' + props.KECAMATAN + 
            '<br><b>Jumlah Penduduk :</b> ' + JML_PENDUDUK[props.KECAMATAN] + ' Jiwa' +
            '<br><b>Kasus Positif :</b> ' + POSITIF[props.KECAMATAN] + ' Jiwa' + 
            '<br><b>&mdash; Berdasarkan Jenis Kelamin &mdash;</b>' +
            '<br>&bull; Laki-Laki : ' + LAKILAKI[props.KECAMATAN] + ' Jiwa' +
            '<br>&bull; Perempuan : ' + PEREMPUAN[props.KECAMATAN] + ' Jiwa' +
            '<br><b>&mdash; Berdasarkan Umur &mdash;</b>' +
            '<br>&bull; Kurang dari 1 tahun  : ' + DBD1[props.KECAMATAN] + ' Jiwa' +
            '<br>&bull; 1 - 4 tahun : ' + DBD14[props.KECAMATAN] + ' Jiwa' +
            '<br>&bull; 5 - 9 tahun : ' + DBD59[props.KECAMATAN] + ' Jiwa' +
            '<br>&bull; 10 - 14 tahun : ' + DBD1014[props.KECAMATAN] + ' Jiwa' +
            '<br>&bull; 15 - 19 tahun : ' + DBD1519[props.KECAMATAN] + ' Jiwa' +
            '<br>&bull; 20 - 44 tahun : ' + DBD2044[props.KECAMATAN] + ' Jiwa' +
            '<br>&bull; Lebih dari 45 tahun : ' + DBD45[props.KECAMATAN] + ' Jiwa' +

            '<br><br><b>IR :</b> ' + PERHITUNGAN[props.KECAMATAN] + ' / 1.000 Penduduk':
            'Arahkan kursor untuk melihat');
    };

    info.addTo(map);
    // info panel

    // get color depending on population density value
    function getColor(d) {
        return d > 75 ? '#FF0000' :
            d > 55 ? '#FF8C00' :
            d > 35 ? '#FFFF00' :
            '#008000';
    }

    function style(feature) {
        return {
            weight: 2,
            opacity: 1,
            color: 'white',
            dashArray: '3',
            fillOpacity: 0.7,
            fillColor: getColor(PERHITUNGAN[feature.properties.KECAMATAN])
        };
    }

    function highlightFeature(e) {
        var layer = e.target;

        layer.setStyle({
            weight: 2,
            color: '#666',
            dashArray: '',
            fillOpacity: 0.7
        });

        if (!L.Browser.ie && !L.Browser.opera && !L.Browser.edge) {
            layer.bringToFront();
        }

        info.update(layer.feature.properties);
    }

    // var geojson;

    function resetHighlight(e) {
        var layer = e.target;

        layer.setStyle({
            weight: 2,
            opacity: 1,
            color: 'white',
            dashArray: '3'
        });
        info.update();
    }

    function zoomToFeature(e) {
        map.fitBounds(e.target.getBounds());
    }

    function onEachFeature(feature, layer) {
        layer.on({
            mouseover: highlightFeature,
            mouseout: resetHighlight,
            click: zoomToFeature
        });
    }

    var legend = L.control({
        position: 'bottomright'
    });

    legend.onAdd = function(map) {

        var div = L.DomUtil.create('div', 'info legend'),
            grades = [0, 35, 55, 75],
            labels = [],
            from, to;

        for (var i = 0; i < grades.length; i++) {
            from = grades[i];
            to = grades[i + 1];

            labels.push(
                '<i style="background:' + getColor(from + 1) + '"></i> ' +
                from + (to ? ' &ndash; ' + to : '+'));
        }

        div.innerHTML = labels.join('<br>');
        return div;
    };

    legend.addTo(map);

    // Memanggil GeoJSON
    <?php foreach ($kecamatan as $kcm) : ?>
        var jsonTest = new L.GeoJSON.AJAX(["<?= base_url() ?>assets/geojson/<?= $kcm['geojson'] ?>"], {
            style: style,
            onEachFeature: onEachFeature
        }).addTo(map).bindPopup('<a href="<?= site_url() ?>beranda/grafik_dbd" target="_blank">Lihat Grafik DBD</a>');
    <?php endforeach; ?>
</script>