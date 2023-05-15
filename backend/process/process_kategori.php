<?php
require_once '../database/dbkoneksi.php';
?>
<?php
$_kode = $_POST['kode'];
$_nama = $_POST['nama'];
$_harga_jual = $_POST['aksi'];

$_proses = $_POST['proses'];

// array data
$ar_data[] = $_kode; // ? 1
$ar_data[] = $_nama; // ? 2
$ar_data[] = $_aksil; // 3



if ($_proses == "Simpan") {
   // data baru
   $query = "INSERT INTO kategori_produk (kode,nama,aksi) VALUES (?,?,?)";
} else if ($_proses == "Update") {
   $ar_data[] = $_POST['idedit']; // ? 8
   $query = "UPDATE kategori_produk SET kode=?,nama=?,aksi=?, WHERE id=?";
}
if (isset($query)) {
   $st = $dbh->prepare($query);
   $st->execute($ar_data);
}

header('location:../pages/kategori.php');
?>