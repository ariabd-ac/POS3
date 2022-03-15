<?php
class Transaksi extends CI_Controller
{
  function __construct()
  {
    parent::__construct();
    if ($this->session->userdata('masuk') != TRUE) {
      $url = base_url();
      redirect($url);
    };
    $this->load->model('m_kategori');
    $this->load->model('m_barang');
    $this->load->model('m_suplier');
    $this->load->model('m_pembelian');
    $this->load->model('m_penjualan');
    $this->load->model('m_laporan');
    $this->load->model('m_transaksi');
  }


  function index()
  {

    $x['data'] = $this->m_transaksi->get_data_penjualan();
    $this->load->view('admin/v_transaksi', $x);
  }

  function delete()
  {
    if ($this->session->userdata('akses') == '1') {
      $kode = $this->input->post('kode');
      $this->m_transaksi->soft_delete($kode);
      redirect('admin/transaksi');
    } else {
      echo "Halaman tidak ditemukan";
    }
  }

  function get_data_by_nofak($no_fak, $kobar)
  {
    $x['data'] = $this->m_transaksi->get_data_penjualan_by_id($no_fak, $kobar);
    $this->load->view('admin/v_transaksi_edit', $x);
  }

  function update_transaksi($no_fak, $kobar)
  {
    if ($this->session->userdata('akses') == '1') {
      // $no_fak = $this->input->post('no_fak');
      // $kobar = $this->input->post('kobar');
      // $qty = $this->input->post('qty2');
      // $total = $this->input->post('total2');
      // $this->m_transaksi->update_transaksi($no_fak, $kobar, $qty, $total);

      $data = array(
        'd_jual_qty' => $this->input->post('qty2'),
        'd_jual_total ' => $this->input->post('total2'),
      );
      var_dump($data);
      $this->db->set($data);
      $this->db->where('d_jual_nofak', $no_fak);
      $this->db->where('d_jual_barang_id', $kobar);
      $result = $this->db->update('tbl_detail_jual');
      if ($result) {
        redirect('admin/transaksi');
      } else {
        echo "Update Gagal";
      }
    } else {
      echo "Halaman tidak ditemukan";
    }
  }
}
