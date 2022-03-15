<?php
class M_transaksi extends CI_Model
{
  function get_data_penjualan()
  {
    $hsl = $this->db->query("SELECT jual_nofak,DATE_FORMAT(jual_tanggal,'%d %M %Y') AS jual_tanggal,jual_total,d_jual_barang_id,d_jual_barang_nama,d_jual_barang_satuan,d_jual_barang_harpok,d_jual_barang_harjul,d_jual_qty,d_jual_diskon,d_jual_total, jual_keterangan,soft_delete FROM tbl_jual JOIN tbl_detail_jual ON jual_nofak=d_jual_nofak WHERE soft_delete = 0 ORDER BY jual_tanggal  DESC");
    return $hsl;
  }

  function get_total_penjualan()
  {
    $hsl = $this->db->query("SELECT jual_nofak,DATE_FORMAT(jual_tanggal,'%d %M %Y') AS jual_tanggal,jual_total,d_jual_barang_id,d_jual_barang_nama,d_jual_barang_satuan,d_jual_barang_harpok,d_jual_barang_harjul,d_jual_qty,d_jual_diskon,sum(d_jual_total) as total FROM tbl_jual JOIN tbl_detail_jual ON jual_nofak=d_jual_nofak ORDER BY jual_nofak DESC");
    return $hsl;
  }


  function soft_delete($kode)
  {
    $hsl = $this->db->query("UPDATE tbl_jual SET soft_delete = 1 WHERE jual_nofak = '$kode'");
    return $hsl;
  }

  function update_transaksi($kode, $kobar, $qty, $total)
  {
    $hsl = $this->db->query("UPDATE tbl_detail_jual SET d_jual_qty = '$qty', d_jual_total = '$total' WHERE d_jual_nofak = '$kode' AND d_jual_barang_id = '$kobar'");
    return $hsl;
  }

  function get_data_penjualan_by_id($no_fak, $kobar)
  {
    $hsl = $this->db->query("SELECT jual_nofak,DATE_FORMAT(jual_tanggal,'%d %M %Y') AS jual_tanggal,jual_total,d_jual_barang_id,d_jual_barang_nama,d_jual_barang_satuan,d_jual_barang_harpok,d_jual_barang_harjul,d_jual_qty,d_jual_diskon,d_jual_total, jual_keterangan,soft_delete FROM tbl_jual JOIN tbl_detail_jual ON jual_nofak=d_jual_nofak WHERE soft_delete = 0 AND jual_nofak = '$no_fak' AND d_jual_barang_id = '$kobar'");
    return $hsl;
  }
}
