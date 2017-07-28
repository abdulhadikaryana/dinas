
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
		$data_dinas['hasil']=$this->dinas_model->baca_data();
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
		if($baca->num_rows() > 0){
			foreach($baca->result() as $data_dinas){
				$hasil[]= $data_dinas;
			}
			return $hasil;
		}
	
	}
	
	
	
	
	function jabatan(){
		$data_jabatan['jabatan']=$this->input->post('jabatan');
		$data_jabatan['nama']=$this->input->post('nama');
		$data_jabatan['NIP']=$this->input->post('NIP');
		$data_jabatan['no_hp']=$this->input->post('no_hp');
		$data_jabatan['alamat_email']=$this->input->post('alamat_email');
		
		$this->db->insert('jabatan', $data_jabatan);
	}

	public function aksi_login(){
		$this->load->model('m_login');
		$username = $this->input->post('username'); 
		$password = $this->input->post('password');
			

		if ($this->m_login->cek_login($username, $password)){
				redirect(base_url().'nomenklatur/dashboard','refresh');
		} else {
			echo '<h3> Username atau password yang anda masukan salah <h3>'; 
			echo '<a href="'.site_url('login').'"> Kembali </a>';  
		}
	}

	public function dashboard(){
		$this->load->view('template/header');
		$this->load->view('template/navigation');
		$this->load->view('dashboard');
		$this->load->view('template/footer');
		
	}
}
