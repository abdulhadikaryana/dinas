<?php

class dinas_model extends CI_Model

{
	function simpan_dinas()
	{
		$simpan_data=array(
			'nama_dinas' => $this->input->post('nama_dinas'),
			'dasar_hukum' => $this->input->post('dasar_hukum'),
			'alamat_kantor' => $this->input->post('alamat_kantor'),
			'no_telepon' => $this->input->post('no_telepon'),
			'email' => $this->input->post('email'),
			'website' => $this->input->post('website')
		);
		$this->load->database();
		$simpan = $this->db->insert('dinas', $simpan_data);
		return $simpan;

	}
}