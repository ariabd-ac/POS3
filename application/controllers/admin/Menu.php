<?php
class Menu extends CI_Controller
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
      $data['settings'] = $this->m_settings->tampil_settings();
      $this->load->view('admin/menu', $data);
    } else {
      echo "Halaman tidak ditemukan";
    }
  }
}
