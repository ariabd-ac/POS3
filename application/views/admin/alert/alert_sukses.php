<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Produk  ">
    <meta name="author" content="">

    <title>Transaksi Penjualan</title>

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
</head>

<body>

    <!-- Navigation -->
    <?php
    $this->load->view('admin/menu');
    ?>

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <div class="alert alert-success">
                    <strong>Transaksi Berhasil Silahkan Cetak Faktur Penjualan!</strong>
                    <a class="btn btn-default" accesskey="o" id="back" href="<?php echo base_url() . 'admin/penjualan' ?>"><span class="fa fa-backward"></span>Kembali</a>
                    <a class="btn btn-info" accesskey="p" id="print" href="<?php echo base_url() . 'admin/penjualan/cetak_faktur' ?>" target="_blank"><span class="fa fa-print"></span>Cetak</a>
                </div>
            </div>
        </div>
        <!-- /.row -->
        <!-- Projects Row -->



        <!--END MODAL-->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p style="text-align:center;">Copyright &copy; <?php echo date('Y'); ?> </p>
                </div>
            </div>
            <!-- /.row -->
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="<?php echo base_url() . 'assets/js/jquery.js' ?>"></script>

    <script type="text/javascript">
        $(this).keydown(function(e) {



            if (e.keyCode == 114) {
                e.preventDefault();
                $('#jml_uang').focus();
            }

            if (e.altKey && e.keyCode == 80) {
                e.preventDefault();
                $('#print').click();
                window.location.replace("<?php echo base_url() . 'admin/penjualan' ?>");
            }
            if (e.altKey && e.keyCode == 79) {
                e.preventDefault();
                $('#back').click();
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
        });
    </script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo base_url() . 'assets/dist/js/bootstrap-select.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/js/bootstrap.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/js/dataTables.bootstrap.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/js/jquery.dataTables.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/js/jquery.price_format.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/js/moment.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/js/bootstrap-datetimepicker.min.js' ?>"></script>



</body>

</html>