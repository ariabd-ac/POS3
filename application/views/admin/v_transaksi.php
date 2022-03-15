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
        <h1 class="page-header">Data
          <small>Transaksi</small>
        </h1>
      </div>
    </div>
    <!-- /.row -->
    <!-- Projects Row -->
    <div class="row">
      <div class="col-lg-12">
        <table class="table table-bordered table-condensed" style="font-size:11px;" id="mydata">
          <thead>
            <tr>
              <!-- <th style="width:50px;">No</th> -->
              <th>No Faktur</th>
              <th>Tanggal</th>
              <th>Kode Barang</th>
              <th>Nama Barang</th>
              <th>Satuan</th>
              <th>Harga Jual</th>
              <th>Qty</th>
              <th>Diskon</th>
              <th>Harga</th>
              <th>Keterangan</th>
              <th>Edit</th>
              <th>Delete</th>
            </tr>
          </thead>
          <tbody>
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
              <tr>
                <!-- <td style="text-align:center;"><?php echo $no; ?></td> -->
                <td style="padding-left:5px;"><?php echo $nofak; ?></td>
                <td style="text-align:center;"><?php echo $tgl; ?></td>
                <td style="text-align:center;"><?php echo $barang_id; ?></td>
                <td style="text-align:left;"><?php echo $barang_nama; ?></td>
                <td style="text-align:left;"><?php echo $barang_satuan; ?></td>
                <td style="text-align:right;"><?php echo 'Rp ' . number_format($barang_harjul); ?></td>
                <td style="text-align:center;"><?php echo $barang_qty; ?></td>
                <td style="text-align:right;"><?php echo 'Rp ' . number_format($barang_diskon); ?></td>
                <td style="text-align:right;"><?php echo 'Rp ' . number_format($barang_total); ?></td>
                <td style="text-align:left;"><?php echo $barang_keterangan; ?></td>
                <td style="text-align:center;">
                  <a class="btn btn-xs btn-warning" id="editModal" href="<?php echo base_url() . 'admin/transaksi/get_data_by_nofak/' .  $nofak . '/' . $barang_id ?>" data-toggle="modal" title="Edit"><span class="fa fa-edit"></span> Edit</a>
                </td>
                <td style="text-align:center;">
                  <a class="btn btn-xs btn-danger" href="#modalHapusPelanggan<?php echo $nofak ?>" data-toggle="modal" title="Hapus"><span class="fa fa-close"></span> Hapus</a>
                </td>
              </tr>
            <?php } ?>
          </tbody>
        </table>
      </div>
    </div>
    <!-- /.row -->
    <!-- ============ MODAL ADD =============== -->
    <!-- <div class="modal fade" id="largeModal" tabindex="-1" role="dialog" aria-labelledby="largeModal" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">

          <form class="form-horizontal" method="post" action="<?php echo base_url() . 'admin/settings/tambah_settings' ?>">
            <div class="modal-body">

              <div class="form-group">
                <label class="control-label col-xs-3">Nama Department</label>
                <div class="col-xs-9">
                  <input name="nama" class="form-control" type="text" placeholder="Nama Department..." style="width:280px;" required>
                </div>
              </div>

              <div class="form-group">
                <label class="control-label col-xs-3">Alamat</label>
                <div class="col-xs-9">
                  <input name="alamat" class="form-control" type="text" placeholder="Alamat..." style="width:280px;" required>
                </div>
              </div>

              <div class="form-group">
                <label class="control-label col-xs-3">No Telp/ HP</label>
                <div class="col-xs-9">
                  <input name="notelp" class="form-control" type="text" placeholder="No Telp/HP..." style="width:280px;" required>
                </div>
              </div>
            </div>

            <div class="modal-footer">
              <button class="btn" data-dismiss="modal" aria-hidden="true">Tutup</button>
              <button class="btn btn-info">Simpan</button>
            </div>
          </form>
        </div>
      </div>
    </div> -->

    <!-- ============ MODAL EDIT =============== -->
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
      <div id="modalEditPelanggan<?php echo $nofak ?>" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="largeModal" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
              <h3 class="modal-title" id="myModalLabel">Edit Department</h3>
            </div>

            <form class="form-horizontal" method="post" action="<?php echo base_url() . 'admin/transaksi/update_transaksi' ?>">
              <div class="modal-body">
                <input name="kode" type="hidden" value="<?php echo $nofak; ?>">

                <div class="form-group">
                  <label class="control-label col-xs-3">Kode Barang</label>
                  <div class="col-xs-9">
                    <input name="kobar" class="form-control" type="text" placeholder="kobar" value="<?php echo $barang_id; ?>" style="width:280px;" required readonly>
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-xs-3">Nama Barang</label>
                  <div class="col-xs-9">
                    <input name="nama" class="form-control" type="text" placeholder="Nama Department..." value="<?php echo $barang_nama; ?>" style="width:280px;" required>
                  </div>
                </div>

                <div class="form-group">
                  <label class="control-label col-xs-3">QTY</label>
                  <div class="col-xs-9">
                    <input name="qty" class="form-control" type="number" placeholder="qty..." style="width:280px;" required>
                    <input name="qty2" class="form-control" type="hidden" placeholder="qty..." style="width:280px;" required>
                  </div>
                </div>


                <div class="form-group">
                  <label class="control-label col-xs-3">Harga Jual</label>
                  <div class="col-xs-9">
                    <input name="harjul" class="form-control" type="number" id="harjul" value="<?php echo $barang_harjul; ?>" style="width:280px;" required readonly>
                  </div>
                </div>

                <div class="form-group">
                  <label class="control-label col-xs-3">Total</label>
                  <div class="col-xs-9">
                    <input name="total" id='total' class="form-control total" type="number" style="width:280px;" value="<?= $barang_total; ?>" required>
                  </div>
                </div>

              </div>
              <div class="modal-footer">
                <button class="btn" data-dismiss="modal" aria-hidden="true">Tutup</button>
                <button type="submit" class="btn btn-info">Update</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    <?php
    }
    ?>

    <!-- ============ MODAL HAPUS =============== -->
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
    ?>
      <div id="modalHapusPelanggan<?php echo $nofak ?>" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="largeModal" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
              <h3 class="modal-title" id="myModalLabel">Hapus Department</h3>
            </div>
            <form class="form-horizontal" method="post" action="<?php echo base_url() . 'admin/transaksi/delete' ?>">
              <div class="modal-body">
                <p>Yakin mau menghapus data..?</p>
                <input name="kode" type="hidden" value="<?php echo $nofak; ?>">
              </div>
              <div class="modal-footer">
                <button class="btn" data-dismiss="modal" aria-hidden="true">Tutup</button>
                <button type="submit" class="btn btn-primary">Hapus</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    <?php
    }
    ?>

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




  <script type="text/javascript">
    $(function() {

      $('#qty').on("input", function() {
        var harjul = $('#harjul').val();
        var qty = $('#qty').val();
        var hsl = qty.replace(/[^\d]/g, "");
        console.log('harjul', harjul)
        console.log('qty', qty)
        console.log('hsl', hsl)

        $('#qty2').val(hsl);
        $('#total').val(hsl * harjul);
      })

      $('#editModal').click(function() {
        // alert($('#menu_value').val());
        var harjul = $('#harjul').val();
        var qty = $('#qty').val();
        var hsl = qty.replace(/[^\d]/g, "");
        console.log('harjul', harjul)
        console.log('qty', qty)
        console.log('hsl', hsl)

        $('#qty2').val(hsl);
        $('#total').val(hsl * harjul);
      });

    });
  </script>

  <script type="text/javascript">
    $(function() {
      $('#datetimepicker').datetimepicker({
        format: 'DD MMMM YYYY HH:mm',
      });

      $('#datepicker').datetimepicker({
        format: 'YYYY-MM-DD',
      });
      $('#datepicker2').datetimepicker({
        format: 'YYYY-MM-DD',
      });
      $('#datepicker3').datetimepicker({
        format: 'YYYY-MM-DD',
      });

      $('#timepicker').datetimepicker({
        format: 'HH:mm'
      });
    });
  </script>

  <script type="text/javascript">
    $(document).ready(function() {
      $('#mydata').DataTable({
        "pageLength": 50
      });
      $("table").rowspanizer({
        columns: [0, 11]
      });




    });
  </script>

</body>

</html>