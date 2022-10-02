-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 02 Okt 2022 pada 02.09
-- Versi server: 5.7.33
-- Versi PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dummy2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('5a4e99e9a83d0ad9f8ef4d9a5d3f9f64', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', 1664549929, 'a:7:{s:9:\"user_data\";s:0:\"\";s:5:\"masuk\";b:1;s:4:\"user\";s:14:\"admin@admin.id\";s:5:\"akses\";s:1:\"1\";s:7:\"idadmin\";s:1:\"1\";s:4:\"nama\";s:5:\"admin\";s:5:\"nofak\";s:12:\"300922000001\";}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `barang_id` varchar(15) NOT NULL,
  `barang_kbarcode` varchar(30) NOT NULL,
  `barang_nama` varchar(150) DEFAULT NULL,
  `barang_satuan` varchar(30) DEFAULT NULL,
  `barang_harpok` double DEFAULT NULL,
  `barang_harjul` double DEFAULT NULL,
  `barang_harjul_grosir` double DEFAULT NULL,
  `barang_stok` int(11) DEFAULT '99999999',
  `barang_min_stok` int(11) DEFAULT '0',
  `barang_tgl_input` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `barang_tgl_last_update` datetime DEFAULT NULL,
  `barang_kategori_id` int(11) DEFAULT NULL,
  `barang_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_barang`
--

INSERT INTO `tbl_barang` (`barang_id`, `barang_kbarcode`, `barang_nama`, `barang_satuan`, `barang_harpok`, `barang_harjul`, `barang_harjul_grosir`, `barang_stok`, `barang_min_stok`, `barang_tgl_input`, `barang_tgl_last_update`, `barang_kategori_id`, `barang_user_id`) VALUES
('BR000001', '001', 'Air Mineral', 'Kotak', 3000, 5000, 6000, 52, 0, '2021-12-19 10:20:40', NULL, 68, 1),
('BR000002', '002', 'Mie 11234', 'Kotak', 4999, 5000, 6000, 5982, 0, '2021-12-19 11:30:57', NULL, 72, 1),
('BR000003', '8992222053433', 'am', 'Unit', 8000, 9000, 80, 77, 0, '2022-03-13 11:02:59', NULL, 69, 1),
('BR000004', '8999999003043', 'bb', 'Kotak', 8888, 8888, 99999, 9997, 99, '2022-03-13 11:04:37', NULL, 71, 1),
('BR000005', '4517332314614', 'iuiui', 'Unit', 7777, 7777, 7777, 996, 99, '2022-03-13 11:05:13', NULL, 72, 1),
('BR000006', '8993137701464', '99999', 'Kotak', 7777, 666, 77777, 775, 88898, '2022-03-13 11:05:44', NULL, 71, 1),
('BR000007', '1', '1', 'Botol', 1, 1, 1, 10, 1, '2022-05-23 10:11:21', NULL, 67, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_beli`
--

CREATE TABLE `tbl_beli` (
  `beli_nofak` varchar(15) DEFAULT NULL,
  `beli_tanggal` date DEFAULT NULL,
  `beli_suplier_id` int(11) DEFAULT NULL,
  `beli_user_id` int(11) DEFAULT NULL,
  `beli_kode` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_departmnet`
--

CREATE TABLE `tbl_departmnet` (
  `dep_id` int(3) NOT NULL,
  `dep_name` varchar(50) NOT NULL,
  `dep_address` varchar(50) NOT NULL,
  `dep_phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_departmnet`
--

INSERT INTO `tbl_departmnet` (`dep_id`, `dep_name`, `dep_address`, `dep_phone`) VALUES
(1, 'WM Kagok', 'Kagok', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_detail_beli`
--

CREATE TABLE `tbl_detail_beli` (
  `d_beli_id` int(11) NOT NULL,
  `d_beli_nofak` varchar(15) DEFAULT NULL,
  `d_beli_barang_id` varchar(15) DEFAULT NULL,
  `d_beli_harga` double DEFAULT NULL,
  `d_beli_jumlah` int(11) DEFAULT NULL,
  `d_beli_total` double DEFAULT NULL,
  `d_beli_kode` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_detail_jual`
--

CREATE TABLE `tbl_detail_jual` (
  `d_jual_id` int(11) NOT NULL,
  `d_jual_nofak` varchar(15) DEFAULT NULL,
  `d_jual_barang_id` varchar(15) DEFAULT NULL,
  `d_jual_barang_nama` varchar(150) DEFAULT NULL,
  `d_jual_barang_satuan` varchar(30) DEFAULT NULL,
  `d_jual_barang_harpok` double DEFAULT NULL,
  `d_jual_barang_harjul` double DEFAULT NULL,
  `d_jual_qty` int(11) DEFAULT NULL,
  `d_jual_diskon` double DEFAULT NULL,
  `d_jual_total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_detail_jual`
--

INSERT INTO `tbl_detail_jual` (`d_jual_id`, `d_jual_nofak`, `d_jual_barang_id`, `d_jual_barang_nama`, `d_jual_barang_satuan`, `d_jual_barang_harpok`, `d_jual_barang_harjul`, `d_jual_qty`, `d_jual_diskon`, `d_jual_total`) VALUES
(244, '191221000001', 'BR000001', 'Air Mineral', 'Kotak', 3000, 5000, 30, 0, 150000),
(245, '191221000001', 'BR000002', 'Mie', 'Unit', 4999, 5000, 10, 0, 50000),
(246, '130322000001', 'BR000002', 'Mie', 'Unit', 4999, 5000, 1, 0, 5000),
(247, '130322000002', 'BR000002', 'Mie', 'Unit', 4999, 5000, 1, 0, 5000),
(248, '130322000003', 'BR000003', 'am', 'Unit', 8000, 9000, 1, 0, 9000),
(249, '130322000003', 'BR000004', 'bb', 'Kotak', 8888, 8888, 1, 0, 8888),
(250, '130322000003', 'BR000005', 'iuiui', 'Unit', 7777, 7777, 1, 0, 7777),
(251, '130322000004', 'BR000002', 'Mie', 'Unit', 4999, 5000, 1, 0, 5000),
(252, '130322000004', 'BR000001', 'Air Mineral', 'Kotak', 3000, 5000, 1, 0, 5000),
(253, '130322000005', 'BR000002', 'Mie', 'Unit', 4999, 5000, 1, 0, 5000),
(254, '130322000005', 'BR000005', 'iuiui', 'Unit', 7777, 7777, 1, 0, 7777),
(255, '130322000005', 'BR000004', 'bb', 'Kotak', 8888, 8888, 1, 0, 8888),
(256, '130322000005', 'BR000003', 'am', 'Unit', 8000, 9000, 1, 0, 9000),
(257, '130322000005', 'BR000001', 'Air Mineral', 'Kotak', 3000, 5000, 1, 0, 5000),
(258, '130322000005', 'BR000006', '99999', 'Kotak', 7777, 666, 1, 0, 666),
(259, '150722000001', 'BR000001', 'Air Mineral', 'Kotak', 3000, 5000, 1, 0, 5000),
(260, '150722000002', 'BR000001', 'Air Mineral', 'Kotak', 3000, 5000, 1, 0, 5000),
(261, '150722000003', 'BR000001', 'Air Mineral', 'Kotak', 3000, 5000, 1, 0, 5000),
(262, '150722000004', 'BR000002', 'Mie 11234', 'Kotak', 4999, 5000, 1, 0, 5000),
(263, '150722000005', 'BR000001', 'Air Mineral', 'Kotak', 3000, 5000, 1, 0, 5000),
(264, '150722000006', 'BR000001', 'Air Mineral', 'Kotak', 3000, 5000, 1, 0, 5000),
(265, '150722000007', 'BR000002', 'Mie 11234', 'Kotak', 4999, 5000, 1, 0, 5000),
(266, '1507220008', 'BR000001', 'Air Mineral', 'Kotak', 3000, 5000, 1, 0, 5000),
(267, '1507220008', 'BR000002', 'Mie 11234', 'Kotak', 4999, 5000, 1, 0, 5000),
(268, '150722220009', 'BR000001', 'Air Mineral', 'Kotak', 3000, 5000, 1, 0, 5000),
(269, '150722220010', 'BR000001', 'Air Mineral', 'Kotak', 3000, 5000, 1, 0, 5000),
(270, '150722220011', 'BR000001', 'Air Mineral', 'Kotak', 3000, 5000, 1, 0, 5000),
(271, '150722220012', 'BR000001', 'Air Mineral', 'Kotak', 3000, 5000, 1, 0, 5000),
(272, '150722220013', 'BR000001', 'Air Mineral', 'Kotak', 3000, 6000, 1, 0, 6000),
(273, '150722220014', 'BR000001', 'Air Mineral', 'Kotak', 3000, 6000, 1, 0, 6000),
(274, '150722220015', 'BR000001', 'Air Mineral', 'Kotak', 3000, 6000, 1, 0, 6000),
(275, '150722220016', 'BR000001', 'Air Mineral', 'Kotak', 3000, 6000, 1, 0, 6000),
(276, '150722220017', 'BR000001', 'Air Mineral', 'Kotak', 3000, 6000, 1, 0, 6000),
(277, '150722220018', 'BR000001', 'Air Mineral', 'Kotak', 3000, 6000, 1, 0, 6000),
(278, '300922000001', 'BR000005', 'iuiui', 'Unit', 7777, 7777, 1, 0, 7777),
(279, '300922000001', 'BR000007', '1', 'Botol', 1, 1, 1, 0, 1),
(280, '300922000001', 'BR000006', '99999', 'Kotak', 7777, 666, 1, 0, 666),
(281, '300922000001', 'BR000002', 'Mie 11234', 'Kotak', 4999, 5000, 1, 0, 5000),
(282, '300922000001', 'BR000003', 'am', 'Unit', 8000, 9000, 1, 0, 9000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jual`
--

CREATE TABLE `tbl_jual` (
  `jual_nofak` varchar(15) NOT NULL,
  `jual_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `jual_total` double DEFAULT NULL,
  `jual_jml_uang` double DEFAULT NULL,
  `jual_kembalian` double DEFAULT NULL,
  `jual_user_id` int(11) DEFAULT NULL,
  `jual_keterangan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_jual`
--

INSERT INTO `tbl_jual` (`jual_nofak`, `jual_tanggal`, `jual_total`, `jual_jml_uang`, `jual_kembalian`, `jual_user_id`, `jual_keterangan`) VALUES
('130322000001', '2022-03-13 10:53:29', 5000, 8000, 3000, 1, 'eceran'),
('130322000002', '2022-03-13 10:56:43', 5000, 8000, 3000, 1, 'eceran'),
('130322000003', '2022-03-13 11:18:55', 25665, 30000, 4335, 1, 'eceran'),
('130322000004', '2022-03-13 12:12:24', 10000, 10000, 0, 1, 'eceran'),
('130322000005', '2022-03-13 12:14:42', 36331, 40000, 3669, 1, 'eceran'),
('150722000001', '2022-07-15 15:52:00', 5000, 5000, 0, 1, 'eceran'),
('150722000002', '2022-07-15 15:52:24', 5000, 33333, 28333, 1, 'eceran'),
('150722000003', '2022-07-15 15:52:52', 5000, 232323, 227323, 1, 'eceran'),
('150722000004', '2022-07-15 15:56:24', 5000, 22222, 17222, 1, 'eceran'),
('150722000005', '2022-07-15 15:59:57', 5000, 11111, 6111, 1, 'eceran'),
('150722000006', '2022-07-15 16:00:09', 5000, 22222, 17222, 1, 'eceran'),
('150722000007', '2022-07-15 16:00:20', 5000, 33333, 28333, 1, 'eceran'),
('1507220008', '2022-07-15 16:05:10', 10000, 22222, 12222, 1, 'eceran'),
('150722220009', '2022-07-15 16:05:19', 5000, 34343, 29343, 1, 'eceran'),
('150722220010', '2022-07-15 16:06:31', 5000, 20000, 15000, 1, 'eceran'),
('150722220011', '2022-07-15 16:06:52', 5000, 50000, 45000, 1, 'eceran'),
('150722220012', '2022-07-15 16:08:06', 5000, 21212, 16212, 1, 'eceran'),
('150722220013', '2022-07-15 16:08:57', 6000, 40404, 34404, 1, 'grosir'),
('150722220014', '2022-07-15 16:10:34', 6000, 40000, 34000, 1, 'grosir'),
('150722220015', '2022-07-15 16:16:32', 6000, 40000, 34000, 1, 'grosir'),
('150722220016', '2022-07-15 16:22:43', 6000, 30000, 24000, 1, 'grosir'),
('150722220017', '2022-07-15 16:25:54', 6000, 20000, 14000, 1, 'grosir'),
('150722220018', '2022-07-15 16:26:42', 6000, 50000, 44000, 1, 'grosir'),
('191221000001', '2021-12-19 11:46:41', 200000, 200000, 0, 1, 'eceran'),
('300922000001', '2022-09-30 14:59:22', 22444, 80000, 57556, 1, 'eceran');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`) VALUES
(52, 'ATK'),
(54, 'Kitab'),
(55, 'Kosmetik'),
(56, 'perlengkapan mandi '),
(57, 'snack '),
(58, 'obat'),
(59, 'gerabah'),
(60, 'bumbu'),
(61, 'alat listrik'),
(62, 'lampu'),
(63, 'baby need'),
(64, 'Sembako'),
(65, 'house cleaner '),
(66, 'milk and baby food '),
(67, 'cookies and biskuit '),
(68, 'minuman '),
(69, 'rokok '),
(70, 'Pembalut'),
(71, 'Susu'),
(72, 'Ice Cream ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_retur`
--

CREATE TABLE `tbl_retur` (
  `retur_id` int(11) NOT NULL,
  `retur_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `retur_barang_id` varchar(15) DEFAULT NULL,
  `retur_barang_nama` varchar(150) DEFAULT NULL,
  `retur_barang_satuan` varchar(30) DEFAULT NULL,
  `retur_harjul` double DEFAULT NULL,
  `retur_qty` int(11) DEFAULT NULL,
  `retur_subtotal` double DEFAULT NULL,
  `retur_keterangan` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_suplier`
--

CREATE TABLE `tbl_suplier` (
  `suplier_id` int(11) NOT NULL,
  `suplier_nama` varchar(35) DEFAULT NULL,
  `suplier_alamat` varchar(60) DEFAULT NULL,
  `suplier_notelp` varchar(20) DEFAULT NULL,
  `suplier_namabarang` varchar(200) DEFAULT NULL,
  `suplier_tanggal_pembelian` varchar(200) DEFAULT NULL,
  `suplier_utang` varchar(200) DEFAULT NULL,
  `suplier_jatuh_tempo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(35) DEFAULT NULL,
  `user_username` varchar(30) DEFAULT NULL,
  `user_password` varchar(35) DEFAULT NULL,
  `user_level` varchar(2) DEFAULT NULL,
  `user_status` varchar(2) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_nama`, `user_username`, `user_password`, `user_level`, `user_status`) VALUES
(1, 'admin', 'admin@admin.id', '21232f297a57a5a743894a0e4a801fc3', '1', '1'),
(2, 'kasir', 'kasir@kasir.id', 'c7911af3adbd12a035b289556d96470a', '2', '1'),
(7, 'gudang', 'gudang@gudang.id', '202446dd1d6028084426867365b0c7a1', '3', '1'),
(8, 'pimpinan', 'pimpinan@pimpinan.id', '90973652b88fe07d05a4304f0a945de8', '4', '1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indeks untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`barang_id`),
  ADD KEY `barang_user_id` (`barang_user_id`),
  ADD KEY `barang_kategori_id` (`barang_kategori_id`);

--
-- Indeks untuk tabel `tbl_beli`
--
ALTER TABLE `tbl_beli`
  ADD PRIMARY KEY (`beli_kode`),
  ADD KEY `beli_user_id` (`beli_user_id`),
  ADD KEY `beli_suplier_id` (`beli_suplier_id`),
  ADD KEY `beli_id` (`beli_kode`);

--
-- Indeks untuk tabel `tbl_departmnet`
--
ALTER TABLE `tbl_departmnet`
  ADD PRIMARY KEY (`dep_id`);

--
-- Indeks untuk tabel `tbl_detail_beli`
--
ALTER TABLE `tbl_detail_beli`
  ADD PRIMARY KEY (`d_beli_id`),
  ADD KEY `d_beli_barang_id` (`d_beli_barang_id`),
  ADD KEY `d_beli_nofak` (`d_beli_nofak`),
  ADD KEY `d_beli_kode` (`d_beli_kode`);

--
-- Indeks untuk tabel `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  ADD PRIMARY KEY (`d_jual_id`),
  ADD KEY `d_jual_barang_id` (`d_jual_barang_id`),
  ADD KEY `d_jual_nofak` (`d_jual_nofak`);

--
-- Indeks untuk tabel `tbl_jual`
--
ALTER TABLE `tbl_jual`
  ADD PRIMARY KEY (`jual_nofak`),
  ADD KEY `jual_user_id` (`jual_user_id`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `tbl_retur`
--
ALTER TABLE `tbl_retur`
  ADD PRIMARY KEY (`retur_id`);

--
-- Indeks untuk tabel `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
  ADD PRIMARY KEY (`suplier_id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_departmnet`
--
ALTER TABLE `tbl_departmnet`
  MODIFY `dep_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_detail_beli`
--
ALTER TABLE `tbl_detail_beli`
  MODIFY `d_beli_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  MODIFY `d_jual_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `tbl_retur`
--
ALTER TABLE `tbl_retur`
  MODIFY `retur_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
  MODIFY `suplier_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD CONSTRAINT `tbl_barang_ibfk_1` FOREIGN KEY (`barang_user_id`) REFERENCES `tbl_user` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_barang_ibfk_2` FOREIGN KEY (`barang_kategori_id`) REFERENCES `tbl_kategori` (`kategori_id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_beli`
--
ALTER TABLE `tbl_beli`
  ADD CONSTRAINT `tbl_beli_ibfk_1` FOREIGN KEY (`beli_user_id`) REFERENCES `tbl_user` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_beli_ibfk_2` FOREIGN KEY (`beli_suplier_id`) REFERENCES `tbl_suplier` (`suplier_id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_detail_beli`
--
ALTER TABLE `tbl_detail_beli`
  ADD CONSTRAINT `tbl_detail_beli_ibfk_1` FOREIGN KEY (`d_beli_barang_id`) REFERENCES `tbl_barang` (`barang_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_detail_beli_ibfk_2` FOREIGN KEY (`d_beli_kode`) REFERENCES `tbl_beli` (`beli_kode`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  ADD CONSTRAINT `tbl_detail_jual_ibfk_1` FOREIGN KEY (`d_jual_barang_id`) REFERENCES `tbl_barang` (`barang_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_detail_jual_ibfk_2` FOREIGN KEY (`d_jual_nofak`) REFERENCES `tbl_jual` (`jual_nofak`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_jual`
--
ALTER TABLE `tbl_jual`
  ADD CONSTRAINT `tbl_jual_ibfk_1` FOREIGN KEY (`jual_user_id`) REFERENCES `tbl_user` (`user_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
