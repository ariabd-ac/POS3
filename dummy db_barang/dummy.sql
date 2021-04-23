-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Nov 2020 pada 14.44
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dummy`
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
('83ff2a62354f5556ea9cc0b4e2394c60', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 1606566365, 'a:10:{s:9:\"user_data\";s:0:\"\";s:5:\"masuk\";b:1;s:4:\"user\";s:14:\"admin@admin.id\";s:5:\"akses\";s:1:\"1\";s:7:\"idadmin\";s:1:\"1\";s:4:\"nama\";s:5:\"admin\";s:5:\"nofak\";b:0;s:6:\"tglfak\";b:0;s:7:\"suplier\";b:0;s:13:\"cart_contents\";a:4:{s:32:\"568c3219be58af6d76758ed63fcc2f34\";a:11:{s:5:\"rowid\";s:32:\"568c3219be58af6d76758ed63fcc2f34\";s:2:\"id\";s:8:\"BR000050\";s:12:\"kode_barcode\";s:0:\"\";s:4:\"name\";s:18:\"Pulpen Kenko T-Gel\";s:6:\"satuan\";s:4:\"Unit\";s:6:\"harpok\";s:5:\"22000\";s:5:\"price\";s:4:\"3000\";s:4:\"disc\";s:1:\"0\";s:3:\"qty\";s:1:\"1\";s:6:\"amount\";s:4:\"3000\";s:8:\"subtotal\";i:3000;}s:32:\"e23fa41257034d3b1555a861a36c2b7c\";a:11:{s:5:\"rowid\";s:32:\"e23fa41257034d3b1555a861a36c2b7c\";s:2:\"id\";s:8:\"BR000056\";s:12:\"kode_barcode\";s:0:\"\";s:4:\"name\";s:16:\"Pulpen B-Gel 0.7\";s:6:\"satuan\";s:4:\"Unit\";s:6:\"harpok\";s:4:\"4500\";s:5:\"price\";s:4:\"5000\";s:4:\"disc\";s:1:\"0\";s:3:\"qty\";s:1:\"1\";s:6:\"amount\";s:4:\"5000\";s:8:\"subtotal\";i:5000;}s:11:\"total_items\";i:2;s:10:\"cart_total\";i:8000;}}'),
('ecb39a3dd5135e7ecb7446725c747474', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36', 1606571025, '');

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
  `barang_stok` int(11) DEFAULT '0',
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
('BR000001', '', 'Highlighter Joyko', 'Unit', 3350, 5000, 0, 100, 0, '2020-11-28 11:47:04', NULL, 52, 1),
('BR000002', '', 'Highlighter Kenko', 'Unit', 2950, 5000, 0, 100, 0, '2020-11-28 11:47:52', NULL, 52, 1),
('BR000003', '', 'Highlighter Safari', 'Unit', 0, 5000, 0, 100, 0, '2020-11-28 11:48:27', NULL, 52, 1),
('BR000004', '', 'Eraser Big Besar', 'Unit', 0, 3000, 0, 0, 0, '2020-11-28 11:49:03', NULL, 52, 1),
('BR000005', '', 'Eraser Big Kecil', 'Unit', 0, 2000, 0, 0, 0, '2020-11-28 11:49:30', NULL, 52, 1),
('BR000006', '', 'Eraser Faber-Castell', 'Unit', 0, 3000, 0, 100, 0, '2020-11-28 11:50:12', NULL, 52, 1),
('BR000007', '', 'Eraser WB', 'Unit', 0, 0, 0, 100, 0, '2020-11-28 11:50:37', '2020-11-28 18:50:58', 52, 1),
('BR000008', '', 'Eraser Staedtler', 'Unit', 72500, 3000, 0, 0, 0, '2020-11-28 11:51:50', NULL, 52, 1),
('BR000009', '', 'Eraser Karakter', 'PCS', 11000, 1000, 20000, 0, 0, '2020-11-28 11:52:45', NULL, 52, 1),
('BR000010', '', 'Eraser Joyko Kecil', 'Unit', 23500, 1000, 25000, 0, 0, '2020-11-28 11:53:44', NULL, 52, 1),
('BR000011', '', 'Eraser Joyko Besar', 'Unit', 0, 2500, 40000, 0, 0, '2020-11-28 11:55:26', NULL, 52, 1),
('BR000012', '', 'Eraser Joyko Karakter', 'Unit', 0, 2500, 40000, 0, 0, '2020-11-28 11:56:22', NULL, 52, 1),
('BR000013', '', 'Highlighter Trifelo', 'Unit', 17000, 3000, 30000, 0, 0, '2020-11-28 11:57:17', NULL, 52, 1),
('BR000014', '', 'Stick Notes 44mm x 12mm', 'PCS', 0, 6000, 0, 0, 0, '2020-11-28 11:58:14', NULL, 52, 1),
('BR000015', '', 'Stick Notes 2 x 1.5 Inch', 'Unit', 0, 4000, 0, 0, 0, '2020-11-28 11:58:58', NULL, 52, 1),
('BR000016', '', 'Stick Notes 3 x 2 Inch', 'Unit', 5000, 6000, 0, 0, 0, '2020-11-28 11:59:23', NULL, 52, 1),
('BR000017', '', 'Stick Notes 3 x 3 Inch', 'Unit', 7000, 8000, 0, 0, 0, '2020-11-28 12:00:02', NULL, 52, 1),
('BR000018', '', 'Stick Notes 3 x 4 Inch', 'Unit', 0, 10000, 0, 0, 0, '2020-11-28 12:00:50', NULL, 52, 1),
('BR000019', '', 'Stick Notes Karakter', 'Unit', 0, 6000, 0, 0, 0, '2020-11-28 12:01:40', NULL, 52, 1),
('BR000020', '', 'Stick Notes Shintoeng M-20', 'Unit', 0, 12000, 0, 0, 0, '2020-11-28 12:02:05', NULL, 52, 1),
('BR000021', '', 'Ganci Name', 'Unit', 0, 1000, 0, 0, 0, '2020-11-28 12:03:00', NULL, 52, 1),
('BR000022', '', 'Binder Clips Karakter', 'Unit', 0, 1000, 0, 0, 0, '2020-11-28 12:03:27', NULL, 52, 1),
('BR000023', '', 'Binder Clips Rainbow', 'Unit', 650, 1000, 0, 0, 0, '2020-11-28 12:03:54', NULL, 52, 1),
('BR000024', '', 'Binder Clips No.107', 'Unit', 2500, 0, 5000, 0, 0, '2020-11-28 12:04:56', NULL, 52, 1),
('BR000025', '', 'Binder Clips No.111', 'Unit', 4000, 0, 6000, 0, 0, '2020-11-28 12:05:20', NULL, 52, 1),
('BR000026', '', 'Binder Clips No.155', 'Unit', 5700, 0, 9000, 0, 0, '2020-11-28 12:05:40', NULL, 52, 1),
('BR000027', '', 'Binder Clips No.105', 'Unit', 2310, 0, 4000, 0, 0, '2020-11-28 12:06:12', NULL, 52, 1),
('BR000028', '', 'Binder Clips No.200', 'Unit', 9100, 0, 13000, 0, 0, '2020-11-28 12:06:42', NULL, 52, 1),
('BR000029', '', 'Binder Clips No.260', 'Unit', 14500, 0, 18000, 0, 0, '2020-11-28 12:07:23', NULL, 52, 1),
('BR000030', '', 'Pensi Safari', 'Unit', 6600, 1000, 9000, 0, 0, '2020-11-28 12:09:25', NULL, 52, 1),
('BR000031', '', 'Pensil Handy', 'Unit', 875, 1500, 12000, 0, 0, '2020-11-28 12:09:52', NULL, 52, 1),
('BR000032', '', 'Pensil Safari Karakter', 'Unit', 0, 1000, 10000, 0, 0, '2020-11-28 12:10:31', NULL, 52, 1),
('BR000033', '', 'Pensil VIS-1', 'Unit', 0, 1000, 10000, 10, 0, '2020-11-28 12:11:05', '2020-11-28 19:17:39', 52, 1),
('BR000034', '', 'Pensil Joyko Karakter', 'Unit', 0, 1000, 43000, 0, 0, '2020-11-28 12:11:23', NULL, 52, 1),
('BR000035', '', 'Pensil BIG', 'Unit', 0, 2000, 18000, 0, 0, '2020-11-28 12:12:15', NULL, 52, 1),
('BR000036', '', 'Pensil 2B Faber Cstl', 'Unit', 39500, 4000, 0, 0, 0, '2020-11-28 12:13:01', NULL, 52, 1),
('BR000037', '', 'Pensil 4B Faber Cstl', 'Unit', 39000, 0, 0, 0, 0, '2020-11-28 12:13:37', NULL, 52, 1),
('BR000038', '', 'Pensil 2B Staedler ', 'Unit', 34250, 3000, 0, 0, 0, '2020-11-28 12:14:08', NULL, 52, 1),
('BR000039', '', 'Pensil 3B Staedler', 'Unit', 0, 5000, 0, 0, 0, '2020-11-28 12:14:37', NULL, 52, 1),
('BR000040', '', 'Pensil 6B Staedler', 'Unit', 0, 8000, 0, 0, 0, '2020-11-28 12:15:00', NULL, 52, 1),
('BR000041', '', 'Pensil 8B EE Staedler', 'Unit', 0, 10000, 0, 0, 0, '2020-11-28 12:15:45', NULL, 52, 1),
('BR000042', '', 'Pensil 8B Black Staedler', 'Unit', 0, 10000, 0, 0, 0, '2020-11-28 12:16:14', NULL, 52, 1),
('BR000043', '', 'Pensil H Staedler', 'Unit', 0, 7500, 0, 0, 0, '2020-11-28 12:16:39', NULL, 52, 1),
('BR000044', '', 'Pensil Kenko MP070', 'Unit', 0, 0, 0, 0, 0, '2020-11-28 12:17:17', NULL, 52, 1),
('BR000045', '', 'Pensil Joyko MP19', 'Unit', 3250, 4000, 0, 0, 0, '2020-11-28 12:18:35', NULL, 52, 1),
('BR000046', '', 'Pulpen X Data', 'Lusin', 7250, 1000, 9000, 10, 0, '2020-11-28 12:19:25', '2020-11-28 19:20:49', 52, 1),
('BR000047', '', 'Pulpen X Data', 'PCS', 605, 1000, 9000, 10, 0, '2020-11-28 12:20:14', '2020-11-28 19:20:41', 52, 1),
('BR000048', '', 'Pulpen Standar AE7', 'Unit', 15250, 2000, 20000, 0, 0, '2020-11-28 12:21:58', NULL, 52, 1),
('BR000049', '', 'Pulpen Standar Kenko', 'Unit', 17300, 2000, 22000, 0, 0, '2020-11-28 12:22:26', NULL, 52, 1),
('BR000050', '', 'Pulpen Kenko T-Gel', 'Unit', 22000, 3000, 0, 10, 0, '2020-11-28 12:23:08', '2020-11-28 19:23:59', 52, 1),
('BR000051', '', 'Pulpen Kenko Win Jeller', 'Unit', 24000, 3000, 0, 0, 0, '2020-11-28 12:24:59', NULL, 52, 1),
('BR000052', '', 'Pulpen Kenko Fasy Gel', 'Unit', 2350, 3000, 0, 0, 0, '2020-11-28 12:25:31', NULL, 52, 1),
('BR000053', '', 'Pulpen T120 0.5 mm', 'Unit', 0, 4000, 0, 10, 0, '2020-11-28 12:26:05', '2020-11-28 19:26:20', 52, 1),
('BR000054', '', 'Pulpen Kenko K-1', 'Unit', 0, 5000, 0, 0, 0, '2020-11-28 12:26:46', NULL, 52, 1),
('BR000055', '', 'Pulpen B-Gel 0.5', 'Unit', 4500, 5000, 0, 0, 0, '2020-11-28 12:27:15', NULL, 52, 1),
('BR000056', '', 'Pulpen B-Gel 0.7', 'Unit', 4500, 5000, 0, 10, 0, '2020-11-28 12:27:45', '2020-11-28 19:28:04', 52, 1),
('BR000057', '', 'Pulpen Hi - Tech H', 'Unit', 2920, 5000, 0, 0, 0, '2020-11-28 12:28:29', NULL, 52, 1),
('BR000058', '', 'Pulpen Hitech (Rainbow)', 'Unit', 0, 5000, 0, 10, 0, '2020-11-28 12:29:53', '2020-11-28 19:30:14', 52, 1);

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
(53, 'Kitab');

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
-- AUTO_INCREMENT untuk tabel `tbl_detail_beli`
--
ALTER TABLE `tbl_detail_beli`
  MODIFY `d_beli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  MODIFY `d_jual_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `tbl_retur`
--
ALTER TABLE `tbl_retur`
  MODIFY `retur_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
  MODIFY `suplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
