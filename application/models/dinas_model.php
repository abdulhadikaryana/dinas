<?php

class Dinas_Model extends CI_Model{
	function _construct(){
		parent::CI_Model();
		
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
	
	function getProvinsiList(){
		$result = array();
		$this->db->select('*');
		$this->db->from('provinsi');
		$this->db->order_by('nama_prov', 'ASC');
		$array_keys_values = $this->db->get();
		foreach($array_keys_values->result() as $row)
		{
			$result[0] = '-Pilih Provinsi-';
			$result[$row->kode_prov]=$row->nama_prov;
		}
		return $result;
}
	function getKotaKabList(){
		$kode_prov = $this->input->post('kode_prov');
		$result = array();
		$this->db->select('*');
        $this->db->from('kabupaten');
        $this->db->where('kode_prov',$kode_prov);
        $this->db->order_by('nama_kab','ASC');
        $array_keys_values = $this->db->get();
        foreach ($array_keys_values->result() as $row)
        {
            $result[0]= '-Pilih Kota / Kabupaten-';
            $result[$row->kode_kab]= $row->nama_kab;
        }
 
        return $result;
    }
}