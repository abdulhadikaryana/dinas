
<?php
class Nomenklatur extends CI_Controller
{
	function _Construct()
	{
		parent ::_Construct();
		$this -> load->model('Nomenklatur');
	}
	
	function index()
	{
		$this->load->model('dinas_model');
		
		//memilih provinsi dan kabupaten
		$data['option_provinsi'] = $this ->dinas_model->getProvinsiList();
		$this->load->view('form_nomenklatur',$data);
	}
	
	function select_kota_kab(){
		$data['option_kota_kab'] = $this->dinas_model->getKotaKabList();
		$this->load->view('form_nomenklatur', $data);
	}

	function form_proses(){
		$data_dinas['nama_dinas']=$this->input->post('nama_dinas');
		$data_dinas['dasar_hukum']=$this->input->post('dasar_hukum');
		$data_dinas['alamat_kantor']=$this->input->post('alamat_kantor');
		$data_dinas['no_telepon']=$this->input->post('no_telepon');
		$data_dinas['email']=$this->input->post('email');
		$data_dinas['website']=$this->input->post('website');
		
		
		$this->db->insert('dinas', $data_dinas);
		$this->load->view('form_proses');
	
	
	
	
	}
	
	function baca_data()
	{
		$baca = $this->db->get('dinas');
		if($baca->result() as $data;
	
	
	
	function jabatan(){
		$data_jabatan['jabatan']=$this->input->post('jabatan');
		$data_jabatan['nama']=$this->input->post('nama');
		$data_jabatan['NIP']=$this->input->post('NIP');
		$data_jabatan['no_hp']=$this->input->post('no_hp');
		$data_jabatan['alamat_email']=$this->input->post('alamat_email');
		
		$this->db->insert('jabatan', $data_jabatan);
	}
}
