<?php 
/*Connect to MySQL databse using drive invocation */
$dsn = 'mysql:dbname=toko;host=localhost';
$user = 'root';
$password = '';

try {
    $dbh = new PDO($dsn, $user, $password);
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $dbh->setAttribute(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY, TRUE);
   // echo "Alhamdulillah Sukses Koneksi Database";
} catch (PDOException $e) {
    echo "Gagal Koneksi DB karena" . $e->getMessage();
}

?>