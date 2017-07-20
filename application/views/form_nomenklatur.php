
<form id="form2" name="form2" method="post" action="<?=site_url('Nomenklatur/form_proses'); ?>">
  Nama Dinas : 
  <label>
  <input type="text" name="nama_dinas" />
  </label>
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

