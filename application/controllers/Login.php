<?php 
	class Login extends CI_Controller{
		public function __construct(){
			parent::__construct(); 

			$this->load->model('m_login'); 
		}

		public function index(){
			$this->load->view('login'); 
		}

		public function aksi_login(){
			$username = $this->input->post('username'); 
			$password = $this->input->post('password');
			echo $username;
			echo '<br>'.$password;

			// if ($this->m_login->cek_login($username, $password)){
			// 	echo '<a href="'.site_url('Nomenklatur').'"> <br>Menu</br> </a>';  
			// 	echo '<a href="'.site_url('login').'"> Logout </a>';  
			// } else {
			// 	echo '<h3> Username atau password yang anda masukan salah <h3>'; 
			// 	echo '<a href="'.site_url('login').'"> Kembali </a>';  
			// }
		}
		
		
	}