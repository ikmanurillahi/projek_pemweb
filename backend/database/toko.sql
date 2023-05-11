-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2023 at 05:04 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kategori_produk`
--

INSERT INTO `kategori_produk` (`id`, `nama`) VALUES
(5, 'Eye Product'),
(3, 'Lip Product'),
(2, 'Parfume'),
(1, 'Skin Care');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_pemesan` varchar(45) NOT NULL,
  `alamat_pemesan` varchar(45) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `jumlah_pesanan` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `produk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `tanggal`, `nama_pemesan`, `alamat_pemesan`, `no_hp`, `email`, `jumlah_pesanan`, `deskripsi`, `produk_id`) VALUES
(1, '2023-04-08', 'Abdurrahman Ziyad', 'Depok', '082094374577', 'ziyad@gmail.com', 2, 'Pesanan Meja Belajar', 2);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kode` varchar(45) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `harga_jual` double NOT NULL,
  `harga_beli` double NOT NULL,
  `stok` int(11) NOT NULL,
  `min_stok` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `kategori_produk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kode`, `nama`, `harga_jual`, `harga_beli`, `stok`, `min_stok`, `deskripsi`, `kategori_produk_id`) VALUES
(1, 'BM01', 'Brush Makeup', 20000, 17000, 15, 7, 'Brush Makeup merupakan kuas yang berfungsi untuk mengaplikasikan berbagai jenis makeup pada wajah agar lebih merata.', 5),
(2, 'CM02', 'Clay Mask', 45000, 40000, 8, 4, 'Clay mask adalah masker yang terbuat dari beberapa jenis tanah liat. Dengan kemampuan bahan seperti tanah liat bentonit dan kaolin dalam mengangkat kotoran dan mengecilkan pori, masker ini menjadi favorit para pemilik kulit berminyak.', 1),
(3, 'MSC03', 'Mascara', 90000, 82500, 5, 2, 'Maskara ini dapat membantu Baebellines mendapatkan bulu mata yang ekstra panjang dan ekstra tebal, serta terlihat dramatis dari segara arah. Cukup satu pulasan saja, Baebellines bisa langsung mendapatkan hasil tersebut. ', 5),
(4, 'MUO04', 'MakeUp Organizer', 65000, 57000, 6, 3, 'Sebagai wanita yang memiliki hobi mengoleksi make up dan skin care, pasti sedikit repot menatanya agar terlihat rapi. Kamu tidak perlu cemas, solusinya pakai make up organizer yang membuat tampilan meja riasmu jadi lebih rapi. ', 1),
(5, 'PFM05', 'Parfume', 150000, 130000, 4, 2, 'Parfum memiliki banyak manfaat terutama dalam hal aromaterapi, melepaskan stres, dan memberikan efek relaksasi. Banyak wewangian tertentu yang biasa dimanfaatkan untuk kesehatan tubuh, terutama melepas stres. Parfum, selain meningkatkan kepercayaan diri, juga bisa menguatkan ingatan dan menimbulkan perasaan bahagia.', 2),
(6, 'LIP06', 'Lip Product', 55000, 54000, 10, 7, 'Lip product akan memberikan warna pada bibir yang gelap dan menambah rasa percaya diri.', 3),
(7, 'BO07', 'BlushOn', 65000, 63000, 11, 8, 'Blush On akan memberikan efek merona pada pipi anda.', 5),
(8, 'CP08', 'Compact Powder', 78000, 75000, 8, 2, 'Compact powder atau bedak padat adalah salah satu jenis bedak yang paling praktis dibawa saat Kawan Puan bepergian. Ditempatkan dalam sebuah jar pipih, compact powder berfungsi untuk menghilangkan kelebihan minyak dan keringat di wajah.', 5),
(9, 'SC09', 'Skin Care', 350000, 340000, 5, 4, 'Skin care adalah produk perawatan kulit yang memiliki tujuan mulai dari menenangkan, memulihkan, memperbaiki, hingga melindungi kulit. ', 5),
(10, 'LC010', 'Lip Care Product', 250000, 230000, 7, 4, 'Penggunaan lip balm secara rutin dapat memudarkan hiperpigmentasi pada bibir, kusam, dan bintik hitam pada bibir. Hal ini dapat membuat bibir terlihat menjadi lebih cerah dengan warna yang merata. Penggunaan lip balm bisa membuat bibir menjadi lebih sehat.', 5),
(11, 'ESH011', 'Eyeshadow', 43000, 40000, 9, 6, 'eyeshadow adalah salah satu jenis riasan yang digunakan untuk mempercantik mata. Meskipun sering digunakan untuk menaungi atau \"membayangi\" mata, ini juga digunakan untuk mencerahkan dan membuat mata tampak lebih besar.', 5),
(13, 'EL012', 'Eyeliner', 25000, 20000, 4, 3, 'Fungsi eyeliner salah satunya adalah untuk memberi definisi dan mempertegas garis mata. Selain itu, menggunakan eyeliner juga bisa membuat tampilan mata jadi lebih besar atau lebih kecil, lho.', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_UNIQUE` (`nama`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_UNIQUE` (`tanggal`),
  ADD KEY `fk_pesanan_produk1_idx` (`produk_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_UNIQUE` (`kode`),
  ADD KEY `fk_produk_kategori_produk_idx` (`kategori_produk_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `fk_pesanan_produk1` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `fk_produk_kategori_produk` FOREIGN KEY (`kategori_produk_id`) REFERENCES `kategori_produk` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
