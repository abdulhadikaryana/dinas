
<?php
class nomenklatur extends CI_Controller
{
	function _Construct()
	{
		parent ::_Construct();
	}
	
	function simpan_dinas()
	{
		$this->load->model('dinas_model');
		$this->dinas_model->simpan_dinas();
		$this->load->view('form_nomenklatur');

	}
	
}
