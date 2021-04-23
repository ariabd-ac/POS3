<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Produk By Ari">
    <meta name="author" content="">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <title>Transaksi Penjualan</title>

    <!-- Bootstrap Core CSS -->
    <link href="<?php echo base_url() . 'assets/css/bootstrap.min.css' ?>" rel="stylesheet">
    <link href="<?php echo base_url() . 'assets/css/style.css' ?>" rel="stylesheet">
    <link href="<?php echo base_url() . 'assets/css/customize.css' ?>" rel="stylesheet">
    <link href="<?php echo base_url() . 'assets/css/font-awesome.css' ?>" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<?php echo base_url() . 'assets/css/4-col-portfolio.css' ?>" rel="stylesheet">
    <link href="<?php echo base_url() . 'assets/css/dataTables.bootstrap.min.css' ?>" rel="stylesheet">
    <link href="<?php echo base_url() . 'assets/css/jquery.dataTables.min.css' ?>" rel="stylesheet">
    <link href="<?php echo base_url() . 'assets/dist/css/bootstrap-select.css' ?>" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'assets/css/bootstrap-datetimepicker.min.css' ?>">
    <style type="text/css">
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
    </style>
    <style>
        input.transparent-input {
            background-color: transparent !important;
            border: none !important;
        }
    </style>
</head>

<body>
    <img src="<?php echo base_url() . 'assets/img/bg6.jpg' ?>" alt="gambar" class="bg" />

    <!-- Navigation -->
    <?php
    $this->load->view('admin/menu');
    ?>

    <!-- Page Content -->
    <div class="container cust_container">


        <div class="row" style="height: 70px;">
            <div class="col-lg-6">

            </div>
            <div class="col-lg-6" style="background: #f2f2f2f2; height: 90px; border-radius: 10px;">

                Keterangan :
                <br />
                <div class="row">
                    <div class="col-sm-4">

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
                    <div class="col-sm-4">
                        <table>
                            <tr>
                                <th style="width:30px;padding-bottom:5px;">F3</th>
                                <th>:</th>
                                <th>Tunai</th>
                            </tr>
                            <tr>
                                <th style="width:30px;padding-bottom:5px;">K</th>
                                <th>:</th>
                                <th>Kode Barcode</th>
                            </tr>
                        </table>

                    </div>
                    <div class="col-sm-4">
                        <table>
                            <tr>
                                <th style="width:30px;padding-bottom:5px;">J</th>
                                <th>:</th>
                                <th style="width:3px;">Jumlah</th>
                            </tr>
                            <tr>
                                <th>F11</th>
                                <th>:</th>
                                <th>Full Screen</th>
                            </tr>
                        </table>

                    </div>
                </div>

            </div>
        </div>


        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">

                <center><?php echo $this->session->flashdata('msg'); ?></center>
                <h1 class="page-header">Transaksi
                    <small style="font-weight:bold;">Penjualan (Eceran)</small>
                    <a href="#" data-toggle="modal" data-target="#largeModal" code="2" id="cari_b" accesskey="f" class="pull-right"><small style="font-weight:bold;">Cari Produk!</small></a>
                </h1>


            </div>
        </div>
        <!-- /.row -->
        <!-- Projects Row -->
        <div class="row">
            <div class="col-lg-12">

                <form action="<?php echo base_url() . 'admin/penjualan/add_to_cart_kode_barcode' ?>" method="post">
                    <table>
                        <tr>
                            <th style="width:100px;padding-bottom:5px;">Kasir</th>
                            <th style=""> : </th>
                            <th style="width:300px;padding-bottom:5px;">
                                <input type="text" name="nkasir" id="nkasir" value="Gading" class="form-control transparent-input" style="width:200px;" required>
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
                            <th>Kode Barcode</th>
                        </tr>
                        <tr>
                            <!-- <th><input type="text" name="kode_brg" id="kode_brg" class="form-control input-sm"></th> -->
                            <th><input type="text" name="kode_barcode" id="kode_barcode" class="form-control input-sm" autocomplete="off"></th>
                            <th><input type="hidden" name="" id="" class="form-control input-sm"></th>
                        </tr>
                        <div id="detail_barang" style="position:absolute;">
                        </div>
                    </table>
                </form>
                <table class="table table-bordered table-condensed" style="font-size:20px;margin-top:10px;font-color:black;">
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

                                <td style="text-align:center;"><a href="<?php echo base_url() . 'admin/penjualan/remove/' . $items['rowid']; ?>" class="btn btn-warning btn-xs"><span class="fa fa-close"></span> Batal</a></td>
                            </tr>

                            <?php $i++; ?>
                        <?php endforeach; ?>
                    </tbody>
                </table>
                <form action="<?php echo base_url() . 'admin/penjualan/simpan_penjualan' ?>" method="post">
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
                        <br>
                        <tr>
                            <td></td>
                            <th></th>
                            <th style="text-align:right;"><button type="submit" accesskey="b" class="btn btn-info btn-lg" id="save">Simpan</button></th>
                        </tr>

                    </table>
                </form>
                <hr />





            </div>


            <!-- /.row -->
            <!-- ============ MODAL ADD =============== -->
            <div class="modal fade" id="largeModal" tabindex="-1" role="dialog" aria-labelledby="largeModal" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h3 class="modal-title" id="myModalLabel">Data Barang</h3>
                        </div>
                        <div class="modal-body" style="overflow:scroll;height:500px;">
                            <table class="table table-bordered table-condensed" style="font-size:11px;" id="mydata">
                                <thead>
                                    <tr>
                                        <th style="text-align:center;width:40px;">No</th>
                                        <th style="width:120px;">Kode Barang</th>
                                        <th style="width:120px;">Kode Barcode</th>
                                        <th style="width:240px;">Nama Barang</th>
                                        <th>Satuan</th>
                                        <th style="width:100px;">Harga (Eceran)</th>
                                        <th>Stok</th>
                                        <th>Diskon</th>
                                        <th>jumlah</th>
                                        <th style="width:100px;text-align:center;">Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>

                            </table>


                        </div>

                        <div class="modal-footer">
                            <button class="btn" data-dismiss="modal" aria-hidden="true">Tutup</button>

                        </div>
                    </div>
                </div>
            </div>



            <!-- ============ MODAL HAPUS =============== -->


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
    <script src="<?php echo base_url() . 'assets/js/jquery.shortcuts.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/js/jquery.shortcuts.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/js/moment.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/js/bootstrap-datetimepicker.min.js' ?>"></script>
    <script type="text/javascript">
        function submitdata(kode_barang) {
            let qty = $('#qty' + kode_barang).val();
            let diskon = $('#diskon' + kode_barang).val();
            $.ajax({
                type: "POST",
                url: "<?php echo base_url() . 'admin/penjualan/add_to_cart2'; ?>",
                data: {
                    'kode_barang': kode_barang,
                    'qty': qty,
                    'diskon': diskon
                },
                success: function(data) {
                    if (data == 1) {
                        location.reload();

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

            if (e.keyCode == 74) {
                e.preventDefault();
                $('#qty').focus();
            }
            if (e.keyCode == 75) {
                e.preventDefault();
                $('#kode_barcode').focus();
            }
            if (e.ctrlKey && e.keyCode == 68) {
                e.preventDefault();
                $('#diskon').focus();
            }
            if (e.ctrlKey && e.keyCode == 70) {
                e.preventDefault();
                $('#cari_b').click();
            }

            if (e.ctrlKey && e.keyCode == 67) {
                e.preventDefault();
                $('#mydata_filter input').focus()
            }
        });

        // $(this).keypress(function(e) {
        //     $('[code=' + String.fromCharCode(e.keyCode - 48) + ']').click();
        // });
    </script>
    <script src="text/javascript">
        $('#largeModal').on('shown.bs.modal', function() {
            e.preventDefault();
            $('#mydata_filter input').focus()
        })
    </script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#mydata").DataTable({
                ordering: false,
                processing: true,
                serverSide: true,
                ajax: {
                    url: "<?php echo base_url() ?>admin/penjualan/ambil_data",
                    type: 'POST',
                }

            });
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
                thousandsSeparator: ''
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
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function() {
            //Ajax kabupaten/kota insert
            $("#kode_brg").focus();
            $("#kode_brg").on("input", function() {
                var kobar = {
                    kode_brg: $(this).val()
                };
                $.ajax({
                    type: "POST",
                    url: "<?php echo base_url() . 'admin/penjualan/get_barang'; ?>",
                    data: kobar,
                    success: function(msg) {
                        $('#detail_barang').html(msg);
                    }
                });
            });

            $("#kode_brg").keypress(function(e) {
                if (e.which == 13) {
                    $("#jumlah").focus();
                }
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
                    url: "<?php echo base_url() . 'admin/penjualan/get_barangBarcode'; ?>",
                    data: kobarcode,
                    success: function(msg) {
                        $('#detail_barang').html(msg);
                    }
                });
            });

            $("#kode_barcode").keypress(function(e) {
                if (e.which == 13) {
                    $("#jumlah").focus();
                }
            });
        });
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