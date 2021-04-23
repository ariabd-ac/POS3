<html lang="en" moznomarginboxes mozdisallowselectionprint>

<head>
    <title>Faktur Penjualan Barang</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="<?php echo base_url('assets/css/laporan.css') ?>" />
    <style>
    *{
        margin-top: 0;
    }
    td, th {
    padding: 4px;
}

    </style>
      <style>
        .jam {
        font-size: 1em;
        background-color: transparent;
        /* border: 2px solid #d35400; */
        border-radius: 5px;
        padding: 10px;
    }
</style>
</head>

<body onload="window.print()">
    <table style="border-collapse: collapse; width: 100%" border="0">
        <tr>
            <td align="center">
                <table style="border-collapse: collapse; width: 100%;" border="0">
                    <tr>
                        <!-- <td style=""> -->
                        <td style="text-align: center;">

                            <span style="font-size:  18pt;  font-weight:  bold;  color: red;">GV MULYA JAYA</span><br>
                            <span style="font-size: 17pt; font-weight: bold; font-style: italic;">
                                <small style="font-size: small;">
                                     Perempatan Psr Ketembreng TLP.0815 6939 118
                                </small>
                            </span>

                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <div id="laporan">
            <table align="center" style="width:320px; border-bottom:3px double;border-top:none;border-right:none;border-left:none;margin-top:5px;margin-bottom:20px;">
                <!--<tr>
    <td><img src="<?php// echo base_url().'assets/img/kop_surat.png'?>"/></td>
</tr>-->
            </table>

            <table border="0" align="center" style="width:700px; border:none;margin-top:5px;margin-bottom:0px;">
                <tr>

                </tr>

            </table>
            <?php
            $b = $data->row_array();
            ?>
            <table border="0" align="center" style="width:320px;border:none;left:100px;position:re;ative">
                <!-- <tr>
                    <th style="text-align:left;">Total</th>
                    <th style="text-align:left;">: <?php echo 'Rp ' . number_format($b['jual_total']) . ',-'; ?></th>
                </tr> -->
                <tr>
                    <th style="text-align:left;font-size: 15px;">Tanggal</th>
                    <th style="text-align:left;font-size: 15px;">: <?php echo $b['jual_tanggal']; ?></th>

                </tr>
                <tr>


                    <th style="text-align:left;font-size: 15px;">Kembalian</th>
                    <th style="text-align:left;font-size: 15px;">: <?php echo 'Rp ' . number_format($b['jual_kembalian']) . ',-'; ?></th>
                </tr>
                <tr>
                    <th style="text-align:left;font-size: 15px;">Tunai</th>
                    <th style="text-align:left;font-size: 15px;">: <?php echo 'Rp ' . number_format($b['jual_jml_uang']) . ',-'; ?></th>
                </tr>
            </table>
            <br />

            <table border="0" align="center" style="width:300px;margin-bottom:20px;">
                <thead>

                    <tr>
                        <th style="width:5px;font-size: 15px;">No</th>
                        <th style="width:5px;font-size: 15px;">Nama Barang</th>
                        <th style="width:5px;font-size: 15px;">Harga Jual</th>
                        <th style="width:5px;font-size: 15px;">Qty</th>
                        <th style="width:5px;font-size: 15px;">SubTotal</th>
                    </tr>
                    <tr>
                    <th><br></th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $no = 0;
                    foreach ($data->result_array() as $i) {
                        $no++;

                        $nabar = $i['d_jual_barang_nama'];


                        $harjul = $i['d_jual_barang_harjul'];
                        $qty = $i['d_jual_qty'];

                        $total = $i['d_jual_total'];
                    ?>
                        <tr>
                            <td style="text-align:center;font-size: 15px;"><?php echo $no; ?></td>
                            <td style="text-align:center;font-size: 15px;"><?php echo $nabar; ?></td>

                            <td style="text-align:right;font-size: 15px;"><?php echo '' . number_format($harjul); ?></td>
                            <td style="text-align:center;font-size: 15px;"><?php echo $qty; ?></td>

                            <td style="text-align:right;font-size: 15px;"><?php echo '' . number_format($total); ?></td>
                           
                        </tr>

                            <?php } ?>

             
                    

                </tbody>
                

                <tfoot align="right" style="margin-top: 10px;width:350px;">
                <tr>
                    <th><br></th>
                    </tr>

                    <tr>
                        <td colspan="4" style="text-align:center;font-size: 15px;">Total</td>
                        <!-- <td colspan="4" style="width:5px;font-size: 18px;"><b>Total</b></td> -->
                        <td colspan="4" style="text-align:center;font-size: 15px;"><?php echo 'Rp ' . number_format($b['jual_total']); ?></td>
                        <!-- <td style="width:5px;font-size: 18px;"><b><?php echo 'Rp ' . number_format($b['jual_total']); ?></b></td> -->
                    </tr>
                </tfoot>
                </table>
            <table align="center" style="border:none;margin-top:5px;margin-bottom:20px;">
                <tr>
                    <td>
                        <strong style="font-size: small;">*Selamat Datang Kembali</strong><br>
                        <strong style="font-size: small;">*Barang yang sudah dibeli tidak dapat ditukarkan
                            kembali</strong>
                    </td>
                </tr>
                <tr>
                    <td></td>
            </table>
            <table align="center" style="border:none;margin-top:5px;margin-bottom:20px;">
                <tr>
                    <!-- <td align="left" style="font-size: xx-small;">Tegal, <?php echo date('d-M-Y') ?></td> -->
                    <td align="left" style="font-size: small;">Terima kasih</td>
                </tr>
                <tr>
                    <td align="right"></td>
                </tr>

                <tr>
                    <!-- <td align="left" style="font-size: xx-small;">( <?php echo $this->session->userdata('nama'); ?> )</td> -->
                    <td align="left" style="font-size: small;text-align:center;">Kasir</td>
                </tr>
                <tr>
                    <th>
                        <br>
                    </th>
                </tr>
                <tr>
                    <th>
                        <br>
                    </th>
                </tr>
          
                    <td align="center"></td>
                </tr>
            </table>
            <table align="center" style="border:none;margin-top:5px;margin-bottom:20px;">
                <tr>
                    <!-- <td align="left" style="font-size: xx-small;">Tegal, <?php echo date('d-M-Y') ?></td> -->
                    <td align="left" style="font-size: small;">=============================================</td>
                </tr>
                <tr>
                    <td align="right"></td>
                </tr>

    
                    <td align="center"></td>
                </tr>
            </table>
            
            <table align="center" style="width:700px; border:none;margin-top:5px;margin-bottom:20px;">
            <tr>
                        <td align="left" style="font-size: small;text-align:center;"><div class="jam"></div></td>
                </tr>   
                    <br />  
                <tr>
                    <th align="left"></th>
                </tr>
            </table>
        </div>
</body>

</html>