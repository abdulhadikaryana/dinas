<?php 
	class Login extends CI_Controller{
		public function __construct(){
			parent::__construct(); 

			$this->load->model('m_login'); 
		}

		public function index(){
			$this->load->view('template/header_login');
			
			$this->load->view('login'); 
			$this->load->view('template/footer');
		}

		
		
		
	}