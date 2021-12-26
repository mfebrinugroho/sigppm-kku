<script>
    <?php
    foreach ($pemetaan as $pmt) {
        $jumlahPenduduk = $pmt['jumlahPenduduk'];
        $positif = $pmt['malaria_positif'];
        $api = ($positif / $jumlahPenduduk) * 1000;

        $data[$pmt['nama']] = number_format($api, 2);
    }
    ?>
    var PERHITUNGAN = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {
        $laki = $pmt['mal011L'] + $pmt['mal14L'] + $pmt['mal59L'] + $pmt['mal1014L'] + $pmt['mal1564L'] + $pmt['mal65L'];

        $data[$pmt['nama']] = $laki;
    }
    ?>
    var LAKILAKI = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {
        $perempuan = $pmt['mal011P'] + $pmt['mal14P'] + $pmt['mal59P'] + $pmt['mal1014P'] + $pmt['mal1564P'] + $pmt['mal65P'];

        $data[$pmt['nama']] = $perempuan;
    }
    ?>
    var PEREMPUAN = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {
        $mal011 = $pmt['mal011L'] + $pmt['mal011P'];

        $data[$pmt['nama']] = $mal011;
    }
    ?>
    var MAL011 = <?= json_encode($data) ?>;
    
    <?php
    foreach ($pemetaan as $pmt) {
        $mal14 = $pmt['mal14L'] + $pmt['mal14P'];

        $data[$pmt['nama']] = $mal14;
    }
    ?>
    var MAL14 = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {
        $mal59 = $pmt['mal59L'] + $pmt['mal59P'];

        $data[$pmt['nama']] = $mal59;
    }
    ?>
    var MAL59 = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {
        $mal1014 = $pmt['mal1014L'] + $pmt['mal1014P'];

        $data[$pmt['nama']] = $mal1014;
    }
    ?>
    var MAL1014 = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {
        $mal1564 = $pmt['mal1564L'] + $pmt['mal1564P'];

        $data[$pmt['nama']] = $mal1564;
    }
    ?>
    var MAL1564 = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {
        $mal65 = $pmt['mal65L'] + $pmt['mal65P'];

        $data[$pmt['nama']] = $mal65;
    }
    ?>
    var MAL65 = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {

        $data[$pmt['nama']] = $pmt['malaria_positif'];
    }
    ?>
    var POSITIF = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {

        $data[$pmt['nama']] = $pmt['malaria_klinis'];
    }
    ?>
    var SUSPEK = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {

        $data[$pmt['nama']] = number_format($pmt['jumlahPenduduk'], 0, '', '.');
    }
    ?>
    var JML_PENDUDUK = <?= json_encode($data) ?>;

    // Peta Dasar Koordinat tengah KKKU [-1.1505796, 109.5429503]
    var map = L.map('mapMalaria').setView([-1.1505796, 109.5429503], 9);
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
        this._div.innerHTML = '<h4>Annual Parasite Incidence</h4>' + (props ?
            '<br><b>Kecamatan : </b>' + props.KECAMATAN + 
            '<br><b>Jumlah Penduduk :</b> ' + JML_PENDUDUK[props.KECAMATAN] + ' Jiwa' +
            '<br><b>Suspek Malaria :</b> ' + SUSPEK[props.KECAMATAN] + ' Jiwa' +
            '<br><b>Kasus Positif :</b> ' + POSITIF[props.KECAMATAN] + ' Jiwa' + 
            '<br><b>&mdash; Berdasarkan Jenis Kelamin &mdash;</b>' +
            '<br>&bull; Laki-Laki : ' + LAKILAKI[props.KECAMATAN] + ' Jiwa' +
            '<br>&bull; Perempuan : ' + PEREMPUAN[props.KECAMATAN] + ' Jiwa' +
            '<br><b>&mdash; Berdasarkan Umur &mdash;</b>' +
            '<br>&bull; 0 - 11 bulan  : ' + MAL011[props.KECAMATAN] + ' Jiwa' +
            '<br>&bull; 1 - 4 tahun : ' + MAL14[props.KECAMATAN] + ' Jiwa' +
            '<br>&bull; 5 - 9 tahun : ' + MAL59[props.KECAMATAN] + ' Jiwa' +
            '<br>&bull; 10 - 14 tahun : ' + MAL1014[props.KECAMATAN] + ' Jiwa' +
            '<br>&bull; 15 - 64 tahun : ' + MAL1564[props.KECAMATAN] + ' Jiwa' +
            '<br>&bull; Lebih dari 65 tahun : ' + MAL65[props.KECAMATAN] + ' Jiwa' +

            '<br><br><b>API :</b> ' + PERHITUNGAN[props.KECAMATAN] + ' / 1.000 Penduduk':
            'Arahkan kursor untuk melihat');
    };

    info.addTo(map);
    // info panel

    // get color depending on population density value
    function getColor(d) {
        return d > 5 ? '#FF0000' :
            d > 1 ? '#FFFF00' :
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
            grades = [0, 1, 5],
            labels = [],
            from, to;

        for (var i = 0; i < grades.length; i++) {
            from = grades[i];
            to = grades[i + 1];

            labels.push(
                '<i style="background:' + getColor(from + 1) + '"></i>' +
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
        }).addTo(map).bindPopup('<a href="<?= site_url() ?>beranda/grafik_malaria" target="_blank">Lihat Grafik Malaria</a>');
    <?php endforeach; ?>
</script>