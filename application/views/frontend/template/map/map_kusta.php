<script>
    <?php
    foreach ($pemetaan as $pmt) {
        $jumlahPenduduk = $pmt['jumlahPenduduk'];
        $total = $pmt['pb'] + $pmt['mb'];
        $pr = ($total / $jumlahPenduduk) * 10000;

        $data[$pmt['nama']] = number_format($pr, 2);
    }
    ?>
    var PERHITUNGAN = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {

        $total = $pmt['pb'] + $pmt['mb'];
        $data[$pmt['nama']] = $total;
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

        $data[$pmt['nama']] = $pmt['pb'];
    }
    ?>
    var PB = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {

        $data[$pmt['nama']] = $pmt['mb'];
    }
    ?>
    var MB = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {
        
        $data[$pmt['nama']] = $pmt['kus15LPB'] + $pmt['kus15LMB'] + $pmt['kus1625LPB'] + $pmt['kus1625LMB'] + $pmt['kus2635LPB'] + $pmt['kus2635LMB'] + $pmt['kus3645LPB'] + $pmt['kus3645LMB'] + $pmt['kus4655LPB'] + $pmt['kus4655LMB'] + $pmt['kus56LPB'] + $pmt['kus56LMB'];
    }
    ?>
    var LAKILAKI = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {
        
        $data[$pmt['nama']] = $pmt['kus15PPB'] + $pmt['kus15PMB'] + $pmt['kus1625PPB'] + $pmt['kus1625PMB'] + $pmt['kus2635PPB'] + $pmt['kus2635PMB'] + $pmt['kus3645PPB'] + $pmt['kus3645PMB'] + $pmt['kus4655PPB'] + $pmt['kus4655PMB'] + $pmt['kus56PPB'] + $pmt['kus56PMB'];
    }
    ?>
    var PEREMPUAN = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {

        $data[$pmt['nama']] = $pmt['kus15LPB'] + $pmt['kus15PPB'] + $pmt['kus15LMB'] + $pmt['kus15PMB'];
    }
    ?>
    var KUS15 = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {

        $data[$pmt['nama']] = $pmt['kus1625LPB'] + $pmt['kus1625PPB'] + $pmt['kus1625LMB'] + $pmt['kus1625PMB'];
    }
    ?>
    var KUS1625 = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {

        $data[$pmt['nama']] = $pmt['kus2635LPB'] + $pmt['kus2635PPB'] + $pmt['kus2635LMB'] + $pmt['kus2635PMB'];
    }
    ?>
    var KUS2635 = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {

        $data[$pmt['nama']] = $pmt['kus3645LPB'] + $pmt['kus3645PPB'] + $pmt['kus3645LMB'] + $pmt['kus3645PMB'];
    }
    ?>
    var KUS3645 = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {

        $data[$pmt['nama']] = $pmt['kus4655LPB'] + $pmt['kus4655PPB'] + $pmt['kus4655LMB'] + $pmt['kus4655PMB'];
    }
    ?>
    var KUS4655 = <?= json_encode($data) ?>;

    <?php
    foreach ($pemetaan as $pmt) {

        $data[$pmt['nama']] = $pmt['kus56LPB'] + $pmt['kus56PPB'] + $pmt['kus56LMB'] + $pmt['kus56PMB'];
    }
    ?>
    var KUS56 = <?= json_encode($data) ?>;

    // Peta Dasar Koordinat tengah KKKU [-1.1505796, 109.5429503]
    var map = L.map('mapKusta').setView([-1.1505796, 109.5429503], 9);
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
        this._div.innerHTML = '<h4>Prevalence Rate</h4>' + (props ?
            '<br><b>Kecamatan : </b>' + props.KECAMATAN + 
            '<br><b>Jumlah Penduduk :</b> ' + JML_PENDUDUK[props.KECAMATAN] + ' Jiwa' +
            '<br><b>Kasus Kusta Terdaftar :</b> ' + POSITIF[props.KECAMATAN] + ' Jiwa' + 
            '<br><b>&mdash; Berdasarkan Tipe Kusta &mdash;</b>' +
            '<br>&bull; Pausibasiler (PB) : ' + PB[props.KECAMATAN] + ' Jiwa' +
            '<br>&bull; Multibasiler (MB) : ' + MB[props.KECAMATAN] + ' Jiwa' +
            '<br><b>&mdash; Berdasarkan Jenis Kelamin &mdash;</b>' +
            '<br>&bull; Laki-Laki : ' + LAKILAKI[props.KECAMATAN] + ' Jiwa' +
            '<br>&bull; Perempuan : ' + PEREMPUAN[props.KECAMATAN] + ' Jiwa' +
            '<br><b>&mdash; Berdasarkan Umur &mdash;</b>' +
            '<br>&bull; Kurang dari 15 tahun  : ' + KUS15[props.KECAMATAN] + ' Jiwa' +
            '<br>&bull; 16 - 25 tahun : ' + KUS1625[props.KECAMATAN] + ' Jiwa' +
            '<br>&bull; 26 - 35 tahun : ' + KUS2635[props.KECAMATAN] + ' Jiwa' +
            '<br>&bull; 36 - 45 tahun : ' + KUS3645[props.KECAMATAN] + ' Jiwa' +
            '<br>&bull; 46 - 55 tahun : ' + KUS4655[props.KECAMATAN] + ' Jiwa' +
            '<br>&bull; Lebih dari 56 tahun : ' + KUS56[props.KECAMATAN] + ' Jiwa' +

            '<br><br><b>PR :</b> ' + PERHITUNGAN[props.KECAMATAN] + ' / 10.000 Penduduk':
            'Arahkan kursor untuk melihat');
    };

    info.addTo(map);
    // info panel

    // get color depending on population density value
    function getColor(d) {
        return d > 1 ? '#FF0000' :
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
            grades = [0, 1],
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
        }).addTo(map).bindPopup('<a href="<?= site_url() ?>beranda/grafik_kusta" target="_blank">Lihat Grafik Kusta</a>');
    <?php endforeach; ?>
</script>