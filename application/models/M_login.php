<?php 
	defined('BASEPATH') OR exit('no direct script access allowed'); 

	class M_login extends CI_Model{
		public function __construct(){
			parent::__construct(); 
		}

		public function cek_login($username, $password){
			$this->db->select('*');
			$this->db->from('admin');
			$this->db->where('username', $username);
			$this->db->where('password', $password);

			return $this->db->get()->num_rows();     
		}
	}