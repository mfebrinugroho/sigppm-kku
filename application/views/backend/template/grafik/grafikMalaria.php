<!-- Malaria -->
<script>
    var ctx = document.getElementById('meninggal').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: [
                <?php foreach ($apiM as $t) {
                    echo "'" . $t['nama'] . "',";
                }
                ?>
            ],
            datasets: [{
                    label: 'Hidup',
                    data: [
                        <?php foreach ($apiM as $d) {
                            $total_kasus = $d['malaria_positif'];
                            $meninggal = $d['malaria_meninggal'];
                            $hidup = $total_kasus - $meninggal;

                            echo "'" . $hidup . "',";
                        }
                        ?>
                    ],
                    backgroundColor: '#F8D800',
                    borderColor: '#FDEB71',
                    borderWidth: 1
                },
                {
                    label: 'Mati',
                    data: [
                        <?php foreach ($apiM as $d) {
                            echo "'" . $d['malaria_meninggal'] . "',";
                        }
                        ?>
                    ],
                    backgroundColor: '#0396FF',
                    borderColor: '#ABDCFF',
                    borderWidth: 1
                }
            ]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            },
            plugins: {
                datalabels: {
                    color: '#000',
                    font: {
                        weight: 'bold',
                        size: '10'
                    }
                }
            }
        }
    });
</script>

<script>
    <?php
    $persenL = round($rasioM['laki_laki'] / $rasioM['mal_positif'] * 100, 2);
    $persenP = round($rasioM['perempuan'] / $rasioM['mal_positif'] * 100, 2);
    ?>

    var ctx = document.getElementById('rasioMalaria').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'pie',
        data: {
            labels: ['Laki-Laki', 'Perempuan'],
            datasets: [{
                label: '# of Votes',
                data: ['<?= $persenL ?>', '<?= $persenP ?>'],
                backgroundColor: [
                    '#0396FF',
                    '#FB3640'
                ]
            }]
        },
        options: {
            responsive: true,
            legend: {
                position: 'bottom'
            },
            animation: {
                animateScale: true
            },
            plugins: {
                datalabels: {
                    color: '#fff',
                    anchor: 'end',
                    align: 'start',
                    offset: -10,
                    borderWidth: 2,
                    borderColor: '#fff',
                    borderRadius: 25,
                    backgroundColor: (context) => {
                        return context.dataset.backgroundColor;
                    },
                    font: {
                        weight: 'bold',
                        size: '10'
                    },
                    formatter: (value) => {
                        return value + ' %';
                    }

                }
            }
        }
    });
</script>

<script>
    var ctx = document.getElementById('api').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: [
                <?php foreach ($apiM as $r) {
                    echo "'" . $r['nama'] . "',";
                }
                ?>
            ],
            datasets: [{
                    label: 'API',
                    data: [
                        <?php foreach ($apiM as $d) {
                            $jumlahPenduduk = $d['jumlahPenduduk'];
                            $positif = $d['malaria_positif'];
                            $api = $positif / $jumlahPenduduk * 1000;

                            echo "'" . number_format($api, 2) . "',";
                        }
                        ?>
                    ],
                    backgroundColor: '#F8D800',
                    borderColor: '#FDEB71',
                    borderWidth: 1
                },
                {
                    label: 'AMI',
                    data: [
                        <?php foreach ($apiM as $d) {
                            $jumlahPenduduk = $d['jumlahPenduduk'];
                            $klinis = $d['malaria_klinis'];
                            $ami = $klinis / $jumlahPenduduk * 1000;

                            echo "'" . number_format($ami, 2) . "',";
                        }
                        ?>
                    ],
                    backgroundColor: '#0396FF',
                    borderColor: '#ABDCFF',
                    borderWidth: 1
                }
            ]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            },
            plugins: {
                datalabels: {
                    color: '#000',
                    font: {
                        weight: 'bold',
                        size: '10'
                    }

                }
            }
        }
    });
</script>

<script>
    var ctx = document.getElementById('sd').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: [
                <?php foreach ($apiM as $r) {
                    echo "'" . $r['nama'] . "',";
                }
                ?>
            ],
            datasets: [{
                    label: 'Mikroskop',
                    data: [
                        <?php foreach ($apiM as $d) {
                            echo "'" . $d['mik'] . "',";
                        }
                        ?>
                    ],
                    backgroundColor: '#F8D800',
                    borderColor: '#FDEB71',
                    borderWidth: 1
                },
                {
                    label: 'RDT',
                    data: [
                        <?php foreach ($apiM as $d) {
                            echo "'" . $d['rdt'] . "',";
                        }
                        ?>
                    ],
                    backgroundColor: '#0396FF',
                    borderColor: '#ABDCFF',
                    borderWidth: 1
                }
            ]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            },
            plugins: {
                datalabels: {
                    color: '#000',
                    font: {
                        weight: 'bold',
                        size: '10'
                    }

                }
            }
        }
    });
</script>

<script>
    var ctx = document.getElementById('parasit').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: [<?php foreach ($apiM as $r) {
                            echo "'" . $r['nama'] . "',";
                        }
                        ?>],
            datasets: [{
                    label: 'Pf',
                    data: [
                        <?php foreach ($apiM as $d) {
                            echo "'" . $d['pf'] . "',";
                        }
                        ?>
                    ],
                    backgroundColor: '#F8D800',
                    borderColor: '#FDEB71',
                    borderWidth: 1
                },
                {
                    label: 'Pv',
                    data: [
                        <?php foreach ($apiM as $d) {
                            echo "'" . $d['pv'] . "',";
                        }
                        ?>
                    ],
                    backgroundColor: '#0396FF',
                    borderColor: '#ABDCFF',
                    borderWidth: 1
                },
                {
                    label: 'Pm',
                    data: [
                        <?php foreach ($apiM as $d) {
                            echo "'" . $d['pm'] . "',";
                        }
                        ?>
                    ],
                    backgroundColor: '#EA5455',
                    borderColor: '#FEB692',
                    borderWidth: 1
                },
                {
                    label: 'Po',
                    data: [
                        <?php foreach ($apiM as $d) {
                            echo "'" . $d['po'] . "',";
                        }
                        ?>
                    ],
                    backgroundColor: '#7367F0',
                    borderColor: '#CE9FFC',
                    borderWidth: 1
                },
                {
                    label: 'Mix',
                    data: [
                        <?php foreach ($apiM as $d) {
                            echo "'" . $d['mix'] . "',";
                        }
                        ?>
                    ],
                    backgroundColor: '#28C76F',
                    borderColor: '#81FBB8',
                    borderWidth: 1
                },

            ]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            },
            plugins: {
                datalabels: {
                    color: '#000',
                    font: {
                        weight: 'bold',
                        size: '10'
                    }


                }
            }
        }
    });
</script>

<script>
    var ctx = document.getElementById('usiaM').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['0 - 11 bln', '1 - 4 th', '5 - 9 th', '10 - 14 th', '15 - 64 th', '> 64 th'],
            datasets: [{
                label: 'Usia',
                data: [
                    '<?= $rasioM['mal011']; ?>',
                    '<?= $rasioM['mal14']; ?>',
                    '<?= $rasioM['mal59']; ?>',
                    '<?= $rasioM['mal1014']; ?>',
                    '<?= $rasioM['mal1564']; ?>',
                    '<?= $rasioM['mal65']; ?>'
                ],
                backgroundColor: '#F8D800',
                borderColor: '#FDEB71',
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            },
            plugins: {
                datalabels: {
                    color: '#000',
                    font: {
                        weight: 'bold',
                        size: '10'
                    }

                }
            }
        }
    });
</script>
<!-- End Malaria -->