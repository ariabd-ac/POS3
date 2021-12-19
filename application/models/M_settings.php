<?php
class M_settings extends CI_Model
{

  function hapus_settings($kode)
  {
    $hsl = $this->db->query("DELETE FROM tbl_departmnet where dep_id='$kode'");
    return $hsl;
  }

  function update_settings($kode, $nama, $alamat, $notelp)
  {
    $hsl = $this->db->query("UPDATE tbl_departmnet 
																							set 
																							dep_name='$nama',
																							dep_address='$alamat',
																							dep_phone='$notelp'
																							where dep_id='$kode'");
    return $hsl;
  }

  function tampil_settings()
  {
    $hsl = $this->db->query("select * from tbl_departmnet order by 	dep_id desc");
    return $hsl;
  }

  function simpan_settings($nama, $alamat, $notelp)
  {
    $hsl = $this->db->query("INSERT INTO tbl_departmnet(dep_name,dep_address,dep_phone) VALUES ('$nama','$alamat','$notelp')");
    return $hsl;
  }
}
