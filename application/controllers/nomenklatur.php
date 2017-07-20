
<?php
class Nomenklatur extends CI_Controller
{
	function _Construct()
	{
		parent ::_Construct();
	}
	
	function index()
	{
		$this->load->model('dinas_model');
		//$this->dinas_model->simpan_dinas();
		$this->load->view('form_nomenklatur');

	}

	function form_proses(){
		$data_dinas['nama_dinas']= $this->input->post('nama_dinas');
		$dasar_hukum=$this->input->post('dasar_hukum');
	}
	
}
