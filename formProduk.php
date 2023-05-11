<h3>
    Form Produk
</h3>
<form>
  <div class="form-group row">
    <label for="kode" class="col-4 col-form-label">Kode</label> 
    <div class="col-8">
      <div class="input-group">
        <div class="input-group-prepend">
          <div class="input-group-text">
            <i class="fa fa-address-card"></i>
          </div>
        </div> 
        <input id="kode" name="kode" placeholder="Masukan kode" type="text" class="form-control" required="required">
      </div>
    </div>
  </div>
  <div class="form-group row">
    <label for="nama" class="col-4 col-form-label">Nama Produk</label> 
    <div class="col-8">
      <input id="nama" name="nama" placeholder="Nama Produk" type="text" class="form-control" required="required">
    </div>
  </div>
  <div class="form-group row">
    <label for="harga_jual" class="col-4 col-form-label">Harga Jual</label> 
    <div class="col-8">
      <input id="harga_jual" name="harga_jual" type="text" class="form-control" required="required">
    </div>
  </div>
  <div class="form-group row">
    <label for="harga_beli" class="col-4 col-form-label">Harga Beli</label> 
    <div class="col-8">
      <input id="harga_beli" name="harga_beli" type="text" class="form-control" required="required">
    </div>
  </div>
  <div class="form-group row">
    <label for="stok" class="col-4 col-form-label">Stok</label> 
    <div class="col-8">
      <input id="stok" name="stok" type="text" class="form-control" required="required">
    </div>
  </div>
  <div class="form-group row">
    <label for="min_stok" class="col-4 col-form-label">Min Stok</label> 
    <div class="col-8">
      <input id="min_stok" name="min_stok" type="text" class="form-control" required="required">
    </div>
  </div>
  <div class="form-group row">
    <label for="deskripsi" class="col-4 col-form-label">Deskripsi</label> 
    <div class="col-8">
      <textarea id="deskripsi" name="deskripsi" cols="40" rows="5" class="form-control" required="required"></textarea>
    </div>
  </div>
  <div class="form-group row">
    <label for="Kategori" class="col-4 col-form-label">Kategori Produk</label> 
    <div class="col-8">
      <select id="Kategori" name="Kategori" class="custom-select" required="required">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="5">5</option>
      </select>
    </div>
  </div> 
  <div class="form-group row">
    <div class="offset-4 col-8">
      <button name="proses" type="submit" value="simpan" class="btn btn-primary">Simpan</button>
    </div>
  </div>
</form>