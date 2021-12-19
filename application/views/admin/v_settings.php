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
          <small>Settings</small>
          <div class="pull-right"><a href="#" class="btn btn-sm btn-success" data-toggle="modal" data-target="#largeModal"><span class="fa fa-plus"></span> Tambah Department</a></div>
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
              <th style="text-align:center;width:40px;">No</th>
              <th>Nama Department</th>
              <th>Alamat</th>
              <th>No Telp/HP</th>
              <th style="width:140px;text-align:center;">Aksi</th>
            </tr>
          </thead>
          <tbody>
            <?php
            $no = 0;
            foreach ($data->result_array() as $a) :
              $no++;
              $id = $a['dep_id'];
              $nm = $a['dep_name'];
              $alamat = $a['dep_address'];
              $notelp = $a['dep_phone'];

            ?>
              <tr>
                <td style="text-align:center;"><?php echo $no; ?></td>
                <td><?php echo $nm; ?></td>
                <td><?php echo $alamat; ?></td>
                <td><?php echo $notelp; ?></td>

                <td style="text-align:center;">
                  <a class="btn btn-xs btn-warning" href="#modalEditPelanggan<?php echo $id ?>" data-toggle="modal" title="Edit"><span class="fa fa-edit"></span> Edit</a>
                  <a class="btn btn-xs btn-danger" href="#modalHapusPelanggan<?php echo $id ?>" data-toggle="modal" title="Hapus"><span class="fa fa-close"></span> Hapus</a>
                </td>
              </tr>
            <?php endforeach; ?>
          </tbody>
        </table>
      </div>
    </div>
    <!-- /.row -->
    <!-- ============ MODAL ADD =============== -->
    <div class="modal fade" id="largeModal" tabindex="-1" role="dialog" aria-labelledby="largeModal" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 class="modal-title" id="myModalLabel">Tambah Department</h3>
          </div>
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
    </div>

    <!-- ============ MODAL EDIT =============== -->
    <?php
    foreach ($data->result_array() as $a) {
      $id = $a['dep_id'];
      $nm = $a['dep_name'];
      $alamat = $a['dep_address'];
      $notelp = $a['dep_phone'];
    ?>
      <div id="modalEditPelanggan<?php echo $id ?>" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="largeModal" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
              <h3 class="modal-title" id="myModalLabel">Edit Department</h3>
            </div>

            <form class="form-horizontal" method="post" action="<?php echo base_url() . 'admin/settings/edit_settings' ?>">
              <div class="modal-body">
                <input name="kode" type="hidden" value="<?php echo $id; ?>">

                <div class="form-group">
                  <label class="control-label col-xs-3">Nama Department</label>
                  <div class="col-xs-9">
                    <input name="nama" class="form-control" type="text" placeholder="Nama Department..." value="<?php echo $nm; ?>" style="width:280px;" required>
                  </div>
                </div>

                <div class="form-group">
                  <label class="control-label col-xs-3">Alamat</label>
                  <div class="col-xs-9">
                    <input name="alamat" class="form-control" type="text" placeholder="Alamat..." value="<?php echo $alamat; ?>" style="width:280px;" required>
                  </div>
                </div>

                <div class="form-group">
                  <label class="control-label col-xs-3">No Telp/ HP</label>
                  <div class="col-xs-9">
                    <input name="notelp" class="form-control" type="text" placeholder="No Telp/HP..." value="<?php echo $notelp; ?>" style="width:280px;" required>
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
    foreach ($data->result_array() as $a) {
      $id = $a['dep_id'];
      $nm = $a['dep_name'];
      $alamat = $a['dep_address'];
      $notelp = $a['dep_phone'];
    ?>
      <div id="modalHapusPelanggan<?php echo $id ?>" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="largeModal" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
              <h3 class="modal-title" id="myModalLabel">Hapus Department</h3>
            </div>
            <form class="form-horizontal" method="post" action="<?php echo base_url() . 'admin/settings/hapus_settings' ?>">
              <div class="modal-body">
                <p>Yakin mau menghapus data..?</p>
                <input name="kode" type="hidden" value="<?php echo $id; ?>">
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
  <script src="<?php echo base_url() . 'assets/js/moment.js' ?>"></script>
  <script src="<?php echo base_url() . 'assets/js/bootstrap-datetimepicker.min.js' ?>"></script>
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
      $('#mydata').DataTable();
    });
  </script>

</body>

</html>