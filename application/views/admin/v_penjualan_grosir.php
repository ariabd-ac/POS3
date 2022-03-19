<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Produk By Mfikri">
    <meta name="author" content="">

    <title>Welcome To Point of Sale Apps</title>

    <!-- Bootstrap Core CSS -->

    <link href="<?php echo base_url() . 'assets/css/bootstrap.min.css' ?>" rel="stylesheet">
    <link href="<?php echo base_url() . 'assets/css/style.css' ?>" rel="stylesheet">
    <link href="<?php echo base_url() . 'assets/css/font-awesome.css' ?>" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<?php echo base_url() . 'assets/css/4-col-portfolio.css' ?>" rel="stylesheet">
    <link href="<?php echo base_url() . 'assets/css/dataTables.bootstrap.min.css' ?>" rel="stylesheet">
    <link href="<?php echo base_url() . 'assets/css/jquery.dataTables.min.css' ?>" rel="stylesheet">
    <link href="<?php echo base_url() . 'assets/dist/css/bootstrap-select.css' ?>" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'assets/css/bootstrap-datetimepicker.min.css' ?>">

    <!-- roboto -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet">
    <style>
        input.transparent-input {
            background-color: transparent !important;
            border: none !important;
        }
    </style>
    <style type="text/css">
        body {
            background-color: #4361ee;
        }

        input {
            border: 2px solid black !important;
        }

        @font-face {
            font-family: "pizzadude";
            src: url(<?php echo base_url() . 'assets/fonts/BALLSONTHERAMPAGE.ttf' ?>);
        }

        .bg {
            width: 100%;
            height: 100%;
            position: fixed;
            z-index: -1;
            float: left;
            left: 0;
            margin-top: -20px;
        }

        .jam {
            font-size: 1em;
            background-color: transparent;
            /* border: 2px solid #d35400; */
            border-radius: 5px;
            padding: 10px;
        }

        .totalHarga {
            /* align-self: flex-start; */
            display: flex;
            flex: 1;
            justify-content: center;
            align-items: center;
            color: red;
            font-family: "pizzadude";
            font-size: 5rem;
        }

        .nominalHarga {
            font-size: 6rem;
            display: flex;
            flex: 1;
            justify-content: center;
            align-items: center;
            color: #06FF00;
            font-family: 'Roboto Condensed', sans-serif;
        }

        .tbl-custom {
            width: 100%;
            border: 1px solid black !important;

        }

        .tbl-custom tr td {
            border: 1px solid black !important;
            text-align: center !important;
        }

        .cust_container {
            border: 1px solid black !important;
            background-color: #dfe7fd !important;
        }
    </style>

    <style>
        input.transparent-input {
            background-color: transparent !important;
            border: none !important;
        }
    </style>
</head>

<body>
    <!-- <img src="<?php echo base_url() . 'assets/img/bg6.jpg' ?>" alt="gambar" class="bg" /> -->

    <!-- Navigation -->
    <?php
    $this->load->view('admin/menu');
    ?>

    <!-- Page Content -->
    <div class="container cust_container">

        <div class="row" style="height: 70px;">
            <!-- <div class="col-lg-6">
            </div> -->
            <div class="col-lg-12" style="background: #041C32; height: 90px; display:flex;">
                <!-- <div class="totalHarga"></div> -->
                <div class="nominalHarga">
                    Rp.
                    <span id="TBTop">
                        <?php echo $this->cart->total(); ?>
                    </span>
                </div>
            </div>
        </div>

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <center><?php echo $this->session->flashdata('msg'); ?></center>
                <h1 class="page-header">Transaksi
                    <small>Penjualan (Grosir)</small>

                    <a href="#" data-toggle="modal" id="cari_b" data-target="#largeModal" class="pull-right"><small style="font-weight:bold;">Cari Produk!</small></a>
                </h1>
            </div>
        </div>
        <!-- /.row -->
        <!-- Projects Row -->
        <div class="row">
            <div class="col-lg-12">
                <form action="<?php echo base_url() . 'admin/penjualan_grosir/add_to_cart_kode_barcode' ?>" method="post" autocomplete="off">
                    <table>
                        <tr>
                            <th style="width:100px;padding-bottom:5px;">Kasir</th>
                            <th style=""> : </th>
                            <th style="width:300px;padding-bottom:5px;">
                                <input type="text" name="nkasir" id="nkasir" value="<?= $this->session->userdata('nama') ?>" class="form-control transparent-input" style="width:200px;text-transform:uppercase;" required>
                            </th>
                        <tr>
                            <th>Jam</th>
                            <th> : </th>
                            <th>
                                <div class="jam"></div>
                            </th>
                        </tr>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <th>Kode Barang</th>
                        </tr>
                        <tr>
                            <!-- <th><input type="text" name="kode_brg" id="kode_brg" class="form-control input-sm"></th> -->
                            <th><input type="text" name="kode_barcode" id="kode_barcode" class="form-control input-sm" autocomplate="off"></th>
                        </tr>
                        <div id="detail_barang" style="position:absolute;">
                        </div>
                    </table>
                </form>
                <table class="table table-bordered table-condensed" style="font-size:20px;margin-top:10px;color:black;">
                    <thead>
                        <tr>
                            <th>Kode Barang</th>
                            <th>Nama Barang</th>
                            <th style="text-align:center;">Satuan</th>
                            <th style="text-align:center;">Harga(Rp)</th>
                            <th style="text-align:center;">Diskon(Rp)</th>
                            <th style="text-align:center;">Qty</th>
                            <th style="text-align:center;">Sub Total</th>
                            <th style="width:100px;text-align:center;">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $i = 1; ?>
                        <?php foreach ($this->cart->contents() as $items) : ?>
                            <?php echo form_hidden($i . '[rowid]', $items['rowid']); ?>
                            <tr>
                                <td><?= $items['id']; ?></td>
                                <td><?= $items['name']; ?></td>
                                <td style="text-align:center;"><?= $items['satuan']; ?></td>
                                <td style="text-align:right;"><?php echo number_format($items['amount']); ?></td>
                                <td style="text-align:right;"><?php echo number_format($items['disc']); ?></td>
                                <td style="text-align:center;"><?php echo number_format($items['qty']); ?></td>
                                <td style="text-align:right;"><?php echo number_format($items['subtotal']); ?></td>

                                <td style="text-align:center;"><a href="<?php echo base_url() . 'admin/penjualan_grosir/remove/' . $items['rowid']; ?>" class="btn btn-warning btn-xs"><span class="fa fa-close"></span> Batal</a></td>
                            </tr>

                            <?php $i++; ?>
                        <?php endforeach; ?>
                    </tbody>
                </table>
                <form action="<?php echo base_url() . 'admin/penjualan_grosir/simpan_penjualan_grosir' ?>" method="post">
                    <table>
                        <tr>
                            <td style="width:760px;" rowspan="2"></td>
                            <th style="width:140px;">Total Belanja(Rp)</th>
                            <th style="text-align:right;width:140px;"><input type="text" name="total2" value="<?php echo number_format($this->cart->total()); ?>" class="form-control input-sm" style="text-align:right;margin-bottom:5px;" readonly></th>
                            <input type="hidden" id="total" name="total" value="<?php echo $this->cart->total(); ?>" class="form-control input-sm" style="text-align:right;margin-bottom:5px;" readonly>
                        </tr>
                        <tr>
                            <th>Tunai(Rp)</th>
                            <th style="text-align:right;"><input type="text" id="jml_uang" name="jml_uang" class="jml_uang form-control input-sm" style="text-align:right;margin-bottom:5px;" required></th>
                            <input type="hidden" id="jml_uang2" name="jml_uang2" class="form-control input-sm" style="text-align:right;margin-bottom:5px;" required>
                        </tr>
                        <tr>
                            <td></td>
                            <th>Kembalian(Rp)</th>
                            <th style="text-align:right;"><input type="text" id="kembalian" name="kembalian" class="form-control input-sm" style="text-align:right;margin-bottom:5px;" required></th>
                        </tr>
                        <tr>
                            <td></td>
                            <th></th>
                            <th style="text-align:right;"><button type="submit" class="btn btn-info btn-lg" accesskey="b" id="save"> Simpan</button></th>
                        </tr>

                    </table>
                </form>
                <hr />
            </div>
            <!-- /.row -->


            <!-- keterangan -->
            <div class="row" style="height: 70px;">
                <!-- <div class="col-lg-6">
            </div> -->
                <div class="col-lg-12" style="background: #eef0f7; height: 90px; border-radius: 10px;">
                    Keterangan :
                    <br />
                    <div class="row">
                        <div class="col-sm-3">

                            <table>
                                <tr>
                                    <th style="width:100px;padding-bottom:5px;">ctrl+r</th>
                                    <th>:</th>
                                    <th style="width:300px;padding-bottom:5px;">Reload Data</th>
                                </tr>
                                <tr>
                                    <th>ctrl+d</th>
                                    <th>:</th>
                                    <th>Diskon</th>
                                </tr>
                                <tr>
                                    <th>alt+b</th>
                                    <th>:</th>
                                    <th>Bayar</th>
                                </tr>
                            </table>
                        </div>
                        <div class="col-sm-3">
                            <table>
                                <tr>
                                    <th style="width:30px;padding-bottom:5px;">F3</th>
                                    <th>:</th>
                                    <th>Masukan Uang</th>
                                </tr>
                                <tr>
                                    <th style="width:30px;padding-bottom:5px;">F1</th>
                                    <th>:</th>
                                    <th>Kode Barcode</th>
                                </tr>
                                <tr>
                                    <th style="width:30px;padding-bottom:5px;">F4</th>
                                    <th>:</th>
                                    <th>Cari Produk</th>
                                </tr>
                            </table>

                        </div>
                        <div class="col-sm-3">
                            <table>
                                <tr>
                                    <th style="width:20%;">F2</th>
                                    <th>:</th>
                                    <th style="width:100%">Jumlah</th>
                                </tr>
                                <tr>
                                    <th style="width:20px;">F11</th>
                                    <th>:</th>
                                    <th style="width:3px;">Full Screen</th>
                                </tr>
                                <tr>
                                    <th>F5</th>
                                    <th>:</th>
                                    <th>Scan barang</th>
                                </tr>
                            </table>

                        </div>
                    </div>

                </div>
            </div>



            <!-- keterangan -->



            <!-- ============ MODAL ADD =============== -->
            <div class="modal fade" id="largeModal" tabindex="-1" role="dialog" aria-labelledby="largeModal" aria-hidden="true">
                <div class="modal-dialog modal-lg" style="width:1250px;">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h3 class="modal-title" id="myModalLabel">Data Barang</h3>
                        </div>
                        <div class="modal-body" style="overflow:scroll;height:500px;">
                            <table class="table table-bordered table-condensed" style="font-size:11px;width:100%;" id="mydata">
                                <thead>
                                    <tr>
                                        <th style="text-align:center;width:40px;">No</th>
                                        <th style="width:120px;">Kode Barang</th>
                                        <th style="width:120px;">Kode Barcode</th>
                                        <th style="width:240px;">Nama Barang</th>
                                        <th>Satuan</th>
                                        <th style="width:100px;">Harga (Grosir)</th>
                                        <th>Stok</th>
                                        <th>Diskon</th>
                                        <th>jumlah</th>
                                        <th style="width:100px;text-align:center;">Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>

                                </tbody>
                            </table>

                        </div>

                        <div class="modal-footer">
                            <button class="btn" data-dismiss="modal" aria-hidden="true">Tutup</button>

                        </div>
                    </div>
                </div>
            </div>

            <!--END MODAL-->

            <hr>

            <!-- Footer -->
            <footer>
                <div class="row">
                    <div class="col-lg-12">
                        <p style="text-align:center;">Copyright &copy; <?php echo 'DL-Tech'; ?> 2020</p>
                    </div>
                </div>
                <!-- /.row -->
            </footer>

        </div>
        <!-- /.container -->

        <!-- jQuery -->
        <script src="<?php echo base_url() . 'assets/js/jquery.js' ?>"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="<?php echo base_url() . 'assets/dist/js/bootstrap-select.min.js' ?>"></script>
        <script src="<?php echo base_url() . 'assets/js/bootstrap.min.js' ?>"></script>
        <script src="<?php echo base_url() . 'assets/js/dataTables.bootstrap.min.js' ?>"></script>
        <script src="<?php echo base_url() . 'assets/js/jquery.dataTables.min.js' ?>"></script>
        <script src="<?php echo base_url() . 'assets/js/jquery.price_format.min.js' ?>"></script>
        <script src="<?php echo base_url() . 'assets/js/moment.js' ?>"></script>
        <script src="<?php echo base_url() . 'assets/js/bootstrap-datetimepicker.min.js' ?>"></script>
        <script type="text/javascript">
            function submitdata(kode_barang) {
                let qty = $('#qty' + kode_barang).val();
                let diskon = $('#diskon' + kode_barang).val();
                $.ajax({
                    type: "POST",
                    url: "<?php echo base_url() . 'admin/penjualan_grosir/add_to_cart2'; ?>",
                    data: {
                        'kode_barang': kode_barang,
                        'qty': qty,
                        'diskon': diskon
                    },
                    success: function(data) {
                        if (data == 1) {
                            location.reload();
                            console.log('data', data)

                        } else {
                            alert('data gagal ditambahkan')
                        }
                    }
                });
            }
            $(function() {
                $('#jml_uang').on("input", function() {
                    var total = $('#total').val();
                    var jumuang = $('#jml_uang').val();
                    var hsl = jumuang.replace(/[^\d]/g, "");
                    $('#jml_uang2').val(hsl);
                    $('#kembalian').val(hsl - total);
                })

            });
        </script>
        <script type="text/javascript">
            $(this).keydown(function(e) {

                if (e.keyCode == 114) {
                    e.preventDefault();
                    $('#jml_uang').focus();
                }

                if (e.altKey && e.keyCode == 66) {
                    e.preventDefault();
                    $('#save').click();
                }
                // if (e.altKey && e.keyCode == 78) {
                //     e.preventDefault();
                //     $('#save').click();
                // }

                if (e.keyCode == 113) {
                    e.preventDefault();
                    $('#qty').focus();
                }
                if (e.keyCode == 112) {
                    e.preventDefault();
                    $('#kode_barcode').focus();
                }
                if (e.ctrlKey && e.keyCode == 68) {
                    e.preventDefault();
                    $('#diskon').focus();
                }
                if (e.keyCode == 115) {
                    e.preventDefault();
                    $('#cari_b').click();
                }

                if (e.keyCode == 116) {
                    e.preventDefault();
                    $('#mydata_filter input').focus()
                }

                if (e.keyCode == 117) {
                    e.preventDefault();
                    $('#id="mydata" .qty').focus()
                    // $('#mydata_filter input').focus()
                }
            });
        </script>
        <script type="text/javascript">
            $(document).ready(function() {
                $("#mydata").DataTable({
                    ordering: false,
                    processing: true,
                    serverSide: true,
                    ajax: {
                        url: "<?php echo base_url() ?>admin/penjualan_grosir/ambil_data",
                        type: 'POST',
                    }

                });
                // $('#mydata').DataTable();
            });
        </script>
        <script type="text/javascript">
            $(function() {
                $('.jml_uang').priceFormat({
                    prefix: '',
                    //centsSeparator: '',
                    centsLimit: 0,
                    thousandsSeparator: ','
                });
                $('#jml_uang2').priceFormat({
                    prefix: '',
                    //centsSeparator: '',
                    centsLimit: 0,
                    thousandsSeparator: ','
                });
                $('#kembalian').priceFormat({
                    prefix: '',
                    //centsSeparator: '',
                    centsLimit: 0,
                    thousandsSeparator: ','
                });
                $('.harjul').priceFormat({
                    prefix: '',
                    //centsSeparator: '',
                    centsLimit: 0,
                    thousandsSeparator: ','
                });
                $('#TBTop').priceFormat({
                    prefix: '',
                    //centsSeparator: '',
                    centsLimit: 0,
                    thousandsSeparator: ','
                });
            });
        </script>
        <script type="text/javascript">
            $(document).ready(function() {
                //Ajax kabupaten/kota insert
                $("#kode_barcode").focus();
                $("#kode_barcode").on("input", function() {
                    var kobarcode = {
                        kode_barcode: $(this).val()
                    };
                    $.ajax({
                        type: "POST",
                        url: "<?php echo base_url() . 'admin/penjualan_grosir/get_barangBarcode'; ?>",
                        data: kobarcode,
                        success: function(msg) {
                            setTimeout(() => {
                                $('#detail_barang').html(msg);
                            }, 1000);
                        }
                    });
                });

                $("#kode_barcode").keypress(function(e) {
                    if (e.keyCode == 27) {
                        $("#jml_uang2").focus();
                    }
                });
            });
        </script>
        <script>
            const hotKeys = (e) => {
                let windowEvent = window.event ? event : e;

                if (windowEvent.keyCode === 66 && windowEvent.ctrlKey) {
                    const jml = document.querySelector('#jml_uang2');
                    jml.focus();
                }
            }
            document.onkeydowon = hotKeys;
        </script>
        <script type="text/javascript">
            function jam() {
                var time = new Date(),
                    hours = time.getHours(),
                    minutes = time.getMinutes(),
                    seconds = time.getSeconds();
                document.querySelectorAll('.jam')[0].innerHTML = harold(hours) + ":" + harold(minutes) + ":" + harold(seconds);

                function harold(standIn) {
                    if (standIn < 10) {
                        standIn = '0' + standIn
                    }
                    return standIn;
                }
            }
            setInterval(jam, 1000);
        </script>


</body>

</html>