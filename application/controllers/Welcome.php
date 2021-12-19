<?php
class Welcome extends CI_Controller
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
		$x['settings'] = $this->m_settings->tampil_settings();
		$this->load->view('admin/v_index', $x);
	}
}
