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
        <h1 class="page-header">Update
          <small>Transaksi</small>
        </h1>
      </div>
    </div>
    <!-- /.row -->
    <!-- Projects Row -->

    <!-- /.row -->
    <div class="row">
      <div class="col-lg-12">
        <?php
        $no = 0;
        foreach ($data->result_array() as $i) {
          $no++;
          $nofak = $i['jual_nofak'];
          $tgl = $i['jual_tanggal'];
          $barang_id = $i['d_jual_barang_id'];
          $barang_nama = $i['d_jual_barang_nama'];
          $barang_satuan = $i['d_jual_barang_satuan'];
          $barang_harjul = $i['d_jual_barang_harjul'];
          $barang_qty = $i['d_jual_qty'];
          $barang_diskon = $i['d_jual_diskon'];
          $barang_total = $i['d_jual_total'];
          $barang_keterangan = $i['jual_keterangan'];

        ?>
          <form class="form-horizontal" method="post" action="<?php echo base_url() . 'admin/transaksi/update_transaksi/' .  $nofak . '/' . $barang_id ?>">
            <div class="modal-body">

              <div class="form-group">
                <label class="control-label col-xs-3">Faktur</label>
                <div class="col-xs-9">
                  <input name="nofak" class="form-control" type="text" style="width:335px;" value="<?= $nofak ?>" required readonly>
                </div>
              </div>

              <div class="form-group">
                <label class="control-label col-xs-3">Kode Barang</label>
                <div class="col-xs-9">
                  <input name="kobar" class="form-control" type="text" style="width:335px;" value="<?= $barang_id ?>" required readonly </div>
                </div>
              </div>

              <div class="form-group">
                <label class="control-label col-xs-3">Nama Barang</label>
                <div class="col-xs-9">
                  <input name="nabar" class="form-control" type="text" placeholder="Nama Barang..." style="width:335px;" value="<?= $barang_nama ?>" required readonly>
                </div>
              </div>


              <div class="form-group">
                <label class="control-label col-xs-3">Qty</label>
                <div class="col-xs-9">
                  <input name="qty" class="form-control" id="qty" type="text" style="width:335px;" value="<?= $barang_qty ?>">
                  <input type="hidden" id="qty2" name="qty2" class="form-control input-sm" style="text-align:right;margin-bottom:5px;" required>
                </div>
              </div>


              <div class="form-group">
                <label class="control-label col-xs-3">Harga Jual</label>
                <div class="col-xs-9">
                  <input name="harjul" id="harjul" class="form-control" type="text" style="width:335px;" value="<?= $barang_harjul ?>" readonly>
                </div>
              </div>

              <div class="form-group">
                <label class="control-label col-xs-3">Total</label>
                <div class="col-xs-9">
                  <input name="total" id="total" class="form-control" type="text" style="width:335px;" value="<?= $barang_total ?>" readonly>
                  <input name="total2" id="total2" class="form-control" type="hidden" style="width:335px;" readonly>
                </div>
              </div>

            </div>

            <div class="modal-footer">
              <button class="btn" data-dismiss="modal" aria-hidden="true">Tutup</button>
              <button class="btn btn-info" type="submit">Update</button>
            </div>
          </form>
        <?php } ?>
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
  <script src="<?php echo base_url() . 'assets/js/bootstrap.min.js' ?>"></script>
  <script src="<?php echo base_url() . 'assets/js/dataTables.bootstrap.min.js' ?>"></script>
  <script src="<?php echo base_url() . 'assets/js/jquery.dataTables.min.js' ?>"></script>





  <!--  -->
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


  <!-- rowSpanzer -->
  <script src="<?php echo base_url() . 'assets/js/jquery.rowspanizer.js' ?>"></script>

  <!-- format angka -->

  <!-- <script type="text/javascript">
    $(function() {
      $('#harjul').priceFormat({
        prefix: '',
        //centsSeparator: '',
        centsLimit: 0,
        thousandsSeparator: ','
      });
    });
  </script>
  <script type="text/javascript">
    $(function() {
      $('#total').priceFormat({
        prefix: '',
        //centsSeparator: '',
        centsLimit: 0,
        thousandsSeparator: ','
      });
    });
  </script> -->
  <script type="text/javascript">
    $(function() {
      $('#qty').on("input", function() {
        var harjul = $('#harjul').val();
        var qty = $('#qty').val();
        var hsl = harjul.replace(/[^\d]/g, "");
        let multiplication = qty * hsl
        $('#qty2').val(qty);
        $('#total').val(multiplication);
        $('#total2').val(multiplication);
        console.log('qty', qty)
        console.log('harjul', harjul)
        console.log('hsl', hsl)
      })

    });
  </script>

  <!-- format -->




</body>

</html>