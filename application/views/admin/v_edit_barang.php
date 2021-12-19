<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


  <title>Management data barang</title>

  <!-- Bootstrap Core CSS -->
  <link href="<?php echo base_url() . 'assets/css/bootstrap.min.css' ?>" rel="stylesheet">
  <link href="<?php echo base_url() . 'assets/css/style.css' ?>" rel="stylesheet">
  <link href="<?php echo base_url() . 'assets/css/font-awesome.css' ?>" rel="stylesheet">
  <!-- Custom CSS -->
  <link href="<?php echo base_url() . 'assets/css/4-col-portfolio.css' ?>" rel="stylesheet">
  <link href="<?php echo base_url() . 'assets/css/dataTables.bootstrap.min.css' ?>" rel="stylesheet">
  <link href="<?php echo base_url() . 'assets/css/jquery.dataTables.min.css' ?>" rel="stylesheet">
  <link href="<?php echo base_url() . 'assets/dist/css/bootstrap-select.css' ?>" rel="stylesheet">
</head>

<body>


  <!-- Navigation -->
  <?php
  $this->load->view('admin/menu');
  ?>

  <!-- Page Content -->
  <div class="container">

    <div class="row">
      <div class="col-lg-12">
        <?php foreach ($detail_barang as $brng) { ?>
          <form class="form-horizontal" method="post" action="<?php echo base_url() . 'admin/barang/update_barang/' . $brng->barang_id ?>">
            <div class="modal-body">

              <!--<div class="form-group">
                        <label class="control-label col-xs-3" >Kode Barang</label>
                        <div class="col-xs-9">
                            <input name="kobar" class="form-control" type="text" placeholder="Kode Barang..." style="width:335px;" required>
                        </div>
                    </div>-->

              <div class="form-group">
                <label class="control-label col-xs-3">Kode Barcode</label>
                <div class="col-xs-9">
                  <input name="kode_barang" class="form-control" type="hidden" placeholder="Kode Barcode..." style="width:335px;" value="<?php echo $brng->barang_id ?>" disabled>

                  <input name="kode_barcode" class="form-control" type="text" placeholder="Kode Barcode..." style="width:335px;" value="<?php echo $brng->barang_kbarcode ?>">
                </div>
              </div>

              <div class="form-group">
                <label class="control-label col-xs-3">Nama Barang</label>
                <div class="col-xs-9">
                  <input name="nabar" class="form-control" type="text" placeholder="Nama Barang..." style="width:335px;" value="<?php echo $brng->barang_nama ?>" required>
                </div>
              </div>

              <div class="form-group">
                <label class="control-label col-xs-3">Kategori</label>
                <div class="col-xs-9">
                  <select id="kategori" name="kategori" class="selectpicker show-tick form-control" data-live-search="true" title="Pilih Kategori" data-width="80%" placeholder="Pilih Kategori" required>
                    <?php foreach ($kat2->result_array() as $k2) {
                      $id_kat = $k2['kategori_id'];
                      $nm_kat = $k2['kategori_nama'];
                    ?>
                      <option value="<?php echo $id_kat; ?>"><?php echo $nm_kat; ?></option>
                    <?php } ?>

                  </select>
                </div>
              </div>

              <div class="form-group">
                <label class="control-label col-xs-3">Satuan</label>
                <div class="col-xs-9">
                  <select id="satuan" name="satuan" class="selectpicker show-tick form-control" data-live-search="true" title="Pilih Satuan" data-width="80%" placeholder="Pilih Satuan" required>
                    <option>Unit</option>
                    <option>Kotak</option>
                    <option>Botol</option>
                    <option>Butir</option>
                    <option>Buah</option>
                    <option>Biji</option>
                    <option>Sachet</option>
                    <option>Bks</option>
                    <option>Roll</option>
                    <option>PCS</option>
                    <option>Box</option>
                    <option>Meter</option>
                    <option>Centimeter</option>
                    <option>Liter</option>
                    <option>CC</option>
                    <option>Mililiter</option>
                    <option>Lusin</option>
                    <option>Gross</option>
                    <option>Kodi</option>
                    <option>Rim</option>
                    <option>Dozen</option>
                    <option>Kaleng</option>
                    <option>Lembar</option>
                    <option>Helai</option>
                    <option>Gram</option>
                    <option>Kilogram</option>
                  </select>
                </div>
              </div>

              <div class="form-group">
                <label class="control-label col-xs-3">Harga Pokok</label>
                <div class="col-xs-9">
                  <input name="harpok" class="harpok form-control" type="text" placeholder="Harga Pokok..." style="width:335px;" value="<?php echo $brng->barang_harpok ?>">
                </div>
              </div>

              <div class="form-group">
                <label class="control-label col-xs-3">Harga (Eceran)</label>
                <div class="col-xs-9">
                  <input name="harjul" class="harjul form-control" type="text" placeholder="Harga Jual Eceran..." style="width:335px;" value="<?php echo $brng->barang_harjul ?>">
                </div>
              </div>

              <div class="form-group">
                <label class="control-label col-xs-3">Harga (Grosir)</label>
                <div class="col-xs-9">
                  <input name="harjul_grosir" class="harjul form-control" type="text" placeholder="Harga Jual Grosir..." style="width:335px;" value="<?php echo $brng->barang_harjul_grosir ?>">
                </div>
              </div>

              <div class="form-group">
                <label class="control-label col-xs-3">Stok</label>
                <div class="col-xs-9">
                  <input name="stok" class="form-control" type="number" placeholder="Stok..." style="width:335px;" value="<?php echo $brng->barang_stok ?>">
                </div>
              </div>

              <div class="form-group">
                <label class="control-label col-xs-3">Minimal Stok</label>
                <div class="col-xs-9">
                  <input name="min_stok" class="form-control" type="number" placeholder="Minimal Stok..." style="width:335px;" value="<?php echo $brng->barang_min_stok ?>">
                </div>
              </div>


            </div>

            <div class="modal-footer">
              <button class="btn" data-dismiss="modal" aria-hidden="true">Tutup</button>
              <button class="btn btn-info" type="submit">Update</button>
            </div>
          </form>
      </div>
    </div>

    <hr>

    <!-- Footer -->
    <footer>
      <div class="row">
        <div class="col-lg-12">
          <p style="text-align:center;">Copyright &copy; <?php echo 'DL-Tech'; ?>2020</p>
        </div>
      </div>
      <!-- /.row -->
    </footer>

  </div>
  <!-- /.container -->

  <!-- jQuery -->


  <script type="text/javascript">
    $(document).ready(function() {

      let kategori_barang = '<?php echo $brng->barang_kategori_id ?>';
      $('#kategori option').each(function() {
        if ($(this).val() == kategori_barang) {
          $(this).attr('selected', true);
        }
      });

      let kategori_satuan = '<?php echo $brng->barang_satuan ?>';
      $('#satuan option').each(function() {
        if ($(this).val() == kategori_satuan) {
          $(this).attr('selected', true);
        }
      });

      $("#mydata").DataTable({
        ordering: false,
        processing: true,
        serverSide: true,
        ajax: {
          url: "<?php echo base_url() ?>admin/barang/ambil_data",
          type: 'POST',
        },
      });
    });
  </script>
  <script type="text/javascript">
    $(function() {
      $('.harpok').priceFormat({
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

</body>
<?php } ?>

</html>