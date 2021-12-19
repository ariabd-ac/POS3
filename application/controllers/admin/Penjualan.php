<?php
class Penjualan extends CI_Controller
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
		$this->load->model('m_penjualan');
		$this->load->model('m_settings');
	}
	function index()
	{
		if ($this->session->userdata('akses') == '1' || $this->session->userdata('akses') == '2') {
			$data['data'] = $this->m_barang->tampil_barang();
			$this->load->view('admin/v_penjualan', $data);
		} else {
			echo "Halaman tidak ditemukan";
		}
	}
	function get_barang()
	{
		if ($this->session->userdata('akses') == '1' || $this->session->userdata('akses') == '2') {
			$kobar = $this->input->post('kode_brg');
			$x['brg'] = $this->m_barang->get_barang($kobar);
			$this->load->view('admin/v_detail_barang_jual', $x);
		} else {
			echo "Halaman tidak ditemukan";
		}
	}

	function get_barangBarcode()
	{
		if ($this->session->userdata('akses') == '1' || $this->session->userdata('akses') == '2') {
			$kode_barcode = $this->input->post('kode_barcode');
			$x['brg'] = $this->m_barang->get_kbarcode($kode_barcode);
			$this->load->view('admin/v_detail_barang_jual', $x);
		} else {
			echo "Halaman tidak ditemukan";
		}
	}







	function add_to_cart()
	{
		if ($this->session->userdata('akses') == '1' || $this->session->userdata('akses') == '2') {
			$kobar = $this->input->post('kode_brg');
			$kode_barcode = $this->input->post('kode_barcode');
			// $produk=$this->m_barang->get_kbarcode($kode_barcode);
			$produk = $this->m_barang->get_barang($kobar);
			$i = $produk->row_array();
			$data = array(
				'id'       => $i['barang_id'],
				'kode_barcode' => $i['barang_kbarcode'],
				'name'     => $i['barang_nama'],
				'satuan'   => $i['barang_satuan'],
				'harpok'   => $i['barang_harpok'],
				'price'    => str_replace(",", "", $this->input->post('harjul')) - $this->input->post('diskon'),
				'disc'     => $this->input->post('diskon'),
				'qty'      => $this->input->post('qty'),
				'amount'	  => str_replace(",", "", $this->input->post('harjul'))
			);

			if (!empty($this->cart->total_items())) {
				foreach ($this->cart->contents() as $items) {
					$id = $items['id'];
					$qtylama = $items['qty'];
					$rowid = $items['rowid'];
					$kobar = $this->input->post('kode_brg');
					$qty = $this->input->post('qty');
					if ($id == $kobar) {
						$up = array(
							'rowid' => $rowid,
							'qty' => $qtylama + $qty
						);
						$this->cart->update($up);
					} else {
						$this->cart->insert($data);
					}
				}
			} else {
				$this->cart->insert($data);
			}

			redirect('admin/penjualan');
		} else {
			echo "Halaman tidak ditemukan";
		}
	}

	function add_to_cart_kode_barcode()
	{
		if ($this->session->userdata('akses') == '1' || $this->session->userdata('akses') == '2') {
			$kobar = $this->input->post('kode_brg');
			$kode_barcode = $this->input->post('kode_barcode');
			$produk = $this->m_barang->get_kbarcode($kode_barcode);
			// $produk=$this->m_barang->get_barang($kobar);
			$i = $produk->row_array();
			$data = array(
				'id'       => $i['barang_id'],
				'kode_barcode' => $i['barang_kbarcode'],
				'name'     => $i['barang_nama'],
				'satuan'   => $i['barang_satuan'],
				'harpok'   => $i['barang_harpok'],
				'price'    => str_replace(",", "", $this->input->post('harjul')) - $this->input->post('diskon'),
				'disc'     => $this->input->post('diskon'),
				'qty'      => $this->input->post('qty'),
				'amount'	  => str_replace(",", "", $this->input->post('harjul'))
			);

			if (!empty($this->cart->total_items())) {
				foreach ($this->cart->contents() as $items) {
					$id = $items['id'];
					$qtylama = $items['qty'];
					$rowid = $items['rowid'];
					$kobar = $this->input->post('kode_brg');
					$qty = $this->input->post('qty');
					if ($id == $kobar) {
						$up = array(
							'rowid' => $rowid,
							'qty' => $qtylama + $qty
						);
						$this->cart->update($up);
					} else {
						$this->cart->insert($data);
					}
				}
			} else {
				$this->cart->insert($data);
			}

			redirect('admin/penjualan');
		} else {
			echo "Halaman tidak ditemukan";
		}
	}
	function remove()
	{
		if ($this->session->userdata('akses') == '1' || $this->session->userdata('akses') == '2') {
			$row_id = $this->uri->segment(4);
			$this->cart->update(array(
				'rowid'      => $row_id,
				'qty'     => 0
			));
			redirect('admin/penjualan');
		} else {
			echo "Halaman tidak ditemukan";
		}
	}
	function simpan_penjualan()
	{
		if ($this->session->userdata('akses') == '1' || $this->session->userdata('akses') == '2') {
			$total = $this->input->post('total');
			$jml_uang = str_replace(",", "", $this->input->post('jml_uang'));
			$kembalian = $jml_uang - $total;
			if (!empty($total) && !empty($jml_uang)) {
				if ($jml_uang < $total) {
					echo $this->session->set_flashdata('msg', '<label class="label label-danger">Jumlah Uang yang anda masukan Kurang</label>');
					redirect('admin/penjualan');
				} else {
					$nofak = $this->m_penjualan->get_nofak();
					$this->session->set_userdata('nofak', $nofak);
					$order_proses = $this->m_penjualan->simpan_penjualan($nofak, $total, $jml_uang, $kembalian);
					if ($order_proses) {
						$this->cart->destroy();

						$this->session->unset_userdata('tglfak');
						$this->session->unset_userdata('suplier');
						$this->load->view('admin/alert/alert_sukses');
					} else {
						redirect('admin/penjualan');
					}
				}
			} else {
				echo $this->session->set_flashdata('msg', '<label class="label label-danger">Penjualan Gagal di Simpan, Mohon Periksa Kembali Semua Inputan Anda!</label>');
				redirect('admin/penjualan');
			}
		} else {
			echo "Halaman tidak ditemukan";
		}
	}

	function cetak_faktur()
	{
		$x['data'] = $this->m_penjualan->cetak_faktur();
		$x['settings'] = $this->m_settings->tampil_settings();
		$this->load->view('admin/laporan/v_faktur', $x);
		//$this->session->unset_userdata('nofak');
	}



	// revisi 24 april 
	function add_to_cart2()
	{
		if ($this->session->userdata('akses') == '1' || $this->session->userdata('akses') == '2') {
			$kobar = $this->input->post('kode_barang');
			$diskon = $this->input->post('diskon');
			$qty = $this->input->post('qty');
			// $produk=$this->m_barang->get_kbarcode($kode_barcode);
			$produk = $this->m_barang->get_barang($kobar);
			$i = $produk->row_array();
			$data = array(
				'id'       => $i['barang_id'],
				'kode_barcode' => $i['barang_kbarcode'],
				'name'     => $i['barang_nama'],
				'satuan'   => $i['barang_satuan'],
				'harpok'   => $i['barang_harpok'],
				'price'    => str_replace(",", "", $i['barang_harjul']) - $diskon,
				'disc'     => $diskon,
				'qty'      => $qty,
				'amount'	  => str_replace(",", "", $i['barang_harjul'])
			);

			if (!empty($this->cart->total_items())) {
				foreach ($this->cart->contents() as $items) {
					$id = $items['id'];
					$qtylama = $items['qty'];
					$rowid = $items['rowid'];
					$kobar = $this->input->post('kode_brg');
					$qty = $this->input->post('qty');
					if ($id == $kobar) {
						$up = array(
							'rowid' => $rowid,
							'qty' => $qtylama + $qty
						);
						$this->cart->update($up);
					} else {
						$this->cart->insert($data);
					}
				}
			} else {
				$this->cart->insert($data);
			}
			echo 1;
		} else {
			echo 0;
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
			$this->db->or_like("barang_harjul", $search);
			$this->db->or_like("barang_stok", $search);
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


		$nomor_urut = $start + 1;

		foreach ($query->result_array() as $brng) {
			if ($brng['barang_stok'] <= 0) {
				$html = '<button type="" class="btn btn-xs btn-denger" title="Pilih"><span class="fa fa-edit"></span> Pilih</button>';
			} else {
				$html = '<button type="button" name="' . $brng['barang_id'] . '" onclick="submitdata(this.name)" class="btn btn-xs btn-info" title="Pilih"><span class="fa fa-edit"></span> Pilih</button>';
			}
			$output['data'][] = array(
				$nomor_urut,
				$brng['barang_id'],
				$brng['barang_kbarcode'],
				$brng['barang_nama'],
				$brng['barang_satuan'],
				$brng['barang_harjul'],
				$brng['barang_stok'],
				'<input type="number" name="diskon" id="diskon' . $brng['barang_id'] . '" value="0">',
				'<input type="number" name="qty" id="qty' . $brng['barang_id'] . '"value="1" min="1" max="' . $brng['barang_stok'] . '" class="form-control input-sm" style="width:90px;margin-right:5px;" required>',
				$html,
			);
			$nomor_urut++;
		}

		echo json_encode($output);
	}
}
