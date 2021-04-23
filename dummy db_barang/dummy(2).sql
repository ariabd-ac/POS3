-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Nov 2020 pada 14.50
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
('b1d46b08ad4b5742431daa09a8656451', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 1606657037, 'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"masuk\";b:1;s:4:\"user\";s:14:\"admin@admin.id\";s:5:\"akses\";s:1:\"1\";s:7:\"idadmin\";s:1:\"1\";s:4:\"nama\";s:5:\"admin\";}'),
('b56b4adec72aaa9c500c4b262ba4abe5', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0', 1606651391, 'a:6:{s:9:\"user_data\";s:0:\"\";s:5:\"masuk\";b:1;s:4:\"user\";s:14:\"admin@admin.id\";s:5:\"akses\";s:1:\"1\";s:7:\"idadmin\";s:1:\"1\";s:4:\"nama\";s:5:\"admin\";}');

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
('BR000001', '1', 'Cloth Premium tape 1,5', 'Unit', 605, 1000, 0, 10, 0, '2020-11-28 11:47:04', '2020-11-29 19:22:01', 52, 1),
('BR000002', '', 'Highlighter Kenko', 'Unit', 2950, 5000, 0, 0, 0, '2020-11-28 11:47:52', '2020-11-28 22:30:27', 52, 1),
('BR000003', '', 'Highlighter Safari', 'Unit', 0, 5000, 0, 0, 0, '2020-11-28 11:48:27', '2020-11-28 22:30:35', 52, 1),
('BR000004', '', 'Eraser Big Besar', 'Unit', 0, 3000, 0, 0, 0, '2020-11-28 11:49:03', NULL, 52, 1),
('BR000005', '', 'Eraser Big Kecil', 'Unit', 0, 2000, 0, 0, 0, '2020-11-28 11:49:30', NULL, 52, 1),
('BR000006', '', 'Eraser Faber-Castell', 'Unit', 0, 3000, 0, 0, 0, '2020-11-28 11:50:12', '2020-11-29 18:22:31', 52, 1),
('BR000007', '', 'Eraser WB', 'Unit', 0, 0, 0, 0, 0, '2020-11-28 11:50:37', '2020-11-28 22:30:50', 52, 1),
('BR000008', '', 'Eraser Staedtler', 'Unit', 72500, 3000, 0, 0, 0, '2020-11-28 11:51:50', NULL, 52, 1),
('BR000009', '', 'Eraser Karakter', 'PCS', 11000, 1000, 20000, 0, 0, '2020-11-28 11:52:45', NULL, 52, 1),
('BR000010', '', 'Eraser Joyko Kecil', 'Unit', 23500, 1000, 25000, 0, 0, '2020-11-28 11:53:44', NULL, 52, 1),
('BR000011', '', 'Eraser Joyko Besar', 'Unit', 0, 2500, 40000, 0, 0, '2020-11-28 11:55:26', NULL, 52, 1),
('BR000012', '', 'Eraser Joyko Karakter', 'Unit', 0, 2500, 40000, 0, 0, '2020-11-28 11:56:22', NULL, 52, 1),
('BR000013', '', 'Highlighter Trifelo', 'Unit', 17000, 3000, 30000, 0, 0, '2020-11-28 11:57:17', NULL, 52, 1),
('BR000014', '', 'Stick Notes 44mm x 12mm', 'PCS', 0, 6000, 0, 10, 0, '2020-11-28 11:58:14', '2020-11-29 18:18:50', 52, 1),
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
('BR000033', '', 'Pensil VIS-1', 'Unit', 0, 1000, 10000, 0, 0, '2020-11-28 12:11:05', '2020-11-28 22:31:05', 52, 1),
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
('BR000046', '', 'Pulpen X Data', 'Lusin', 7250, 1000, 9000, 0, 0, '2020-11-28 12:19:25', '2020-11-28 22:31:29', 52, 1),
('BR000047', '', 'Pulpen X Data', 'PCS', 605, 1000, 9000, 0, 0, '2020-11-28 12:20:14', '2020-11-28 22:31:41', 52, 1),
('BR000048', '', 'Pulpen Standar AE7', 'Unit', 15250, 2000, 20000, 0, 0, '2020-11-28 12:21:58', NULL, 52, 1),
('BR000049', '', 'Pulpen Standar Kenko', 'Unit', 17300, 2000, 22000, 0, 0, '2020-11-28 12:22:26', NULL, 52, 1),
('BR000050', '', 'Pulpen Kenko T-Gel', 'Unit', 22000, 3000, 0, 0, 0, '2020-11-28 12:23:08', '2020-11-29 18:10:07', 52, 1),
('BR000051', '', 'Pulpen Kenko Win Jeller', 'Unit', 24000, 3000, 0, 0, 0, '2020-11-28 12:24:59', NULL, 52, 1),
('BR000052', '', 'Pulpen Kenko Fasy Gel', 'Unit', 2350, 3000, 0, 0, 0, '2020-11-28 12:25:31', NULL, 52, 1),
('BR000053', '', 'Pulpen T120 0.5 mm', 'Unit', 0, 4000, 0, 0, 0, '2020-11-28 12:26:05', '2020-11-28 22:31:53', 52, 1),
('BR000054', '', 'Pulpen Kenko K-1', 'Unit', 0, 5000, 0, 0, 0, '2020-11-28 12:26:46', NULL, 52, 1),
('BR000055', '', 'Pulpen B-Gel 0.5', 'Unit', 4500, 5000, 0, 0, 0, '2020-11-28 12:27:15', NULL, 52, 1),
('BR000056', '', 'Pulpen B-Gel 0.7', 'Unit', 4500, 5000, 0, 0, 0, '2020-11-28 12:27:45', '2020-11-28 22:32:03', 52, 1),
('BR000057', '', 'Pulpen Hi - Tech H', 'Unit', 2920, 5000, 0, 0, 0, '2020-11-28 12:28:29', NULL, 52, 1),
('BR000058', '', 'Pulpen Hitech Rainbow', 'Unit', 0, 5000, 0, 0, 0, '2020-11-28 12:29:53', '2020-11-28 22:32:59', 52, 1),
('BR000059', '', 'Pulpen Hitech-H Safari', 'Unit', 0, 5000, 0, 0, 0, '2020-11-28 15:33:27', NULL, 52, 1),
('BR000060', '', 'Pulpen Hitech-C', 'Unit', 19000, 23000, 0, 0, 0, '2020-11-28 15:34:14', NULL, 52, 1),
('BR000061', '', 'Refil Hitech - C', 'Unit', 13750, 15000, 0, 0, 0, '2020-11-28 15:34:46', NULL, 52, 1),
('BR000062', '', 'Pentel 0.8 mm', 'Unit', 17100, 20000, 0, 0, 0, '2020-11-28 15:35:12', NULL, 52, 1),
('BR000063', '', 'Penter', 'Unit', 0, 15000, 0, 0, 0, '2020-11-28 15:35:33', NULL, 52, 1),
('BR000064', '', 'Pulpen Snowman v-5', 'Unit', 2250, 5000, 0, 0, 0, '2020-11-28 15:36:03', NULL, 52, 1),
('BR000065', '', 'Pulpen ezslide', 'Unit', 0, 0, 0, 0, 0, '2020-11-28 15:36:41', NULL, 52, 1),
('BR000066', '', 'Pulpen 1-penx', 'Unit', 0, 0, 0, 0, 0, '2020-11-28 15:37:11', NULL, 52, 1),
('BR000067', '', 'Pulpen Ti20 Gel1.0', 'Unit', 3334, 5000, 0, 0, 0, '2020-11-28 15:38:10', NULL, 52, 1),
('BR000068', '', 'Pulpen Zebera Penciltic', 'Unit', 0, 4000, 0, 0, 0, '2020-11-28 15:38:57', NULL, 52, 1),
('BR000069', '', 'Pulpen V-TRO Gel', 'Unit', 0, 2500, 0, 0, 0, '2020-11-28 15:39:25', NULL, 52, 1),
('BR000070', '', 'Pulpen GM', 'Unit', 5208, 6000, 0, 0, 0, '2020-11-28 15:39:52', NULL, 52, 1),
('BR000071', '', 'Pulpen Stylus i-pen', 'Unit', 0, 3000, 0, 0, 0, '2020-11-28 15:40:27', NULL, 52, 1),
('BR000072', '', 'Pulpen Aligator', 'Unit', 0, 0, 15000, 0, 0, '2020-11-28 15:40:45', NULL, 52, 1),
('BR000073', '', 'Pulpen Pilot', 'Unit', 17250, 2000, 22000, 0, 0, '2020-11-28 15:41:52', NULL, 52, 1),
('BR000074', '', 'Pulpen Faster', 'Unit', 0, 0, 0, 0, 0, '2020-11-28 15:42:43', NULL, 52, 1),
('BR000075', '', 'Pulpen Jansen', 'Unit', 0, 0, 0, 0, 0, '2020-11-28 15:42:58', NULL, 52, 1),
('BR000076', '', 'Pulpen M2000', 'Unit', 0, 2000, 0, 0, 0, '2020-11-28 15:43:30', NULL, 52, 1),
('BR000077', '', 'Pulpen Bolpenku', 'Unit', 492, 1000, 9000, 0, 0, '2020-11-28 15:43:58', NULL, 52, 1),
('BR000078', '', 'Pulpen Ti20 0.5', 'Unit', 0, 3000, 30000, 0, 0, '2020-11-28 15:44:31', NULL, 52, 1),
('BR000079', '', 'Pulpen Yamano 0.38', 'Unit', 0, 2000, 20000, 0, 0, '2020-11-28 15:44:54', NULL, 52, 1),
('BR000080', '', 'Pulpen Safari 800', 'Unit', 0, 2500, 0, 0, 0, '2020-11-28 15:45:15', NULL, 52, 1),
('BR000081', '', 'Pulpen Techjob', 'Unit', 0, 3000, 30000, 0, 0, '2020-11-28 15:45:38', NULL, 52, 1),
('BR000082', '', 'Pulpen ESCO Gliter', 'Unit', 0, 1500, 12000, 0, 0, '2020-11-28 15:46:12', NULL, 52, 1),
('BR000083', '', 'Drawing Pen', 'Unit', 7292, 8000, 0, 0, 0, '2020-11-28 15:46:34', NULL, 52, 1),
('BR000084', '', 'Drawing Pen Callygrafi', 'Unit', 7500, 10000, 0, 0, 0, '2020-11-28 15:47:06', NULL, 52, 1),
('BR000085', '', 'Pulpen Joyko Diamond', 'Unit', 0, 2500, 20000, 0, 0, '2020-11-28 15:47:31', NULL, 52, 1),
('BR000086', '', 'Refil Pulpen Yi Hao', 'Unit', 1000, 12000, 0, 0, 0, '2020-11-28 15:47:55', NULL, 52, 1),
('BR000087', '', 'Refill pulpen mastona', 'Unit', 0, 1000, 12000, 0, 0, '2020-11-28 15:49:34', NULL, 52, 1),
('BR000088', '', 'Spidol Permanen Marker', 'Unit', 0, 7500, 85000, 0, 0, '2020-11-28 15:50:05', NULL, 52, 1),
('BR000089', '', 'Spidol white board', 'Unit', 0, 7500, 85000, 0, 0, '2020-11-28 15:50:41', NULL, 52, 1),
('BR000090', '', 'Spidol snowman white', 'Unit', 12667, 15000, 17400, 0, 0, '2020-11-28 15:51:20', NULL, 52, 1),
('BR000091', '', 'Spidol snowman gold', 'Unit', 0, 15000, 0, 0, 0, '2020-11-28 15:51:41', NULL, 52, 1),
('BR000092', '', 'Spidol snowman silver', 'Unit', 0, 15000, 0, 0, 0, '2020-11-28 15:52:00', NULL, 52, 1),
('BR000093', '', 'Spidol snowman pencil ', 'Unit', 0, 1500, 13000, 0, 0, '2020-11-28 15:52:24', NULL, 52, 1),
('BR000094', '', 'Spidol snowman 500', 'Unit', 0, 20000, 0, 0, 0, '2020-11-28 15:52:49', NULL, 52, 1),
('BR000095', '', 'Refil Ink Snowman', 'Unit', 11666, 16000, 186000, 0, 0, '2020-11-28 15:53:51', NULL, 52, 1),
('BR000096', '', 'Refil Ink Snow Permanent', 'Unit', 0, 10000, 0, 0, 0, '2020-11-28 15:54:15', NULL, 52, 1),
('BR000097', '', 'Pensil Sharpener D.holes', 'Unit', 0, 5000, 0, 0, 0, '2020-11-28 15:55:42', NULL, 52, 1),
('BR000098', '', 'Pensil Sharpener Birds', 'Unit', 0, 3000, 0, 0, 0, '2020-11-28 15:56:13', NULL, 52, 1),
('BR000099', '', 'Pensil Sharpener Yi Mei', 'Unit', 0, 3000, 0, 0, 0, '2020-11-28 15:56:40', NULL, 52, 1),
('BR000100', '', 'Pensil Sharpener L.Pony', 'Unit', 0, 5000, 0, 0, 0, '2020-11-28 16:01:26', NULL, 52, 1),
('BR000101', '', 'Pensil Sharpener Montana', 'Unit', 0, 1000, 17000, 0, 0, '2020-11-28 16:01:43', NULL, 52, 1),
('BR000102', '', 'Kapur Sarjana Rainbow', 'Unit', 0, 5000, 0, 0, 0, '2020-11-28 16:02:00', NULL, 52, 1),
('BR000103', '', 'Kapur Tulis NMK', 'Unit', 3500, 5000, 0, 0, 0, '2020-11-28 16:02:20', NULL, 52, 1),
('BR000104', '', 'Origami 12x12', 'Unit', 1350, 3000, 0, 0, 0, '2020-11-28 16:03:22', NULL, 52, 1),
('BR000105', '', 'Origami 14x14', 'PCS', 1800, 5000, 0, 0, 0, '2020-11-28 16:04:06', NULL, 52, 1),
('BR000106', '', 'Origami 16x16', 'Unit', 2800, 6000, 0, 0, 0, '2020-11-28 16:04:28', NULL, 52, 1),
('BR000107', '', 'Origami 2020', 'Unit', 3400, 8000, 0, 0, 0, '2020-11-28 16:04:52', NULL, 52, 1),
('BR000108', '', 'Paper Clips Vis-1 No.3', 'Unit', 10000, 2000, 0, 0, 0, '2020-11-28 16:05:18', NULL, 52, 1),
('BR000109', '', 'Paper Clips Joyko No.5', 'Unit', 33000, 5000, 0, 0, 0, '2020-11-28 16:06:18', NULL, 52, 1),
('BR000110', '', 'Colour pencils FC 115852', 'Unit', 21900, 27000, 0, 0, 0, '2020-11-28 16:07:14', NULL, 52, 1),
('BR000111', '', 'Colour pencils FC  115851', 'Unit', 11400, 14000, 0, 0, 0, '2020-11-28 16:07:36', NULL, 52, 1),
('BR000112', '', 'Colour pencils  Std 136 C12', 'Unit', 18750, 23000, 0, 0, 0, '2020-11-28 16:08:03', NULL, 52, 1),
('BR000113', '', 'Colour pencils Std 136 01', 'Unit', 11350, 14000, 0, 0, 0, '2020-11-28 16:08:30', NULL, 52, 1),
('BR000114', '', 'Colour pencils  Joyko 24PB', 'Unit', 19817, 24000, 0, 0, 0, '2020-11-28 16:09:03', NULL, 52, 1),
('BR000115', '', 'Colour pencils  Joyko 12PB', 'Unit', 9383, 12000, 0, 0, 0, '2020-11-28 16:09:31', NULL, 52, 1),
('BR000116', '', 'Colour pencil Joyko s12', 'Unit', 6162, 0, 0, 0, 0, '2020-11-29 11:11:53', NULL, 52, 1),
('BR000117', '', 'Oil Pastel Joyko 2CR', 'Unit', 0, 12000, 0, 0, 0, '2020-11-29 11:12:20', NULL, 52, 1),
('BR000118', '', 'Oil Pastel Joyko 12S', 'Unit', 11892, 15000, 0, 0, 0, '2020-11-29 11:12:54', NULL, 52, 1),
('BR000119', '', 'Twist Crayons Ti-CP-12T', 'Unit', 25588, 30000, 0, 0, 0, '2020-11-29 11:13:30', NULL, 52, 1),
('BR000120', '', 'Twist Crayons Ti-CP-12 Mini', 'Unit', 15000, 0, 0, 10, 0, '2020-11-29 11:14:00', '2020-11-29 18:22:48', 52, 1),
('BR000121', '3', 'Oil Pastel Joyko OP-245', 'Unit', 28000, 20000, 0, 10, 0, '2020-11-29 11:14:29', '2020-11-29 18:21:44', 52, 1),
('BR000122', '2', 'Oil Pastel Joyko OP-485', 'Unit', 58000, 0, 0, 0, 0, '2020-11-29 11:14:57', '2020-11-29 18:23:02', 52, 1),
('BR000123', '', 'Oil Pastel Joyko OP-185', 'Unit', 22800, 30000, 0, 0, 0, '2020-11-29 11:25:15', NULL, 52, 1),
('BR000124', '', 'Oil Pastel Joyko OP-365', 'Unit', 42300, 0, 0, 0, 0, '2020-11-29 11:25:31', NULL, 52, 1),
('BR000125', '', 'Oil Pastel Joyko OP-555', 'Unit', 68600, 85000, 0, 0, 0, '2020-11-29 11:26:02', NULL, 52, 1),
('BR000126', '', 'Remote Stand arc', 'Unit', 0, 15000, 0, 0, 0, '2020-11-29 11:26:26', NULL, 52, 1),
('BR000127', '', 'Opini guitar water colour', 'Unit', 7250, 10000, 0, 0, 0, '2020-11-29 11:26:54', NULL, 52, 1),
('BR000128', '', 'V-TRO Oil Colour', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 11:27:12', NULL, 52, 1),
('BR000129', '', 'Lem glukol kecil', 'Unit', 850, 1500, 0, 0, 0, '2020-11-29 11:27:38', NULL, 52, 1),
('BR000130', '', 'Lem glukol sedang', 'Unit', 2000, 3000, 0, 0, 0, '2020-11-29 11:27:58', NULL, 52, 1),
('BR000131', '', 'Lem glukol besar', 'Unit', 4925, 8000, 0, 0, 0, '2020-11-29 11:28:26', NULL, 52, 1),
('BR000132', '', 'Lem Fox Plus 20 G', 'Unit', 3800, 6000, 0, 0, 0, '2020-11-29 11:29:00', NULL, 52, 1),
('BR000133', '', 'Lem Fox PVAC 150 G', 'Unit', 7500, 10000, 0, 0, 0, '2020-11-29 11:29:38', NULL, 52, 1),
('BR000134', '', 'Lem Fox Plamur', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 11:32:08', NULL, 52, 1),
('BR000135', '', 'Lem Joyko GL-R35', 'Unit', 0, 3000, 0, 0, 0, '2020-11-29 11:32:29', NULL, 52, 1),
('BR000136', '', 'Lem Joyko GL-R50', 'Unit', 0, 5000, 0, 0, 0, '2020-11-29 11:32:54', NULL, 52, 1),
('BR000137', '', 'Glue Stick Kenko 8gr', 'Unit', 63000, 3000, 75000, 0, 0, '2020-11-29 11:33:30', NULL, 52, 1),
('BR000138', '', 'Glue Stick D-4236', 'Unit', 0, 5000, 0, 0, 0, '2020-11-29 11:34:11', NULL, 52, 1),
('BR000139', '', 'Lem Fox C1.01.061', 'Unit', 7600, 10000, 0, 0, 0, '2020-11-29 11:34:41', NULL, 52, 1),
('BR000140', '', 'Lem Styrofoam 50ml', 'Unit', 4583, 6000, 0, 0, 0, '2020-11-29 11:35:18', NULL, 52, 1),
('BR000141', '', 'Lem Styrofoam 100ml', 'Unit', 6250, 12000, 0, 0, 0, '2020-11-29 11:35:44', NULL, 52, 1),
('BR000142', '', 'Lem Astro  16-60', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 11:35:59', NULL, 52, 1),
('BR000143', '', 'Lem Astro  16 -110', 'Unit', 8000, 17000, 0, 0, 0, '2020-11-29 11:36:28', '2020-11-29 18:43:46', 52, 1),
('BR000144', '', 'Lem Castol Mini', 'Unit', 3500, 6000, 0, 0, 0, '2020-11-29 11:44:18', NULL, 52, 1),
('BR000145', '', 'Nationall Tape', 'Unit', 4000, 7000, 0, 0, 0, '2020-11-29 11:52:42', NULL, 52, 1),
('BR000146', '', 'Lem G W-20', 'Unit', 0, 7000, 0, 0, 0, '2020-11-29 11:53:07', NULL, 52, 1),
('BR000147', '', 'Lem atrico company', 'Unit', 5000, 0, 0, 0, 0, '2020-11-29 11:53:24', '2020-11-29 18:54:02', 52, 1),
('BR000148', '', 'Lem atrico 101', 'Unit', 0, 2500, 0, 0, 0, '2020-11-29 11:53:51', NULL, 52, 1),
('BR000149', '', 'Lem atrico 110', 'Unit', 50500, 5000, 0, 0, 0, '2020-11-29 11:54:29', NULL, 52, 1),
('BR000150', '', 'Super flue M2000', 'Unit', 0, 3000, 0, 0, 0, '2020-11-29 11:54:46', NULL, 52, 1),
('BR000151', '', 'Lem UHU 20ml', 'Unit', 195000, 10000, 0, 0, 0, '2020-11-29 11:55:13', NULL, 52, 1),
('BR000152', '', 'Lem UHU Fast Ultra ', 'Unit', 0, 7000, 0, 0, 0, '2020-11-29 11:55:33', NULL, 52, 1),
('BR000153', '', 'Lem Dextone', 'Unit', 0, 18000, 0, 0, 0, '2020-11-29 11:55:55', NULL, 52, 1),
('BR000154', '', 'Lem Oke Bond', 'Unit', 0, 3000, 0, 0, 0, '2020-11-29 11:56:09', NULL, 52, 1),
('BR000155', '', 'Lem G 2000', 'Unit', 0, 3000, 0, 0, 0, '2020-11-29 11:56:34', NULL, 52, 1),
('BR000156', '', 'Lem Sipplas', 'Unit', 0, 5000, 0, 0, 0, '2020-11-29 11:56:49', NULL, 52, 1),
('BR000157', '', 'Nachi Stationary Keal', 'Unit', 454, 1000, 0, 0, 0, '2020-11-29 11:57:15', NULL, 52, 1),
('BR000158', '', 'Cloth Premium tape', 'Unit', 11600, 15000, 0, 0, 0, '2020-11-29 11:57:51', NULL, 52, 1),
('BR000159', '', 'Goii tape 5 mill 5.8 inch', 'Unit', 5500, 1000, 0, 0, 0, '2020-11-29 12:20:42', NULL, 52, 1),
('BR000160', '', 'Seal tape 1.2 x 10m', 'Unit', 0, 2000, 0, 0, 0, '2020-11-29 12:21:05', NULL, 52, 1),
('BR000161', '', 'Seal tape besar', 'Unit', 0, 4000, 0, 0, 0, '2020-11-29 12:21:20', NULL, 52, 1),
('BR000162', '', 'Cloth Premium tape 1.5', 'Unit', 8700, 12000, 0, 0, 0, '2020-11-29 12:22:53', NULL, 52, 1),
('BR000163', '', 'Daimaru besar', 'Unit', 13000, 15000, 0, 0, 0, '2020-11-29 12:23:14', NULL, 52, 1),
('BR000164', '', 'OPP 45x44m Coklat IFO', 'Unit', 22200, 8000, 0, 0, 0, '2020-11-29 12:24:09', NULL, 52, 1),
('BR000165', '', 'OPP 45x60 Coklat IFO', 'Unit', 59500, 12000, 0, 0, 0, '2020-11-29 12:24:37', NULL, 52, 1),
('BR000166', '', 'Nachi Stationery 12mm', 'Unit', 2035, 3000, 0, 0, 0, '2020-11-29 12:25:00', NULL, 52, 1),
('BR000167', '', 'Nachi Double tape 12mm', 'Unit', 2035, 3000, 0, 0, 0, '2020-11-29 12:25:18', NULL, 52, 1),
('BR000168', '', 'Nachi D.tape 24mm', 'Unit', 4070, 7000, 0, 0, 0, '2020-11-29 12:25:39', NULL, 52, 1),
('BR000169', '', 'Nachi D.tape 48mm', 'Unit', 8140, 12000, 0, 0, 0, '2020-11-29 12:26:01', NULL, 52, 1),
('BR000170', '', 'Nachi masking tape 24mm', 'Unit', 0, 6000, 0, 0, 0, '2020-11-29 12:26:36', NULL, 52, 1),
('BR000171', '', 'Double Tape', 'Unit', 0, 2000, 0, 0, 0, '2020-11-29 12:26:51', NULL, 52, 1),
('BR000172', '', 'Tipex kenko 01', 'Unit', 45000, 5000, 0, 0, 0, '2020-11-29 12:35:54', NULL, 52, 1),
('BR000173', '', 'Cutter A-300A', 'Unit', 4250, 7000, 0, 0, 0, '2020-11-29 12:36:27', NULL, 52, 1),
('BR000174', '', 'Cutter L-500', 'Unit', 11067, 15000, 0, 0, 0, '2020-11-29 12:36:54', NULL, 52, 1),
('BR000175', '', 'Isi Cutter A-100', 'Unit', 2208, 2500, 0, 0, 0, '2020-11-29 12:37:18', NULL, 52, 1),
('BR000176', '', 'Isi Cutter L-150', 'Unit', 4833, 5000, 0, 0, 0, '2020-11-29 12:37:39', NULL, 52, 1),
('BR000177', '', 'Gunting M2000 A-145', 'Unit', 2833, 4000, 0, 0, 0, '2020-11-29 12:38:10', NULL, 52, 1),
('BR000178', '', 'Gunting M2000 A-165', 'Unit', 3250, 6000, 0, 0, 0, '2020-11-29 12:38:32', NULL, 52, 1),
('BR000179', '', 'Gunting M2000 A-580', 'Unit', 5542, 8000, 0, 0, 0, '2020-11-29 12:39:00', NULL, 52, 1),
('BR000180', '', 'Gunting M2000 140K', 'Unit', 2375, 4000, 0, 0, 0, '2020-11-29 12:39:26', NULL, 52, 1),
('BR000181', '', 'Pianikia Evodia', 'Unit', 0, 150000, 0, 0, 0, '2020-11-29 12:39:47', '2020-11-29 19:40:32', 52, 1),
('BR000182', '', 'Pianika Joyko', 'Unit', 133000, 250000, 0, 0, 0, '2020-11-29 12:40:19', NULL, 52, 1),
('BR000183', '', 'Soparno Yrs-23', 'Unit', 0, 45000, 0, 0, 0, '2020-11-29 12:41:00', NULL, 52, 1),
('BR000184', '', 'Soparno German', 'Unit', 0, 15000, 0, 0, 0, '2020-11-29 12:41:16', NULL, 52, 1),
('BR000185', '', 'Eraser w.board Big', 'Unit', 0, 5000, 0, 0, 0, '2020-11-29 12:41:39', NULL, 52, 1),
('BR000186', '', 'Eraser w.board small', 'Unit', 0, 3000, 0, 0, 0, '2020-11-29 12:42:03', NULL, 52, 1),
('BR000187', '', 'Map Coklat Tali', 'PCS', 6300, 1500, 0, 0, 0, '2020-11-29 12:42:34', NULL, 52, 1),
('BR000188', '', 'Folio ', 'Unit', 33500, 500, 0, 0, 0, '2020-11-29 12:43:05', NULL, 52, 1),
('BR000189', '', 'Kwitansi KT 40M', 'PCS', 13600, 3000, 0, 0, 0, '2020-11-29 12:43:34', NULL, 52, 1),
('BR000190', '', 'Kwitansi KT 40T', 'Unit', 25500, 5000, 0, 0, 0, '2020-11-29 12:43:59', NULL, 52, 1),
('BR000191', '', 'Kwitansi KT 50B', 'PCS', 33500, 8000, 0, 0, 0, '2020-11-29 12:44:46', NULL, 52, 1),
('BR000192', '', 'Nota Kontan 1 Ply 1 Dolar', 'PCS', 10500, 2500, 0, 0, 0, '2020-11-29 12:45:53', NULL, 52, 1),
('BR000193', '', 'Nota Kontan 1 Ply 1 Indp', 'PCS', 10500, 2500, 0, 0, 0, '2020-11-29 12:46:30', NULL, 52, 1),
('BR000194', '', 'Nota Kontan 2Ply Vsn', 'PCS', 20600, 3000, 0, 0, 0, '2020-11-29 12:46:56', NULL, 52, 1),
('BR000195', '', 'Blok Note Gema', 'Unit', 0, 2000, 0, 0, 0, '2020-11-29 12:47:13', NULL, 52, 1),
('BR000196', '', 'Blok Note Gelatik Polos', 'Unit', 17900, 0, 0, 0, 0, '2020-11-29 12:47:38', NULL, 52, 1),
('BR000197', '', 'Blok Note Gelatik Garis', 'Unit', 18500, 0, 0, 0, 0, '2020-11-29 12:47:59', NULL, 52, 1),
('BR000198', '', 'Nota Kontan 3Ply Vsn', 'Unit', 42000, 5000, 0, 0, 0, '2020-11-29 12:48:26', NULL, 52, 1),
('BR000199', '', 'Blok Note Gelatik besar', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 12:48:43', NULL, 52, 1),
('BR000200', '', 'Blok Note AS Paperline', 'Unit', 47500, 0, 0, 0, 0, '2020-11-29 12:49:04', NULL, 52, 1),
('BR000201', '', 'Surat Jalan NCR 3Ply', 'Unit', 0, 8000, 0, 0, 0, '2020-11-29 12:51:11', NULL, 52, 1),
('BR000202', '', 'Kliping Polos', 'Unit', 0, 5000, 0, 0, 0, '2020-11-29 12:51:33', NULL, 52, 1),
('BR000203', '', 'Kliping Garis', 'Unit', 42700, 6000, 0, 0, 0, '2020-11-29 12:52:10', NULL, 52, 1),
('BR000204', '', 'Milimeter Book', 'Unit', 30300, 4000, 0, 0, 0, '2020-11-29 12:53:15', NULL, 52, 1),
('BR000205', '', 'Amplop Merpati 110x70', 'Unit', 0, 8000, 0, 0, 0, '2020-11-29 12:53:43', NULL, 52, 1),
('BR000206', '', 'Amplop Paperline 104pps', 'Unit', 57300, 15000, 0, 0, 0, '2020-11-29 12:54:50', NULL, 52, 1),
('BR000207', '', 'Amplop paperline 30pps', 'Unit', 81000, 20000, 0, 0, 0, '2020-11-29 12:55:16', NULL, 52, 1),
('BR000208', '', 'Amplop Grandia 110x70', 'Unit', 8000, 0, 0, 0, 0, '2020-11-29 12:56:22', NULL, 52, 1),
('BR000209', '', 'Amplop Pluto', 'Unit', 0, 4000, 0, 0, 0, '2020-11-29 12:56:38', NULL, 52, 1),
('BR000210', '', 'Custom Book', 'Unit', 0, 10000, 0, 0, 0, '2020-11-29 12:56:50', NULL, 52, 1),
('BR000211', '', 'Unsur Kimia', 'Unit', 0, 7000, 0, 0, 0, '2020-11-29 12:57:03', NULL, 52, 1),
('BR000212', '', 'Penggaris butterfly 30cm', 'Unit', 1800, 2500, 0, 0, 0, '2020-11-29 12:57:43', NULL, 52, 1),
('BR000213', '', 'Penggaris butterfly 20cm', 'Unit', 1333, 2000, 0, 0, 0, '2020-11-29 12:58:04', NULL, 52, 1),
('BR000214', '', 'Penggaris V-TRO', 'Unit', 16800, 1000, 0, 0, 0, '2020-11-29 12:58:34', NULL, 52, 1),
('BR000215', '', 'Penggaris ATN No.707', 'Unit', 0, 2000, 0, 0, 0, '2020-11-29 12:58:59', NULL, 52, 1),
('BR000216', '', 'Penggaris Besi 30cm', 'Unit', 5750, 8000, 0, 0, 0, '2020-11-29 12:59:24', NULL, 52, 1),
('BR000217', '', 'Penggaris Besi 50cm', 'Unit', 52500, 10000, 0, 0, 0, '2020-11-29 13:00:22', NULL, 52, 1),
('BR000218', '', 'Penggaris Besi Kenko 60', 'Unit', 0, 20000, 0, 0, 0, '2020-11-29 13:00:40', NULL, 52, 1),
('BR000219', '', 'Penggaris Besi Kenko 50', 'Unit', 0, 18000, 0, 0, 0, '2020-11-29 13:01:02', NULL, 52, 1),
('BR000220', '', 'Paper Fastener', 'Unit', 6900, 8000, 0, 0, 0, '2020-11-29 13:01:47', NULL, 52, 1),
('BR000221', '', 'Sempoa Van-art', 'Unit', 6512, 10000, 0, 0, 0, '2020-11-29 13:02:29', NULL, 52, 1),
('BR000222', '', 'Sempoa xiaoxiong', 'Unit', 12500, 15000, 0, 0, 0, '2020-11-29 13:03:21', NULL, 52, 1),
('BR000223', '', 'Photo paper A4', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 13:03:37', NULL, 52, 1),
('BR000224', '', 'Photo paper F4', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 13:03:49', NULL, 52, 1),
('BR000225', '', 'Photo paper 4R', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 13:04:04', NULL, 52, 1),
('BR000226', '', 'Slinger Kecil', 'Unit', 0, 2000, 0, 0, 0, '2020-11-29 13:04:18', NULL, 52, 1),
('BR000227', '', 'Slinger besar', 'Unit', 0, 8000, 0, 0, 0, '2020-11-29 13:04:33', NULL, 52, 1),
('BR000228', '', 'Paper Bag Batik Kecil', 'Unit', 1670, 5000, 0, 0, 0, '2020-11-29 13:04:54', NULL, 52, 1),
('BR000229', '', 'Paper Bag Batik Sedang', 'Unit', 2250, 7000, 0, 0, 0, '2020-11-29 13:05:19', NULL, 52, 1),
('BR000230', '', 'Paper Bag Besar', 'Unit', 2958, 10000, 0, 0, 0, '2020-11-29 13:26:13', NULL, 52, 1),
('BR000231', '', 'Paper Bag Kotak Besar', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 13:26:31', NULL, 52, 1),
('BR000232', '', 'Paper Bag Paris', 'Unit', 0, 6000, 0, 0, 0, '2020-11-29 13:26:49', NULL, 52, 1),
('BR000233', '', 'Paper Bag Kartun', 'Unit', 0, 6000, 0, 0, 0, '2020-11-29 13:27:01', NULL, 52, 1),
('BR000234', '', 'Paper Bag Love', 'Unit', 0, 6000, 0, 0, 0, '2020-11-29 13:27:13', NULL, 52, 1),
('BR000235', '', 'Stopmap Kertas', 'Unit', 18500, 1000, 25000, 0, 0, '2020-11-29 13:27:41', NULL, 52, 1),
('BR000236', '', 'Penggaris Triangel No.510', 'Unit', 0, 0, 14000, 0, 0, '2020-11-29 13:28:14', NULL, 52, 1),
('BR000237', '', 'Penggaris circle butterfly 360 Drajat', 'Unit', 0, 3500, 0, 0, 0, '2020-11-29 13:28:44', NULL, 52, 1),
('BR000238', '', 'Penggaris Triangel Kojiko', 'Unit', 0, 5000, 0, 0, 0, '2020-11-29 13:29:11', NULL, 52, 1),
('BR000239', '', 'Penggaris Enter', 'Unit', 0, 0, 18000, 0, 0, '2020-11-29 13:29:27', NULL, 52, 1),
('BR000240', '', 'Penggaris ptc.Butterfly 180 Derajat', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 13:29:56', NULL, 52, 1),
('BR000241', '', 'Penggaris Plastik 180drajat isi 12', 'Unit', 0, 4000, 0, 0, 0, '2020-11-29 13:30:21', NULL, 52, 1),
('BR000242', '', 'Stopmap Batik', 'Unit', 0, 0, 0, 0, 0, '2020-11-29 13:30:33', NULL, 52, 1),
('BR000243', '', 'Snelhecter kertas', 'Unit', 28500, 0, 0, 0, 0, '2020-11-29 13:31:06', NULL, 52, 1),
('BR000244', '', 'Curiculum vitae', 'Unit', 12500, 500, 0, 0, 0, '2020-11-29 13:31:33', NULL, 52, 1),
('BR000245', '', 'Tempat Tabungan Kecil', 'Unit', 0, 5000, 0, 0, 0, '2020-11-29 13:31:53', NULL, 52, 1),
('BR000246', '', 'Tempat Tabungan Besar', 'Unit', 0, 8000, 0, 0, 0, '2020-11-29 13:32:10', NULL, 52, 1),
('BR000247', '', 'Box Card', 'Unit', 0, 15000, 0, 0, 0, '2020-11-29 13:32:27', NULL, 52, 1),
('BR000248', '', 'Stardust name tag', 'Unit', 0, 2000, 45000, 0, 0, '2020-11-29 13:32:51', NULL, 52, 1),
('BR000249', '', 'Id Card Big B3', 'Unit', 16000, 2000, 0, 0, 0, '2020-11-29 13:33:19', NULL, 52, 1),
('BR000250', '', 'Id Card Big B4', 'Unit', 18000, 2000, 0, 0, 0, '2020-11-29 13:33:51', NULL, 52, 1),
('BR000251', '', 'Id Card Big B2', 'Unit', 10000, 2000, 0, 0, 0, '2020-11-29 13:34:15', NULL, 52, 1),
('BR000252', '', 'Id Card Big B1', 'Unit', 7500, 2000, 15000, 0, 0, '2020-11-29 13:37:17', NULL, 52, 1),
('BR000253', '', 'Id Card KTP', 'Unit', 22500, 2000, 0, 0, 0, '2020-11-29 13:37:37', NULL, 52, 1),
('BR000254', '', 'Id Card STNk', 'Unit', 0, 2000, 0, 0, 0, '2020-11-29 13:37:52', NULL, 52, 1);

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
