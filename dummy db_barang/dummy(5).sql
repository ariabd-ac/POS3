-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Nov 2020 pada 19.17
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
('479f746c551577a08c38ff152ab1c05e', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 1606673801, 'a:9:{s:9:\"user_data\";s:0:\"\";s:5:\"masuk\";b:1;s:4:\"user\";s:14:\"admin@admin.id\";s:5:\"akses\";s:1:\"1\";s:7:\"idadmin\";s:1:\"1\";s:4:\"nama\";s:5:\"admin\";s:5:\"nofak\";s:2:\"SJ\";s:6:\"tglfak\";s:10:\"2020-11-30\";s:7:\"suplier\";s:1:\"8\";}');

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
('BR000001', '', 'AL-Quran', 'Unit', 0, 5000, 0, 10, 0, '2020-11-28 11:47:04', '2020-11-30 01:15:48', 52, 1),
('BR000002', '', 'Highlighter Kenko', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-28 11:47:52', '2020-11-28 22:30:27', 52, 1),
('BR000003', '', 'Highlighter Safari', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-28 11:48:27', '2020-11-28 22:30:35', 52, 1),
('BR000004', '', 'Eraser Big Besar', 'Unit', NULL, 3000, 0, 0, 0, '2020-11-28 11:49:03', NULL, 52, 1),
('BR000005', '', 'Eraser Big Kecil', 'Unit', NULL, 2000, 0, 0, 0, '2020-11-28 11:49:30', NULL, 52, 1),
('BR000006', '', 'Eraser Faber-Castell', 'Unit', NULL, 3000, 0, 0, 0, '2020-11-28 11:50:12', '2020-11-29 18:22:31', 52, 1),
('BR000007', '', 'Eraser WB', 'Unit', NULL, 0, 0, 0, 0, '2020-11-28 11:50:37', '2020-11-28 22:30:50', 52, 1),
('BR000008', '', 'Eraser Staedtler', 'Unit', NULL, 3000, 0, 0, 0, '2020-11-28 11:51:50', NULL, 52, 1),
('BR000009', '', 'Eraser Karakter', 'PCS', NULL, 1000, 20000, 0, 0, '2020-11-28 11:52:45', NULL, 52, 1),
('BR000010', '', 'Eraser Joyko Kecil', 'Unit', NULL, 1000, 25000, 0, 0, '2020-11-28 11:53:44', NULL, 52, 1),
('BR000011', '', 'Eraser Joyko Besar', 'Unit', NULL, 2500, 40000, 0, 0, '2020-11-28 11:55:26', NULL, 52, 1),
('BR000012', '', 'Eraser Joyko Karakter', 'Unit', NULL, 2500, 40000, 0, 0, '2020-11-28 11:56:22', NULL, 52, 1),
('BR000013', '', 'Highlighter Trifelo', 'Unit', NULL, 3000, 30000, 0, 0, '2020-11-28 11:57:17', NULL, 52, 1),
('BR000014', '', 'Stick Notes 44mm x 12mm', 'PCS', NULL, 6000, 0, 10, 0, '2020-11-28 11:58:14', '2020-11-29 18:18:50', 52, 1),
('BR000015', '', 'Stick Notes 2 x 1.5 Inch', 'Unit', NULL, 4000, 0, 0, 0, '2020-11-28 11:58:58', NULL, 52, 1),
('BR000016', '', 'Stick Notes 3 x 2 Inch', 'Unit', NULL, 6000, 0, 0, 0, '2020-11-28 11:59:23', NULL, 52, 1),
('BR000017', '', 'Stick Notes 3 x 3 Inch', 'Unit', NULL, 8000, 0, 0, 0, '2020-11-28 12:00:02', NULL, 52, 1),
('BR000018', '', 'Stick Notes 3 x 4 Inch', 'Unit', NULL, 10000, 0, 0, 0, '2020-11-28 12:00:50', NULL, 52, 1),
('BR000019', '', 'Stick Notes Karakter', 'Unit', NULL, 6000, 0, 0, 0, '2020-11-28 12:01:40', NULL, 52, 1),
('BR000020', '', 'Stick Notes Shintoeng M-20', 'Unit', NULL, 12000, 0, 0, 0, '2020-11-28 12:02:05', NULL, 52, 1),
('BR000021', '', 'Ganci Name', 'Unit', NULL, 1000, 0, 0, 0, '2020-11-28 12:03:00', NULL, 52, 1),
('BR000022', '', 'Binder Clips Karakter', 'Unit', NULL, 1000, 0, 0, 0, '2020-11-28 12:03:27', NULL, 52, 1),
('BR000023', '', 'Binder Clips Rainbow', 'Unit', NULL, 1000, 0, 0, 0, '2020-11-28 12:03:54', NULL, 52, 1),
('BR000024', '', 'Binder Clips No.107', 'Unit', NULL, 0, 5000, 0, 0, '2020-11-28 12:04:56', NULL, 52, 1),
('BR000025', '', 'Binder Clips No.111', 'Unit', NULL, 0, 6000, 0, 0, '2020-11-28 12:05:20', NULL, 52, 1),
('BR000026', '', 'Binder Clips No.155', 'Unit', NULL, 0, 9000, 0, 0, '2020-11-28 12:05:40', NULL, 52, 1),
('BR000027', '', 'Binder Clips No.105', 'Unit', NULL, 0, 4000, 0, 0, '2020-11-28 12:06:12', NULL, 52, 1),
('BR000028', '', 'Binder Clips No.200', 'Unit', NULL, 0, 13000, 0, 0, '2020-11-28 12:06:42', NULL, 52, 1),
('BR000029', '', 'Binder Clips No.260', 'Unit', NULL, 0, 18000, 0, 0, '2020-11-28 12:07:23', NULL, 52, 1),
('BR000030', '', 'Pensi Safari', 'Unit', NULL, 1000, 9000, 0, 0, '2020-11-28 12:09:25', NULL, 52, 1),
('BR000031', '', 'Pensil Handy', 'Unit', NULL, 1500, 12000, 0, 0, '2020-11-28 12:09:52', NULL, 52, 1),
('BR000032', '', 'Pensil Safari Karakter', 'Unit', NULL, 1000, 10000, 0, 0, '2020-11-28 12:10:31', NULL, 52, 1),
('BR000033', '', 'Pensil VIS-1', 'Unit', NULL, 1000, 10000, 0, 0, '2020-11-28 12:11:05', '2020-11-28 22:31:05', 52, 1),
('BR000034', '', 'Pensil Joyko Karakter', 'Unit', NULL, 1000, 43000, 0, 0, '2020-11-28 12:11:23', NULL, 52, 1),
('BR000035', '', 'Pensil BIG', 'Unit', NULL, 2000, 18000, 0, 0, '2020-11-28 12:12:15', NULL, 52, 1),
('BR000036', '', 'Pensil 2B Faber Cstl', 'Unit', NULL, 4000, 0, 0, 0, '2020-11-28 12:13:01', NULL, 52, 1),
('BR000037', '', 'Pensil 4B Faber Cstl', 'Unit', NULL, 0, 0, 0, 0, '2020-11-28 12:13:37', NULL, 52, 1),
('BR000038', '', 'Pensil 2B Staedler ', 'Unit', NULL, 3000, 0, 0, 0, '2020-11-28 12:14:08', NULL, 52, 1),
('BR000039', '', 'Pensil 3B Staedler', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-28 12:14:37', NULL, 52, 1),
('BR000040', '', 'Pensil 6B Staedler', 'Unit', NULL, 8000, 0, 0, 0, '2020-11-28 12:15:00', NULL, 52, 1),
('BR000041', '', 'Pensil 8B EE Staedler', 'Unit', NULL, 10000, 0, 0, 0, '2020-11-28 12:15:45', NULL, 52, 1),
('BR000042', '', 'Pensil 8B Black Staedler', 'Unit', NULL, 10000, 0, 0, 0, '2020-11-28 12:16:14', NULL, 52, 1),
('BR000043', '', 'Pensil H Staedler', 'Unit', NULL, 7500, 0, 0, 0, '2020-11-28 12:16:39', NULL, 52, 1),
('BR000044', '', 'Pensil Kenko MP070', 'Unit', NULL, 0, 0, 0, 0, '2020-11-28 12:17:17', NULL, 52, 1),
('BR000045', '', 'Pensil Joyko MP19', 'Unit', NULL, 4000, 0, 0, 0, '2020-11-28 12:18:35', NULL, 52, 1),
('BR000047', '', 'Pulpen X Data', 'PCS', NULL, 1000, 9000, 0, 0, '2020-11-28 12:20:14', '2020-11-28 22:31:41', 52, 1),
('BR000048', '', 'Pulpen Standar AE7', 'Unit', NULL, 2000, 20000, 0, 0, '2020-11-28 12:21:58', NULL, 52, 1),
('BR000049', '', 'Pulpen Standar Kenko', 'Unit', NULL, 2000, 22000, 0, 0, '2020-11-28 12:22:26', NULL, 52, 1),
('BR000050', '', 'Pulpen Kenko T-Gel', 'Unit', NULL, 3000, 0, 0, 0, '2020-11-28 12:23:08', '2020-11-29 18:10:07', 52, 1),
('BR000051', '', 'Pulpen Kenko Win Jeller', 'Unit', NULL, 3000, 0, 0, 0, '2020-11-28 12:24:59', NULL, 52, 1),
('BR000052', '', 'Pulpen Kenko Fasy Gel', 'Unit', NULL, 3000, 0, 0, 0, '2020-11-28 12:25:31', NULL, 52, 1),
('BR000053', '', 'Pulpen T120 0.5 mm', 'Unit', NULL, 4000, 0, 0, 0, '2020-11-28 12:26:05', '2020-11-28 22:31:53', 52, 1),
('BR000054', '', 'Pulpen Kenko K-1', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-28 12:26:46', NULL, 52, 1),
('BR000055', '', 'Pulpen B-Gel 0.5', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-28 12:27:15', NULL, 52, 1),
('BR000056', '', 'Pulpen B-Gel 0.7', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-28 12:27:45', '2020-11-28 22:32:03', 52, 1),
('BR000057', '', 'Pulpen Hi - Tech H', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-28 12:28:29', NULL, 52, 1),
('BR000058', '', 'Pulpen Hitech Rainbow', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-28 12:29:53', '2020-11-28 22:32:59', 52, 1),
('BR000059', '', 'Pulpen Hitech-H Safari', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-28 15:33:27', NULL, 52, 1),
('BR000060', '', 'Pulpen Hitech-C', 'Unit', NULL, 23000, 0, 0, 0, '2020-11-28 15:34:14', NULL, 52, 1),
('BR000061', '', 'Refil Hitech - C', 'Unit', NULL, 15000, 0, 0, 0, '2020-11-28 15:34:46', NULL, 52, 1),
('BR000062', '', 'Pentel 0.8 mm', 'Unit', NULL, 20000, 0, 0, 0, '2020-11-28 15:35:12', NULL, 52, 1),
('BR000063', '', 'Penter', 'Unit', NULL, 15000, 0, 0, 0, '2020-11-28 15:35:33', NULL, 52, 1),
('BR000064', '', 'Pulpen Snowman v-5', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-28 15:36:03', NULL, 52, 1),
('BR000065', '', 'Pulpen ezslide', 'Unit', NULL, 0, 0, 0, 0, '2020-11-28 15:36:41', NULL, 52, 1),
('BR000066', '', 'Pulpen 1-penx', 'Unit', NULL, 0, 0, 0, 0, '2020-11-28 15:37:11', NULL, 52, 1),
('BR000067', '', 'Pulpen Ti20 Gel1.0', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-28 15:38:10', NULL, 52, 1),
('BR000068', '', 'Pulpen Zebera Penciltic', 'Unit', NULL, 4000, 0, 0, 0, '2020-11-28 15:38:57', NULL, 52, 1),
('BR000069', '', 'Pulpen V-TRO Gel', 'Unit', NULL, 2500, 0, 0, 0, '2020-11-28 15:39:25', NULL, 52, 1),
('BR000070', '', 'Pulpen GM', 'Unit', NULL, 6000, 0, 0, 0, '2020-11-28 15:39:52', NULL, 52, 1),
('BR000071', '', 'Pulpen Stylus i-pen', 'Unit', NULL, 3000, 0, 0, 0, '2020-11-28 15:40:27', NULL, 52, 1),
('BR000072', '', 'Pulpen Aligator', 'Unit', NULL, 0, 15000, 0, 0, '2020-11-28 15:40:45', NULL, 52, 1),
('BR000073', '', 'Pulpen Pilot', 'Unit', NULL, 2000, 22000, 0, 0, '2020-11-28 15:41:52', NULL, 52, 1),
('BR000074', '', 'Pulpen Faster', 'Unit', NULL, 0, 0, 0, 0, '2020-11-28 15:42:43', NULL, 52, 1),
('BR000075', '', 'Pulpen Jansen', 'Unit', NULL, 0, 0, 0, 0, '2020-11-28 15:42:58', NULL, 52, 1),
('BR000076', '', 'Pulpen M2000', 'Unit', NULL, 2000, 0, 0, 0, '2020-11-28 15:43:30', NULL, 52, 1),
('BR000077', '', 'Pulpen Bolpenku', 'Unit', NULL, 1000, 9000, 0, 0, '2020-11-28 15:43:58', NULL, 52, 1),
('BR000078', '', 'Pulpen Ti20 0.5', 'Unit', NULL, 3000, 30000, 0, 0, '2020-11-28 15:44:31', NULL, 52, 1),
('BR000079', '', 'Pulpen Yamano 0.38', 'Unit', NULL, 2000, 20000, 0, 0, '2020-11-28 15:44:54', NULL, 52, 1),
('BR000080', '', 'Pulpen Safari 800', 'Unit', NULL, 2500, 0, 0, 0, '2020-11-28 15:45:15', NULL, 52, 1),
('BR000081', '', 'Pulpen Techjob', 'Unit', NULL, 3000, 30000, 0, 0, '2020-11-28 15:45:38', NULL, 52, 1),
('BR000082', '', 'Pulpen ESCO Gliter', 'Unit', NULL, 1500, 12000, 0, 0, '2020-11-28 15:46:12', NULL, 52, 1),
('BR000083', '', 'Drawing Pen', 'Unit', NULL, 8000, 0, 0, 0, '2020-11-28 15:46:34', NULL, 52, 1),
('BR000084', '', 'Drawing Pen Callygrafi', 'Unit', NULL, 10000, 0, 0, 0, '2020-11-28 15:47:06', NULL, 52, 1),
('BR000085', '', 'Pulpen Joyko Diamond', 'Unit', NULL, 2500, 20000, 0, 0, '2020-11-28 15:47:31', NULL, 52, 1),
('BR000086', '', 'Refil Pulpen Yi Hao', 'Unit', NULL, 12000, 0, 0, 0, '2020-11-28 15:47:55', NULL, 52, 1),
('BR000087', '', 'Refill pulpen mastona', 'Unit', NULL, 1000, 12000, 0, 0, '2020-11-28 15:49:34', NULL, 52, 1),
('BR000088', '', 'Spidol Permanen Marker', 'Unit', NULL, 7500, 85000, 0, 0, '2020-11-28 15:50:05', NULL, 52, 1),
('BR000089', '', 'Spidol white board', 'Unit', NULL, 7500, 85000, 0, 0, '2020-11-28 15:50:41', NULL, 52, 1),
('BR000090', '', 'Spidol snowman white', 'Unit', NULL, 15000, 17400, 0, 0, '2020-11-28 15:51:20', NULL, 52, 1),
('BR000091', '', 'Spidol snowman gold', 'Unit', NULL, 15000, 0, 0, 0, '2020-11-28 15:51:41', NULL, 52, 1),
('BR000092', '', 'Spidol snowman silver', 'Unit', NULL, 15000, 0, 0, 0, '2020-11-28 15:52:00', NULL, 52, 1),
('BR000093', '', 'Spidol snowman pencil ', 'Unit', NULL, 1500, 13000, 0, 0, '2020-11-28 15:52:24', NULL, 52, 1),
('BR000094', '', 'Spidol snowman 500', 'Unit', NULL, 20000, 0, 0, 0, '2020-11-28 15:52:49', NULL, 52, 1),
('BR000095', '', 'Refil Ink Snowman', 'Unit', NULL, 16000, 186000, 0, 0, '2020-11-28 15:53:51', NULL, 52, 1),
('BR000096', '', 'Refil Ink Snow Permanent', 'Unit', NULL, 10000, 0, 0, 0, '2020-11-28 15:54:15', NULL, 52, 1),
('BR000097', '', 'Pensil Sharpener D.holes', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-28 15:55:42', NULL, 52, 1),
('BR000098', '', 'Pensil Sharpener Birds', 'Unit', NULL, 3000, 0, 0, 0, '2020-11-28 15:56:13', NULL, 52, 1),
('BR000099', '', 'Pensil Sharpener Yi Mei', 'Unit', NULL, 3000, 0, 0, 0, '2020-11-28 15:56:40', NULL, 52, 1),
('BR000100', '', 'Pensil Sharpener L.Pony', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-28 16:01:26', NULL, 52, 1),
('BR000101', '', 'Pensil Sharpener Montana', 'Unit', NULL, 1000, 17000, 0, 0, '2020-11-28 16:01:43', NULL, 52, 1),
('BR000102', '', 'Kapur Sarjana Rainbow', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-28 16:02:00', NULL, 52, 1),
('BR000103', '', 'Kapur Tulis NMK', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-28 16:02:20', NULL, 52, 1),
('BR000104', '', 'Origami 12x12', 'Unit', NULL, 3000, 0, 0, 0, '2020-11-28 16:03:22', NULL, 52, 1),
('BR000105', '', 'Origami 14x14', 'PCS', NULL, 5000, 0, 0, 0, '2020-11-28 16:04:06', NULL, 52, 1),
('BR000106', '', 'Origami 16x16', 'Unit', NULL, 6000, 0, 0, 0, '2020-11-28 16:04:28', NULL, 52, 1),
('BR000107', '', 'Origami 2020', 'Unit', NULL, 8000, 0, 0, 0, '2020-11-28 16:04:52', NULL, 52, 1),
('BR000108', '', 'Paper Clips Vis-1 No.3', 'Unit', NULL, 2000, 0, 0, 0, '2020-11-28 16:05:18', NULL, 52, 1),
('BR000109', '', 'Paper Clips Joyko No.5', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-28 16:06:18', NULL, 52, 1),
('BR000110', '', 'Colour pencils FC 115852', 'Unit', NULL, 27000, 0, 0, 0, '2020-11-28 16:07:14', NULL, 52, 1),
('BR000111', '', 'Colour pencils FC  115851', 'Unit', NULL, 14000, 0, 0, 0, '2020-11-28 16:07:36', NULL, 52, 1),
('BR000112', '', 'Colour pencils  Std 136 C12', 'Unit', NULL, 23000, 0, 0, 0, '2020-11-28 16:08:03', NULL, 52, 1),
('BR000113', '', 'Colour pencils Std 136 01', 'Unit', NULL, 14000, 0, 0, 0, '2020-11-28 16:08:30', NULL, 52, 1),
('BR000114', '', 'Colour pencils  Joyko 24PB', 'Unit', NULL, 24000, 0, 0, 0, '2020-11-28 16:09:03', NULL, 52, 1),
('BR000115', '', 'Colour pencils  Joyko 12PB', 'Unit', NULL, 12000, 0, 0, 0, '2020-11-28 16:09:31', NULL, 52, 1),
('BR000116', '', 'Colour pencil Joyko s12', 'Unit', NULL, 0, 0, 0, 0, '2020-11-29 11:11:53', NULL, 52, 1),
('BR000117', '', 'Oil Pastel Joyko 2CR', 'Unit', NULL, 12000, 0, 0, 0, '2020-11-29 11:12:20', NULL, 52, 1),
('BR000118', '', 'Oil Pastel Joyko 12S', 'Unit', NULL, 15000, 0, 0, 0, '2020-11-29 11:12:54', NULL, 52, 1),
('BR000119', '', 'Twist Crayons Ti-CP-12T', 'Unit', NULL, 30000, 0, 0, 0, '2020-11-29 11:13:30', NULL, 52, 1),
('BR000120', '', 'Twist Crayons Ti-CP-12 Mini', 'Unit', NULL, 0, 0, 10, 0, '2020-11-29 11:14:00', '2020-11-29 18:22:48', 52, 1),
('BR000121', '3', 'Oil Pastel Joyko OP-245', 'Unit', NULL, 20000, 0, 10, 0, '2020-11-29 11:14:29', '2020-11-29 18:21:44', 52, 1),
('BR000122', '2', 'Oil Pastel Joyko OP-485', 'Unit', NULL, 0, 0, 0, 0, '2020-11-29 11:14:57', '2020-11-29 18:23:02', 52, 1),
('BR000123', '', 'Oil Pastel Joyko OP-185', 'Unit', NULL, 30000, 0, 0, 0, '2020-11-29 11:25:15', NULL, 52, 1),
('BR000124', '', 'Oil Pastel Joyko OP-365', 'Unit', NULL, 0, 0, 0, 0, '2020-11-29 11:25:31', NULL, 52, 1),
('BR000125', '', 'Oil Pastel Joyko OP-555', 'Unit', NULL, 85000, 0, 0, 0, '2020-11-29 11:26:02', NULL, 52, 1),
('BR000126', '', 'Remote Stand arc', 'Unit', NULL, 15000, 0, 0, 0, '2020-11-29 11:26:26', NULL, 52, 1),
('BR000127', '', 'Opini guitar water colour', 'Unit', NULL, 10000, 0, 0, 0, '2020-11-29 11:26:54', NULL, 52, 1),
('BR000128', '', 'V-TRO Oil Colour', 'Unit', NULL, 0, 0, 0, 0, '2020-11-29 11:27:12', NULL, 52, 1),
('BR000129', '', 'Lem glukol kecil', 'Unit', NULL, 1500, 0, 0, 0, '2020-11-29 11:27:38', NULL, 52, 1),
('BR000130', '', 'Lem glukol sedang', 'Unit', NULL, 3000, 0, 0, 0, '2020-11-29 11:27:58', NULL, 52, 1),
('BR000131', '', 'Lem glukol besar', 'Unit', NULL, 8000, 0, 0, 0, '2020-11-29 11:28:26', NULL, 52, 1),
('BR000132', '', 'Lem Fox Plus 20 G', 'Unit', NULL, 6000, 0, 0, 0, '2020-11-29 11:29:00', NULL, 52, 1),
('BR000133', '', 'Lem Fox PVAC 150 G', 'Unit', NULL, 10000, 0, 0, 0, '2020-11-29 11:29:38', NULL, 52, 1),
('BR000134', '', 'Lem Fox Plamur', 'Unit', NULL, 10000, 0, 0, 0, '2020-11-29 11:32:08', NULL, 52, 1),
('BR000135', '', 'Lem Joyko GL-R35', 'Unit', NULL, 3000, 0, 0, 0, '2020-11-29 11:32:29', NULL, 52, 1),
('BR000136', '', 'Lem Joyko GL-R50', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-29 11:32:54', NULL, 52, 1),
('BR000137', '', 'Glue Stick Kenko 8gr', 'Unit', NULL, 3000, 75000, 0, 0, '2020-11-29 11:33:30', NULL, 52, 1),
('BR000138', '', 'Glue Stick D-4236', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-29 11:34:11', NULL, 52, 1),
('BR000139', '', 'Lem Fox C1.01.061', 'Unit', NULL, 10000, 0, 0, 0, '2020-11-29 11:34:41', NULL, 52, 1),
('BR000140', '', 'Lem Styrofoam 50ml', 'Unit', NULL, 6000, 0, 0, 0, '2020-11-29 11:35:18', NULL, 52, 1),
('BR000141', '', 'Lem Styrofoam 100ml', 'Unit', NULL, 12000, 0, 0, 0, '2020-11-29 11:35:44', NULL, 52, 1),
('BR000142', '', 'Lem Astro  16-60', 'Unit', NULL, 0, 0, 0, 0, '2020-11-29 11:35:59', NULL, 52, 1),
('BR000143', '', 'Lem Astro  16 -110', 'Unit', NULL, 17000, 0, 0, 0, '2020-11-29 11:36:28', '2020-11-29 18:43:46', 52, 1),
('BR000144', '', 'Lem Castol Mini', 'Unit', NULL, 6000, 0, 0, 0, '2020-11-29 11:44:18', NULL, 52, 1),
('BR000145', '', 'Nationall Tape', 'Unit', NULL, 7000, 0, 0, 0, '2020-11-29 11:52:42', NULL, 52, 1),
('BR000146', '', 'Lem G W-20', 'Unit', NULL, 7000, 0, 0, 0, '2020-11-29 11:53:07', NULL, 52, 1),
('BR000147', '', 'Lem atrico company', 'Unit', NULL, 0, 0, 0, 0, '2020-11-29 11:53:24', '2020-11-29 18:54:02', 52, 1),
('BR000148', '', 'Lem atrico 101', 'Unit', NULL, 2500, 0, 0, 0, '2020-11-29 11:53:51', NULL, 52, 1),
('BR000149', '', 'Lem atrico 110', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-29 11:54:29', NULL, 52, 1),
('BR000150', '', 'Super flue M2000', 'Unit', NULL, 3000, 0, 0, 0, '2020-11-29 11:54:46', NULL, 52, 1),
('BR000151', '', 'Lem UHU 20ml', 'Unit', NULL, 10000, 0, 0, 0, '2020-11-29 11:55:13', NULL, 52, 1),
('BR000152', '', 'Lem UHU Fast Ultra ', 'Unit', NULL, 7000, 0, 0, 0, '2020-11-29 11:55:33', NULL, 52, 1),
('BR000153', '', 'Lem Dextone', 'Unit', NULL, 18000, 0, 0, 0, '2020-11-29 11:55:55', NULL, 52, 1),
('BR000154', '', 'Lem Oke Bond', 'Unit', NULL, 3000, 0, 0, 0, '2020-11-29 11:56:09', NULL, 52, 1),
('BR000155', '', 'Lem G 2000', 'Unit', NULL, 3000, 0, 0, 0, '2020-11-29 11:56:34', NULL, 52, 1),
('BR000156', '', 'Lem Sipplas', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-29 11:56:49', NULL, 52, 1),
('BR000157', '', 'Nachi Stationary Keal', 'Unit', NULL, 1000, 0, 0, 0, '2020-11-29 11:57:15', NULL, 52, 1),
('BR000158', '', 'Cloth Premium tape 2', 'Unit', 0, 15000, 0, 0, 0, '2020-11-29 11:57:51', '2020-11-29 23:49:46', 52, 1),
('BR000159', '', 'Goii tape 5 mill 5.8 inch', 'Unit', NULL, 1000, 0, 0, 0, '2020-11-29 12:20:42', NULL, 52, 1),
('BR000160', '', 'Seal tape 1.2 x 10m', 'Unit', NULL, 2000, 0, 0, 0, '2020-11-29 12:21:05', NULL, 52, 1),
('BR000161', '', 'Seal tape besar', 'Unit', NULL, 4000, 0, 0, 0, '2020-11-29 12:21:20', NULL, 52, 1),
('BR000162', '', 'Cloth Premium tape 1.5', 'Unit', NULL, 12000, 0, 0, 0, '2020-11-29 12:22:53', NULL, 52, 1),
('BR000163', '', 'Daimaru besar', 'Unit', NULL, 15000, 0, 0, 0, '2020-11-29 12:23:14', NULL, 52, 1),
('BR000164', '', 'OPP 45x33m Coklat IFO', 'Unit', 0, 8000, 0, 0, 0, '2020-11-29 12:24:09', '2020-11-29 23:37:10', 52, 1),
('BR000165', '', 'OPP 45x60 Coklat ', 'Unit', 0, 12000, 0, 0, 0, '2020-11-29 12:24:37', '2020-11-29 23:39:41', 52, 1),
('BR000166', '', 'Nachi Stationery 12mm', 'Unit', NULL, 3000, 0, 0, 0, '2020-11-29 12:25:00', NULL, 52, 1),
('BR000167', '', 'Nachi Double tape 12mm', 'Unit', NULL, 3000, 0, 0, 0, '2020-11-29 12:25:18', NULL, 52, 1),
('BR000168', '', 'Nachi D.tape 24mm', 'Unit', NULL, 7000, 0, 0, 0, '2020-11-29 12:25:39', NULL, 52, 1),
('BR000169', '', 'Nachi D.tape 48mm', 'Unit', NULL, 12000, 0, 0, 0, '2020-11-29 12:26:01', NULL, 52, 1),
('BR000170', '', 'Nachi masking tape 24mm', 'Unit', NULL, 6000, 0, 0, 0, '2020-11-29 12:26:36', NULL, 52, 1),
('BR000171', '', 'Double Tape', 'Unit', NULL, 2000, 0, 0, 0, '2020-11-29 12:26:51', NULL, 52, 1),
('BR000172', '', 'Tipex kenko 01', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-29 12:35:54', NULL, 52, 1),
('BR000173', '', 'Cutter A-300A', 'Unit', NULL, 7000, 0, 0, 0, '2020-11-29 12:36:27', NULL, 52, 1),
('BR000174', '', 'Cutter L-500', 'Unit', NULL, 15000, 0, 0, 0, '2020-11-29 12:36:54', NULL, 52, 1),
('BR000175', '', 'Isi Cutter A-100', 'Unit', NULL, 2500, 0, 0, 0, '2020-11-29 12:37:18', NULL, 52, 1),
('BR000176', '', 'Isi Cutter L-150', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-29 12:37:39', NULL, 52, 1),
('BR000177', '', 'Gunting M2000 A-145', 'Unit', NULL, 4000, 0, 0, 0, '2020-11-29 12:38:10', NULL, 52, 1),
('BR000178', '', 'Gunting M2000 A-165', 'Unit', NULL, 6000, 0, 0, 0, '2020-11-29 12:38:32', NULL, 52, 1),
('BR000179', '', 'Gunting M2000 A-580', 'Unit', NULL, 8000, 0, 0, 0, '2020-11-29 12:39:00', NULL, 52, 1),
('BR000180', '', 'Gunting M2000 140K', 'Unit', NULL, 4000, 0, 0, 0, '2020-11-29 12:39:26', NULL, 52, 1),
('BR000181', '', 'Pianikia Evodia', 'Unit', NULL, 150000, 0, 0, 0, '2020-11-29 12:39:47', '2020-11-29 19:40:32', 52, 1),
('BR000182', '', 'Pianika Joyko', 'Unit', NULL, 250000, 0, 0, 0, '2020-11-29 12:40:19', NULL, 52, 1),
('BR000183', '', 'Soparno Yrs-23', 'Unit', NULL, 45000, 0, 0, 0, '2020-11-29 12:41:00', NULL, 52, 1),
('BR000184', '', 'Soparno German', 'Unit', NULL, 15000, 0, 0, 0, '2020-11-29 12:41:16', NULL, 52, 1),
('BR000185', '', 'Eraser w.board Big', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-29 12:41:39', NULL, 52, 1),
('BR000186', '', 'Eraser w.board small', 'Unit', NULL, 3000, 0, 0, 0, '2020-11-29 12:42:03', NULL, 52, 1),
('BR000187', '', 'Map Coklat Tali', 'PCS', NULL, 1500, 0, 0, 0, '2020-11-29 12:42:34', NULL, 52, 1),
('BR000188', '', 'Folio ', 'Unit', NULL, 500, 0, 0, 0, '2020-11-29 12:43:05', NULL, 52, 1),
('BR000189', '', 'Kwitansi KT 40M', 'PCS', NULL, 3000, 0, 0, 0, '2020-11-29 12:43:34', NULL, 52, 1),
('BR000190', '', 'Kwitansi KT 40T', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-29 12:43:59', NULL, 52, 1),
('BR000191', '', 'Kwitansi KT 50B', 'PCS', NULL, 8000, 0, 0, 0, '2020-11-29 12:44:46', NULL, 52, 1),
('BR000192', '', 'Nota Kontan 1 Ply 1 Dolar', 'PCS', NULL, 2500, 0, 0, 0, '2020-11-29 12:45:53', NULL, 52, 1),
('BR000193', '', 'Nota Kontan 1 Ply 1 Indp', 'PCS', NULL, 2500, 0, 0, 0, '2020-11-29 12:46:30', NULL, 52, 1),
('BR000194', '', 'Nota Kontan 2Ply Vsn', 'PCS', NULL, 3000, 0, 0, 0, '2020-11-29 12:46:56', NULL, 52, 1),
('BR000195', '', 'Blok Note Gema', 'Unit', NULL, 2000, 0, 0, 0, '2020-11-29 12:47:13', NULL, 52, 1),
('BR000196', '', 'Blok Note Gelatik Polos', 'Unit', NULL, 0, 0, 0, 0, '2020-11-29 12:47:38', NULL, 52, 1),
('BR000197', '', 'Blok Note Gelatik Garis', 'Unit', NULL, 0, 0, 0, 0, '2020-11-29 12:47:59', NULL, 52, 1),
('BR000198', '', 'Nota Kontan 3Ply Vsn', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-29 12:48:26', NULL, 52, 1),
('BR000199', '', 'Blok Note Gelatik besar', 'Unit', NULL, 0, 0, 0, 0, '2020-11-29 12:48:43', NULL, 52, 1),
('BR000200', '', 'Blok Note AS Paperline', 'Unit', NULL, 0, 0, 0, 0, '2020-11-29 12:49:04', NULL, 52, 1),
('BR000201', '', 'Surat Jalan NCR 3Ply', 'Unit', NULL, 8000, 0, 0, 0, '2020-11-29 12:51:11', NULL, 52, 1),
('BR000202', '', 'Kliping Polos', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-29 12:51:33', NULL, 52, 1),
('BR000203', '', 'Kliping Garis', 'Unit', NULL, 6000, 0, 0, 0, '2020-11-29 12:52:10', NULL, 52, 1),
('BR000204', '', 'Milimeter Book', 'Unit', NULL, 4000, 0, 0, 0, '2020-11-29 12:53:15', NULL, 52, 1),
('BR000205', '', 'Amplop Merpati 110x70', 'Unit', NULL, 8000, 0, 0, 0, '2020-11-29 12:53:43', NULL, 52, 1),
('BR000206', '', 'Amplop Paperline 104pps', 'Unit', NULL, 15000, 0, 0, 0, '2020-11-29 12:54:50', NULL, 52, 1),
('BR000207', '', 'Amplop paperline 30pps', 'Unit', NULL, 20000, 0, 0, 0, '2020-11-29 12:55:16', NULL, 52, 1),
('BR000208', '', 'Amplop Grandia 110x70', 'Unit', NULL, 0, 0, 0, 0, '2020-11-29 12:56:22', NULL, 52, 1),
('BR000209', '', 'Amplop Pluto', 'Unit', NULL, 4000, 0, 0, 0, '2020-11-29 12:56:38', NULL, 52, 1),
('BR000210', '', 'Custom Book', 'Unit', NULL, 10000, 0, 0, 0, '2020-11-29 12:56:50', NULL, 52, 1),
('BR000211', '', 'Unsur Kimia', 'Unit', NULL, 7000, 0, 0, 0, '2020-11-29 12:57:03', NULL, 52, 1),
('BR000212', '', 'Penggaris butterfly 30cm', 'Unit', NULL, 2500, 0, 0, 0, '2020-11-29 12:57:43', NULL, 52, 1),
('BR000213', '', 'Penggaris butterfly 20cm', 'Unit', NULL, 2000, 0, 0, 0, '2020-11-29 12:58:04', NULL, 52, 1),
('BR000214', '', 'Penggaris V-TRO', 'Unit', NULL, 1000, 0, 0, 0, '2020-11-29 12:58:34', NULL, 52, 1),
('BR000215', '', 'Penggaris ATN No.707', 'Unit', NULL, 2000, 0, 0, 0, '2020-11-29 12:58:59', NULL, 52, 1),
('BR000216', '', 'Penggaris Besi 30cm', 'Unit', NULL, 8000, 0, 0, 0, '2020-11-29 12:59:24', NULL, 52, 1),
('BR000217', '', 'Penggaris Besi 50cm', 'Unit', NULL, 10000, 0, 0, 0, '2020-11-29 13:00:22', NULL, 52, 1),
('BR000218', '', 'Penggaris Besi Kenko 60', 'Unit', NULL, 20000, 0, 0, 0, '2020-11-29 13:00:40', NULL, 52, 1),
('BR000219', '', 'Penggaris Besi Kenko 50', 'Unit', NULL, 18000, 0, 0, 0, '2020-11-29 13:01:02', NULL, 52, 1),
('BR000220', '', 'Paper Fastener', 'Unit', NULL, 8000, 0, 0, 0, '2020-11-29 13:01:47', NULL, 52, 1),
('BR000221', '', 'Sempoa Van-art', 'Unit', NULL, 10000, 0, 0, 0, '2020-11-29 13:02:29', NULL, 52, 1),
('BR000222', '', 'Sempoa xiaoxiong', 'Unit', NULL, 15000, 0, 0, 0, '2020-11-29 13:03:21', NULL, 52, 1),
('BR000223', '', 'Photo paper A4', 'Unit', NULL, 0, 0, 0, 0, '2020-11-29 13:03:37', NULL, 52, 1),
('BR000224', '', 'Photo paper F4', 'Unit', NULL, 0, 0, 0, 0, '2020-11-29 13:03:49', NULL, 52, 1),
('BR000225', '', 'Photo paper 4R', 'Unit', NULL, 0, 0, 0, 0, '2020-11-29 13:04:04', NULL, 52, 1),
('BR000226', '', 'Slinger Kecil', 'Unit', NULL, 2000, 0, 0, 0, '2020-11-29 13:04:18', NULL, 52, 1),
('BR000227', '', 'Slinger besar', 'Unit', NULL, 8000, 0, 0, 0, '2020-11-29 13:04:33', NULL, 52, 1),
('BR000228', '', 'Paper Bag Batik Kecil', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-29 13:04:54', NULL, 52, 1),
('BR000229', '', 'Paper Bag Batik Sedang', 'Unit', NULL, 7000, 0, 0, 0, '2020-11-29 13:05:19', NULL, 52, 1),
('BR000230', '', 'Paper Bag Besar', 'Unit', NULL, 10000, 0, 0, 0, '2020-11-29 13:26:13', NULL, 52, 1),
('BR000231', '', 'Paper Bag Kotak Besar', 'Unit', NULL, 0, 0, 0, 0, '2020-11-29 13:26:31', NULL, 52, 1),
('BR000232', '', 'Paper Bag Paris', 'Unit', NULL, 6000, 0, 0, 0, '2020-11-29 13:26:49', NULL, 52, 1),
('BR000233', '', 'Paper Bag Kartun', 'Unit', NULL, 6000, 0, 0, 0, '2020-11-29 13:27:01', NULL, 52, 1),
('BR000234', '', 'Paper Bag Love', 'Unit', NULL, 6000, 0, 0, 0, '2020-11-29 13:27:13', NULL, 52, 1),
('BR000235', '', 'Stopmap Kertas', 'Unit', NULL, 1000, 25000, 0, 0, '2020-11-29 13:27:41', NULL, 52, 1),
('BR000236', '', 'Penggaris Triangel No.510', 'Unit', NULL, 0, 14000, 0, 0, '2020-11-29 13:28:14', NULL, 52, 1),
('BR000237', '', 'Penggaris circle butterfly 360 Drajat', 'Unit', NULL, 3500, 0, 0, 0, '2020-11-29 13:28:44', NULL, 52, 1),
('BR000238', '', 'Penggaris Triangel Kojiko', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-29 13:29:11', NULL, 52, 1),
('BR000239', '', 'Penggaris Enter', 'Unit', NULL, 0, 18000, 0, 0, '2020-11-29 13:29:27', NULL, 52, 1),
('BR000240', '', 'Penggaris ptc.Butterfly 180 Derajat', 'Unit', NULL, 0, 0, 0, 0, '2020-11-29 13:29:56', NULL, 52, 1),
('BR000241', '', 'Penggaris Plastik 180drajat isi 12', 'Unit', NULL, 4000, 0, 0, 0, '2020-11-29 13:30:21', NULL, 52, 1),
('BR000242', '', 'Stopmap Batik', 'Unit', NULL, 0, 0, 0, 0, '2020-11-29 13:30:33', NULL, 52, 1),
('BR000243', '', 'Snelhecter kertas', 'Unit', NULL, 0, 0, 0, 0, '2020-11-29 13:31:06', NULL, 52, 1),
('BR000244', '', 'Curiculum vitae', 'Unit', NULL, 500, 0, 0, 0, '2020-11-29 13:31:33', NULL, 52, 1),
('BR000245', '', 'Tempat Tabungan Kecil', 'Unit', NULL, 5000, 0, 0, 0, '2020-11-29 13:31:53', NULL, 52, 1),
('BR000246', '', 'Tempat Tabungan Besar', 'Unit', NULL, 8000, 0, 0, 0, '2020-11-29 13:32:10', NULL, 52, 1),
('BR000247', '', 'Box Card', 'Unit', NULL, 15000, 0, 0, 0, '2020-11-29 13:32:27', NULL, 52, 1),
('BR000248', '', 'Stardust name tag', 'Unit', NULL, 2000, 45000, 0, 0, '2020-11-29 13:32:51', NULL, 52, 1),
('BR000249', '', 'Id Card Big B3', 'Unit', NULL, 2000, 0, 0, 0, '2020-11-29 13:33:19', NULL, 52, 1),
('BR000250', '', 'Id Card Big B4', 'Unit', NULL, 2000, 0, 0, 0, '2020-11-29 13:33:51', NULL, 52, 1),
('BR000251', '', 'Id Card Big B2', 'Unit', NULL, 2000, 0, 0, 0, '2020-11-29 13:34:15', NULL, 52, 1),
('BR000252', '', 'Id Card Big B1', 'Unit', NULL, 2000, 15000, 0, 0, '2020-11-29 13:37:17', NULL, 52, 1),
('BR000253', '', 'Id Card KTP', 'Unit', NULL, 2000, 0, 0, 0, '2020-11-29 13:37:37', NULL, 52, 1),
('BR000254', '', 'Id Card STNK', 'Unit', 0, 2000, 0, 0, 0, '2020-11-29 13:37:52', '2020-11-29 20:54:05', 52, 1),
('BR000255', '', 'Staples NDM no.23 8', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 13:55:35', '2020-11-29 20:56:40', 52, 1),
('BR000256', '', 'Staples NDM no.23 10', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 13:55:56', '2020-11-29 20:56:52', 52, 1),
('BR000257', '', 'Staples  NDM no.23 13', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 13:56:17', '2020-11-30 00:01:26', 52, 1),
('BR000258', '', 'Staples no.23 17', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 13:59:08', NULL, 52, 1),
('BR000259', '', 'Staple Etana 23per13', 'Unit', 0, 18000, 0, 0, 0, '2020-11-29 14:00:21', NULL, 52, 1),
('BR000260', '', 'Staples Etana 23.17', 'Unit', 0, 20000, 0, 0, 0, '2020-11-29 14:01:00', NULL, 52, 1),
('BR000261', '', 'Tape Dispenser No.25', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 14:01:27', NULL, 52, 1),
('BR000262', '', 'Tape Dispenser Besar', 'Unit', 0, 20000, 0, 0, 0, '2020-11-29 14:01:52', NULL, 52, 1),
('BR000263', '', 'Staples GW 369', 'Unit', 0, 3500, 0, 0, 0, '2020-11-29 14:02:23', NULL, 52, 1),
('BR000264', '', 'Staples G,Wall No.10', 'Unit', 0, 2000, 15000, 0, 0, '2020-11-29 14:02:47', '2020-11-29 21:08:38', 52, 1),
('BR000265', '', 'Staples Joyko 10M', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 14:03:00', NULL, 52, 1),
('BR000266', '', 'Staples Joyko 10', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 14:03:17', NULL, 52, 1),
('BR000267', '', 'Staples HD.50', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 14:03:42', NULL, 52, 1),
('BR000268', '', 'Staples Joyko HD.10', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 14:04:01', NULL, 52, 1),
('BR000269', '', 'Stick Eskrim ', 'Unit', 0, 1500, 0, 0, 0, '2020-11-29 14:04:16', NULL, 52, 1),
('BR000270', '', 'Papan Ujian Karakter', 'Unit', 0, 8000, 0, 0, 0, '2020-11-29 14:04:40', NULL, 52, 1),
('BR000271', '', 'Papan Ujian Kotak', 'Unit', 0, 5000, 0, 0, 0, '2020-11-29 14:05:05', NULL, 52, 1),
('BR000272', '', 'Papan Ujian Plastikk', 'Unit', 0, 15000, 0, 0, 0, '2020-11-29 14:05:24', NULL, 52, 1),
('BR000273', '', 'Re-Type', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 14:05:41', NULL, 52, 1),
('BR000274', '', 'Lem Tembok Kecil', 'Unit', 0, 1500, 0, 0, 0, '2020-11-29 14:05:56', NULL, 52, 1),
('BR000275', '', 'Lem Tembok Besar ', 'Unit', 0, 3000, 0, 0, 0, '2020-11-29 14:06:15', '2020-11-29 21:06:30', 52, 1),
('BR000276', '', 'Crayon titi 12chc', 'Unit', 0, 15000, 0, 0, 0, '2020-11-29 14:06:53', NULL, 52, 1),
('BR000277', '', 'Odner Gema Folio', 'Unit', 0, 30000, 0, 0, 0, '2020-11-29 14:07:13', NULL, 52, 1),
('BR000278', '', 'Odner Gema', 'Unit', 0, 25000, 0, 0, 0, '2020-11-29 14:07:38', NULL, 52, 1),
('BR000279', '', 'Map Plastik Kancing', 'Unit', 0, 3000, 30000, 0, 0, '2020-11-29 14:08:04', NULL, 52, 1),
('BR000280', '', 'Sbugecter Plastik', 'Unit', 0, 3000, 30000, 0, 0, '2020-11-29 14:09:14', NULL, 52, 1),
('BR000281', '', 'Map Plastik Karakter', 'Unit', 0, 6000, 0, 0, 0, '2020-11-29 14:09:33', NULL, 52, 1),
('BR000282', '', 'Map Flip File FC', 'Unit', 0, 7000, 0, 0, 0, '2020-11-29 14:09:54', NULL, 52, 1),
('BR000283', '', 'Sheet Protektor', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 14:10:08', NULL, 52, 1),
('BR000284', '', 'Ziper Bag', 'Unit', 0, 12000, 0, 0, 0, '2020-11-29 14:10:32', NULL, 52, 1),
('BR000285', '', 'School Bag', 'Unit', 0, 14000, 0, 0, 0, '2020-11-29 14:10:51', NULL, 52, 1),
('BR000286', '', 'Standar Buku Besi', 'Unit', 0, 20000, 0, 0, 0, '2020-11-29 14:11:07', NULL, 52, 1),
('BR000287', '', 'Box File Big', 'Unit', 0, 15000, 0, 0, 0, '2020-11-29 14:18:05', NULL, 52, 1),
('BR000288', '', 'Kanvas 30x40', 'Unit', 0, 25000, 0, 0, 0, '2020-11-29 14:18:29', NULL, 52, 1),
('BR000289', '', 'Kanvas 40x50', 'Unit', 0, 35000, 0, 0, 0, '2020-11-29 14:19:02', NULL, 52, 1),
('BR000290', '', 'Buku Tabungan', 'Unit', 0, 5000, 0, 0, 0, '2020-11-29 14:20:25', NULL, 52, 1),
('BR000291', '', 'Loose leaf BS 50 Van', 'Unit', 0, 6000, 0, 0, 0, '2020-11-29 14:21:40', NULL, 52, 1),
('BR000292', '', 'Loose leaf  BS 100BB', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 14:22:19', NULL, 52, 1),
('BR000293', '', 'Loose leaf  AS 50', 'Unit', 0, 5000, 0, 0, 0, '2020-11-29 14:22:32', NULL, 52, 1),
('BR000294', '', 'Lose Leaf AS 100 Vsn', 'Unit', 0, 8500, 0, 0, 0, '2020-11-29 14:22:54', NULL, 52, 1),
('BR000295', '', 'Lose Leaf Karakter', 'Unit', 0, 3000, 0, 0, 0, '2020-11-29 14:23:13', NULL, 52, 1),
('BR000296', '', 'Lose Leaf Karakter Kiky', 'Unit', 0, 4000, 0, 0, 0, '2020-11-29 14:23:28', NULL, 52, 1),
('BR000297', '', 'Buku Kotak Besar', 'Unit', 0, 3500, 0, 0, 0, '2020-11-29 14:23:39', NULL, 52, 1),
('BR000298', '', 'Buku Kotak Kecil', 'Unit', 0, 3500, 0, 0, 0, '2020-11-29 14:23:59', NULL, 52, 1),
('BR000299', '', 'Buku Halus', 'Unit', 0, 3500, 0, 0, 0, '2020-11-29 14:24:22', NULL, 52, 1),
('BR000300', '', 'Sukhoi 38', 'Unit', 0, 17000, 0, 0, 0, '2020-11-29 14:25:04', NULL, 52, 1),
('BR000301', '', 'Glatik 38', 'Unit', 0, 20000, 0, 0, 0, '2020-11-29 14:25:18', NULL, 52, 1),
('BR000302', '', 'Gladik 58', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 14:25:31', NULL, 52, 1),
('BR000303', '', 'Paper Start 38', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 14:25:45', NULL, 52, 1),
('BR000304', '', 'Papar Star 58', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 14:26:03', NULL, 52, 1),
('BR000305', '', 'Sidu 38', 'Unit', 0, 25000, 0, 0, 0, '2020-11-29 14:26:12', NULL, 52, 1),
('BR000306', '', 'Sidu 58', 'Unit', 0, 35000, 0, 0, 0, '2020-11-29 14:26:38', NULL, 52, 1),
('BR000307', '', 'Sidu 78', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 14:26:47', NULL, 52, 1),
('BR000308', '', 'Sidu 100', 'Unit', 0, 32000, 0, 0, 0, '2020-11-29 14:26:57', NULL, 52, 1),
('BR000309', '', 'Vision 38', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 14:27:11', NULL, 52, 1),
('BR000310', '', 'Vision 58', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 14:27:22', NULL, 52, 1),
('BR000311', '', 'Box 1 Vision 42', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 14:27:34', NULL, 52, 1),
('BR000312', '', 'Box 1 Campus Genius 42', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 14:27:51', NULL, 52, 1),
('BR000313', '', 'Box 1 Campus ideal 26', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 14:28:18', NULL, 52, 1),
('BR000314', '', 'Box 1 Campus Unggul 42', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 14:28:32', NULL, 52, 1),
('BR000315', '', 'Box 1 PS 42', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 14:28:45', NULL, 52, 1),
('BR000316', '', 'Box 1 Big Bos 42', 'Unit', 0, 35000, 0, 0, 0, '2020-11-29 14:29:45', NULL, 52, 1),
('BR000317', '', 'Oktafo 50', 'Unit', 0, 5000, 0, 0, 0, '2020-11-29 14:30:26', NULL, 52, 1),
('BR000318', '', 'Oktafo 100', 'Unit', 0, 7000, 0, 0, 0, '2020-11-29 14:30:35', NULL, 52, 1),
('BR000319', '', 'Oktafo 200', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 14:30:46', NULL, 52, 1),
('BR000320', '', 'Bk. Eksp. 50', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 14:31:38', NULL, 52, 1),
('BR000321', '', 'Bk. Eksp. 100', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 14:31:50', NULL, 52, 1),
('BR000322', '', 'Bk. Eksp. 200', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 14:31:58', NULL, 52, 1),
('BR000323', '', 'Qwarto 50 vsn', 'Kotak', 0, 7000, 0, 0, 0, '2020-11-29 14:32:21', NULL, 52, 1),
('BR000324', '', 'Qwarto 100 vsn', 'Unit', 0, 8000, 0, 0, 0, '2020-11-29 14:32:40', NULL, 52, 1),
('BR000325', '', 'Qwarto 200 vsn', 'Unit', 0, 15000, 0, 0, 0, '2020-11-29 14:32:58', NULL, 52, 1),
('BR000326', '', 'Folio 50 vsn', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 14:33:11', NULL, 52, 1),
('BR000327', '', 'Folio 100 vsn', 'Unit', 0, 15000, 0, 0, 0, '2020-11-29 14:33:27', NULL, 52, 1),
('BR000328', '', 'Folio 200 vsn', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 14:33:37', NULL, 52, 1),
('BR000329', '', 'Agenda 787', 'Unit', 0, 20000, 0, 0, 0, '2020-11-29 14:33:48', NULL, 52, 1),
('BR000330', '', 'Notebook 156-80', 'Unit', 0, 5000, 0, 0, 0, '2020-11-29 14:34:07', '2020-11-30 00:06:38', 52, 1),
('BR000331', '', 'Diary Kiky A6 HC', 'Unit', 0, 15000, 0, 0, 0, '2020-11-29 14:34:23', NULL, 52, 1),
('BR000332', '', 'Diary prsnl 6047', 'Unit', 0, 15000, 0, 0, 0, '2020-11-29 14:34:46', NULL, 52, 1),
('BR000333', '', 'Diary Washington', 'Unit', 0, 15000, 0, 0, 0, '2020-11-29 14:35:00', NULL, 52, 1),
('BR000334', '', 'Diary tuffboy', 'Unit', 0, 12000, 0, 0, 0, '2020-11-29 14:35:17', NULL, 52, 1),
('BR000335', '', 'Diary Laike', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 14:35:32', NULL, 52, 1),
('BR000336', '', 'Agenda enca 09', 'Unit', 0, 18000, 0, 0, 0, '2020-11-29 14:35:53', NULL, 52, 1),
('BR000337', '', 'Buku Pramuka', 'Unit', 0, 5000, 0, 0, 0, '2020-11-29 14:36:04', NULL, 52, 1),
('BR000338', '', 'Diary Kiky HC-A5', 'Unit', 0, 30000, 0, 0, 0, '2020-11-29 14:36:30', NULL, 52, 1),
('BR000339', '', 'Binder Slip AS ', 'Unit', 0, 15000, 0, 0, 0, '2020-11-29 14:36:49', NULL, 52, 1),
('BR000340', '', 'Binder Dunia Fancy BN-14', 'Unit', 0, 20000, 0, 0, 0, '2020-11-29 14:37:48', '2020-11-29 21:38:01', 52, 1),
('BR000341', '', 'Binder Joyko M499C', 'Unit', 0, 25000, 0, 0, 0, '2020-11-29 14:38:34', NULL, 52, 1),
('BR000342', '', 'Binder Joyko M491A', 'Unit', 0, 25000, 0, 0, 0, '2020-11-29 14:39:02', NULL, 52, 1),
('BR000343', '', 'Full cerita Nabi Harun a.s', 'Unit', 0, 6000, 0, 0, 0, '2020-11-29 14:39:26', '2020-11-29 21:40:08', 52, 1),
('BR000344', '', 'Full cerita Nabi Salih a.s', 'Unit', 0, 6000, 0, 0, 0, '2020-11-29 14:39:52', NULL, 52, 1),
('BR000345', '', 'Sholat dan Juz Ama', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 14:41:04', NULL, 52, 1),
('BR000346', '', 'Juz Ama dan Asmaul Husna', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 14:41:25', NULL, 52, 1),
('BR000347', '', 'Terjemah Juz Ama', 'Unit', 0, 13000, 0, 0, 0, '2020-11-29 14:41:37', NULL, 52, 1),
('BR000348', '', 'Dongeng Anak Muslim', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 14:41:52', NULL, 52, 1),
('BR000349', '', 'Doa Anak Shalih', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 14:42:11', NULL, 52, 1),
('BR000350', '', 'Kisah Perjuangan Wali Songo', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 14:42:27', NULL, 52, 1),
('BR000351', '', 'Cerita Rakyat Nusantara', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 14:42:45', NULL, 52, 1),
('BR000352', '', 'Legenda Malin Kundang', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 14:42:59', NULL, 52, 1),
('BR000353', '', 'Cerita Rakyat 33 Prov', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 14:43:15', NULL, 52, 1),
('BR000354', '', 'Kisah Abu Nawas', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 14:43:27', NULL, 52, 1),
('BR000355', '', 'Kisah Bergambar 25 Nabi', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 14:43:50', NULL, 52, 1),
('BR000356', '', 'Legenda sangkuryang', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 14:44:07', NULL, 52, 1),
('BR000357', '', 'Bawang Merah dan Bawang Putih', 'Unit', 0, 7500, 0, 0, 0, '2020-11-29 14:44:26', NULL, 52, 1),
('BR000358', '', 'Belajar Menulis Huruf Arab', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 14:44:40', NULL, 52, 1),
('BR000359', '', 'Kertas Krep', 'Unit', 0, 1000, 9000, 0, 0, '2020-11-29 14:45:19', NULL, 52, 1),
('BR000360', '', 'Kertas Krep Lembaran', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 14:45:31', NULL, 52, 1),
('BR000361', '', 'Kertas Manila', 'Unit', 0, 2500, 0, 0, 0, '2020-11-29 14:45:50', NULL, 52, 1),
('BR000362', '', 'Kertas Astura Biasa', 'Unit', 0, 2500, 0, 0, 0, '2020-11-29 14:46:08', NULL, 52, 1),
('BR000363', '', 'Kertas Asturo Cap', 'Unit', 0, 2500, 0, 0, 0, '2020-11-29 14:46:22', NULL, 52, 1),
('BR000364', '', 'Kertas Asturo Pelangi ', 'Unit', 0, 2500, 0, 0, 0, '2020-11-29 14:46:38', NULL, 52, 1),
('BR000365', '', 'K. Minyak Hitam', 'Unit', 0, 1500, 0, 0, 0, '2020-11-29 14:46:56', '2020-11-29 21:47:17', 52, 1),
('BR000366', '', 'Kertas Mas', 'Unit', 0, 2000, 0, 0, 0, '2020-11-29 14:47:32', NULL, 52, 1),
('BR000367', '', 'Kertas Karton Tipis', 'Unit', 0, 3500, 0, 0, 0, '2020-11-29 14:47:43', NULL, 52, 1),
('BR000368', '', 'Kertas Karton Tebal', 'Unit', 0, 6000, 0, 0, 0, '2020-11-29 14:47:56', NULL, 52, 1),
('BR000369', '', 'Kertas Marmer', 'Unit', 0, 2000, 0, 0, 0, '2020-11-29 14:48:13', NULL, 52, 1),
('BR000370', '', 'Kertas Kado', 'Unit', 0, 1000, 950, 0, 0, '2020-11-29 14:48:24', '2020-11-29 21:48:51', 52, 1),
('BR000371', '', 'Kertas Kado Gliter', 'Unit', 0, 4000, 0, 0, 0, '2020-11-29 14:49:06', NULL, 52, 1),
('BR000372', '', 'Kertas Teh', 'Unit', 0, 1500, 0, 0, 0, '2020-11-29 14:49:28', NULL, 52, 1),
('BR000373', '', 'Plastik Parcel', 'Unit', 0, 1500, 0, 0, 0, '2020-11-29 15:42:19', NULL, 52, 1),
('BR000374', '', 'Poster', 'Unit', 0, 2000, 0, 0, 0, '2020-11-29 15:42:31', NULL, 52, 1),
('BR000375', '', 'Poster Pahlawan', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 15:42:40', NULL, 52, 1),
('BR000376', '', 'HVS F4 70 Copy Paper', 'Unit', 0, 43000, 0, 0, 0, '2020-11-29 15:43:12', NULL, 52, 1),
('BR000377', '', 'HVS A4 70 Copy Paper', 'Unit', 0, 40000, 0, 0, 0, '2020-11-29 15:43:32', NULL, 52, 1),
('BR000378', '', 'HVS F4 70 Sidu', 'Unit', 0, 45000, 0, 0, 0, '2020-11-29 15:43:55', NULL, 52, 1),
('BR000379', '', 'HVS A4 70 Sidu', 'Unit', 0, 40000, 0, 0, 0, '2020-11-29 15:44:18', NULL, 52, 1),
('BR000380', '', 'HVS A4 80 Sidu', 'Unit', 0, 50000, 0, 0, 0, '2020-11-29 15:44:34', NULL, 52, 1),
('BR000381', '', 'HVS F4 80 Sidu', 'Unit', 0, 50000, 0, 0, 0, '2020-11-29 15:45:15', NULL, 52, 1),
('BR000382', '', 'HVS F4 IXORA', 'Unit', 0, 43000, 0, 0, 0, '2020-11-29 15:45:40', NULL, 52, 1),
('BR000383', '', 'HVS A4 IXORA', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 15:46:00', NULL, 52, 1),
('BR000384', '', 'HVS F4 Warna Sidu', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 15:46:21', NULL, 52, 1),
('BR000385', '', 'Sampul Buku Coklat', 'Unit', 0, 1000, 0, 0, 0, '2020-11-29 15:46:58', NULL, 52, 1),
('BR000386', '', 'Sampul Buku Boxy', 'Unit', 0, 2000, 0, 0, 0, '2020-11-29 15:47:17', NULL, 52, 1),
('BR000387', '', 'Sampul Buku Motif', 'Unit', 0, 4000, 0, 0, 0, '2020-11-29 15:47:33', NULL, 52, 1),
('BR000388', '', 'Sampul Plastik Sidu', 'Unit', 0, 1000, 0, 0, 0, '2020-11-29 15:47:50', NULL, 52, 1),
('BR000389', '', 'Sampul Plastik LKS', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 15:48:09', NULL, 52, 1),
('BR000390', '', 'Sampul Plastik Folio', 'Unit', 0, 3500, 0, 0, 0, '2020-11-29 15:48:21', NULL, 52, 1),
('BR000391', '', 'Roll bio 34cm', 'Unit', 0, 9000, 0, 0, 0, '2020-11-29 15:48:59', NULL, 52, 1),
('BR000392', '', 'Roll bio 45cm', 'Unit', 0, 11000, 0, 0, 0, '2020-11-29 15:49:25', NULL, 52, 1),
('BR000393', '', 'Penggaris Lipat Plastik', 'Unit', 0, 2500, 0, 0, 0, '2020-11-29 15:49:48', NULL, 52, 1),
('BR000394', '', 'Pulpen Fancy Flower', 'Unit', 0, 5000, 0, 0, 0, '2020-11-29 15:50:21', NULL, 52, 1),
('BR000395', '', 'Push Pin', 'Unit', 0, 4000, 0, 0, 0, '2020-11-29 15:50:41', NULL, 52, 1),
('BR000396', '', 'Bank Stempel', 'Unit', 0, 8000, 0, 0, 0, '2020-11-29 15:51:06', NULL, 52, 1),
('BR000397', '', 'Paper Clips', 'Unit', 0, 2000, 0, 0, 0, '2020-11-29 15:51:20', NULL, 52, 1),
('BR000398', '', 'Karbon ', 'Unit', 0, 1000, 0, 0, 0, '2020-11-29 15:51:30', NULL, 52, 1),
('BR000399', '', 'Undangan Lipat 3', 'Unit', 0, 20000, 0, 0, 0, '2020-11-29 15:51:44', NULL, 52, 1),
('BR000400', '', 'Undangan Kecil ', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 15:54:04', NULL, 52, 1),
('BR000401', '', 'Undangan Besar Lipat 2 ', 'Unit', 0, 17000, 0, 0, 0, '2020-11-29 15:54:28', NULL, 52, 1),
('BR000402', '', 'Buku tamu ', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 15:54:45', NULL, 52, 1),
('BR000403', '', 'Buku Kas ', 'Unit', 0, 20000, 0, 0, 0, '2020-11-29 15:54:54', NULL, 52, 1),
('BR000404', '', 'Pemes SDI', 'Unit', 0, 1000, 9000, 0, 0, '2020-11-29 15:55:18', NULL, 52, 1),
('BR000405', '', 'Pemes renceng ', 'Unit', 0, 1000, 0, 0, 0, '2020-11-29 15:55:49', NULL, 52, 1),
('BR000406', '', 'Jaruk Karung isi 10', 'Unit', 0, 1500, 0, 0, 0, '2020-11-29 15:57:20', NULL, 52, 1),
('BR000407', '', 'Jarum Kasur', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 15:57:37', NULL, 52, 1),
('BR000408', '', 'Jarum Pentul Bulat', 'Unit', 0, 1000, 0, 0, 0, '2020-11-29 15:57:54', NULL, 52, 1),
('BR000409', '', 'Jarum pentul kotak kecil', 'Unit', 0, 2000, 0, 0, 0, '2020-11-29 15:58:16', NULL, 52, 1),
('BR000410', '', 'Jarum pentul kotak besar', 'Unit', 0, 5000, 0, 0, 0, '2020-11-29 15:58:42', NULL, 52, 1),
('BR000411', '', 'Malam GW Shintoeng', 'Unit', 0, 2000, 0, 0, 0, '2020-11-29 15:59:18', NULL, 52, 1),
('BR000412', '', 'Lilin ultah angka', 'Unit', 0, 3500, 0, 0, 0, '2020-11-29 15:59:34', NULL, 52, 1),
('BR000413', '', 'Lilin ultah', 'Unit', 0, 7000, 0, 0, 0, '2020-11-29 15:59:52', NULL, 52, 1),
('BR000414', '', 'Lilin Biasa', 'Unit', 0, 2000, 0, 0, 0, '2020-11-29 16:00:04', NULL, 52, 1),
('BR000415', '', 'Plastik Ultah Biasa', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 16:00:21', NULL, 52, 1),
('BR000416', '', 'Undangan Ultah', 'Unit', 0, 2000, 0, 0, 0, '2020-11-29 16:00:35', NULL, 52, 1),
('BR000417', '', 'Topi kerucut ultah', 'Unit', 0, 7000, 0, 0, 0, '2020-11-29 16:00:55', NULL, 52, 1),
('BR000418', '', 'Topeng Ultah', 'Unit', 0, 4000, 0, 0, 0, '2020-11-29 16:01:06', NULL, 52, 1),
('BR000419', '', 'Balon Ultah Hologram ', 'Unit', 0, 7000, 0, 0, 0, '2020-11-29 16:01:22', NULL, 52, 1),
('BR000420', '', 'Balon Besar ', 'Unit', 0, 3000, 0, 0, 0, '2020-11-29 16:01:42', NULL, 52, 1),
('BR000421', '', 'Plastik Ultah Bagus', 'Unit', 0, 7000, 0, 0, 0, '2020-11-29 16:02:00', NULL, 52, 1),
('BR000422', '', 'Pisau Ultah', 'Unit', 0, 2500, 0, 0, 0, '2020-11-29 16:02:12', NULL, 52, 1),
('BR000423', '', 'Piring Bolu Ultah', 'Unit', 0, 2000, 0, 0, 0, '2020-11-29 16:02:29', NULL, 52, 1),
('BR000424', '', 'Buku Absen Kecil', 'Unit', 0, 3000, 0, 0, 0, '2020-11-29 16:02:45', NULL, 52, 1),
('BR000425', '', 'Buku Absen Sedang', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 16:02:54', NULL, 52, 1),
('BR000426', '', 'Buku Absen Besar', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 16:03:04', NULL, 52, 1),
('BR000427', '', 'Pita Tarik ', 'Unit', 0, 2000, 0, 0, 0, '2020-11-29 16:03:16', NULL, 52, 1),
('BR000428', '', 'Styrofoam tipis', 'Unit', 0, 3500, 0, 0, 0, '2020-11-29 16:03:55', NULL, 52, 1),
('BR000429', '', 'Styrofoam tebal ', 'Unit', 0, 6000, 0, 0, 0, '2020-11-29 16:04:17', NULL, 52, 1),
('BR000430', '', 'Styrofoam Warna', 'Unit', 0, 7000, 0, 0, 0, '2020-11-29 16:04:31', NULL, 52, 1),
('BR000431', '', 'Cat Asturo Kecil', 'Unit', 0, 4000, 0, 0, 0, '2020-11-29 16:04:45', NULL, 52, 1),
('BR000432', '', 'Gliter Asturo ', 'Unit', 0, 5000, 0, 0, 0, '2020-11-29 16:04:56', NULL, 52, 1),
('BR000433', '', 'Alat Tembak Besar', 'Unit', 0, 25000, 0, 0, 0, '2020-11-29 16:05:09', NULL, 52, 1),
('BR000434', '', 'Alat Tembak Kecil', 'Unit', 0, 20000, 0, 0, 0, '2020-11-29 16:05:26', NULL, 52, 1),
('BR000435', '', 'BC Mudah Biru', 'Unit', 0, 30000, 0, 0, 0, '2020-11-29 16:06:12', NULL, 52, 1),
('BR000436', '', 'BC Mudah Hijau', 'Unit', 0, 30000, 0, 0, 0, '2020-11-29 16:06:33', NULL, 52, 1),
('BR000437', '', 'BC Putih ', 'Unit', 0, 30000, 0, 0, 0, '2020-11-29 16:06:44', NULL, 52, 1),
('BR000438', '', 'BC Merah ', 'Unit', 0, 35000, 0, 0, 0, '2020-11-29 16:07:07', NULL, 52, 1),
('BR000439', '', 'BC Hijau Tua', 'Unit', 0, 35000, 0, 0, 0, '2020-11-29 16:07:24', NULL, 52, 1),
('BR000440', '', 'BC Orange ', 'Unit', 0, 35000, 0, 0, 0, '2020-11-29 16:07:37', NULL, 52, 1),
('BR000441', '', 'BC Pink ', 'Unit', 0, 30000, 0, 0, 0, '2020-11-29 16:07:50', NULL, 52, 1),
('BR000442', '', 'BC Biru Tua ', 'Unit', 0, 35000, 0, 0, 0, '2020-11-29 16:08:01', NULL, 52, 1),
('BR000443', '', 'BC Coklat ', 'Unit', 0, 35000, 0, 0, 0, '2020-11-29 16:08:14', NULL, 52, 1),
('BR000444', '', 'BC Kuning', 'Unit', 0, 30000, 0, 0, 0, '2020-11-29 16:08:39', NULL, 52, 1),
('BR000445', '', 'BC Hijau Tosca ', 'Unit', 0, 30000, 0, 0, 0, '2020-11-29 16:08:53', NULL, 52, 1),
('BR000446', '', 'BC Ungu ', 'Unit', 0, 35000, 0, 0, 0, '2020-11-29 16:09:03', NULL, 52, 1),
('BR000447', '', 'B. Gambar A4 Gk', 'Unit', 0, 3500, 0, 0, 0, '2020-11-29 16:09:25', NULL, 52, 1),
('BR000448', '', 'B. Gambar A3 Gk', 'Unit', 0, 7000, 0, 0, 0, '2020-11-29 16:09:47', NULL, 52, 1),
('BR000449', '', 'B. Gambar A4 Sidu', 'Unit', 0, 3500, 0, 0, 0, '2020-11-29 16:10:05', NULL, 52, 1),
('BR000450', '', 'B. Gambar A3 Sidu', 'Unit', 0, 7000, 0, 0, 0, '2020-11-29 16:10:31', NULL, 52, 1),
('BR000451', '', 'Benang Jagung', 'Unit', 0, 2500, 20000, 0, 0, '2020-11-29 16:10:51', NULL, 52, 1),
('BR000452', '', 'Kertas Krep Potong', 'Unit', 0, 1000, 9500, 0, 0, '2020-11-29 16:11:17', NULL, 52, 1),
('BR000453', '', 'Label No. 112', 'Unit', 0, 3000, 0, 0, 0, '2020-11-29 16:11:33', NULL, 52, 1),
('BR000454', '', 'Label No. 99', 'Unit', 0, 3000, 0, 0, 0, '2020-11-29 16:11:47', NULL, 52, 1),
('BR000455', '', 'Label No. 103', 'Unit', 0, 3000, 0, 0, 0, '2020-11-29 16:12:00', NULL, 52, 1),
('BR000456', '', 'Tuding Ngaji', 'Unit', 0, 500, 9000, 0, 0, '2020-11-29 16:12:24', NULL, 52, 1),
('BR000457', '', 'Pensil 8B Faber Cstl', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 16:24:12', NULL, 52, 1),
('BR000458', '', 'Pensil 5B Staedler', 'Unit', 0, 6000, 0, 0, 0, '2020-11-29 16:25:10', NULL, 52, 1),
('BR000459', '', 'Nachi Tape Foam 24mm', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 16:42:43', NULL, 52, 1),
('BR000460', '', 'Cloth Premium tape 1', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 16:43:43', NULL, 52, 1),
('BR000461', '', 'HVS A3 SIDU', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:15:12', NULL, 52, 1),
('BR000462', '', 'Sampul Plastik Boxy', 'Unit', 0, 2500, 0, 0, 0, '2020-11-29 17:15:28', NULL, 52, 1),
('BR000463', '', 'Kamus B.Arab Apolo K', 'Unit', 0, 30000, 0, 0, 0, '2020-11-29 17:17:41', NULL, 52, 1),
('BR000464', '', 'Kamus 3 Bahasa', 'Unit', 0, 35000, 0, 0, 0, '2020-11-29 17:17:56', NULL, 52, 1),
('BR000465', '', 'Kamus B. Indo Kecil', 'Unit', 0, 15000, 0, 0, 0, '2020-11-29 17:18:07', NULL, 52, 1),
('BR000466', '', 'Kamus B. Indo Lengkap ', 'Unit', 0, 45000, 0, 0, 0, '2020-11-29 17:18:19', NULL, 52, 1),
('BR000467', '', 'Kamus B.Indo Ideal', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:18:34', NULL, 52, 1),
('BR000468', '', 'Kamus Lengkap 600T', 'Unit', 0, 30000, 0, 0, 0, '2020-11-29 17:19:00', NULL, 52, 1),
('BR000469', '', 'Kamus B.indo Modern', 'Unit', 0, 25000, 0, 0, 0, '2020-11-29 17:19:34', NULL, 52, 1),
('BR000470', '', 'Kamus Lengkap 800m kecil', 'Unit', 0, 20000, 0, 0, 0, '2020-11-29 17:20:03', NULL, 52, 1),
('BR000471', '', 'Daftar Logaritma', 'Unit', 0, 20000, 0, 0, 0, '2020-11-29 17:20:19', NULL, 52, 1),
('BR000472', '', 'Metode Belajar Al-Quran', 'Unit', 0, 6000, 0, 0, 0, '2020-11-29 17:20:44', NULL, 52, 1),
('BR000473', '', 'UUD 45', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:20:53', NULL, 52, 1),
('BR000474', '', 'RPUL', 'Unit', 0, 20000, 0, 0, 0, '2020-11-29 17:21:06', NULL, 52, 1),
('BR000475', '', 'RPAL', 'Unit', 0, 20000, 0, 0, 0, '2020-11-29 17:21:25', NULL, 52, 1),
('BR000476', '', 'Buku Panduan EBI', 'Unit', 0, 12000, 0, 0, 0, '2020-11-29 17:21:40', NULL, 52, 1),
('BR000477', '', 'Pedoman Umum EYD', 'Unit', 0, 8000, 0, 0, 0, '2020-11-29 17:21:53', NULL, 52, 1),
('BR000478', '', 'Atlas Pintar', 'Unit', 0, 15000, 0, 0, 0, '2020-11-29 17:22:06', NULL, 52, 1),
('BR000479', '', 'Atlas', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:22:17', NULL, 52, 1),
('BR000480', '', 'Pedoman Umum EYD Ijo', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 17:22:31', '2020-11-30 00:22:52', 52, 1),
('BR000481', '', 'Atlas global ', 'Unit', 0, 25000, 0, 0, 0, '2020-11-29 17:23:13', NULL, 52, 1),
('BR000482', '', 'Kuas Pagoda 8', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:23:26', NULL, 52, 1),
('BR000483', '', 'Kuas Pagoda 9', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:23:37', NULL, 52, 1),
('BR000484', '', 'Kuas Pagoda 10', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:23:52', NULL, 52, 1),
('BR000485', '', 'Silet Tatra', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:24:09', NULL, 52, 1),
('BR000486', '', 'Mika Bening ', 'Unit', 0, 25000, 0, 0, 0, '2020-11-29 17:24:24', '2020-11-30 00:24:40', 52, 1),
('BR000487', '', 'Mika Biru Muda', 'Unit', 0, 25000, 0, 0, 0, '2020-11-29 17:24:59', NULL, 52, 1),
('BR000488', '', 'Mika Hijau Tua', 'Unit', 0, 25000, 0, 0, 0, '2020-11-29 17:25:17', NULL, 52, 1),
('BR000489', '', 'Mika  Orange', 'Unit', 0, 25000, 0, 0, 0, '2020-11-29 17:25:30', NULL, 52, 1),
('BR000490', '', 'Mika Kuning', 'Unit', 0, 25000, 0, 0, 0, '2020-11-29 17:25:44', NULL, 52, 1);
INSERT INTO `tbl_barang` (`barang_id`, `barang_kbarcode`, `barang_nama`, `barang_satuan`, `barang_harpok`, `barang_harjul`, `barang_harjul_grosir`, `barang_stok`, `barang_min_stok`, `barang_tgl_input`, `barang_tgl_last_update`, `barang_kategori_id`, `barang_user_id`) VALUES
('BR000491', '', 'Meja Belajar Karakter', 'Unit', 0, 40000, 0, 0, 0, '2020-11-29 17:26:03', NULL, 52, 1),
('BR000492', '', 'Papan WB 30x50', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:26:17', NULL, 52, 1),
('BR000493', '', 'Papan WB 40x60', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:26:40', NULL, 52, 1),
('BR000494', '', 'Papan WB 50x70', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:26:56', NULL, 52, 1),
('BR000495', '', 'Papan WB 60x80', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:27:10', NULL, 52, 1),
('BR000496', '', 'Papan WB 70x90', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:27:32', NULL, 52, 1),
('BR000497', '', 'Pelubang Kecil 302T Joyko', 'Unit', 0, 15000, 0, 0, 0, '2020-11-29 17:27:59', NULL, 52, 1),
('BR000498', '', 'Pelubang 85B Joyko', 'Unit', 0, 40000, 0, 0, 0, '2020-11-29 17:28:20', NULL, 52, 1),
('BR000499', '', 'Riyadus Sholihin', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:32:36', NULL, 54, 1),
('BR000500', '', 'Subuliman', 'Unit', 0, 7500, 0, 0, 0, '2020-11-29 17:32:47', NULL, 54, 1),
('BR000501', '', 'Tajdwid Nadhom', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:33:00', NULL, 54, 1),
('BR000502', '', 'Syifaul Jinan ', 'Unit', 0, 6000, 0, 0, 0, '2020-11-29 17:33:17', NULL, 54, 1),
('BR000503', '', 'Safinah ', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:33:35', NULL, 54, 1),
('BR000504', '', 'Fasholaton', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 17:34:07', NULL, 54, 1),
('BR000505', '', 'F.Goes', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:34:19', NULL, 54, 1),
('BR000506', '', 'Sy.Fathul Qorib', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:34:32', NULL, 54, 1),
('BR000507', '', 'Nadhom Imirti Kecil', 'Unit', 0, 4000, 2500, 0, 0, '2020-11-29 17:34:55', '2020-11-30 00:35:11', 54, 1),
('BR000508', '', 'Majmu N', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:35:22', NULL, 54, 1),
('BR000509', '', 'Idhotun N', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:35:42', NULL, 54, 1),
('BR000510', '', 'Tajridus S', 'Unit', 0, 65000, 0, 0, 0, '2020-11-29 17:36:01', NULL, 54, 1),
('BR000511', '', 'KLF. Amam', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 17:36:21', NULL, 54, 1),
('BR000512', '', 'Ibris 14', 'Unit', 0, 13000, 0, 0, 0, '2020-11-29 17:36:36', NULL, 54, 1),
('BR000513', '', 'Arbain', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:36:54', NULL, 54, 1),
('BR000514', '', 'Mutamimah', 'Unit', 0, 15000, 0, 0, 0, '2020-11-29 17:45:28', NULL, 54, 1),
('BR000515', '', 'Awamil', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:45:40', NULL, 54, 1),
('BR000516', '', 'Alala', 'Unit', 0, 3000, 0, 0, 0, '2020-11-29 17:46:00', NULL, 54, 1),
('BR000517', '', 'Sulamunajah', 'Unit', 0, 6000, 0, 0, 0, '2020-11-29 17:46:16', NULL, 54, 1),
('BR000518', '', 'N. Alfiah', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:46:34', NULL, 54, 1),
('BR000519', '', 'Tarekh Nabi', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:46:48', NULL, 54, 1),
('BR000520', '', 'Sabrawi', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:47:04', NULL, 54, 1),
('BR000521', '', 'Tukhfatul adfali', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:47:22', NULL, 54, 1),
('BR000522', '', 'Amsilah', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 17:47:38', NULL, 54, 1),
('BR000523', '', 'Sy. Safinah', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:47:49', NULL, 54, 1),
('BR000524', '', 'Aqidatul Awam', 'Unit', 0, 3500, 0, 0, 0, '2020-11-29 17:48:08', NULL, 54, 1),
('BR000525', '', 'Simtuduror Hitam', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:48:21', NULL, 54, 1),
('BR000526', '', 'Simtuduror Hijau', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:48:35', NULL, 54, 1),
('BR000527', '', 'Akhlakulil Banin Jw. 1', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:49:36', NULL, 54, 1),
('BR000528', '', 'Akhlakulil Banin Jw. 2', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:49:51', NULL, 54, 1),
('BR000529', '', 'Akhlakulil Banin Jw. 3', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:50:07', NULL, 54, 1),
('BR000530', '', 'Akhlakulil Banin Jw. 4', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:50:19', NULL, 54, 1),
('BR000531', '', 'Akhlakulil Banin arab 1', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:50:36', NULL, 54, 1),
('BR000532', '', 'Akhlakulil Banin arab 2', 'Unit', 0, 8000, 0, 0, 0, '2020-11-29 17:50:52', NULL, 54, 1),
('BR000533', '', 'Akhlakulil Banin arab 3', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:51:02', NULL, 54, 1),
('BR000534', '', 'Akhlakulil Banin arab 4', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:51:15', NULL, 54, 1),
('BR000535', '', 'Durusul Fiqiyah arab 1', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:51:57', NULL, 54, 1),
('BR000536', '', 'Durusul Fiqiyah arab 2', 'Unit', 0, 7000, 0, 0, 0, '2020-11-29 17:52:13', NULL, 54, 1),
('BR000537', '', 'Durusul Fiqiyah arab 3', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 17:52:30', NULL, 54, 1),
('BR000538', '', 'Durusul Fiqiyah arab 4', 'Unit', 0, 18000, 0, 0, 0, '2020-11-29 17:52:44', NULL, 54, 1),
('BR000539', '', 'Durusul Fiqiyah Jw', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:53:01', NULL, 54, 1),
('BR000540', '', 'Al-Mabadin Fiqiyah arab 1', 'Unit', 0, 5000, 0, 0, 0, '2020-11-29 17:54:11', NULL, 54, 1),
('BR000541', '', 'Al-Mabadin Fiqiyah  arab', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:54:26', NULL, 54, 1),
('BR000542', '', 'Al-Mabadin Fiqiyah  Jw', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:54:42', NULL, 54, 1),
('BR000543', '', 'Khulasoh nurul yakin arab 1', 'Unit', 0, 16000, 0, 0, 0, '2020-11-29 17:55:36', NULL, 54, 1),
('BR000544', '', 'Khulasoh nurul yakin arab 2', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 17:55:51', NULL, 54, 1),
('BR000545', '', 'Khulasoh nurul yakin arab 3', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:56:03', NULL, 54, 1),
('BR000546', '', 'Khulasoh nurul yakin Jw 1', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:56:15', NULL, 54, 1),
('BR000547', '', 'Khulasoh nurul yakin Jw 2', 'Unit', 0, 20000, 0, 0, 0, '2020-11-29 17:56:32', NULL, 54, 1),
('BR000548', '', 'Ilmu Fiqih Safinatunnaja', 'Unit', 0, 8000, 0, 0, 0, '2020-11-29 17:57:05', NULL, 54, 1),
('BR000549', '', 'Kumpulan Shalawat Nabi', 'Unit', 0, 25000, 0, 0, 0, '2020-11-29 17:57:30', NULL, 54, 1),
('BR000550', '', 'Kaligrafi Al-Quran', 'Unit', 0, 20000, 0, 0, 0, '2020-11-29 17:57:53', NULL, 54, 1),
('BR000551', '', 'Terjemahan safinatunnaja', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 17:58:09', NULL, 54, 1),
('BR000552', '', 'Al-Jawahirul Kalamiyah', 'Unit', 0, 6000, 0, 0, 0, '2020-11-29 18:00:26', NULL, 54, 1),
('BR000553', '', 'Terjemahan Tanqihul Qoul 1', 'Unit', 0, 25000, 0, 0, 0, '2020-11-29 18:00:47', NULL, 54, 1),
('BR000554', '', 'Qurotul uyun', 'Unit', 0, 30000, 0, 0, 0, '2020-11-29 18:01:09', NULL, 54, 1),
('BR000555', '', 'Risalah ', 'Unit', 0, 8000, 0, 0, 0, '2020-11-29 18:01:23', NULL, 54, 1),
('BR000556', '', 'Tajwid', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 18:01:37', NULL, 54, 1),
('BR000557', '', 'Taisirul Kholaq', 'Unit', 0, 5000, 0, 0, 0, '2020-11-29 18:01:58', NULL, 54, 1),
('BR000558', '', 'IQRO 2', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 18:02:10', NULL, 54, 1),
('BR000559', '', 'IQRO 3', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 18:02:31', NULL, 54, 1),
('BR000560', '', 'Qowaidul awal', 'Unit', 0, 4000, 0, 0, 0, '2020-11-29 18:02:47', NULL, 54, 1),
('BR000561', '', 'Tafrihatul Wildan', 'Unit', 0, 6000, 0, 0, 0, '2020-11-29 18:03:10', NULL, 54, 1),
('BR000562', '', 'Himpunan ayar Alq. Kecil', 'Unit', 0, 5000, 0, 0, 0, '2020-11-29 18:03:38', NULL, 54, 1),
('BR000563', '', 'Himpunan ayar Alq.Besar', 'Unit', 0, 9000, 0, 0, 0, '2020-11-29 18:04:00', NULL, 54, 1),
('BR000564', '', 'Nadhom sulamunawaraq', 'Unit', 0, 7000, 0, 0, 0, '2020-11-29 18:04:40', NULL, 54, 1),
('BR000565', '', 'Washiyatul Mustofa', 'Unit', 0, 6000, 0, 0, 0, '2020-11-29 18:04:58', NULL, 54, 1),
('BR000566', '', 'Sulamudiyanah Islamiyah', 'Unit', 0, 7000, 0, 0, 0, '2020-11-29 18:05:44', NULL, 54, 1),
('BR000567', '', 'Tasropan', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 18:06:00', NULL, 54, 1),
('BR000568', '', 'Nurul Burhan Putih', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 18:06:15', '2020-11-30 01:07:05', 54, 1),
('BR000569', '', 'Nurul Burhan Biru', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 18:06:31', NULL, 54, 1),
('BR000570', '', 'Al-mustofa', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 18:07:21', NULL, 54, 1),
('BR000571', '', 'Ris. Muawanah', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 18:07:34', NULL, 54, 1),
('BR000572', '', 'Subuliman', 'Unit', 0, 5500, 0, 0, 0, '2020-11-29 18:08:23', NULL, 52, 1),
('BR000573', '', 'Masjiakun Najah', 'Unit', 0, 12000, 0, 0, 0, '2020-11-29 18:08:42', NULL, 54, 1),
('BR000574', '', 'Tafsir Jalalen', 'Unit', 0, 65000, 0, 0, 0, '2020-11-29 18:09:02', NULL, 54, 1),
('BR000575', '', 'Hujah arab', 'Unit', 0, 15000, 0, 0, 0, '2020-11-29 18:09:19', NULL, 54, 1),
('BR000576', '', 'Hujah Jawa', 'Unit', 0, 20000, 0, 0, 0, '2020-11-29 18:09:39', NULL, 54, 1),
('BR000577', '', 'Nahwu Jawa', 'Unit', 0, 9000, 0, 0, 0, '2020-11-29 18:09:52', '2020-11-30 01:10:55', 54, 1),
('BR000578', '', 'Sorof Jawa', 'Unit', 0, 8000, 0, 0, 0, '2020-11-29 18:10:08', NULL, 54, 1),
('BR000579', '', 'Sorof Arab', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 18:10:32', NULL, 54, 1),
('BR000580', '', 'Barzanji', 'Unit', 0, 15000, 0, 0, 0, '2020-11-29 18:11:33', NULL, 54, 1),
('BR000581', '', 'Juz Ama Besar', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 18:11:46', NULL, 54, 1),
('BR000582', '', 'Juz Ama Kecil', 'Unit', 0, 5000, 0, 0, 0, '2020-11-29 18:12:03', NULL, 54, 1),
('BR000583', '', 'Iqro Hitam Kecil', 'Unit', 0, 6000, 0, 0, 0, '2020-11-29 18:12:29', NULL, 54, 1),
('BR000584', '', 'Iqro Hitam Besar', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 18:12:47', NULL, 54, 1),
('BR000585', '', 'Iqro Hijau Kecil', 'Unit', 0, 8000, 0, 0, 0, '2020-11-29 18:13:03', NULL, 54, 1),
('BR000586', '', 'Iqro Hijau Besar', 'Unit', 0, 15000, 0, 0, 0, '2020-11-29 18:13:27', NULL, 54, 1),
('BR000587', '', 'Tuntutan Sholat Besar ', 'Unit', 0, 8000, 0, 0, 0, '2020-11-29 18:14:04', NULL, 54, 1),
('BR000588', '', 'Tuntutan Sholat Kecil', 'Unit', 0, 5000, 0, 0, 0, '2020-11-29 18:14:33', NULL, 54, 1);

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

--
-- Dumping data untuk tabel `tbl_beli`
--

INSERT INTO `tbl_beli` (`beli_nofak`, `beli_tanggal`, `beli_suplier_id`, `beli_user_id`, `beli_kode`) VALUES
('XData1', '2020-11-28', 8, 1, 'BL281120000001');

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

--
-- Dumping data untuk tabel `tbl_detail_beli`
--

INSERT INTO `tbl_detail_beli` (`d_beli_id`, `d_beli_nofak`, `d_beli_barang_id`, `d_beli_harga`, `d_beli_jumlah`, `d_beli_total`, `d_beli_kode`) VALUES
(18, 'XData1', 'BR000001', 605, 10, 6050, 'BL281120000001');

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
(54, 'Kitab');

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

--
-- Dumping data untuk tabel `tbl_suplier`
--

INSERT INTO `tbl_suplier` (`suplier_id`, `suplier_nama`, `suplier_alamat`, `suplier_notelp`, `suplier_namabarang`, `suplier_tanggal_pembelian`, `suplier_utang`, `suplier_jatuh_tempo`) VALUES
(8, 'PT. Indofood', 'Jakarta', '081111', 'Pensil X Data', '2020-11-28', '0', '2020-11-28');

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
  MODIFY `d_beli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  MODIFY `d_jual_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `tbl_retur`
--
ALTER TABLE `tbl_retur`
  MODIFY `retur_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
  MODIFY `suplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
