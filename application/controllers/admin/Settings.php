<?php
class Settings extends CI_Controller
{
  function __construct()
  {
    parent::__construct();
    if ($this->session->userdata('masuk') != TRUE) {
      $url = base_url();
      redirect($url);
    };
    $this->load->model('m_settings');
  }


  function index()
  {
    if ($this->session->userdata('akses') == '1') {
      $data['data'] = $this->m_settings->tampil_settings();
      $this->load->view('admin/v_settings', $data);
    } else {
      echo "Halaman tidak ditemukan";
    }
  }


  function tambah_settings()
  {
    if ($this->session->userdata('akses') == '1') {
      $nama = $this->input->post('nama');
      $alamat = $this->input->post('alamat');
      $notelp = $this->input->post('notelp');

      $this->m_settings->simpan_settings($nama, $alamat, $notelp);
      redirect('admin/settings');
    } else {
      echo "Halaman tidak ditemukan";
    }
  }
  function edit_settings()
  {
    if ($this->session->userdata('akses') == '1') {
      $kode = $this->input->post('kode');
      $nama = $this->input->post('nama');
      $alamat = $this->input->post('alamat');
      $notelp = $this->input->post('notelp');
      $this->m_settings->update_settings($kode, $nama, $alamat, $notelp);
      redirect('admin/settings');
    } else {
      echo "Halaman tidak ditemukan";
    }
  }
  function hapus_settings()
  {
    if ($this->session->userdata('akses') == '1') {
      $kode = $this->input->post('kode');
      $this->m_settings->hapus_settings($kode);
      redirect('admin/settings');
    } else {
      echo "Halaman tidak ditemukan";
    }
  }
}
