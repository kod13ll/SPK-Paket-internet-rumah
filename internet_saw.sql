-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2019 at 06:09 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internet_saw`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(5) NOT NULL,
  `id_provider` int(5) NOT NULL,
  `nama_alternatif` varchar(50) NOT NULL,
  `harga` varchar(13) NOT NULL,
  `kecepatan` varchar(8) NOT NULL,
  `deskripsi` mediumtext NOT NULL,
  `link_alt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `id_provider`, `nama_alternatif`, `harga`, `kecepatan`, `deskripsi`, `link_alt`) VALUES
(1, 1, 'Premium 10', '435.000', '10', '<ul><li>Full Access</li><li>152 channel</li><li>Movin Phone</li><li>Unlimited Services<br></li></ul>', 'https://www.indihome.co.id/pusat-bantuan'),
(2, 1, 'Premium 40', '935.000', '40', '<ul><li>173 Channel</li><li>Movin Phone</li><li>Wifi id Seamless</li><li>Unlimited Services<br></li></ul>', 'https://www.indihome.co.id/pusat-bantuan'),
(3, 1, 'Premium 100', '1.895.000', '100', '<ul><li>206 Channel</li><li>Movin Phone</li><li>Wifi id Seamless</li><li>Unlimited Services<br></li></ul>', 'https://www.indihome.co.id/pusat-bantuan'),
(4, 2, 'D\'Lite HD', '330.000', '25', '<ul><li>Unlimited</li><li>134 Tv Channel</li><li>2-4 Gadget/PC</li><li>Kecepatan Maksimal<br></li></ul>', 'https://www.firstmedia.com/'),
(5, 2, 'Supreme X1', '789.000', '75', '<ul><li>Unlimited</li><li>179 Tv Channel</li><li>5-8 Gadget / PC</li><li>Kecepatan Maksimal<br></li></ul>', 'https://www.firstmedia.com/'),
(6, 2, 'Maxima X1', '1.649.000', '150', '<ul><li>Unlimited</li><li>179 Tv Channel</li><li>8-10 Gadget / PC</li><li>Kecepatan Maksimal<br></li></ul>', 'https://www.firstmedia.com/'),
(7, 3, 'Fast + Star', '485.250', '50', '<ul><li>Unlimited</li><li>Tanpa Batasan Torrent</li><li>Paket Tv Star</li><li>Kecepatan Maksimal<br></li></ul>', 'https://myrepublic.co.id/harga-internet-dan-tv-kabel/'),
(8, 3, 'Nova + Star', '535.250', '100', '<ul><li>Unlimited</li><li>Tanpa Batasan Bit Torrent</li><li>Paket Tv Star</li><li>Kecepatan Maksimal</li></ul>', 'https://myrepublic.co.id/harga-internet-dan-tv-kabel/'),
(9, 3, 'Gamer + Star', '695.250', '150', '<ul><li>Unlimited</li><li>Tanpa Batasan Bit Torrent</li><li>Paket Tv Star</li><li>Kecepatan Maksimal<br></li></ul>', 'https://myrepublic.co.id/harga-internet-dan-tv-kabel/');

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(5) NOT NULL,
  `nama_kriteria` varchar(30) NOT NULL,
  `atribut` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `nama_kriteria`, `atribut`) VALUES
(1, 'harga', 'C'),
(2, 'kecepatan', 'B'),
(3, 'kebutuhan', 'B'),
(4, 'tvchannel', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_alternatif`
--

CREATE TABLE `nilai_alternatif` (
  `id_nalternatif` int(5) NOT NULL,
  `id_nkriteria` int(5) NOT NULL,
  `id_alternatif` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_alternatif`
--

INSERT INTO `nilai_alternatif` (`id_nalternatif`, `id_nkriteria`, `id_alternatif`) VALUES
(17, 2, 1),
(18, 6, 1),
(19, 11, 1),
(20, 19, 1),
(21, 4, 2),
(22, 7, 2),
(23, 12, 2),
(24, 19, 2),
(25, 5, 3),
(26, 9, 3),
(27, 14, 3),
(28, 20, 3),
(29, 1, 4),
(30, 6, 4),
(31, 11, 4),
(32, 18, 4),
(33, 4, 5),
(34, 9, 5),
(35, 14, 5),
(36, 19, 5),
(37, 5, 6),
(38, 10, 6),
(39, 15, 6),
(40, 19, 6),
(48, 2, 7),
(49, 7, 7),
(50, 12, 7),
(51, 17, 7),
(52, 3, 8),
(53, 8, 8),
(54, 13, 8),
(55, 17, 8),
(56, 4, 9),
(57, 10, 9),
(58, 15, 9),
(59, 17, 9);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kriteria`
--

CREATE TABLE `nilai_kriteria` (
  `id_nkriteria` int(5) NOT NULL,
  `id_kriteria` int(5) NOT NULL,
  `nama_nilai` varchar(30) NOT NULL,
  `nilai` tinyint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_kriteria`
--

INSERT INTO `nilai_kriteria` (`id_nkriteria`, `id_kriteria`, `nama_nilai`, `nilai`) VALUES
(1, 1, '200.000-400.000', 1),
(2, 1, '401.000-500.000', 2),
(3, 1, '501.000-650.000', 3),
(4, 1, '651.000-1.200.000', 4),
(5, 1, '> 1.200.000', 5),
(6, 2, '10 - 25 Mbps', 1),
(7, 2, '26 - 50 Mbps', 2),
(8, 2, '51 - 70 Mbps', 3),
(9, 2, '71 - 100 Mbps', 4),
(10, 2, '> 100 Mbps', 5),
(11, 3, 'Social Media, Browsing', 1),
(12, 3, 'Video Call', 2),
(13, 3, 'Gaming', 3),
(14, 3, 'Streaming', 4),
(15, 3, 'Live Streaming', 5),
(16, 4, '1 - 50 Channel', 1),
(17, 4, '51 - 100 Channel', 2),
(18, 4, '101 - 150', 3),
(19, 4, '151 - 200', 4),
(20, 4, '> 200 Channel', 5);

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

CREATE TABLE `provider` (
  `id_provider` int(5) NOT NULL,
  `nama_provider` varchar(25) NOT NULL,
  `ttg_provider` text NOT NULL,
  `syarat_ket` text NOT NULL,
  `link_provider` text NOT NULL,
  `gmb_provider` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provider`
--

INSERT INTO `provider` (`id_provider`, `nama_provider`, `ttg_provider`, `syarat_ket`, `link_provider`, `gmb_provider`) VALUES
(1, 'Indi Home', 'Layanan digital berupa Internet Rumah, Telepon Rumah dan TV Interaktif (UseeTV) yang\r\n					menggunakan teknologi fiber optik.Layanan digital berupa Internet Rumah, Telepon Rumah dan TV\r\n					Interaktif (UseeTV) yang menggunakan teknologi fiber optik.', '<p>\r\n\r\n</p><h4>Syarat dan Ketentuan Berlaku :</h4><p>1.Harga berlaku untuk pelanggan baru mulai 15 Februari 2019.</p><p>2.Harga di atas untuk pembayaran setiap bulan.</p><p>3.Jumlah channel dapat berubah sewaktu-waktu. Update channel terbaru di indihome.co.id</p><p>4.Catchplay tidak berlaku untuk Single Rental. Iflix yang berlaku adalah Iflix VIP. Hooq yang berlaku adalah SVOD (Streaming Video On Demand)</p><p>5.Biaya Pasang Baru (PSB) IndiHome Rp100.000 untuk area Jabodetabek dan Rp75.000 untuk area lain seluruh Indonesia akan ditagihkan pada bulan pertama saja dan tidak diperkenankan melakukan pembayaran secara tunai selain di Plasa Telkom.</p><p>6.Telkom menyediakan Hybrid Box IndiHome dan ONT selama berlangganan.</p><p>7.Untuk pelanggan yang ingin memasang Hybrid Box IndiHome tambahan akan dikenakan biaya tambahan bulanan di mana Telkom menyediakan Hybrid Box yang dimaksud. Pelanggan bisa dikenakan biaya penarikan jaringan tambahan yang dibayarkan kepada mitra penarikan jaringan.</p><p>8.Harga belum termasuk PPN.</p><p>9.Syarat &amp; ketentuan berlaku.</p>\r\n\r\n<br><p></p>', 'https://www.indihome.co.id/pusat-bantuan', 'indihome.jpg'),
(2, 'First Media', 'PT Broadband Multimedia Tbk. merupakan salah satu penyedia jasa layanan \r\ninternet pita lebar, televise kabel dan komunikasi data yang \r\ndiperkenalkan sebagai “Triple Play”. Jangkauannya mencapai Jabodetabek, \r\nSurabaya, Malang dan Bandung.', '<h4>Syarat dan Ketentuan Berlaku :</h4>\r\n				<p>1.Perangkat Modem/ONT akan dipinjamkan kepada Anda dengan biaya sewa Rp.30.000,- per bulan.</p>\r\n				<p>2.Satu pelanggan dapat menggunakan maksimal 3 (tiga) unit HD Entertainment Box di rumahnya.</p>\r\n				<p>3.Harga di atas belum termasuk biaya administrasi Rp.5.000,-/bulan.</p>\r\n				<p>4.Masa minimum berlangganan adalah 12 bulan, jika berhenti \r\nberlangganan sebelum periode tersebut Anda akan dikenakan biaya penalti \r\nsebesar Rp.1.000.000,-</p>\r\n				<p>5.Seluruh biaya belum termasuk PPn 10%.</p>', 'https://www.firstmedia.com/', 'fmcover.jpg'),
(3, 'My Republic', '<p>\r\nMyRepublic merupakan internet provider dari Singapore dengan kecepatan \r\nyang luar biasa dan harga terjangkau. Internet tercepat dari MyRepublic \r\nmencapai 300 Mbps.<br></p>', '<p>\r\n</p><h4>Syarat dan Ketentuan Berlaku :</h4>\r\n				<p>1.Perangkat Modem/ONT akan dipinjamkan kepada Anda dengan biaya sewa Rp.30.000,- per bulan.</p>\r\n				<p>2.Satu pelanggan dapat menggunakan maksimal 3 (tiga) unit HD Entertainment Box di rumahnya.</p>\r\n				<p>3.Harga di atas belum termasuk biaya administrasi Rp.5.000,-/bulan.</p>\r\n				<p>4.Masa minimum berlangganan adalah 12 bulan, jika berhenti \r\nberlangganan sebelum periode tersebut Anda akan dikenakan biaya penalti \r\nsebesar Rp.1.000.000,-</p>\r\n				<p>5.Seluruh biaya belum termasuk PPn 10%.</p>\r\n\r\n<br><p></p>', 'https://myrepublic.co.id/harga-internet-dan-tv-kabel/', 'mrcover.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `saran`
--

CREATE TABLE `saran` (
  `id_saran` int(5) NOT NULL,
  `email` varchar(30) NOT NULL,
  `isi_saran` text NOT NULL,
  `tgl_saran` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saran`
--

INSERT INTO `saran` (`id_saran`, `email`, `isi_saran`, `tgl_saran`) VALUES
(1, 'riska.skripsi15@gmail.com', 'yoo', '2019-10-31 10:45:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(30) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(80) NOT NULL,
  `status` varchar(2) NOT NULL,
  `ubhapsw_active` tinyint(2) DEFAULT NULL,
  `usr_active` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `username`, `password`, `status`, `ubhapsw_active`, `usr_active`) VALUES
('admin@admin.com', 'admin', '$2y$10$FUJ5Dk9g5UZU7.ilLX7RJ.fYxtswNnsJL.RG29MrqxykQReu04rTG', 'AD', 0, 1),
('riska.skripsi15@gmail.com', 'jon', '$2y$10$46biNH0azquRXAiY1n34T.3XLTwiTYvDlGU6dsjDxdAme9TLMVs2e', 'US', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`),
  ADD KEY `id_provider` (`id_provider`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `nilai_alternatif`
--
ALTER TABLE `nilai_alternatif`
  ADD PRIMARY KEY (`id_nalternatif`),
  ADD KEY `id_nkriteria` (`id_nkriteria`),
  ADD KEY `id_alternatif` (`id_alternatif`);

--
-- Indexes for table `nilai_kriteria`
--
ALTER TABLE `nilai_kriteria`
  ADD PRIMARY KEY (`id_nkriteria`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indexes for table `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`id_provider`);

--
-- Indexes for table `saran`
--
ALTER TABLE `saran`
  ADD PRIMARY KEY (`id_saran`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nilai_alternatif`
--
ALTER TABLE `nilai_alternatif`
  MODIFY `id_nalternatif` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `nilai_kriteria`
--
ALTER TABLE `nilai_kriteria`
  MODIFY `id_nkriteria` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `provider`
--
ALTER TABLE `provider`
  MODIFY `id_provider` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `saran`
--
ALTER TABLE `saran`
  MODIFY `id_saran` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD CONSTRAINT `alternatif_ibfk_1` FOREIGN KEY (`id_provider`) REFERENCES `provider` (`id_provider`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `nilai_alternatif`
--
ALTER TABLE `nilai_alternatif`
  ADD CONSTRAINT `nilai_alternatif_ibfk_1` FOREIGN KEY (`id_nkriteria`) REFERENCES `nilai_kriteria` (`id_nkriteria`),
  ADD CONSTRAINT `nilai_alternatif_ibfk_2` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`);

--
-- Constraints for table `nilai_kriteria`
--
ALTER TABLE `nilai_kriteria`
  ADD CONSTRAINT `nilai_kriteria_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `saran`
--
ALTER TABLE `saran`
  ADD CONSTRAINT `saran_ibfk_1` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
