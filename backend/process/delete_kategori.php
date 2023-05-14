<?php 
require_once '../database/dbkoneksi.php';
// tangkap iddel dari url
$id = $_GET['iddel'];
// bikin quey hapus data
$query = "DELETE FROM kategori_produk  WHERE id=?";
// prepare query
$st = $dbh->prepare($query);
// jalanin query
$st->execute([$id]);

// pindahin kel hal list_pelanggan
header('location:../pages/list_pesanan.php');
?>