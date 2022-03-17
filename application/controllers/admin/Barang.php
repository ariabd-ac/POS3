<?php

// require '../../../assets/vendor/autoload.php';
// require_once(APPPATH . 'assets/vendor/autoload.php');
defined('BASEPATH') or exit('No direct script access allowed');

class Barang extends CI_Controller
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
		$this->load->library('Zend');
	}
	function index()
	{
		if ($this->session->userdata('akses') == '1') {
			$data['data'] = $this->m_barang->tampil_barang();
			$data['kat'] = $this->m_kategori->tampil_kategori();
			$data['kat2'] = $this->m_kategori->tampil_kategori();
			$this->load->view('admin/v_barang', $data);
		} else {
			echo "Halaman tidak ditemukan";
		}
	}
	function tambah_barang()
	{
		if ($this->session->userdata('akses') == '1') {
			$kobar = $this->m_barang->get_kobar();
			$kode_barcode = $this->input->post('kode_barcode');
			$nabar = $this->input->post('nabar');
			$kat = $this->input->post('kategori');
			$satuan = $this->input->post('satuan');
			$harpok = str_replace(',', '', $this->input->post('harpok'));
			$harjul = str_replace(',', '', $this->input->post('harjul'));
			$harjul_grosir = str_replace(',', '', $this->input->post('harjul_grosir'));
			$stok = $this->input->post('stok');
			$min_stok = $this->input->post('min_stok');
			$this->m_barang->simpan_barang($kobar, $kode_barcode, $nabar, $kat, $satuan, $harpok, $harjul, $harjul_grosir, $stok, $min_stok);

			redirect('admin/barang');
		} else {
			echo "Halaman tidak ditemukan";
		}
	}
	function update_barang()
	{
		$kobar = $this->uri->segment(4);
		$data = array(
			'barang_kbarcode' => $this->input->post('kode_barcode'),
			'barang_nama' => $this->input->post('nabar'),
			'barang_satuan' => $this->input->post('satuan'),
			'barang_kategori_id' => $this->input->post('kategori'),
			'barang_harpok' => str_replace(',', '', $this->input->post('harpok')),
			'barang_harjul' => str_replace(',', '', $this->input->post('harjul')),
			'barang_harjul_grosir' => str_replace(',', '', $this->input->post('harjul_grosir')),
			'barang_stok' => $this->input->post('stok'),
			'barang_min_stok' => $this->input->post('min_stok'),

		);
		$this->db->set($data);
		$this->db->where('barang_id', $kobar);
		$result = $this->db->update('tbl_barang');
		if ($result) {
			redirect('admin/barang');
		} else {
			echo "Update Gagal";
		}
	}
	function edit_barang()
	{
		if ($this->session->userdata('akses') == '1') {
			$kode_barang = $this->uri->segment(4);
			$data['detail_barang'] = $this->m_barang->get_barang($kode_barang)->result();
			$data['kat'] = $this->m_kategori->tampil_kategori();
			$data['kat2'] = $this->m_kategori->tampil_kategori();

			$this->load->view('admin/v_edit_barang', $data);
		} else {
			echo 'err';
		}
	}
	function hapus_barang()
	{
		if ($this->session->userdata('akses') == '1') {
			$kode = $this->uri->segment(4);
			$this->db->where('barang_id', $kode);
			$this->db->delete('tbl_barang');

			redirect('admin/barang');
		} else {
			echo "Halaman tidak ditemukan";
		}
	}

	function ambil_data()
	{

		/*Menagkap semua data yang dikirimkan oleh client*/

		/*Sebagai token yang yang dikrimkan oleh client, dan nantinya akan
		server kirimkan balik. Gunanya untuk memastikan bahwa user mengklik paging
		sesuai dengan urutan yang sebenarnya */
		$draw = $_REQUEST['draw'];

		/*Jumlah baris yang akan ditampilkan pada setiap page*/
		$length = $_REQUEST['length'];

		/*Offset yang akan digunakan untuk memberitahu database
		dari baris mana data yang harus ditampilkan untuk masing masing page
		*/
		$start = $_REQUEST['start'];

		/*Keyword yang diketikan oleh user pada field pencarian*/
		$search = $_REQUEST['search']["value"];


		/*Menghitung total desa didalam database*/
		$total = $this->db->count_all_results("tbl_barang");
		/*Mempersiapkan array tempat kita akan menampung semua data
		yang nantinya akan server kirimkan ke client*/
		$output = array();

		/*Token yang dikrimkan client, akan dikirim balik ke client*/
		$output['draw'] = $draw;

		/*
		$output['recordsTotal'] adalah total data sebelum difilter
		$output['recordsFiltered'] adalah total data ketika difilter
		Biasanya kedua duanya bernilai sama, maka kita assignment 
		keduaduanya dengan nilai dari $total
		*/
		$output['recordsTotal'] = $output['recordsFiltered'] = $total;

		/*disini nantinya akan memuat data yang akan kita tampilkan 
		pada table client*/
		$output['data'] = array();




		/*Jika $search mengandung nilai, berarti user sedang telah 
		memasukan keyword didalam filed pencarian*/
		if ($search != "") {
			$this->db->like("barang_nama", $search);
			$this->db->or_like("barang_id", $search);
			$this->db->or_like("barang_kbarcode", $search);
			$this->db->or_like("barang_satuan", $search);
			$this->db->or_like("barang_harpok", $search);
			$this->db->or_like("barang_harjul", $search);
			$this->db->or_like("barang_harjul_grosir", $search);
			$this->db->or_like("barang_stok", $search);
			$this->db->or_like("barang_min_stok", $search);
		}
		/*Lanjutkan pencarian ke database*/
		$this->db->limit($length, $start);
		/*Urutkan dari alphabet paling terkahir*/
		$this->db->order_by('barang_nama', 'DESC');
		$query = $this->db->get('tbl_barang');


		/*Ketika dalam mode pencarian, berarti kita harus
		'recordsTotal' dan 'recordsFiltered' sesuai dengan jumlah baris
		yang mengandung keyword tertentu
		*/
		if ($search != "") {
			$this->db->like("barang_nama", $search);
			$jum = $this->db->get('tbl_barang');
			$output['recordsTotal'] = $output['recordsFiltered'] = $jum->num_rows();
		}


		// load library barcode data


		$nomor_urut = $start + 1;


		foreach ($query->result_array() as $brng) {

			$edit = '<button type="button" name="' . $brng['barang_id'] . '" onclick="editData(this.name)" class="btn btn-xs btn-info" title="Edit"><span class="fa fa-edit"></span> Edit</button>';
			$delete = '<button type="button" name="' . $brng['barang_id'] . '" onclick="deleteData(this.name)" class="btn btn-xs btn-danger btn-delete" title="Delet"><span class="fa fa-edit"></span> Delete</button>';
			// $barcode = '<button type="button" name="' . $brng['barang_kbarcode'] . '" onclick="showBarcode(this.name)" class="btn btn-xs btn-primary btn-delete" title="Barcode"><span class="fa fa-edit"></span> Barcode</button>';
			$a = '<img src=site_url(`admin/barang/barcode/` ' . $brng['barang_id'] . '); ?>" alt="">';
			$url = site_url('admin/barang/barcode/' . $brng['barang_id']);
			// var_dump($)
			$barcode = '<img src=' . $url . ' alt="">';


			$output['data'][] = array(
				$nomor_urut,
				$brng['barang_id'],
				$brng['barang_kbarcode'],
				$brng['barang_nama'],
				$brng['barang_satuan'],
				$brng['barang_harpok'],
				$brng['barang_harjul'],
				$brng['barang_harjul_grosir'],
				$brng['barang_stok'],
				$brng['barang_min_stok'],
				$brng['barang_kategori_id'],
				$barcode,
				// $url,
				$delete,
				$edit,

			);

			$nomor_urut++;
		}


		echo json_encode($output);
	}


	public function Barcode($kodenya)
	{
		$this->zend->load('Zend/Barcode');
		Zend_Barcode::render('code128', 'image', array('text' => $kodenya));
	}
}
