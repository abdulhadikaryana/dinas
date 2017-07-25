<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.6/themes/base/jquery-ui.css" type="text/css" media="all" />
        <link rel="stylesheet" href="http://static.jquery.com/ui/css/demo-docs-theme/ui.theme.css" type="text/   css" media="all" />
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js" type="text/javascript"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.6/jquery-ui.min.js" type="text/javascript"></script>


<form id="form2" name="form2" method="post" action="<?=site_url('Nomenklatur/form_proses'); ?>">
  <div id="propinsi" style="width:250px;float:left;">
    Provinsi : <br/>
    <?php
        echo form_dropdown("kode_prov",$option_provinsi,"","id='kode_prov'");
    ?>
    </div>
	
	<div id="kota">
    Kota / Kabupaten :<br/>
    <?php
        echo form_dropdown("kode_kab", array('Pilih Kota / Kabupaten'),'');
    ?>
	
    </div>
	
	<script type="text/javascript">
        $("#kode_prov").change(function(){
                var kode_prov = {kode_prov:$("#kode_prov").val()};
                $.ajax({
                        type: "POST",
                        url : "<?php echo site_url('form_nomenklatur/select_kota_kab')?>",
                        data: kode_prov,
                        success: function(msg){
                            $('#kota').html(msg);
                        }
                    });
        });
       </script>
	
  
  <p>Nama Dinas : 
    <label>
    <input type="text" name="nama_dinas" />
    </label>
  </p>
  <label></label>
  <p>Dasar Hukum : 
    <label>
    <textarea name="dasar_hukum"></textarea>
    </label>
  </p>
  <p>Alamat Kantor : 
    <label>
    <textarea name="alamat_kantor"></textarea>
    </label>
  </p>
  <p>No Telepon :  
    <label>
    <input type="text" name="no_telepon" />
    </label>
  </p>
  <p>Email : 
    <label>
    <input type="text" name="email" />
    </label>
  </p>
  <p>Website : 
    <label>
    <input type="text" name="website" />
    </label>
  </p>
  <p>
    <label>
    <input type="submit" name="Submit" value="Submit" />
    </label>
  </p>
</form>

