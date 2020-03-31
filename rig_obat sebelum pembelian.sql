-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2020 at 06:38 AM
-- Server version: 10.1.38-MariaDB
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
-- Database: `rig_obat`
--

-- --------------------------------------------------------

--
-- Table structure for table `cash_in_out`
--

CREATE TABLE `cash_in_out` (
  `id` int(11) NOT NULL,
  `kode_rekening` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `masuk` decimal(10,0) NOT NULL,
  `keluar` decimal(10,0) NOT NULL,
  `id_hutang_dibayar` int(11) DEFAULT NULL,
  `id_piutang_dibayar` int(11) DEFAULT NULL,
  `id_penjualan` varchar(50) DEFAULT NULL,
  `keterangan` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cash_in_out`
--

INSERT INTO `cash_in_out` (`id`, `kode_rekening`, `tanggal`, `masuk`, `keluar`, `id_hutang_dibayar`, `id_piutang_dibayar`, `id_penjualan`, `keterangan`) VALUES
(4, '10003', '2019-06-27', '5000000', '0', NULL, NULL, NULL, 'keterangan'),
(6, '20003', '2019-06-30', '0', '850000', NULL, NULL, NULL, 'oke'),
(7, '10003', '2019-06-02', '4000000', '0', NULL, NULL, NULL, 'tes'),
(8, '10003', '2019-06-03', '700000', '0', NULL, NULL, NULL, 'deee'),
(11, '10003', '2019-06-20', '6000000', '0', NULL, NULL, NULL, '-'),
(12, '10003', '2019-06-06', '700000', '0', NULL, NULL, NULL, 'keterangan'),
(38, '10001', '2019-06-30', '16000', '0', NULL, NULL, '300619000001', ''),
(39, '10001', '2019-06-30', '16000', '0', NULL, NULL, '300619000002', ''),
(40, '10001', '2019-06-30', '18000', '0', NULL, NULL, '300619000003', ''),
(41, '10001', '2019-06-30', '21000', '0', NULL, NULL, '300619000004', ''),
(42, '10001', '2019-06-30', '116000', '0', NULL, NULL, '300619000005', ''),
(43, '10001', '2019-07-05', '21000', '0', NULL, NULL, '050719000006', ''),
(44, '10001', '2019-07-05', '220000', '0', NULL, NULL, '050719000007', ''),
(45, '10001', '2019-10-23', '93000', '0', NULL, NULL, '231019000008', ''),
(46, '10001', '2019-10-23', '93000', '0', NULL, NULL, '231019000009', ''),
(47, '10001', '2019-10-23', '93000', '0', NULL, NULL, '231019000010', ''),
(48, '10001', '2019-10-23', '114000', '0', NULL, NULL, '231019000011', ''),
(49, '10001', '2019-10-23', '114000', '0', NULL, NULL, '231019000012', ''),
(50, '10001', '2019-10-23', '114000', '0', NULL, NULL, '231019000013', ''),
(51, '10001', '2019-10-24', '81000', '0', NULL, NULL, '241019000014', ''),
(52, '10001', '2019-10-24', '510000', '0', NULL, NULL, '241019000015', ''),
(53, '10001', '2019-10-24', '20000', '0', NULL, NULL, '241019000016', ''),
(54, '10001', '2019-10-24', '170000', '0', NULL, NULL, '241019000017', ''),
(55, '10001', '2019-10-24', '12000', '0', NULL, NULL, '241019000018', ''),
(56, '10001', '2019-10-24', '11000', '0', NULL, NULL, '241019000019', ''),
(57, '10001', '2019-10-24', '150000', '0', NULL, NULL, '241019000020', ''),
(58, '10001', '2019-11-06', '70000', '0', NULL, NULL, '061119000021', ''),
(59, '10001', '2019-11-06', '148000', '0', NULL, NULL, '061119000022', ''),
(60, '10001', '2019-11-12', '23000', '0', NULL, NULL, '121119000023', ''),
(61, '10001', '2019-11-12', '231000', '0', NULL, NULL, '121119000024', ''),
(62, '10001', '2019-11-16', '660000', '0', NULL, NULL, '161119000025', ''),
(63, '10001', '2019-11-19', '23000', '0', NULL, NULL, '191119000026', ''),
(64, '10001', '2019-11-20', '99000', '0', NULL, NULL, '201119000027', ''),
(65, '10001', '2019-11-20', '466000', '0', NULL, NULL, '201119000028', ''),
(66, '10001', '2019-12-04', '649500', '0', NULL, NULL, '041219000029', ''),
(67, '10001', '2019-12-04', '474000', '0', NULL, NULL, '041219000030', ''),
(68, '10001', '2019-12-27', '105000', '0', NULL, NULL, '271219000031', '');

-- --------------------------------------------------------

--
-- Table structure for table `hutang_dibayar_history`
--

CREATE TABLE `hutang_dibayar_history` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `id_hutang` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nominal` decimal(10,0) NOT NULL,
  `waktu_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hutang_history`
--

CREATE TABLE `hutang_history` (
  `id` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `tanggal` date NOT NULL,
  `nominal` decimal(10,0) NOT NULL,
  `nominal_dibayar` decimal(10,0) NOT NULL,
  `nomor_faktur` varchar(100) DEFAULT NULL,
  `id_supplier` int(11) DEFAULT NULL,
  `tanggal_lunas` date NOT NULL,
  `tanggal_jatuh_tempo` date NOT NULL,
  `sudah_lunas` enum('0','1') NOT NULL DEFAULT '0',
  `waktu_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `keterangan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hutang_history`
--

INSERT INTO `hutang_history` (`id`, `judul`, `tanggal`, `nominal`, `nominal_dibayar`, `nomor_faktur`, `id_supplier`, `tanggal_lunas`, `tanggal_jatuh_tempo`, `sudah_lunas`, `waktu_update`, `keterangan`) VALUES
(14, 'pembelian ke supplier', '2019-06-12', '12040000', '0', 'F1306190001', 3, '0000-00-00', '2019-06-12', '0', '2019-06-13 15:27:40', '-'),
(15, 'pembelian ke supplier', '2019-06-13', '126000000', '0', 'F1306190002', 2, '0000-00-00', '2019-07-23', '0', '2019-06-13 15:27:56', '-'),
(16, 'pembelian ke supplier', '2019-06-14', '870000000', '0', 'F1306190003', 4, '0000-00-00', '2019-07-29', '0', '2019-06-13 15:28:18', '-'),
(17, 'pembelian ke supplier', '2019-06-12', '1232000000', '0', 'F1306190004', 2, '0000-00-00', '2019-06-12', '0', '2019-06-13 15:28:47', '-'),
(18, 'pembelian ke supplier', '2019-06-13', '535000000', '0', 'F1306190005', 2, '0000-00-00', '2019-06-13', '0', '2019-06-13 15:29:27', '-'),
(19, 'pembelian ke supplier', '2019-06-14', '598500000', '0', 'F1306190006', 2, '0000-00-00', '2019-06-14', '0', '2019-06-13 15:29:46', '-'),
(20, 'pembelian ke supplier', '2019-06-13', '169000000', '0', 'F1306190007', 4, '0000-00-00', '2019-08-02', '0', '2019-06-13 15:30:23', '-'),
(21, 'pembelian ke supplier', '2019-06-12', '1970000000', '0', 'F1306190008', 2, '0000-00-00', '2019-06-12', '0', '2019-06-13 15:30:50', '-'),
(22, 'pembelian ke supplier', '2019-06-13', '909000', '0', 'F2306190009', 2, '0000-00-00', '2019-06-13', '0', '2019-06-23 16:36:23', '-'),
(24, 'pembelian ke supplier', '2017-05-11', '0', '0', 'F1111190011', 2, '0000-00-00', '2017-06-01', '0', '2019-11-11 11:26:30', '-');

-- --------------------------------------------------------

--
-- Table structure for table `kartu_stok`
--

CREATE TABLE `kartu_stok` (
  `id` int(11) NOT NULL,
  `nomor_rec_penerimaan` varchar(100) DEFAULT NULL,
  `id_stok_adjustment` int(11) DEFAULT NULL,
  `id_stok_opname` int(11) DEFAULT NULL,
  `id_stok_keluar` int(11) DEFAULT NULL,
  `id_penjualan` varchar(50) DEFAULT NULL,
  `kode_item` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `jenis_transaksi` enum('pembelian ke supplier','retur penjualan','stok opname','stok adjustment','retur pembelian','penjualan','retur penjualan') NOT NULL DEFAULT 'retur pembelian',
  `jumlah_masuk` int(5) NOT NULL,
  `jumlah_keluar` int(5) NOT NULL,
  `satuan_kecil` varchar(100) NOT NULL,
  `tgl_expired` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kartu_stok`
--

INSERT INTO `kartu_stok` (`id`, `nomor_rec_penerimaan`, `id_stok_adjustment`, `id_stok_opname`, `id_stok_keluar`, `id_penjualan`, `kode_item`, `tanggal`, `jenis_transaksi`, `jumlah_masuk`, `jumlah_keluar`, `satuan_kecil`, `tgl_expired`) VALUES
(1, 'PE1306190001', NULL, NULL, NULL, NULL, '8999909028213', '2019-06-16', 'pembelian ke supplier', 2000, 0, 'Botol', '2025-04-22'),
(2, 'PE1306190001', NULL, NULL, NULL, NULL, '8999909028214', '2019-06-16', 'pembelian ke supplier', 1200, 0, 'Box', '2027-06-17'),
(3, 'PE1306190002', NULL, NULL, NULL, NULL, '8999909028215', '2019-06-15', 'pembelian ke supplier', 800, 0, 'Tube', '2025-04-22'),
(4, 'PE1306190002', NULL, NULL, NULL, NULL, '8999909028216', '2019-06-15', 'pembelian ke supplier', 2500, 0, 'Botol', '2025-04-22'),
(5, 'PE1306190002', NULL, NULL, NULL, NULL, '8999909028217', '2019-06-15', 'pembelian ke supplier', 1000, 0, 'Botol', '2025-04-22'),
(6, 'PE1306190003', NULL, NULL, NULL, NULL, '8999909028218', '2019-06-15', 'pembelian ke supplier', 2000, 0, 'Tablet', '2025-04-22'),
(7, 'PE1306190003', NULL, NULL, NULL, NULL, '8999909028219', '2019-06-15', 'pembelian ke supplier', 10000, 0, 'Tablet', '2025-04-22'),
(8, 'PE1306190003', NULL, NULL, NULL, NULL, '8999909028220', '2019-06-15', 'pembelian ke supplier', 2000, 0, 'Botol', '2025-04-22'),
(9, 'PE1306190003', NULL, NULL, NULL, NULL, '8999909028221', '2019-06-15', 'pembelian ke supplier', 1000, 0, 'Box', '2025-04-22'),
(10, 'PE1306190004', NULL, NULL, NULL, NULL, '8999909028222', '2019-06-15', 'pembelian ke supplier', 1200, 0, 'Box', '2030-04-22'),
(11, 'PE1306190004', NULL, NULL, NULL, NULL, '8999909028223', '2019-06-15', 'pembelian ke supplier', 5000, 0, 'Box', '2023-06-30'),
(12, 'PE1306190004', NULL, NULL, NULL, NULL, '8999909028224', '2019-06-15', 'pembelian ke supplier', 1000, 0, 'Botol', '2025-04-22'),
(13, 'PE1306190004', NULL, NULL, NULL, NULL, '8999909028225', '2019-06-15', 'pembelian ke supplier', 1500, 0, 'Botol', '2025-04-22'),
(14, 'PE1306190005', NULL, NULL, NULL, NULL, '8999909028226', '2019-06-15', 'pembelian ke supplier', 3000, 0, 'Botol', '2025-04-22'),
(15, 'PE1306190005', NULL, NULL, NULL, NULL, '8999909028227', '2019-06-15', 'pembelian ke supplier', 2000, 0, 'Tube', '2025-04-22'),
(16, 'PE1306190005', NULL, NULL, NULL, NULL, '8999909028228', '2019-06-15', 'pembelian ke supplier', 2000, 0, 'Botol', '2025-04-22'),
(17, 'PE1306190006', NULL, NULL, NULL, NULL, '8999909028229', '2019-06-15', 'pembelian ke supplier', 10000, 0, 'Tube', '2025-04-22'),
(18, 'PE1306190006', NULL, NULL, NULL, NULL, '8999909028230', '2019-06-15', 'pembelian ke supplier', 3000, 0, 'Tablet', '2025-04-22'),
(19, 'PE1306190006', NULL, NULL, NULL, NULL, '8999909028231', '2019-06-15', 'pembelian ke supplier', 2000, 0, 'Botol', '2025-04-22'),
(20, 'PE1306190006', NULL, NULL, NULL, NULL, '8999909028232', '2019-06-15', 'pembelian ke supplier', 2500, 0, 'Botol', '2025-04-22'),
(21, 'PE1306190007', NULL, NULL, NULL, NULL, '8999909028233', '2019-06-15', 'pembelian ke supplier', 5000, 0, 'Botol', '2025-04-22'),
(22, 'PE1306190007', NULL, NULL, NULL, NULL, '8999909028234', '2019-06-15', 'pembelian ke supplier', 4000, 0, 'Botol', '2030-04-22'),
(23, 'PE1306190007', NULL, NULL, NULL, NULL, '8999909028235', '2019-06-15', 'pembelian ke supplier', 3000, 0, 'Botol', '2025-04-22'),
(24, 'PE1306190008', NULL, NULL, NULL, NULL, '8999909028236', '2019-06-15', 'pembelian ke supplier', 10000, 0, 'Botol', '2025-04-22'),
(25, 'PE1306190008', NULL, NULL, NULL, NULL, '8999909028237', '2019-06-15', 'pembelian ke supplier', 10000, 0, 'Box', '2025-04-22'),
(26, 'PE1306190008', NULL, NULL, NULL, NULL, '8999909028238', '2019-06-15', 'pembelian ke supplier', 10000, 0, 'Botol', '2025-04-22'),
(27, 'PE1306190008', NULL, NULL, NULL, NULL, '8999909028239', '2019-06-15', 'pembelian ke supplier', 10000, 0, 'Botol', '2025-04-22'),
(68, NULL, NULL, NULL, NULL, '300619000001', '8999909028213', '2019-06-30', 'penjualan', 0, 1, 'Box', '2025-04-22'),
(69, NULL, NULL, NULL, NULL, '300619000001', '8999909028214', '2019-06-30', 'penjualan', 0, 1, 'Box', '2027-06-17'),
(70, NULL, NULL, NULL, NULL, '300619000002', '8999909028213', '2019-06-30', 'penjualan', 0, 1, 'Box', '2025-04-22'),
(71, NULL, NULL, NULL, NULL, '300619000002', '8999909028214', '2019-06-30', 'penjualan', 0, 1, 'Box', '2027-06-17'),
(72, NULL, NULL, NULL, NULL, '300619000003', '8999909028233', '2019-06-30', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(73, NULL, NULL, NULL, NULL, '300619000003', '8999909028238', '2019-06-30', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(74, NULL, NULL, NULL, NULL, '300619000004', '8999909028238', '2019-06-30', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(75, NULL, NULL, NULL, NULL, '300619000004', '8999909028239', '2019-06-30', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(76, NULL, NULL, NULL, NULL, '300619000005', '8999909028216', '2019-06-30', 'penjualan', 0, 2, 'Botol', '2025-04-22'),
(77, NULL, NULL, NULL, NULL, '300619000005', '8999909028217', '2019-06-30', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(78, NULL, NULL, NULL, NULL, '050719000006', '8999909028238', '2019-07-05', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(79, NULL, NULL, NULL, NULL, '050719000006', '8999909028239', '2019-07-05', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(80, NULL, NULL, NULL, NULL, '050719000007', '8999909028236', '2019-07-05', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(81, NULL, NULL, NULL, NULL, '050719000007', '8999909028237', '2019-07-05', 'penjualan', 0, 1, 'Box', '2025-04-22'),
(82, NULL, NULL, NULL, NULL, '231019000008', '8999909028236', '2019-10-23', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(83, NULL, NULL, NULL, NULL, '231019000008', '8999909028238', '2019-10-23', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(84, NULL, NULL, NULL, NULL, '231019000008', '8999909028239', '2019-10-23', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(85, NULL, NULL, NULL, NULL, '231019000009', '8999909028236', '2019-10-23', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(86, NULL, NULL, NULL, NULL, '231019000009', '8999909028238', '2019-10-23', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(87, NULL, NULL, NULL, NULL, '231019000009', '8999909028239', '2019-10-23', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(88, NULL, NULL, NULL, NULL, '231019000010', '8999909028236', '2019-10-23', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(89, NULL, NULL, NULL, NULL, '231019000010', '8999909028238', '2019-10-23', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(90, NULL, NULL, NULL, NULL, '231019000010', '8999909028239', '2019-10-23', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(91, NULL, NULL, NULL, NULL, '231019000011', '8999909028230', '2019-10-23', 'penjualan', 0, 1, 'Tablet', '2025-04-22'),
(92, NULL, NULL, NULL, NULL, '231019000011', '8999909028236', '2019-10-23', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(93, NULL, NULL, NULL, NULL, '231019000011', '8999909028238', '2019-10-23', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(94, NULL, NULL, NULL, NULL, '231019000011', '8999909028239', '2019-10-23', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(95, NULL, NULL, NULL, NULL, '231019000012', '8999909028230', '2019-10-23', 'penjualan', 0, 1, 'Tablet', '2025-04-22'),
(96, NULL, NULL, NULL, NULL, '231019000012', '8999909028236', '2019-10-23', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(97, NULL, NULL, NULL, NULL, '231019000012', '8999909028238', '2019-10-23', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(98, NULL, NULL, NULL, NULL, '231019000012', '8999909028239', '2019-10-23', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(99, NULL, NULL, NULL, NULL, '231019000013', '8999909028230', '2019-10-23', 'penjualan', 0, 1, 'Tablet', '2025-04-22'),
(100, NULL, NULL, NULL, NULL, '231019000013', '8999909028236', '2019-10-23', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(101, NULL, NULL, NULL, NULL, '231019000013', '8999909028238', '2019-10-23', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(102, NULL, NULL, NULL, NULL, '231019000013', '8999909028239', '2019-10-23', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(103, NULL, NULL, 1, NULL, NULL, '8999909028230', '2019-10-17', 'stok opname', 100, 0, 'Tablet', '2021-10-23'),
(104, NULL, NULL, NULL, NULL, '241019000014', '8999909028236', '2019-10-24', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(105, NULL, NULL, NULL, NULL, '241019000014', '8999909028238', '2019-10-24', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(106, NULL, NULL, NULL, NULL, '241019000015', '8999909028236', '2019-10-24', 'penjualan', 0, 3, 'Botol', '2025-04-22'),
(107, NULL, NULL, NULL, NULL, '241019000015', '8999909028237', '2019-10-24', 'penjualan', 0, 2, 'Box', '2025-04-22'),
(108, NULL, NULL, NULL, NULL, '241019000016', '8999909028215', '2019-10-24', 'penjualan', 0, 1, 'Tube', '2025-04-22'),
(109, NULL, NULL, NULL, NULL, '241019000016', '8999909028214', '2019-10-24', 'penjualan', 0, 1, 'Box', '2027-06-17'),
(110, NULL, NULL, NULL, NULL, '241019000016', '8999909028213', '2019-10-24', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(111, NULL, NULL, NULL, NULL, '241019000017', '8999909028237', '2019-10-24', 'penjualan', 0, 1, 'Box', '2025-04-22'),
(112, NULL, NULL, NULL, NULL, '241019000017', '8999909028238', '2019-10-24', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(113, NULL, NULL, NULL, NULL, '241019000017', '8999909028215', '2019-10-24', 'penjualan', 0, 1, 'Tube', '2025-04-22'),
(114, NULL, NULL, NULL, NULL, '241019000018', '8999909028239', '2019-10-24', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(115, NULL, NULL, NULL, NULL, '241019000019', '8999909028238', '2019-10-24', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(116, NULL, NULL, NULL, NULL, '241019000020', '8999909028237', '2019-10-24', 'penjualan', 0, 1, 'Box', '2025-04-22'),
(117, NULL, NULL, NULL, NULL, '061119000021', '8999909028236', '2019-11-06', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(118, NULL, NULL, NULL, NULL, '061119000022', '8999909028228', '2019-11-06', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(119, NULL, NULL, NULL, NULL, '121119000023', '8999909028238', '2019-11-12', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(120, NULL, NULL, NULL, NULL, '121119000023', '8999909028239', '2019-11-12', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(121, NULL, NULL, NULL, NULL, '121119000024', '8999909028236', '2019-11-12', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(122, NULL, NULL, NULL, NULL, '121119000024', '8999909028237', '2019-11-12', 'penjualan', 0, 1, 'Box', '2025-04-22'),
(123, NULL, NULL, NULL, NULL, '121119000024', '8999909028238', '2019-11-12', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(124, 'PE1411190009', NULL, NULL, NULL, NULL, '8999909028215', '2019-11-14', 'pembelian ke supplier', 1010, 0, '1', '2019-06-14'),
(125, NULL, NULL, NULL, NULL, '161119000025', '8999909028215', '2019-11-16', 'penjualan', 0, 4, 'Tube', '2019-06-14'),
(126, NULL, NULL, NULL, NULL, '161119000025', '8999909028237', '2019-11-16', 'penjualan', 0, 4, 'Box', '2025-04-22'),
(127, NULL, NULL, NULL, NULL, '161119000025', '8999909028239', '2019-11-16', 'penjualan', 0, 2, 'Botol', '2025-04-22'),
(128, NULL, NULL, NULL, NULL, '191119000026', '8999909028238', '2019-11-19', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(129, NULL, NULL, NULL, NULL, '191119000026', '8999909028239', '2019-11-19', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(130, NULL, NULL, NULL, NULL, '201119000027', '8999909028223', '2019-11-20', 'penjualan', 0, 1, 'Box', '2023-06-30'),
(131, NULL, NULL, NULL, NULL, '201119000027', '8999909028224', '2019-11-20', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(132, NULL, NULL, NULL, NULL, '201119000028', '8999909028225', '2019-11-20', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(133, NULL, NULL, NULL, NULL, '201119000028', '8999909028222', '2019-11-20', 'penjualan', 0, 1, 'Box', '2030-04-22'),
(134, NULL, NULL, NULL, NULL, '041219000029', '8999909028226', '2019-12-04', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(135, NULL, NULL, NULL, NULL, '041219000029', '8999909028220', '2019-12-04', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(136, NULL, NULL, NULL, NULL, '041219000029', '8999909028223', '2019-12-04', 'penjualan', 0, 1, 'Box', '2023-06-30'),
(137, NULL, NULL, NULL, NULL, '041219000029', '8999909028224', '2019-12-04', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(138, NULL, NULL, NULL, NULL, '041219000029', '8999909028222', '2019-12-04', 'penjualan', 0, 1, 'Box', '2030-04-22'),
(139, NULL, NULL, NULL, NULL, '041219000030', '8999909028232', '2019-12-04', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(140, NULL, NULL, NULL, NULL, '041219000030', '8999909028225', '2019-12-04', 'penjualan', 0, 1, 'Botol', '2025-04-22'),
(141, NULL, NULL, NULL, NULL, '041219000030', '8999909028222', '2019-12-04', 'penjualan', 0, 1, 'Box', '2030-04-22'),
(142, 'PE0412190010', NULL, NULL, NULL, NULL, '8999909028215', '2019-12-01', 'pembelian ke supplier', 500, 0, '1', '2019-06-14'),
(143, NULL, NULL, NULL, NULL, '271219000031', '8999909028223', '2019-12-27', 'penjualan', 0, 3, 'Box', '2023-06-30'),
(144, 'PE1702200011', NULL, NULL, NULL, NULL, '8999909028215', '2020-01-29', 'pembelian ke supplier', 3, 0, '1', '2019-06-14');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_user`
--

CREATE TABLE `kategori_user` (
  `id` int(11) NOT NULL,
  `kategori_user` varchar(100) NOT NULL,
  `beranda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_user`
--

INSERT INTO `kategori_user` (`id`, `kategori_user`, `beranda`) VALUES
(31, 'Manager', 1),
(32, 'Kasir', 25),
(33, 'User', 16);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_user_modul`
--

CREATE TABLE `kategori_user_modul` (
  `id` int(11) NOT NULL,
  `kategori_user` int(11) NOT NULL,
  `modul` int(11) NOT NULL,
  `akses` enum('read','add','edit','delete') NOT NULL DEFAULT 'read'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_user_modul`
--

INSERT INTO `kategori_user_modul` (`id`, `kategori_user`, `modul`, `akses`) VALUES
(11956, 31, 1, 'read'),
(11957, 31, 2, 'read'),
(11958, 31, 3, 'read'),
(11959, 31, 4, 'read'),
(11960, 31, 5, 'read'),
(11961, 31, 6, 'read'),
(11962, 31, 7, 'read'),
(11963, 31, 8, 'read'),
(11964, 31, 9, 'read'),
(11965, 31, 10, 'read'),
(11966, 31, 11, 'read'),
(11967, 31, 12, 'read'),
(11968, 31, 13, 'read'),
(11969, 31, 14, 'read'),
(11970, 31, 15, 'read'),
(11971, 31, 16, 'read'),
(11972, 31, 17, 'read'),
(11973, 31, 18, 'read'),
(11974, 31, 19, 'read'),
(11975, 31, 20, 'read'),
(11976, 31, 21, 'read'),
(11977, 31, 22, 'read'),
(11978, 31, 23, 'read'),
(11979, 31, 24, 'read'),
(11980, 31, 25, 'read'),
(11981, 31, 26, 'read'),
(11982, 31, 27, 'read'),
(11983, 31, 28, 'read'),
(11984, 31, 29, 'read'),
(11985, 31, 30, 'read'),
(11986, 31, 31, 'read'),
(11987, 31, 32, 'read'),
(11988, 31, 33, 'read'),
(11989, 31, 34, 'read'),
(11990, 31, 35, 'read'),
(11991, 31, 36, 'read'),
(11992, 31, 37, 'read'),
(11993, 31, 38, 'read'),
(11994, 31, 39, 'read'),
(11995, 31, 40, 'read'),
(11996, 31, 41, 'read'),
(11997, 31, 42, 'read'),
(11998, 31, 43, 'read'),
(11999, 31, 3, 'add'),
(12000, 31, 4, 'add'),
(12001, 31, 5, 'add'),
(12002, 31, 6, 'add'),
(12003, 31, 7, 'add'),
(12004, 31, 8, 'add'),
(12005, 31, 9, 'add'),
(12006, 31, 10, 'add'),
(12007, 31, 12, 'add'),
(12008, 31, 13, 'add'),
(12009, 31, 14, 'add'),
(12010, 31, 15, 'add'),
(12011, 31, 17, 'add'),
(12012, 31, 18, 'add'),
(12013, 31, 19, 'add'),
(12014, 31, 23, 'add'),
(12015, 31, 24, 'add'),
(12016, 31, 27, 'add'),
(12017, 31, 28, 'add'),
(12018, 31, 29, 'add'),
(12019, 31, 38, 'add'),
(12020, 31, 39, 'add'),
(12021, 31, 42, 'add'),
(12022, 31, 3, 'edit'),
(12023, 31, 4, 'edit'),
(12024, 31, 5, 'edit'),
(12025, 31, 6, 'edit'),
(12026, 31, 7, 'edit'),
(12027, 31, 8, 'edit'),
(12028, 31, 9, 'edit'),
(12029, 31, 10, 'edit'),
(12030, 31, 12, 'edit'),
(12031, 31, 13, 'edit'),
(12032, 31, 15, 'edit'),
(12033, 31, 24, 'edit'),
(12034, 31, 27, 'edit'),
(12035, 31, 29, 'edit'),
(12036, 31, 38, 'edit'),
(12037, 31, 39, 'edit'),
(12038, 31, 41, 'edit'),
(12039, 31, 43, 'edit'),
(12040, 31, 3, 'delete'),
(12041, 31, 4, 'delete'),
(12042, 31, 5, 'delete'),
(12043, 31, 6, 'delete'),
(12044, 31, 7, 'delete'),
(12045, 31, 8, 'delete'),
(12046, 31, 9, 'delete'),
(12047, 31, 10, 'delete'),
(12048, 31, 12, 'delete'),
(12049, 31, 13, 'delete'),
(12050, 31, 14, 'delete'),
(12051, 31, 15, 'delete'),
(12052, 31, 17, 'delete'),
(12053, 31, 18, 'delete'),
(12054, 31, 19, 'delete'),
(12055, 31, 23, 'delete'),
(12056, 31, 24, 'delete'),
(12057, 31, 27, 'delete'),
(12058, 31, 28, 'delete'),
(12059, 31, 29, 'delete'),
(12060, 31, 38, 'delete'),
(12061, 31, 39, 'delete'),
(12062, 32, 14, 'read'),
(12063, 32, 25, 'read'),
(12064, 32, 14, 'add'),
(12065, 33, 16, 'read'),
(12066, 33, 2, 'read'),
(12067, 33, 9, 'read'),
(12068, 33, 43, 'read'),
(12069, 33, 43, 'edit');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(11) NOT NULL,
  `token` varchar(200) NOT NULL,
  `tanggal_jam` datetime NOT NULL,
  `id_admin` int(11) NOT NULL,
  `id_pembeli` int(11) DEFAULT NULL,
  `total_upah_peracik` decimal(10,0) NOT NULL,
  `total_harga_item` decimal(10,0) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `hold` enum('0','1') NOT NULL DEFAULT '0',
  `keterangan_hold` varchar(200) NOT NULL,
  `waktu_hold` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id`, `token`, `tanggal_jam`, `id_admin`, `id_pembeli`, `total_upah_peracik`, `total_harga_item`, `total`, `hold`, `keterangan_hold`, `waktu_hold`) VALUES
(69, 'a5a857b77a4e28dc0df2c5192c6c90be', '2019-06-30 01:42:32', 1, NULL, '0', '44000', '44000', '0', '', ''),
(71, 'dccbbb8941d22dac340a245b4b7052fd', '2019-06-30 03:38:33', 1, NULL, '0', '84000', '84000', '1', 'ok', '1561883934'),
(72, 'dccbbb8941d22dac340a245b4b7052fd', '2019-07-01 01:33:14', 1, NULL, '0', '27000', '27000', '0', '', ''),
(74, '4ac14df063b1729185d4e0e2a6e4379e', '2019-07-01 01:08:36', 1, NULL, '5000', '182000', '187000', '0', '', ''),
(75, '982c1b7178f668d87e8cf3e21a072cb8', '2019-07-02 05:31:44', 1, NULL, '0', '10500', '10500', '0', '', ''),
(76, '904fd9e8537785f5c73d403ffef24ee6', '2019-07-03 02:03:35', 1, 14, '0', '21000', '21000', '0', 'ddd', '1562094224'),
(78, 'b1f95b98bf3941e3b3c07338a2cd6402', '2019-07-03 03:31:28', 1, NULL, '0', '0', '0', '0', '', ''),
(79, '8f24b84bb00133ed237217cb89ae9805', '2019-07-03 10:03:52', 1, NULL, '0', '0', '0', '0', '', ''),
(83, '4e4b5bc22437966870148131f801a2a3', '2019-10-23 11:08:31', 1, NULL, '0', '15000', '15000', '0', 'ok', '1571846927'),
(88, 'cbda80635d6da07fcf23f608f30415ec', '2019-10-24 08:32:52', 2, NULL, '0', '21000', '21000', '0', '', ''),
(89, '9f11b01f6074db2a7bb266cc1d6b1655', '2019-10-24 09:58:24', 1, 14, '0', '0', '0', '0', '', ''),
(97, '7d24614628f834e6e49257d641c52e87', '2019-11-13 07:02:58', 1, NULL, '0', '48000', '48000', '0', '', ''),
(100, 'cf89bff1076b9c05c0351e1df063a6da', '2019-11-19 10:19:13', 1, NULL, '0', '11000', '11000', '0', '', ''),
(102, '492336a6f659dd9b452acab699c342ad', '2019-11-20 05:13:07', 1, 17, '0', '0', '0', '0', '', ''),
(103, '8d07ef2013867393fcb30b5b592ecac1', '2020-02-08 07:15:32', 1, NULL, '0', '64000', '64000', '0', '', ''),
(104, 'dd3ec00217ada344c6d0ea36514b31fc', '2020-02-09 10:16:42', 1, NULL, '0', '544000', '544000', '0', '', ''),
(106, 'b76610a60568f84746cd67e25833baf1', '2020-02-10 02:28:51', 1, NULL, '0', '90000', '90000', '0', '', ''),
(107, '5341f9f2db926212509d8e52ade12d97', '2020-02-11 09:06:25', 1, NULL, '0', '1502000', '1502000', '0', '', ''),
(108, '8c4e9995db223749a90ee6888f132a85', '2020-02-11 09:28:10', 1, NULL, '0', '466500', '466500', '0', '', ''),
(109, '9069dbcca8c778e0c3a7a806d69e3dbe', '2020-02-11 05:06:01', 1, NULL, '0', '15000', '15000', '0', '', ''),
(110, '5881b331699742cca577a420a044d334', '2020-02-24 09:55:32', 1, NULL, '0', '460000', '460000', '0', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang_detail`
--

CREATE TABLE `keranjang_detail` (
  `id` int(11) NOT NULL,
  `id_keranjang` int(11) NOT NULL,
  `kode_item` varchar(100) NOT NULL,
  `racikan` enum('0','1') NOT NULL DEFAULT '0',
  `upah_peracik` decimal(10,0) NOT NULL,
  `harga` decimal(10,0) NOT NULL,
  `diskon` decimal(10,0) NOT NULL,
  `kuantiti` float NOT NULL,
  `total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keranjang_detail`
--

INSERT INTO `keranjang_detail` (`id`, `id_keranjang`, `kode_item`, `racikan`, `upah_peracik`, `harga`, `diskon`, `kuantiti`, `total`) VALUES
(5, 69, '8999909028239', '0', '0', '12000', '1500', 2, '21000'),
(6, 69, '8999909028235', '0', '0', '15000', '0', 1, '15000'),
(7, 69, '8999909028232', '0', '0', '8000', '0', 1, '8000'),
(20, 71, '8999909028226', '0', '0', '84000', '0', 1, '84000'),
(24, 72, '8999909028239', '0', '0', '12000', '1500', 1, '10500'),
(25, 72, '8999909028238', '0', '0', '11000', '500', 1, '10500'),
(28, 72, '8999909028214', '0', '0', '6000', '0', 1, '6000'),
(29, 74, '8999909028238', '0', '0', '11000', '500', 1, '10500'),
(30, 74, '8999909028237', '0', '0', '150000', '0', 1, '150000'),
(33, 74, '8999909028239', '0', '0', '12000', '1500', 1, '10500'),
(35, 75, '8999909028239', '0', '0', '12000', '1500', 1, '10500'),
(36, 76, '8999909028239', '0', '0', '12000', '1500', 1, '10500'),
(37, 76, '8999909028238', '0', '0', '11000', '500', 1, '10500'),
(46, 83, '8999909028235', '0', '0', '15000', '0', 1, '15000'),
(56, 88, '8999909028230', '0', '0', '21000', '0', 1, '21000'),
(71, 97, '8999909028239', '0', '0', '12000', '0', 4, '48000'),
(77, 100, '8999909028238', '0', '0', '11000', '0', 1, '11000'),
(78, 103, '8999909028224', '0', '0', '64000', '0', 1, '64000'),
(79, 104, '8999909028226', '0', '0', '84000', '0', 1, '84000'),
(80, 104, '8999909028222', '0', '0', '460000', '0', 1, '460000'),
(82, 106, '8999909028226', '0', '0', '84000', '0', 1, '84000'),
(83, 106, '8999909028225', '0', '0', '6000', '0', 1, '6000'),
(84, 107, '8999909028223', '0', '0', '35000', '0', 1, '35000'),
(85, 107, '8999909028220', '0', '0', '6500', '0', 2, '13000'),
(86, 107, '8999909028226', '0', '0', '84000', '0', 4, '336000'),
(87, 107, '8999909028222', '0', '0', '460000', '0', 2, '920000'),
(88, 107, '8999909028224', '0', '0', '64000', '0', 3, '192000'),
(89, 107, '8999909028225', '0', '0', '6000', '0', 1, '6000'),
(99, 108, '8999909028222', '0', '0', '460000', '0', 1, '460000'),
(100, 108, '8999909028220', '0', '0', '6500', '0', 1, '6500'),
(101, 109, '8999909028232', '0', '0', '8000', '0', 1, '8000'),
(102, 109, '8999909028233', '0', '0', '7000', '0', 1, '7000'),
(103, 110, '8999909028222', '0', '0', '460000', '0', 1, '460000');

-- --------------------------------------------------------

--
-- Table structure for table `master_admin`
--

CREATE TABLE `master_admin` (
  `id` int(11) NOT NULL,
  `kategori` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(150) NOT NULL,
  `nama_admin` varchar(200) NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL DEFAULT 'laki-laki',
  `alamat` varchar(200) NOT NULL,
  `telepon` varchar(30) NOT NULL,
  `handphone` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `aktif` enum('0','1') NOT NULL DEFAULT '1',
  `waktu_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_admin`
--

INSERT INTO `master_admin` (`id`, `kategori`, `username`, `password`, `nama_admin`, `jenis_kelamin`, `alamat`, `telepon`, `handphone`, `email`, `aktif`, `waktu_update`) VALUES
(1, 31, 'admin', '$2y$10$l1yNDeXjOcFP5jUAvp/be.C4aiC4J.5kwr26wiupnzbkduT4IKe3y', 'admin', 'laki-laki', 'Jl Danau Toba 70B Jember', '', '081217736148', 'kantorposku@gmail.com', '1', '2019-11-06 10:56:35'),
(2, 32, 'user_kasir', '$2y$10$l1yNDeXjOcFP5jUAvp/be.C4aiC4J.5kwr26wiupnzbkduT4IKe3y', 'Andika', 'laki-laki', 'Jalan kelapa muda no 21', '', '082183439921', 'andika@gmail.com', '1', '2019-07-05 04:24:09'),
(3, 33, 'users', '$2y$10$l1yNDeXjOcFP5jUAvp/be.C4aiC4J.5kwr26wiupnzbkduT4IKe3y', 'Sang User', 'laki-laki', 'Jl. Dummy nomor Coba-coba', '', '081122334455', 'iniemail@mail.com', '1', '2020-01-07 11:58:10');

-- --------------------------------------------------------

--
-- Table structure for table `master_bank`
--

CREATE TABLE `master_bank` (
  `singkatan` varchar(30) NOT NULL,
  `nama_bank` varchar(100) NOT NULL,
  `jenis` enum('credit card','debet') NOT NULL DEFAULT 'debet',
  `waktu_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_bank`
--

INSERT INTO `master_bank` (`singkatan`, `nama_bank`, `jenis`, `waktu_update`) VALUES
('Amex', 'Amex', 'credit card', '2019-06-28 11:04:06'),
('BCA', 'Bank Central Asia', 'debet', '2019-06-28 11:02:02'),
('BNI', 'Bank Nasional Indonesia', 'debet', '2019-06-28 11:02:26'),
('BRI', 'Bank Rakyat Indonesia', 'debet', '2019-06-28 11:02:26'),
('Discover', 'Discover', 'credit card', '2019-06-28 19:02:30'),
('Mandiri', 'Bank Mandiri', 'debet', '2019-06-28 11:02:02'),
('Master Card', 'Master Card', 'credit card', '2019-06-28 11:03:30'),
('Visa', 'Visa', 'credit card', '2019-06-28 11:03:30');

-- --------------------------------------------------------

--
-- Table structure for table `master_diskon_kelipatan`
--

CREATE TABLE `master_diskon_kelipatan` (
  `id` int(11) NOT NULL,
  `kode_item` varchar(100) NOT NULL,
  `min_kuantiti` int(2) NOT NULL,
  `diskon` decimal(10,0) NOT NULL,
  `tanggal_berakhir` date NOT NULL,
  `waktu_update_diskon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_diskon_kelipatan`
--

INSERT INTO `master_diskon_kelipatan` (`id`, `kode_item`, `min_kuantiti`, `diskon`, `tanggal_berakhir`, `waktu_update_diskon`) VALUES
(3, '8999909028239', 1, '1500', '2019-08-30', '2019-06-29 16:02:11'),
(4, '8999909028238', 1, '500', '2019-07-06', '2019-06-29 18:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `master_dokter`
--

CREATE TABLE `master_dokter` (
  `kode_dokter` varchar(15) NOT NULL,
  `nama_dokter` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `telepon` varchar(30) NOT NULL,
  `handphone` varchar(30) NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL DEFAULT 'laki-laki',
  `waktu_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_dokter`
--

INSERT INTO `master_dokter` (`kode_dokter`, `nama_dokter`, `alamat`, `telepon`, `handphone`, `jenis_kelamin`, `waktu_update`) VALUES
('01', 'abcd', 'JEMBER', '0331 555666', '081234567890', 'laki-laki', '2019-11-14 09:39:57'),
('D-00012', 'Iwan na beyor man', 'Jember Kota', '6581298', '081231231312', 'laki-laki', '2019-11-20 01:18:20'),
('D0001', 'Dr Steve Tyler', 'jalan mawar melati jakarta barat', '+192309402320', '+192309402331', 'laki-laki', '2019-06-11 14:40:38'),
('D0002', 'Dr Jhon Wick', 'Jalan pelangi diatas awan jakarta selatan', '+183948938493', '-', 'laki-laki', '2019-07-02 18:50:37');

-- --------------------------------------------------------

--
-- Table structure for table `master_item`
--

CREATE TABLE `master_item` (
  `kode_item` varchar(100) NOT NULL,
  `jenis` enum('obat','alkes','racikan') NOT NULL DEFAULT 'obat',
  `kategori` varchar(100) NOT NULL,
  `satuan` varchar(100) NOT NULL,
  `merk` varchar(100) DEFAULT NULL,
  `nama_item` varchar(200) NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `gambar` varchar(200) NOT NULL DEFAULT 'default.jpg',
  `no_bet` varchar(30) NOT NULL,
  `harga_jual` decimal(10,0) NOT NULL,
  `harga_jual_distributor` decimal(10,0) NOT NULL,
  `harga_jual_3` varchar(50) NOT NULL,
  `harga_jual_4` varchar(50) NOT NULL,
  `waktu_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `upah_peracik` decimal(10,0) NOT NULL,
  `aturan_pakai` varchar(100) NOT NULL,
  `netto` varchar(20) NOT NULL,
  `stok` int(11) NOT NULL,
  `tgl_expired` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_item`
--

INSERT INTO `master_item` (`kode_item`, `jenis`, `kategori`, `satuan`, `merk`, `nama_item`, `keterangan`, `lokasi`, `gambar`, `no_bet`, `harga_jual`, `harga_jual_distributor`, `harga_jual_3`, `harga_jual_4`, `waktu_update`, `upah_peracik`, `aturan_pakai`, `netto`, `stok`, `tgl_expired`) VALUES
('0123', 'racikan', 'Herbal', 'Kapsul', NULL, 'OBAT SG', 'BILA SAKIT', '', 'default.jpg', '40', '5000', '0', '20000', '40000', '2020-02-10 06:41:38', '1000', '3X SEHARI', '', 0, '2019-11-03'),
('098765', 'obat', 'ANTIBIOTIK', 'Box', 'PUYER', 'CIPRO', 'GENERIK', 'RAK 1', 'default.jpg', '40', '27500', '0', '20000', '40000', '2020-02-10 06:41:38', '0', '', '', 0, '2019-07-08'),
('123123112', 'obat', 'Kontrasepsi', 'Botol', 'Acne', 'barang1', 'basssssss', 'rak a', 'aakaakak.PNG', '2', '1009000', '100000', '10000000', '10000000', '2020-02-10 06:39:38', '0', '', '', 0, '2020-02-12'),
('8888123988', 'obat', 'Kecantikan', 'Tube', 'Acne', 'Masker Kecantikan Lapindo', 'Ini masker', 'Rak B', '8888123988.jpg', '40', '10000', '0', '20000', '40000', '2020-02-17 02:35:21', '0', '', '100', 0, '2020-05-20'),
('8999909028213', 'obat', 'Herbal', 'Botol', 'Acne', 'AFI SALEP 15 GRAM', 'Digunakan untuk mengobati kudis, koreng dan gatal-gata', 'Rak B', '8999909028213.jpg', '40', '5000', '0', '20000', '40000', '2020-02-10 06:41:38', '0', '', '', 1996, '2019-07-14'),
('8999909028214', 'obat', 'Herbal', 'Box', 'Bintang Toedjo', 'PAGODA SALEP EXTRA 10G', 'Pagoda Salep Extra adalah obat kulit topikal yang dapat memenuhi semua kriteria Dermatoterapeutika, yaitu pengobatan penyakit kulit di mana selain zat aktifnya juga bahan pembantu sebagai anti bakteri, antijamur, keratolitik dan antipruriginosa di mana bentuk sediaan dan cara aplikasinya sangat berperan dalam kecepatan kesembuhan penyakit kulit ini.', 'Rak B', '8999909028214.jpg', '40', '6000', '0', '20000', '40000', '2020-02-10 06:41:38', '0', '', '', 1196, '2019-06-23'),
('8999909028215', 'obat', 'Herbal', 'Tube', 'Ambeven', 'BETASON KRIM 5 GRAM', 'Obat kulit yang berfungsi untuk meredakan peradangan kulit yang disebabkan oleh mikroorganisme, eksema, psoriasis, dan alergi.', 'Rak B', '8999909028215.jpg', '40', '9000', '10000', '20000', '40000', '2020-02-17 07:35:49', '0', '', '', 2307, '2019-07-07'),
('8999909028216', 'obat', 'Herbal', 'Botol', 'Ambeven', 'ABIXA 10 MG TABLET', 'Abixa mengandung Memantine Hydrochloride yang digunakan untuk membantu mengobati demensia pada pasien alzheimer', 'Rak B', '8999909028216.jpg', '40', '33000', '0', '20000', '40000', '2020-02-10 06:41:38', '0', '', '', 2498, '2019-07-28'),
('8999909028217', 'obat', 'Herbal', 'Botol', 'Acne', 'ABBOTIC XL 500 MG TABLET', 'Mengandung clarithromycin/klaritomisin digunakan untuk mengobati infeksi yang disebabkan oleh bakteri terutama pada saluran pernapasan, kulit dan telinga . Selain itu, kombinasi dengan obat lain digunakan untuk mengobati gangguan pada lambung yang disebabkan oleh bakteri Helicobacter pylori.', 'Rak B', '8999909028217.jpg', '40', '50000', '0', '20000', '40000', '2020-02-10 06:41:38', '0', '', '', 999, '2019-10-06'),
('8999909028218', 'obat', 'Herbal', 'Tablet', 'Acne', 'A-B VASK 10 MG BOX 100 TABLET', 'Untuk pengobatan hipertensi (tekanan darah tinggi), angina stabil kronik, pengobatan pasien yang pasti atau diduga menderita angina vasospastik (angina varian)', 'Rak B', '8999909028218.jpg', '40', '350000', '0', '20000', '40000', '2020-02-10 06:41:38', '0', '', '', 2000, '2019-11-11'),
('8999909028219', 'obat', 'Obat', 'Tablet', 'Bintang Toedjo', '3TC-HBV 100 MG TABLET', 'Mengandung lamivudin untuk mengobati infeksi hepatitis B kronik dengan bukti adanya replikasi virus hepatitis B', 'Rak B', '8999909028219.jpg', '40', '18000', '0', '20000', '40000', '2020-02-10 06:41:38', '0', '', '', 10000, '2020-03-14'),
('8999909028220', 'obat', 'Herbal', 'Botol', 'Bintang Toedjo', 'COOLANT 350 ML BOTOL', 'Coolant merupakan minuman dari ekstrak Chrysantemum dan ekstrak bengkuang yang dapat melancarkan metabolisme tubuh ketika keadaan gerah sehiingga aktifitas kembali lancar.', 'Rak B', '8999909028220.jpg', '40', '6500', '0', '20000', '40000', '2020-02-10 06:41:38', '0', '', '', 1999, '2020-11-03'),
('8999909028221', 'obat', 'Herbal', 'Box', 'Acne', 'BONEETO 5-12 TAHUN RASA COKLAT 700 GRAM', 'Susu rasa coklat ini merupakan salah satu makanan pokok bagi tubuh bayi karena masa kecil akan menentukan perkembangan anak, gunakan apabila memang diharuskan bagi anak usia 5-12 tahun.', 'Rak B', '8999909028221.jpg', '40', '80000', '0', '20000', '40000', '2020-02-10 06:41:38', '0', '', '', 1000, '2020-01-03'),
('8999909028222', 'obat', 'Herbal', 'Box', 'Cussons', 'APPETON WEIGHT GAIN DEWASA RASA VANILA 900 GRAM KALENG', 'Appeton Weight Gain Adult merupakan susu formula yang edilengkapi dengan whey protein yang akan membantu Anda untuk mendapatkan berat badan ideal bagi Anda yang memiliki berat badan yang kurang dari proporsional badan Anda.', 'Rak B', '8999909028222.jpg', '40', '460000', '0', '20000', '40000', '2020-02-10 06:41:38', '0', '', '', 1197, '2021-11-03'),
('8999909028223', 'obat', 'Herbal', 'Box', 'Acne', 'ANLENE ACTIFIT RASA COKELAT 250 GRAM', 'Anlene Actifit merupakan susu berkalsium tinggi yang rendah lemak diformulasikan dengan formula Movemax khusus untuk wanita dan pria usia 19-50 tahun agar Anda dapat tetap bergerak aktif demi diri sendiri dan orang yang kamu sayangi.\r\n\r\n', 'Rak B', '8999909028223.jpg', '40', '35000', '0', '20000', '40000', '2020-02-10 06:41:38', '0', '', '', 4995, '2020-11-30'),
('8999909028224', 'obat', 'Herbal', 'Botol', 'Bintang Toedjo', 'AL SHIFA MADU ARAB 250 GRAM', 'Al shifa madu arab merupakan madu asli arab yang sangat baik untuk stamina dan pengobatan penyakit\r\n\r\n', 'Rak B', '8999909028224.jpg', '40', '64000', '0', '20000', '40000', '2020-02-10 06:41:38', '0', '', '', 998, '2020-12-03'),
('8999909028225', 'obat', 'Nutrisi', 'Botol', 'Cussons', 'ADEM SARI CHING KU LARUTAN 320 ML KALENG', 'Adem Sari Ching Ku Lemon merupakan minuman kesehatan yang dapat meredakan gejala panas dalam, sariawan, sakit tenggorokan serta melancarkan buang air besar.\r\n\r\n', 'Rak B', '8999909028225.jpg', '40', '6000', '0', '20000', '40000', '2020-02-10 06:41:38', '0', '', '', 1498, '2020-06-03'),
('8999909028226', 'obat', 'Kecantikan', 'Botol', 'Cussons', 'ACANTHE SUNSCREEN SPF30 30 GRAM KRIM', 'Tabir surya yang digunakan untuk kulit normal hingga kering, berfungsi untuk mencegah bintik-bintik dan penuaan dini akibat dari paparan sinar matahari. Formula tabis surya khusus yang bebas PABA mengandung kombinasi tabir surya ganda, yang dapat melindungi kulit anda dari bahaya UV-A dan UV-B\r\n\r\n', 'Rak A', '8999909028226.jpg', '40', '84000', '0', '20000', '40000', '2020-02-10 06:41:38', '0', '', '', 2999, '2020-11-03'),
('8999909028227', 'obat', 'Kecantikan', 'Tube', 'Cussons', 'ANTIPLAQUE PASTA GIGI 75 GRAM TUBE', 'Antiplaque pasta gigi dapat membantu membersihkan daerah gigi sehingga mencegah terjadinya plak, gigi berlubang, gusi berdarah, radang gusi dan masalah gigi lainnya.\r\n\r\n', 'Rak A', '8999909028227.jpg', '40', '25000', '0', '20000', '40000', '2020-02-10 06:41:38', '0', '', '', 2000, '2020-01-30'),
('8999909028228', 'obat', 'Kecantikan', 'Botol', 'Acne', 'ALYSSA ASHLEY WHITE MUSK BODY LOTION 750 ML BOTOL', 'Alyssa ashley putih merupakan body lotion untuk membantu menutrisi kulit dari dalam,menjadikan kulit halus,bersinar,putih dan memudarkan noda hitam yang terbuat dari bahan alami sehingga aman tanpa efek samping.\r\n\r\n', 'Rak A', '8999909028228.jpg', '40', '148000', '0', '20000', '40000', '2020-02-10 06:41:38', '0', '', '', 1999, '2020-01-03'),
('8999909028229', 'obat', 'Kecantikan', 'Tube', 'Acne', 'ACNES TREATMENT SERIES ACNES SEALING JELL 15 GRAM TUBE', 'Acnes Sealing Gel merupakan gel untuk mengatasi jerawat pada wajah, mengurangi kemerahan pada bagian kulit yang berjerawat, mengangkat sel kulit mati, serta menjaga kesehatan dan kelembutan kulit.', 'Rak A', '8999909028229.jpg', 'AK 1231000', '30000', '0', '20000', '40000', '2020-02-17 07:21:14', '0', '', '', 10000, '2020-05-03'),
('8999909028230', 'obat', 'Herbal', 'Tablet', 'Ambeven', 'BIOVISION STRIP 10 KAPSUL', 'Biovision merupakan multivitamin bagi kesehatan mata.\r\n\r\n', 'Rak A', '8999909028230.jpg', '40', '21000', '0', '20000', '40000', '2020-02-10 06:41:38', '0', '', '', 3097, '2020-05-09'),
('8999909028231', 'obat', 'Herbal', 'Botol', 'Bintang Toedjo', 'BIO GOLD GAMAT EMAS 350 GRAM', 'Bio Gold Gamat merupakan suplemen yang berasal dari teripang dan berfungsi untuk memelihara kesehatan tubuh.', 'Rak A', '8999909028231.jpg', '40', '160000', '0', '20000', '40000', '2020-02-10 06:41:38', '0', '', '', 2000, '2020-05-15'),
('8999909028232', 'obat', 'Herbal', 'Botol', 'Bintang Toedjo', 'BINTANG TOEDJOE MASUK ANGIN PLUS 4 TUBE', 'Bintang toedjoe masuk angin plus membantu meredakan masuk angin, pegal-pegal dan demam', 'Rak A', '8999909028232.jpg', '40', '8000', '0', '20000', '40000', '2020-02-10 06:41:38', '0', '', '', 2497, '2020-05-18'),
('8999909028233', 'obat', 'Herbal', 'Botol', 'Ambeven', 'BALPIRIK BALSEM GOSOK EXTRA KUAT HIJAU 20 GRAM', 'Balpirik berbentuk balsem yang sangat cocok digunakan untuk meringankan berbagai gejala penyakit dan kondisi seperti penyakit flu (hidung tersumbat, bersin-bersin, pusing, sakit kepala), perut kembung karena masuk angin, mabuk perjalanan, gatal-gatal akibat gigitan serangga, pegal-pegal, encok dan kram otot.', 'Rak A', '8999909028233.jpg', '40', '7000', '0', '20000', '40000', '2020-02-10 06:41:38', '0', '', '', 4997, '2020-05-15'),
('8999909028234', 'obat', 'Herbal', 'Botol', 'Cussons', 'Cussons Baby Telon Oil Plus 60 Ml', 'Memberikan perlindungan 8 jam non stop terhadap gigitan nyamuk (tanpa harus dipakai ulang), karena kombinasi bahan alami pilihan yang telah dipercaya mampu mencegah gigitan nyamuk, sehingga tidak saja aman dan nyaman bagi si kecil namun untuk seluruh keluarga.', 'Rak A', '8999909028234.jpg', '40', '27000', '0', '20000', '40000', '2020-02-10 06:41:38', '0', '', '', 3995, '2020-05-25'),
('8999909028235', 'obat', 'Herbal', 'Botol', 'Cussons', 'AIR MANCUR PARCOK 75 ML', 'Membantu meredakan nyeri otot, persendian, dan pegal linu.', 'Rak A', '8999909028235.jpg', '40', '15000', '0', '20000', '40000', '2020-02-10 06:41:38', '0', '', '', 2997, '2020-05-11'),
('8999909028236', 'obat', 'Herbal', 'Botol', 'Cussons', 'ALBIBET ALBIRUNI BOX 50 KAPSUL', 'Albibet albiruni adalah ramuan herbal asli indonesia yang telah teruji secara klinis dapat mengatasi kencing manis', 'Rak A', '8999909028236.jpg', '40', '70000', '0', '20000', '40000', '2020-02-10 06:41:38', '0', '', '', 9995, '2019-12-04'),
('8999909028237', 'obat', 'Herbal', 'Box', 'Ambeven', 'AMBEVEN BOX 100 KAPSUL', 'Ambeven merupakan obat tradisional dengan ramuan campuran dari bahan tanaman terpilih dan bermutu. Ambeven selain mengandung bahan aktif daun handeulum, juga mengandung bahan tradisional lainnya yang bermanfaat untuk mengatasi gejala-gejala yang menyertai wasir.', 'Rak A', '8999909028237.jpg', '40', '150000', '0', '20000', '40000', '2020-02-10 06:41:38', '0', '', '', 9981, '2019-11-15'),
('8999909028238', 'obat', 'Herbal', 'Botol', 'Cussons', 'APRICOT SYRUP 100 ML', 'Apricot merupakan sirup segar berkhasiat untuk meredakan batuk', 'Rak A', '8999909028238.jpg', '40', '11000', '0', '20000', '40000', '2020-02-10 06:41:38', '0', '', '', 9976, '2019-11-30'),
('8999909028239', 'obat', 'Herbal', 'Botol', 'Ambeven', 'BALJITOT MINYAK GOSOK 50 ML', 'Baljitot merupakan brand minyak gosok yang sebenarnya adalah singkatan dari balur dan pijat otot. Baljitot minyak gosok ini diformulasi dengan jahe merah yang akan memberikan kehangatan lebih lama dan aroma yang memberikan relaksasi.', 'Rak A', '8999909028239.jpg', '40', '12000', '0', '20000', '40000', '2020-02-10 06:41:38', '0', '', '', 9978, '2019-12-12'),
('AMOX01', 'obat', 'Obat', 'Box', 'Bintang Toedjo', 'AMOXYCILLIN 500MG TAB', 'ANTIBIOTIK', 'ABCD', 'default.jpg', '40', '30000', '0', '20000', '40000', '2020-02-10 06:41:38', '0', '', '', 0, '2019-11-04');

-- --------------------------------------------------------

--
-- Table structure for table `master_kategori`
--

CREATE TABLE `master_kategori` (
  `id` varchar(100) NOT NULL,
  `lokasi_kategori` varchar(30) NOT NULL,
  `waktu_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_kategori`
--

INSERT INTO `master_kategori` (`id`, `lokasi_kategori`, `waktu_update`) VALUES
('ANTIBIOTIK', 'Rak A Gudang S', '2020-02-17 02:26:25'),
('Herbal', '', '2019-06-13 11:37:54'),
('Kecantikan', '', '2019-06-13 11:40:14'),
('Kontrasepsi', '', '2019-06-13 11:39:57'),
('Nutrisi', '', '2019-06-13 11:37:24'),
('Obat', '', '2019-06-13 11:36:58'),
('Produk Bayi', '', '2019-06-13 11:38:18'),
('Radioactive', 'Rak B Gudang F', '2020-02-17 02:25:33'),
('Stetoskop', '', '2019-06-13 11:39:34'),
('Suplemen', '', '2019-06-13 11:37:11'),
('Tensimeter', '', '2019-06-13 11:39:11'),
('xxxxxxxxxxxxxxxxxxxx', '', '2019-07-04 05:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `master_merk`
--

CREATE TABLE `master_merk` (
  `id` varchar(100) NOT NULL,
  `waktu_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_merk`
--

INSERT INTO `master_merk` (`id`, `waktu_update`) VALUES
('Acne', '2019-06-13 12:50:41'),
('Ambeven', '2019-06-13 12:24:48'),
('Bintang Toedjo', '2019-06-13 12:44:08'),
('Cussons', '2019-06-13 11:48:37'),
('PUYER', '2019-11-14 09:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `master_pembeli`
--

CREATE TABLE `master_pembeli` (
  `id` int(11) NOT NULL,
  `nama_pembeli` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `telepon` varchar(30) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `bank` varchar(20) NOT NULL,
  `rekening` varchar(20) NOT NULL,
  `an` varchar(50) NOT NULL,
  `no_apoteker` varchar(30) DEFAULT NULL,
  `tgl_masa` date DEFAULT NULL,
  `kode_dokter` varchar(15) DEFAULT NULL,
  `apoteker` varchar(50) NOT NULL,
  `alamat_ktp` text NOT NULL,
  `alamat_tinggal` text,
  `no_sipa` varchar(50) DEFAULT NULL,
  `nama_ttk` varchar(50) DEFAULT NULL,
  `tgl_sipa` date NOT NULL,
  `waktu_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jenis_pembeli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_pembeli`
--

INSERT INTO `master_pembeli` (`id`, `nama_pembeli`, `alamat`, `telepon`, `hp`, `bank`, `rekening`, `an`, `no_apoteker`, `tgl_masa`, `kode_dokter`, `apoteker`, `alamat_ktp`, `alamat_tinggal`, `no_sipa`, `nama_ttk`, `tgl_sipa`, `waktu_update`, `jenis_pembeli`) VALUES
(1, 'Diana', 'jakarta', '087234394939', '', '', '', '', '082193943993', '0000-00-00', 'D0001', '', '0000-00-00', NULL, NULL, NULL, '0000-00-00', '2019-06-11 14:39:17', 0),
(2, 'Anisa', 'bekasi utara', '-', '', '', '', '', '-', '0000-00-00', NULL, '', '0000-00-00', NULL, NULL, NULL, '0000-00-00', '2019-06-11 14:53:42', 0),
(9, 'Rian', '-', '-', '', '', '', '', '-', '0000-00-00', 'D0001', '', '0000-00-00', NULL, NULL, NULL, '0000-00-00', '2019-06-13 19:14:44', 0),
(14, 'Andika', '-', '087234394939', '', '', '', '', '0821939439493', '0000-00-00', 'D0001', '', '0000-00-00', NULL, NULL, NULL, '0000-00-00', '2019-06-13 19:47:07', 0),
(15, 'Jonas', '-', '019000003', '', '', '', '', '-', '0000-00-00', 'D0001', '', '0000-00-00', NULL, NULL, NULL, '0000-00-00', '2019-06-16 15:03:18', 0),
(16, 'Ratna', '-', '0909090', '', '', '', '', '-', '0000-00-00', NULL, '', '0000-00-00', NULL, NULL, NULL, '0000-00-00', '2019-06-16 15:33:08', 0),
(17, 'ANI', 'JEMBER', '', '', '', '', '', '081111222333', '0000-00-00', NULL, '', '0000-00-00', NULL, NULL, NULL, '0000-00-00', '2019-11-14 09:41:50', 0),
(18, 'Senyum Gelas', 'Jember Kota', '0888888881213', '', '', '', '', '-', '0000-00-00', NULL, 'Sri Suratmi', '2020-01-15', NULL, NULL, NULL, '2020-04-30', '2019-11-19 15:24:36', 2),
(20, 'Strakasia ', 'Nevada', '08881231', '', '', '', '', '', '0000-00-00', NULL, 'Michael Sumarko', '2020-06-19', NULL, NULL, NULL, '2020-05-27', '2019-11-19 16:33:21', 2),
(22, 'Apotek baru', 'babarabu', '08111111111', '', '', '', '', '', '0000-00-00', NULL, 'Srita Shikaka', '2019-11-16', NULL, NULL, NULL, '2019-11-28', '2019-11-20 01:38:50', 2),
(23, 'APOTEK SEMESTA COKROAMINOTO', 'JALAN HOS COKROAMINOTO NO 8 JEMBER', '0331 412548', '', '', '', '', '1239213131231', '2020-09-11', NULL, 'Lusia., S.Apt.', '2023-01-01', NULL, NULL, NULL, '2023-01-01', '2020-02-11 10:36:06', 2);

-- --------------------------------------------------------

--
-- Table structure for table `master_racikan`
--

CREATE TABLE `master_racikan` (
  `id` int(11) NOT NULL,
  `kode_racikan` varchar(100) NOT NULL,
  `kode_obat` varchar(100) NOT NULL,
  `jumlah_obat_dibuat` float NOT NULL,
  `jumlah_obat_dipakai` float NOT NULL,
  `waktu_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_racikan`
--

INSERT INTO `master_racikan` (`id`, `kode_racikan`, `kode_obat`, `jumlah_obat_dibuat`, `jumlah_obat_dipakai`, `waktu_update`) VALUES
(5, '0123', '098765', 1, 1, '2019-11-14 10:00:31');

-- --------------------------------------------------------

--
-- Table structure for table `master_satuan`
--

CREATE TABLE `master_satuan` (
  `id` varchar(100) NOT NULL,
  `isi_persatuan` int(11) NOT NULL,
  `satuan_besar` varchar(20) DEFAULT NULL,
  `waktu_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_satuan`
--

INSERT INTO `master_satuan` (`id`, `isi_persatuan`, `satuan_besar`, `waktu_update`) VALUES
('Botol', 4, 'Dus', '2020-02-12 03:12:20'),
('Box', 0, '', '2019-06-13 12:23:46'),
('Dus', 0, '', '2019-03-23 14:18:57'),
('FLS', 0, '', '2019-11-14 09:43:54'),
('Gram', 0, '', '2019-02-16 05:53:11'),
('Kapsul', 0, '', '2019-02-16 05:53:07'),
('Papan', 0, '', '2019-02-16 05:52:49'),
('Stik', 12, 'Box', '2020-02-12 04:31:28'),
('Tablet', 0, '', '2019-02-15 15:50:09'),
('Tube', 24, 'Papan', '2020-02-12 10:20:45');

-- --------------------------------------------------------

--
-- Table structure for table `master_supplier`
--

CREATE TABLE `master_supplier` (
  `id` int(11) NOT NULL,
  `nama_supplier` varchar(200) NOT NULL,
  `no_izin` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `no_npwp` varchar(30) NOT NULL,
  `nama_npwp` varchar(30) NOT NULL,
  `alamat_npwp` text NOT NULL,
  `bank` varchar(10) NOT NULL,
  `rekening` varchar(20) NOT NULL,
  `an` varchar(30) NOT NULL,
  `no_apoteker` varchar(20) NOT NULL,
  `masa_apoteker` date NOT NULL,
  `apoteker` varchar(30) NOT NULL,
  `alamat_1` text NOT NULL,
  `alamat_2` text NOT NULL,
  `hp` varchar(15) NOT NULL,
  `no_sipa` varchar(20) NOT NULL,
  `tgl_sipa` date NOT NULL,
  `nama_ttk` varchar(30) NOT NULL,
  `waktu_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_supplier`
--

INSERT INTO `master_supplier` (`id`, `nama_supplier`, `no_izin`, `alamat`, `telepon`, `no_npwp`, `nama_npwp`, `alamat_npwp`, `bank`, `rekening`, `an`, `no_apoteker`, `masa_apoteker`, `apoteker`, `alamat_1`, `alamat_2`, `hp`, `no_sipa`, `tgl_sipa`, `nama_ttk`, `waktu_update`) VALUES
(2, 'PT Air Mancur', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '0000-00-00', '', '2019-06-13 11:43:26'),
(3, 'PT Maju Sejahtera Senantiasa', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '0000-00-00', '', '2019-06-13 11:45:29'),
(4, 'PT Pelangi Jaya Bersinar', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '0000-00-00', '', '2019-07-02 18:51:19'),
(5, 'PT. Besar', '102319231231', 'disini', '08881231', '12223191', 'SUKAR', 'disana', 'BCA', '012319', 'Sukir', '012319991', '2020-03-01', 'Sukri ', 'ohohooh', 'hihihihih', '0123911', '0213109', '2020-03-07', 'karjo', '2020-02-22 12:23:32');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id` int(11) NOT NULL,
  `label` varchar(100) NOT NULL,
  `controller` varchar(100) NOT NULL,
  `nama_function` varchar(100) NOT NULL,
  `aksi_edit` enum('0','1') NOT NULL DEFAULT '1',
  `aksi_hapus` enum('0','1') NOT NULL DEFAULT '1',
  `aksi_tambah` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id`, `label`, `controller`, `nama_function`, `aksi_edit`, `aksi_hapus`, `aksi_tambah`) VALUES
(1, 'Dashboard', 'dashboard', 'index', '0', '0', '0'),
(2, 'Master Data Beranda', 'master', 'index', '0', '0', '0'),
(3, 'Master Data Dokter', 'master', 'dokter', '1', '1', '1'),
(4, 'Master Data pembeli', 'master', 'pembeli', '1', '1', '1'),
(5, 'Master Data Supplier', 'master', 'supplier', '1', '1', '1'),
(6, 'Master Data Kategori Item', 'master', 'itemkategori', '1', '1', '1'),
(7, 'Master Data Satuan Item', 'master', 'satuan', '1', '1', '1'),
(8, 'Master Data Merk', 'master', 'merk', '1', '1', '1'),
(9, 'Master Data Obat dan Alkes', 'master', 'items', '1', '1', '1'),
(10, 'Master Racikan', 'master', 'racikan', '1', '1', '1'),
(11, 'Pembelian Beranda', 'pembelian', 'index', '0', '0', '0'),
(12, 'Purchase Order', 'pembelian', 'po', '1', '1', '1'),
(13, 'Pembelian ke Supplier', 'pembelian', 'langsung', '1', '1', '1'),
(14, 'Penerimaan Barang', 'pembelian', 'penerimaan', '0', '1', '1'),
(15, 'Retur Pembelian', 'pembelian', 'retur', '1', '1', '1'),
(16, 'Stok Beranda', 'stok', 'index', '0', '0', '0'),
(17, 'Stok Keluar Retur Pembelian', 'stok', 'keluar', '0', '1', '1'),
(18, 'Stok Adjustment', 'stok', 'adjustment', '0', '1', '1'),
(19, 'Stok Opname', 'stok', 'opname', '0', '1', '1'),
(20, 'Cetak Barcode', 'stok', 'barcode', '0', '0', '0'),
(21, 'Kartu Stok', 'stok', 'kartustok', '0', '0', '0'),
(22, 'Penjualan Beranda', 'penjualan', 'index', '0', '0', '0'),
(23, 'Diskon Produk', 'penjualan', 'diskon', '0', '1', '1'),
(24, 'Jenis Pembayaran', 'penjualan', 'jenispembayaran', '1', '1', '1'),
(25, 'Kasir / Point Of Sales', 'penjualan', 'kasir', '0', '0', '0'),
(26, 'Keuangan Beranda', 'keuangan', 'index', '0', '0', '0'),
(27, 'Kode Rekening', 'keuangan', 'koderekening', '1', '1', '1'),
(28, 'Hutang', 'keuangan', 'hutang', '0', '1', '1'),
(29, 'Cash in Cash Out', 'keuangan', 'cashinout', '1', '1', '1'),
(30, 'Laporan Beranda', 'laporan', 'index', '0', '0', '0'),
(31, 'Laporan Purchase Order', 'laporan', 'po', '0', '0', '0'),
(32, 'Laporan Pembelian', 'laporan', 'pembelian', '0', '0', '0'),
(33, 'Laporan Penerimaan Barang', 'laporan', 'penerimaan', '0', '0', '0'),
(34, 'Laporan Stok', 'laporan', 'stok', '0', '0', '0'),
(35, 'Laporan Penjualan', 'laporan', 'penjualan', '0', '0', '0'),
(36, 'Laporan Keuangan', 'laporan', 'keuangan', '0', '0', '0'),
(37, 'User Beranda', 'user', 'index', '0', '0', '0'),
(38, 'Kategori User', 'user', 'kategori', '1', '1', '1'),
(39, 'Data User', 'user', 'user', '1', '1', '1'),
(40, 'Tools Beranda', 'tools', 'index', '0', '0', '0'),
(41, 'Profil Apotek', 'tools', 'profil', '1', '0', '0'),
(42, 'Import Produk', 'tools', 'import_item', '0', '0', '1'),
(43, 'Edit Password', 'password', 'index', '1', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_langsung`
--

CREATE TABLE `pembelian_langsung` (
  `nomor_faktur` varchar(100) NOT NULL,
  `kategori` enum('Pembelian Langsung','Purchase Order') NOT NULL DEFAULT 'Pembelian Langsung',
  `nomor_po` varchar(100) DEFAULT NULL,
  `tgl_pembelian` date NOT NULL,
  `termin` int(5) NOT NULL,
  `pembayaran` enum('cash','hutang','lain-lain') NOT NULL DEFAULT 'cash',
  `supplier` int(11) NOT NULL,
  `total` decimal(20,0) NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `waktu_update_pembelian` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian_langsung`
--

INSERT INTO `pembelian_langsung` (`nomor_faktur`, `kategori`, `nomor_po`, `tgl_pembelian`, `termin`, `pembayaran`, `supplier`, `total`, `keterangan`, `waktu_update_pembelian`) VALUES
('F1111190011', 'Purchase Order', 'PO2410190012', '2017-05-11', 21, 'hutang', 2, '0', 'bagus', '2019-11-11 11:26:30'),
('F1306190001', 'Purchase Order', 'PO1306190001', '2019-06-12', 0, 'cash', 3, '12040000', '-', '2019-06-13 15:27:40'),
('F1306190002', 'Purchase Order', 'PO1306190002', '2019-06-13', 40, 'hutang', 2, '126000000', '-', '2019-06-13 15:27:56'),
('F1306190003', 'Purchase Order', 'PO1306190003', '2019-06-14', 45, 'hutang', 4, '870000000', '-', '2019-06-13 15:28:18'),
('F1306190004', 'Purchase Order', 'PO1306190004', '2019-06-12', 0, 'cash', 2, '1232000000', '-', '2019-06-13 15:28:47'),
('F1306190005', 'Purchase Order', 'PO1306190005', '2019-06-13', 0, 'cash', 2, '535000000', '-', '2019-06-13 15:29:27'),
('F1306190006', 'Purchase Order', 'PO1306190006', '2019-06-14', 0, 'cash', 2, '598500000', '', '2019-06-13 15:29:46'),
('F1306190007', 'Purchase Order', 'PO1306190007', '2019-06-13', 50, 'hutang', 4, '169000000', '-', '2019-06-13 15:30:22'),
('F1306190008', 'Purchase Order', 'PO1306190008', '2019-06-12', 0, 'cash', 2, '1970000000', '-', '2019-06-13 15:30:50'),
('F2306190009', 'Purchase Order', 'PO2206190011', '2019-06-13', 0, 'cash', 2, '909000', 'ss', '2019-06-23 16:36:23');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_langsung_detail`
--

CREATE TABLE `pembelian_langsung_detail` (
  `idd` int(11) NOT NULL,
  `nomor_faktur` varchar(100) NOT NULL,
  `kode_item` varchar(100) NOT NULL,
  `sku` varchar(200) NOT NULL,
  `nama_item` varchar(200) NOT NULL,
  `tgl_expired` date NOT NULL,
  `harga` decimal(10,0) NOT NULL,
  `satuan_besar` varchar(100) NOT NULL,
  `satuan_kecil` varchar(100) NOT NULL,
  `konversi` int(5) NOT NULL,
  `kuantiti` int(5) NOT NULL,
  `total_harga` decimal(10,0) NOT NULL,
  `diskon` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian_langsung_detail`
--

INSERT INTO `pembelian_langsung_detail` (`idd`, `nomor_faktur`, `kode_item`, `sku`, `nama_item`, `tgl_expired`, `harga`, `satuan_besar`, `satuan_kecil`, `konversi`, `kuantiti`, `total_harga`, `diskon`) VALUES
(1, 'F1306190001', '8999909028213', '8999909028213', 'AFI SALEP 15 GRAM', '2025-04-22', '3500', 'kardus', 'Botol', 20, 100, '7000000', 0),
(2, 'F1306190001', '8999909028214', '8999909028214', 'PAGODA SALEP EXTRA 10G', '2027-06-17', '4200', 'kardus', 'Box', 12, 100, '5040000', 0),
(3, 'F1306190002', '8999909028215', '8999909028215', 'BETASON KRIM 5 GRAM', '2025-04-22', '7500', 'kardus', 'Tube', 20, 40, '6000000', 0),
(4, 'F1306190002', '8999909028216', '8999909028216', 'ABIXA 10 MG TABLET', '2025-04-22', '30000', 'kardus', 'Botol', 50, 50, '75000000', 0),
(5, 'F1306190002', '8999909028217', '8999909028217', 'ABBOTIC XL 500 MG TABLET', '2025-04-22', '45000', 'kardus', 'Botol', 50, 20, '45000000', 0),
(6, 'F1306190003', '8999909028218', '8999909028218', 'A-B VASK 10 MG BOX 100 TABLET', '2025-04-22', '320000', 'kardus', 'Tablet', 20, 100, '640000000', 0),
(7, 'F1306190003', '8999909028219', '8999909028219', '3TC-HBV 100 MG TABLET', '2025-04-22', '15000', 'kardus', 'Tablet', 100, 100, '150000000', 0),
(8, 'F1306190003', '8999909028220', '8999909028220', 'COOLANT 350 ML BOTOL', '2025-04-22', '5000', 'kardus', 'Botol', 20, 100, '10000000', 0),
(9, 'F1306190003', '8999909028221', '8999909028221', 'BONEETO 5-12 TAHUN RASA COKLAT 700 GRAM', '2025-04-22', '70000', 'kardus', 'Box', 10, 100, '70000000', 0),
(10, 'F1306190004', '8999909028222', '8999909028222', 'APPETON WEIGHT GAIN DEWASA RASA VANILA 900 GRAM KALENG', '2030-04-22', '430000', 'kardus', 'Box', 30, 40, '516000000', 0),
(11, 'F1306190004', '8999909028223', '8999909028223', 'ANLENE ACTIFIT RASA COKELAT 250 GRAM', '2023-06-30', '32000', 'kardus', 'Box', 100, 50, '160000000', 0),
(12, 'F1306190004', '8999909028224', '8999909028224', 'AL SHIFA MADU ARAB 250 GRAM', '2025-04-22', '55000', 'kardus', 'Botol', 100, 100, '550000000', 0),
(13, 'F1306190004', '8999909028225', '8999909028225', 'ADEM SARI CHING KU LARUTAN 320 ML KALENG', '2025-04-22', '4000', 'kardus', 'Botol', 50, 30, '6000000', 0),
(14, 'F1306190005', '8999909028226', '8999909028226', 'ACANTHE SUNSCREEN SPF30 30 GRAM KRIM', '2025-04-22', '75000', 'kardus', 'Botol', 30, 100, '225000000', 0),
(15, 'F1306190005', '8999909028227', '8999909028227', 'ANTIPLAQUE PASTA GIGI 75 GRAM TUBE', '2025-04-22', '20000', 'kardus', 'Tube', 20, 100, '40000000', 0),
(16, 'F1306190005', '8999909028228', '8999909028228', 'ALYSSA ASHLEY WHITE MUSK BODY LOTION 750 ML BOTOL', '2025-04-22', '135000', 'kardus', 'Botol', 20, 100, '270000000', 0),
(17, 'F1306190006', '8999909028229', '8999909028229', 'ACNES TREATMENT SERIES ACNES SEALING JELL 15 GRAM TUBE', '2025-04-22', '25000', 'kardus', 'Tube', 100, 100, '250000000', 0),
(18, 'F1306190006', '8999909028230', '8999909028230', 'BIOVISION STRIP 10 KAPSUL', '2025-04-22', '17000', 'kardus', 'Tablet', 100, 30, '51000000', 0),
(19, 'F1306190006', '8999909028231', '8999909028231', 'BIO GOLD GAMAT EMAS 350 GRAM', '2025-04-22', '140000', 'kardus', 'Botol', 50, 40, '280000000', 0),
(20, 'F1306190006', '8999909028232', '8999909028232', 'BINTANG TOEDJOE MASUK ANGIN PLUS 4 TUBE', '2025-04-22', '7000', 'kardus', 'Botol', 50, 50, '17500000', 0),
(21, 'F1306190007', '8999909028233', '8999909028233', 'BALPIRIK BALSEM GOSOK EXTRA KUAT HIJAU 20 GRAM', '2025-04-22', '6000', 'kardus', 'Botol', 100, 50, '30000000', 0),
(22, 'F1306190007', '8999909028234', '8999909028234', 'Cussons Baby Telon Oil Plus 60 Ml', '2030-04-22', '25000', 'kardus', 'Botol', 100, 40, '100000000', 0),
(23, 'F1306190007', '8999909028235', '8999909028235', 'AIR MANCUR PARCOK 75 ML', '2025-04-22', '13000', 'kardus', 'Botol', 100, 30, '39000000', 0),
(24, 'F1306190008', '8999909028236', '8999909028236', 'ALBIBET ALBIRUNI BOX 50 KAPSUL', '2025-04-22', '50000', 'kardus', 'Botol', 100, 100, '500000000', 0),
(25, 'F1306190008', '8999909028237', '8999909028237', 'AMBEVEN BOX 100 KAPSUL', '2025-04-22', '130000', 'kardus', 'Box', 100, 100, '1300000000', 0),
(26, 'F1306190008', '8999909028238', '8999909028238', 'APRICOT SYRUP 100 ML', '2025-04-22', '8000', 'kardus', 'Botol', 100, 100, '80000000', 0),
(27, 'F1306190008', '8999909028239', '8999909028239', 'BALJITOT MINYAK GOSOK 50 ML', '2025-04-22', '9000', 'kardus', 'Botol', 100, 100, '90000000', 0),
(28, 'F2306190009', '8999909028215', '8999909028215', 'BETASON KRIM 5 GRAM', '2019-06-14', '1000', '10', '1', 101, 10, '909000', 10),
(30, 'F1111190011', '8999909028230', '8999909028230', 'BIOVISION STRIP 10 KAPSUL', '2021-10-16', '30000', 'box', 'Tablet', 1, 0, '0', 0),
(31, 'F1111190011', '8999909028237', '8999909028237', 'AMBEVEN BOX 100 KAPSUL', '2022-05-14', '40000', 'Box', 'Tab', 1, 0, '0', 10);

-- --------------------------------------------------------

--
-- Table structure for table `penerimaan_barang`
--

CREATE TABLE `penerimaan_barang` (
  `nomor_rec` varchar(100) NOT NULL,
  `nomor_faktur` varchar(100) NOT NULL,
  `nomor_po` varchar(100) NOT NULL,
  `tanggal_penerimaan` date NOT NULL,
  `penerima` varchar(200) NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `waktu_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penerimaan_barang`
--

INSERT INTO `penerimaan_barang` (`nomor_rec`, `nomor_faktur`, `nomor_po`, `tanggal_penerimaan`, `penerima`, `keterangan`, `waktu_update`) VALUES
('PE0412190010', 'F2306190009', 'PO2206190011', '2019-12-01', 'AYU', 'LENGKAP', '2019-12-04 00:10:43'),
('PE1306190001', 'F1306190001', 'PO1306190001', '2019-06-16', 'andika', 'barang sesuai', '2019-06-13 15:31:49'),
('PE1306190002', 'F1306190002', 'PO1306190002', '2019-06-15', 'andika', 'barang sesuai semua', '2019-06-13 15:32:28'),
('PE1306190003', 'F1306190003', 'PO1306190003', '2019-06-15', 'andika', 'semua sesuai', '2019-06-13 15:33:02'),
('PE1306190004', 'F1306190004', 'PO1306190004', '2019-06-15', 'andika', 'barang mantul', '2019-06-13 15:33:51'),
('PE1306190005', 'F1306190005', 'PO1306190005', '2019-06-15', 'andika', 'sesuai semua pemesanan', '2019-06-13 15:34:36'),
('PE1306190006', 'F1306190006', 'PO1306190006', '2019-06-15', 'andika', 'oke mantul semua', '2019-06-13 15:35:29'),
('PE1306190007', 'F1306190007', 'PO1306190007', '2019-06-15', 'andika', 'semua sesuai', '2019-06-13 15:36:00'),
('PE1306190008', 'F1306190008', 'PO1306190008', '2019-06-15', 'andika', 'oke mantul', '2019-06-13 15:36:49'),
('PE1411190009', 'F2306190009', 'PO2206190011', '2019-11-14', 'SAM', 'LENGKAP', '2019-11-14 11:00:26'),
('PE1702200011', 'F2306190009', 'PO2206190011', '2020-01-29', 'Saya', '001213', '2020-02-17 07:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `penerimaan_barang_detail`
--

CREATE TABLE `penerimaan_barang_detail` (
  `idd` int(11) NOT NULL,
  `nomor_rec` varchar(100) NOT NULL,
  `kode_item` varchar(100) NOT NULL,
  `sku` varchar(200) NOT NULL,
  `no_bet` varchar(30) NOT NULL,
  `nama_item` varchar(200) NOT NULL,
  `tgl_expired` date NOT NULL,
  `kuantiti` int(5) NOT NULL,
  `satuan_kecil` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penerimaan_barang_detail`
--

INSERT INTO `penerimaan_barang_detail` (`idd`, `nomor_rec`, `kode_item`, `sku`, `no_bet`, `nama_item`, `tgl_expired`, `kuantiti`, `satuan_kecil`) VALUES
(1, 'PE1306190001', '8999909028213', '8999909028213', 'AS12100', 'AFI SALEP 15 GRAM', '2025-04-22', 2000, 'Botol'),
(2, 'PE1306190001', '8999909028214', '8999909028214', '1', 'PAGODA SALEP EXTRA 10G', '2027-06-17', 1200, 'Box'),
(3, 'PE1306190002', '8999909028215', '8999909028215', '555OA1', 'BETASON KRIM 5 GRAM', '2025-04-22', 800, 'Tube'),
(4, 'PE1306190002', '8999909028216', '8999909028216', '1', 'ABIXA 10 MG TABLET', '2025-04-22', 2500, 'Botol'),
(5, 'PE1306190002', '8999909028217', '8999909028217', '1', 'ABBOTIC XL 500 MG TABLET', '2025-04-22', 1000, 'Botol'),
(6, 'PE1306190003', '8999909028218', '8999909028218', '1', 'A-B VASK 10 MG BOX 100 TABLET', '2025-04-22', 2000, 'Tablet'),
(7, 'PE1306190003', '8999909028219', '8999909028219', '1', '3TC-HBV 100 MG TABLET', '2025-04-22', 10000, 'Tablet'),
(8, 'PE1306190003', '8999909028220', '8999909028220', '1', 'COOLANT 350 ML BOTOL', '2025-04-22', 2000, 'Botol'),
(9, 'PE1306190003', '8999909028221', '8999909028221', '1', 'BONEETO 5-12 TAHUN RASA COKLAT 700 GRAM', '2025-04-22', 1000, 'Box'),
(10, 'PE1306190004', '8999909028222', '8999909028222', '1', 'APPETON WEIGHT GAIN DEWASA RASA VANILA 900 GRAM KALENG', '2030-04-22', 1200, 'Box'),
(11, 'PE1306190004', '8999909028223', '8999909028223', '1', 'ANLENE ACTIFIT RASA COKELAT 250 GRAM', '2023-06-30', 5000, 'Box'),
(12, 'PE1306190004', '8999909028224', '8999909028224', '1', 'AL SHIFA MADU ARAB 250 GRAM', '2025-04-22', 1000, 'Botol'),
(13, 'PE1306190004', '8999909028225', '8999909028225', '1', 'ADEM SARI CHING KU LARUTAN 320 ML KALENG', '2025-04-22', 1500, 'Botol'),
(14, 'PE1306190005', '8999909028226', '8999909028226', '1', 'ACANTHE SUNSCREEN SPF30 30 GRAM KRIM', '2025-04-22', 3000, 'Botol'),
(15, 'PE1306190005', '8999909028227', '8999909028227', '1', 'ANTIPLAQUE PASTA GIGI 75 GRAM TUBE', '2025-04-22', 2000, 'Tube'),
(16, 'PE1306190005', '8999909028228', '8999909028228', '1', 'ALYSSA ASHLEY WHITE MUSK BODY LOTION 750 ML BOTOL', '2025-04-22', 2000, 'Botol'),
(17, 'PE1306190006', '8999909028229', '8999909028229', '1', 'ACNES TREATMENT SERIES ACNES SEALING JELL 15 GRAM TUBE', '2025-04-22', 10000, 'Tube'),
(18, 'PE1306190006', '8999909028230', '8999909028230', '1', 'BIOVISION STRIP 10 KAPSUL', '2025-04-22', 3000, 'Tablet'),
(19, 'PE1306190006', '8999909028231', '8999909028231', '1', 'BIO GOLD GAMAT EMAS 350 GRAM', '2025-04-22', 2000, 'Botol'),
(20, 'PE1306190006', '8999909028232', '8999909028232', '1', 'BINTANG TOEDJOE MASUK ANGIN PLUS 4 TUBE', '2025-04-22', 2500, 'Botol'),
(21, 'PE1306190007', '8999909028233', '8999909028233', '1', 'BALPIRIK BALSEM GOSOK EXTRA KUAT HIJAU 20 GRAM', '2025-04-22', 5000, 'Botol'),
(22, 'PE1306190007', '8999909028234', '8999909028234', '1', 'Cussons Baby Telon Oil Plus 60 Ml', '2030-04-22', 4000, 'Botol'),
(23, 'PE1306190007', '8999909028235', '8999909028235', '1', 'AIR MANCUR PARCOK 75 ML', '2025-04-22', 3000, 'Botol'),
(24, 'PE1306190008', '8999909028236', '8999909028236', '1', 'ALBIBET ALBIRUNI BOX 50 KAPSUL', '2025-04-22', 10000, 'Botol'),
(25, 'PE1306190008', '8999909028237', '8999909028237', '1', 'AMBEVEN BOX 100 KAPSUL', '2025-04-22', 10000, 'Box'),
(26, 'PE1306190008', '8999909028238', '8999909028238', '1', 'APRICOT SYRUP 100 ML', '2025-04-22', 10000, 'Botol'),
(27, 'PE1306190008', '8999909028239', '8999909028239', '1', 'BALJITOT MINYAK GOSOK 50 ML', '2025-04-22', 10000, 'Botol'),
(28, 'PE1411190009', '8999909028215', '8999909028215', '0123AI', 'BETASON KRIM 5 GRAM', '2019-06-14', 1010, '1'),
(29, 'PE0412190010', '8999909028215', '8999909028215', '0123AI', 'BETASON KRIM 5 GRAM', '2019-06-14', 500, '1'),
(30, 'PE1702200011', '8999909028215', '8999909028215', '0123AI', 'BETASON KRIM 5 GRAM', '2019-06-14', 3, '1');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id` varchar(50) NOT NULL,
  `id_pembeli` int(11) DEFAULT NULL,
  `id_admin` int(11) NOT NULL,
  `total_upah_peracik` decimal(10,0) NOT NULL,
  `total_harga_item` decimal(10,0) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `tanggal` date NOT NULL,
  `tanggal_jam` datetime NOT NULL,
  `retur` enum('0','1') NOT NULL DEFAULT '0',
  `tanggal_retur` datetime NOT NULL,
  `admin_retur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `id_pembeli`, `id_admin`, `total_upah_peracik`, `total_harga_item`, `total`, `tanggal`, `tanggal_jam`, `retur`, `tanggal_retur`, `admin_retur`) VALUES
('041219000029', NULL, 1, '0', '649500', '649500', '2019-12-04', '2019-12-04 06:04:42', '0', '0000-00-00 00:00:00', NULL),
('041219000030', 18, 1, '0', '474000', '474000', '2019-12-04', '2019-12-04 07:01:39', '0', '0000-00-00 00:00:00', NULL),
('050719000006', NULL, 1, '0', '21000', '21000', '2019-07-05', '2019-07-05 11:15:08', '0', '0000-00-00 00:00:00', NULL),
('050719000007', NULL, 1, '0', '220000', '220000', '2019-07-05', '2019-07-05 11:19:49', '0', '0000-00-00 00:00:00', NULL),
('061119000021', NULL, 1, '0', '70000', '70000', '2019-11-06', '2019-11-06 18:29:11', '0', '0000-00-00 00:00:00', NULL),
('061119000022', NULL, 1, '0', '148000', '148000', '2019-11-06', '2019-11-06 18:32:23', '0', '0000-00-00 00:00:00', NULL),
('121119000023', NULL, 1, '0', '23000', '23000', '2019-11-12', '2019-11-12 07:09:04', '0', '0000-00-00 00:00:00', NULL),
('121119000024', NULL, 1, '0', '231000', '231000', '2019-11-12', '2019-11-12 07:10:24', '0', '0000-00-00 00:00:00', NULL),
('161119000025', NULL, 1, '0', '660000', '660000', '2019-11-16', '2019-11-16 03:18:13', '0', '0000-00-00 00:00:00', NULL),
('191119000026', NULL, 1, '0', '23000', '23000', '2019-11-19', '2019-11-19 22:18:52', '0', '0000-00-00 00:00:00', NULL),
('201119000027', NULL, 1, '0', '99000', '99000', '2019-11-20', '2019-11-20 05:12:19', '0', '0000-00-00 00:00:00', NULL),
('201119000028', NULL, 1, '0', '466000', '466000', '2019-11-20', '2019-11-20 07:51:10', '0', '0000-00-00 00:00:00', NULL),
('231019000008', NULL, 1, '0', '93000', '93000', '2019-10-23', '2019-10-23 22:53:10', '0', '0000-00-00 00:00:00', NULL),
('231019000009', NULL, 1, '0', '93000', '93000', '2019-10-23', '2019-10-23 22:53:39', '0', '0000-00-00 00:00:00', NULL),
('231019000010', NULL, 1, '0', '93000', '93000', '2019-10-23', '2019-10-23 22:53:55', '0', '0000-00-00 00:00:00', NULL),
('231019000011', NULL, 1, '0', '114000', '114000', '2019-10-23', '2019-10-23 22:55:20', '0', '0000-00-00 00:00:00', NULL),
('231019000012', NULL, 1, '0', '114000', '114000', '2019-10-23', '2019-10-23 22:56:07', '0', '0000-00-00 00:00:00', NULL),
('231019000013', NULL, 1, '0', '114000', '114000', '2019-10-23', '2019-10-23 23:06:48', '0', '0000-00-00 00:00:00', NULL),
('241019000014', NULL, 1, '0', '81000', '81000', '2019-10-24', '2019-10-24 08:10:29', '0', '0000-00-00 00:00:00', NULL),
('241019000015', NULL, 1, '0', '510000', '510000', '2019-10-24', '2019-10-24 08:12:57', '0', '0000-00-00 00:00:00', NULL),
('241019000016', NULL, 1, '0', '20000', '20000', '2019-10-24', '2019-10-24 08:15:40', '0', '0000-00-00 00:00:00', NULL),
('241019000017', 9, 1, '0', '170000', '170000', '2019-10-24', '2019-10-24 09:45:56', '0', '0000-00-00 00:00:00', NULL),
('241019000018', NULL, 1, '0', '12000', '12000', '2019-10-24', '2019-10-24 10:36:26', '0', '0000-00-00 00:00:00', NULL),
('241019000019', NULL, 1, '0', '11000', '11000', '2019-10-24', '2019-10-24 10:40:07', '0', '0000-00-00 00:00:00', NULL),
('241019000020', NULL, 1, '0', '150000', '150000', '2019-10-24', '2019-10-24 10:49:15', '0', '0000-00-00 00:00:00', NULL),
('271219000031', NULL, 1, '0', '105000', '105000', '2019-12-27', '2019-12-27 16:20:22', '0', '0000-00-00 00:00:00', NULL),
('300619000001', NULL, 1, '5000', '11000', '16000', '2019-06-30', '2019-06-30 00:15:46', '0', '0000-00-00 00:00:00', NULL),
('300619000002', 9, 1, '5000', '11000', '16000', '2019-06-30', '2019-06-30 00:16:05', '0', '0000-00-00 00:00:00', NULL),
('300619000003', NULL, 1, '0', '18000', '18000', '2019-06-30', '2019-06-30 01:42:20', '0', '0000-00-00 00:00:00', NULL),
('300619000004', NULL, 1, '0', '21000', '21000', '2019-06-30', '2019-06-30 12:09:18', '0', '0000-00-00 00:00:00', NULL),
('300619000005', NULL, 1, '0', '116000', '116000', '2019-06-30', '2019-06-30 15:40:56', '0', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_detail`
--

CREATE TABLE `penjualan_detail` (
  `id` int(11) NOT NULL,
  `id_penjualan` varchar(50) NOT NULL,
  `kode_item` varchar(100) NOT NULL,
  `racikan` enum('0','1') NOT NULL DEFAULT '0',
  `upah_peracik` decimal(10,0) NOT NULL,
  `harga` decimal(10,0) NOT NULL,
  `diskon` decimal(10,0) NOT NULL,
  `kuantiti` float NOT NULL,
  `total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan_detail`
--

INSERT INTO `penjualan_detail` (`id`, `id_penjualan`, `kode_item`, `racikan`, `upah_peracik`, `harga`, `diskon`, `kuantiti`, `total`) VALUES
(47, '300619000003', '8999909028233', '0', '0', '7000', '0', 1, '7000'),
(48, '300619000003', '8999909028238', '0', '0', '11000', '0', 1, '11000'),
(49, '300619000004', '8999909028238', '0', '0', '11000', '500', 1, '10500'),
(50, '300619000004', '8999909028239', '0', '0', '12000', '1500', 1, '10500'),
(51, '300619000005', '8999909028216', '0', '0', '33000', '0', 2, '66000'),
(52, '300619000005', '8999909028217', '0', '0', '50000', '0', 1, '50000'),
(53, '050719000006', '8999909028238', '0', '0', '11000', '500', 1, '10500'),
(54, '050719000006', '8999909028239', '0', '0', '12000', '1500', 1, '10500'),
(55, '050719000007', '8999909028236', '0', '0', '70000', '0', 1, '70000'),
(56, '050719000007', '8999909028237', '0', '0', '150000', '0', 1, '150000'),
(57, '231019000008', '8999909028236', '0', '0', '70000', '0', 1, '70000'),
(58, '231019000008', '8999909028238', '0', '0', '11000', '0', 1, '11000'),
(59, '231019000008', '8999909028239', '0', '0', '12000', '0', 1, '12000'),
(60, '231019000009', '8999909028236', '0', '0', '70000', '0', 1, '70000'),
(61, '231019000009', '8999909028238', '0', '0', '11000', '0', 1, '11000'),
(62, '231019000009', '8999909028239', '0', '0', '12000', '0', 1, '12000'),
(63, '231019000010', '8999909028236', '0', '0', '70000', '0', 1, '70000'),
(64, '231019000010', '8999909028238', '0', '0', '11000', '0', 1, '11000'),
(65, '231019000010', '8999909028239', '0', '0', '12000', '0', 1, '12000'),
(66, '231019000011', '8999909028230', '0', '0', '21000', '0', 1, '21000'),
(67, '231019000011', '8999909028236', '0', '0', '70000', '0', 1, '70000'),
(68, '231019000011', '8999909028238', '0', '0', '11000', '0', 1, '11000'),
(69, '231019000011', '8999909028239', '0', '0', '12000', '0', 1, '12000'),
(70, '231019000012', '8999909028230', '0', '0', '21000', '0', 1, '21000'),
(71, '231019000012', '8999909028236', '0', '0', '70000', '0', 1, '70000'),
(72, '231019000012', '8999909028238', '0', '0', '11000', '0', 1, '11000'),
(73, '231019000012', '8999909028239', '0', '0', '12000', '0', 1, '12000'),
(74, '231019000013', '8999909028230', '0', '0', '21000', '0', 1, '21000'),
(75, '231019000013', '8999909028236', '0', '0', '70000', '0', 1, '70000'),
(76, '231019000013', '8999909028238', '0', '0', '11000', '0', 1, '11000'),
(77, '231019000013', '8999909028239', '0', '0', '12000', '0', 1, '12000'),
(78, '241019000014', '8999909028236', '0', '0', '70000', '0', 1, '70000'),
(79, '241019000014', '8999909028238', '0', '0', '11000', '0', 1, '11000'),
(80, '241019000015', '8999909028236', '0', '0', '70000', '0', 3, '210000'),
(81, '241019000015', '8999909028237', '0', '0', '150000', '0', 2, '300000'),
(82, '241019000016', '8999909028215', '0', '0', '9000', '0', 1, '9000'),
(83, '241019000016', '8999909028214', '0', '0', '6000', '0', 1, '6000'),
(84, '241019000016', '8999909028213', '0', '0', '5000', '0', 1, '5000'),
(85, '241019000017', '8999909028237', '0', '0', '150000', '0', 1, '150000'),
(86, '241019000017', '8999909028238', '0', '0', '11000', '0', 1, '11000'),
(87, '241019000017', '8999909028215', '0', '0', '9000', '0', 1, '9000'),
(88, '241019000018', '8999909028239', '0', '0', '12000', '0', 1, '12000'),
(89, '241019000019', '8999909028238', '0', '0', '11000', '0', 1, '11000'),
(90, '241019000020', '8999909028237', '0', '0', '150000', '0', 1, '150000'),
(91, '061119000021', '8999909028236', '0', '0', '70000', '0', 1, '70000'),
(92, '061119000022', '8999909028228', '0', '0', '148000', '0', 1, '148000'),
(93, '121119000023', '8999909028238', '0', '0', '11000', '0', 1, '11000'),
(94, '121119000023', '8999909028239', '0', '0', '12000', '0', 1, '12000'),
(95, '121119000024', '8999909028236', '0', '0', '70000', '0', 1, '70000'),
(96, '121119000024', '8999909028237', '0', '0', '150000', '0', 1, '150000'),
(97, '121119000024', '8999909028238', '0', '0', '11000', '0', 1, '11000'),
(98, '161119000025', '8999909028215', '0', '0', '9000', '0', 4, '36000'),
(99, '161119000025', '8999909028237', '0', '0', '150000', '0', 4, '600000'),
(100, '161119000025', '8999909028239', '0', '0', '12000', '0', 2, '24000'),
(101, '191119000026', '8999909028238', '0', '0', '11000', '0', 1, '11000'),
(102, '191119000026', '8999909028239', '0', '0', '12000', '0', 1, '12000'),
(103, '201119000027', '8999909028223', '0', '0', '35000', '0', 1, '35000'),
(104, '201119000027', '8999909028224', '0', '0', '64000', '0', 1, '64000'),
(105, '201119000028', '8999909028225', '0', '0', '6000', '0', 1, '6000'),
(106, '201119000028', '8999909028222', '0', '0', '460000', '0', 1, '460000'),
(107, '041219000029', '8999909028226', '0', '0', '84000', '0', 1, '84000'),
(108, '041219000029', '8999909028220', '0', '0', '6500', '0', 1, '6500'),
(109, '041219000029', '8999909028223', '0', '0', '35000', '0', 1, '35000'),
(110, '041219000029', '8999909028224', '0', '0', '64000', '0', 1, '64000'),
(111, '041219000029', '8999909028222', '0', '0', '460000', '0', 1, '460000'),
(112, '041219000030', '8999909028232', '0', '0', '8000', '0', 1, '8000'),
(113, '041219000030', '8999909028225', '0', '0', '6000', '0', 1, '6000'),
(114, '041219000030', '8999909028222', '0', '0', '460000', '0', 1, '460000'),
(115, '271219000031', '8999909028223', '0', '0', '35000', '0', 3, '105000');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_pembayaran`
--

CREATE TABLE `penjualan_pembayaran` (
  `id` int(11) NOT NULL,
  `id_penjualan` varchar(50) NOT NULL,
  `nominal` decimal(10,0) NOT NULL,
  `cara_bayar` enum('cash','credit card','debet') NOT NULL DEFAULT 'cash',
  `swipe` varchar(100) NOT NULL,
  `card_no` varchar(100) NOT NULL,
  `holder_name` varchar(100) NOT NULL,
  `bank` varchar(30) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  `security_code` varchar(100) NOT NULL,
  `catatan` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan_pembayaran`
--

INSERT INTO `penjualan_pembayaran` (`id`, `id_penjualan`, `nominal`, `cara_bayar`, `swipe`, `card_no`, `holder_name`, `bank`, `month`, `year`, `security_code`, `catatan`) VALUES
(29, '300619000001', '20000', 'cash', '', '', '', '', '', '', '', ''),
(30, '300619000002', '16000', 'cash', '', '', '', '', '', '', '', ''),
(31, '300619000003', '18000', 'cash', '', '', '', '', '', '', '', ''),
(32, '300619000004', '25000', 'cash', '', '', '', '', '', '', '', ''),
(33, '300619000005', '50000', 'cash', '', '', '', '', '', '', '', ''),
(34, '300619000005', '66000', 'credit card', '', '', '', 'Amex', '', '', '', ''),
(35, '050719000006', '21000', 'cash', '', '', '', '', '', '', '', ''),
(36, '050719000007', '220000', 'cash', '', '', '', '', '', '', '', ''),
(37, '231019000008', '100000', 'cash', '', '', '', '', '', '', '', ''),
(38, '231019000009', '100000', 'cash', '', '', '', '', '', '', '', ''),
(39, '231019000010', '200000', 'cash', '', '', '', '', '', '', '', ''),
(40, '231019000011', '300000', 'cash', '', '', '', '', '', '', '', ''),
(41, '231019000012', '300000', 'cash', '', '', '', '', '', '', '', ''),
(42, '231019000013', '200000', 'cash', '', '', '', '', '', '', '', ''),
(43, '241019000014', '100000', 'cash', '', '', '', '', '', '', '', ''),
(44, '241019000015', '510000', 'cash', '', '', '', '', '', '', '', ''),
(45, '241019000016', '200000', 'cash', '', '', '', '', '', '', '', ''),
(46, '241019000017', '200000', 'cash', '', '', '', '', '', '', '', ''),
(47, '241019000018', '50000', 'cash', '', '', '', '', '', '', '', ''),
(48, '241019000019', '12000', 'cash', '', '', '', '', '', '', '', ''),
(49, '241019000020', '400000', 'cash', '', '', '', '', '', '', '', ''),
(50, '061119000021', '370000', 'cash', '', '', '', '', '', '', '', ''),
(51, '061119000022', '148000', 'cash', '', '', '', '', '', '', '', ''),
(52, '121119000023', '50000', 'cash', '', '', '', '', '', '', '', ''),
(53, '121119000024', '2500000', 'cash', '', '', '', '', '', '', '', ''),
(54, '161119000025', '700000', 'cash', '', '', '', '', '', '', '', ''),
(55, '191119000026', '50000', 'cash', '', '', '', '', '', '', '', ''),
(56, '201119000027', '110000', 'cash', '', '', '', '', '', '', '', ''),
(57, '201119000028', '500000', 'cash', '', '', '', '', '', '', '', ''),
(58, '041219000029', '700000', 'cash', '', '', '', '', '', '', '', ''),
(59, '041219000030', '500000', 'cash', '', '', '', '', '', '', '', ''),
(60, '271219000031', '200000', 'cash', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `piutang_dibayar_history`
--

CREATE TABLE `piutang_dibayar_history` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `id_piutang` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nominal` decimal(10,0) NOT NULL,
  `waktu_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `piutang_history`
--

CREATE TABLE `piutang_history` (
  `id` int(11) NOT NULL,
  `id_penjualan` varchar(50) NOT NULL,
  `id_pembeli` int(11) DEFAULT NULL,
  `judul` varchar(200) NOT NULL,
  `tanggal` date NOT NULL,
  `tanggal_jatuh_tempo` date NOT NULL,
  `nominal` decimal(10,0) NOT NULL,
  `nominal_dibayar` decimal(10,0) NOT NULL,
  `sudah_lunas` enum('0','1') NOT NULL DEFAULT '0',
  `tanggal_lunas` date NOT NULL,
  `waktu_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `keterangan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profil_apotek`
--

CREATE TABLE `profil_apotek` (
  `id` varchar(2) NOT NULL,
  `nama_apotek` varchar(300) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `logo` varchar(300) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `no_npwp` varchar(20) NOT NULL,
  `nama_npwp` varchar(20) NOT NULL,
  `alamat_npwp` text NOT NULL,
  `bank` varchar(10) NOT NULL,
  `rekening` varchar(20) NOT NULL,
  `an` varchar(30) NOT NULL,
  `no_apoteker` varchar(20) NOT NULL,
  `tgl_masa` date NOT NULL,
  `apoteker` varchar(20) NOT NULL,
  `alamat_ktp` text NOT NULL,
  `alamat_tinggal` text NOT NULL,
  `no_sipa` varchar(20) NOT NULL,
  `tgl_sipa` date NOT NULL,
  `nama_ttk` varchar(20) NOT NULL,
  `footer_struk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profil_apotek`
--

INSERT INTO `profil_apotek` (`id`, `nama_apotek`, `alamat`, `logo`, `telepon`, `hp`, `no_npwp`, `nama_npwp`, `alamat_npwp`, `bank`, `rekening`, `an`, `no_apoteker`, `tgl_masa`, `apoteker`, `alamat_ktp`, `alamat_tinggal`, `no_sipa`, `tgl_sipa`, `nama_ttk`, `footer_struk`) VALUES
('1', 'PT Airlangga Sentral Internasional', 'Kelurahan Kawangrejo Mumbulsari Jember', '1571878350.png', '0811212121', '089999', 'FP.01.04/IV/0045-e/2', 'PT Airlangga Sentral', 'Kelurahan Kawangrejo Mumbulsari Jember', 'Mandiri', '01231111', 'PT Airlangga Sentral Internasi', '0123199121112', '2025-11-27', 'Saya', 'disana', 'disini', '100321923', '2028-11-30', 'Katakuri', 'Terimakasih telah berbelanja');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE `purchase_order` (
  `nomor_po` varchar(100) NOT NULL,
  `tgl_po` date NOT NULL,
  `termin` int(5) NOT NULL,
  `pembayaran` enum('cash','hutang','lain-lain') NOT NULL DEFAULT 'cash',
  `supplier` int(11) NOT NULL,
  `total` decimal(20,0) NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `waktu_update_po` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_order`
--

INSERT INTO `purchase_order` (`nomor_po`, `tgl_po`, `termin`, `pembayaran`, `supplier`, `total`, `keterangan`, `waktu_update_po`) VALUES
('PO1111190013', '2017-05-11', 21, 'hutang', 2, '0', 'H', '2019-11-11 11:23:03'),
('PO1306190001', '2019-06-02', 0, 'cash', 3, '12040000', '-', '2019-06-13 14:39:40'),
('PO1306190002', '2019-06-03', 40, 'hutang', 2, '126000000', '-', '2019-06-13 14:42:31'),
('PO1306190003', '2019-06-04', 45, 'hutang', 4, '870000000', '-', '2019-06-13 14:46:07'),
('PO1306190004', '2019-06-04', 0, 'cash', 2, '1232000000', '-', '2019-06-13 14:58:26'),
('PO1306190005', '2019-05-27', 0, 'cash', 2, '535000000', '-', '2019-06-13 15:05:37'),
('PO1306190006', '2019-05-06', 0, 'cash', 2, '598500000', '', '2019-06-13 15:10:00'),
('PO1306190007', '2019-05-11', 50, 'hutang', 4, '169000000', '-', '2019-06-13 15:13:15'),
('PO1306190008', '2019-05-10', 0, 'cash', 2, '1970000000', '-', '2019-06-13 15:16:39'),
('PO1411190014', '2019-11-14', 30, 'hutang', 2, '0', 'CITO', '2019-11-14 10:05:04'),
('PO2206190009', '2019-08-23', 11, 'hutang', 2, '1800000', '-', '2019-06-30 14:31:48'),
('PO2206190010', '2019-05-31', 0, 'cash', 2, '1331000', '-', '2019-06-30 14:31:51'),
('PO2206190011', '2019-05-07', 0, 'cash', 2, '909000', '-', '2019-06-30 14:31:57'),
('PO2410190012', '2019-10-03', 0, 'cash', 2, '0', 'bagus', '2019-10-24 01:02:20');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_detail`
--

CREATE TABLE `purchase_order_detail` (
  `idd` int(11) NOT NULL,
  `nomor_po` varchar(100) NOT NULL,
  `kode_item` varchar(100) NOT NULL,
  `sku` varchar(200) NOT NULL,
  `nama_item` varchar(200) NOT NULL,
  `tgl_expired` date NOT NULL,
  `harga` decimal(10,0) NOT NULL,
  `satuan_besar` varchar(100) NOT NULL,
  `satuan_kecil` varchar(100) NOT NULL,
  `konversi` int(5) NOT NULL,
  `kuantiti` int(5) NOT NULL,
  `total_harga` decimal(10,0) NOT NULL,
  `diskon` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_order_detail`
--

INSERT INTO `purchase_order_detail` (`idd`, `nomor_po`, `kode_item`, `sku`, `nama_item`, `tgl_expired`, `harga`, `satuan_besar`, `satuan_kecil`, `konversi`, `kuantiti`, `total_harga`, `diskon`) VALUES
(1, 'PO1306190001', '8999909028213', '8999909028213', 'AFI SALEP 15 GRAM', '2025-04-22', '3500', 'kardus', 'Botol', 20, 100, '7000000', 0),
(2, 'PO1306190001', '8999909028214', '8999909028214', 'PAGODA SALEP EXTRA 10G', '2027-06-17', '4200', 'kardus', 'Box', 12, 100, '5040000', 0),
(3, 'PO1306190002', '8999909028215', '8999909028215', 'BETASON KRIM 5 GRAM', '2025-04-22', '7500', 'kardus', 'Tube', 20, 40, '6000000', 0),
(4, 'PO1306190002', '8999909028216', '8999909028216', 'ABIXA 10 MG TABLET', '2025-04-22', '30000', 'kardus', 'Botol', 50, 50, '75000000', 0),
(5, 'PO1306190002', '8999909028217', '8999909028217', 'ABBOTIC XL 500 MG TABLET', '2025-04-22', '45000', 'kardus', 'Botol', 50, 20, '45000000', 0),
(6, 'PO1306190003', '8999909028218', '8999909028218', 'A-B VASK 10 MG BOX 100 TABLET', '2025-04-22', '320000', 'kardus', 'Tablet', 20, 100, '640000000', 0),
(7, 'PO1306190003', '8999909028219', '8999909028219', '3TC-HBV 100 MG TABLET', '2025-04-22', '15000', 'kardus', 'Tablet', 100, 100, '150000000', 0),
(8, 'PO1306190003', '8999909028220', '8999909028220', 'COOLANT 350 ML BOTOL', '2025-04-22', '5000', 'kardus', 'Botol', 20, 100, '10000000', 0),
(9, 'PO1306190003', '8999909028221', '8999909028221', 'BONEETO 5-12 TAHUN RASA COKLAT 700 GRAM', '2025-04-22', '70000', 'kardus', 'Box', 10, 100, '70000000', 0),
(10, 'PO1306190004', '8999909028222', '8999909028222', 'APPETON WEIGHT GAIN DEWASA RASA VANILA 900 GRAM KALENG', '2030-04-22', '430000', 'kardus', 'Box', 30, 40, '516000000', 0),
(11, 'PO1306190004', '8999909028223', '8999909028223', 'ANLENE ACTIFIT RASA COKELAT 250 GRAM', '2023-06-30', '32000', 'kardus', 'Box', 100, 50, '160000000', 0),
(12, 'PO1306190004', '8999909028224', '8999909028224', 'AL SHIFA MADU ARAB 250 GRAM', '2025-04-22', '55000', 'kardus', 'Botol', 100, 100, '550000000', 0),
(13, 'PO1306190004', '8999909028225', '8999909028225', 'ADEM SARI CHING KU LARUTAN 320 ML KALENG', '2025-04-22', '4000', 'kardus', 'Botol', 50, 30, '6000000', 0),
(14, 'PO1306190005', '8999909028226', '8999909028226', 'ACANTHE SUNSCREEN SPF30 30 GRAM KRIM', '2025-04-22', '75000', 'kardus', 'Botol', 30, 100, '225000000', 0),
(15, 'PO1306190005', '8999909028227', '8999909028227', 'ANTIPLAQUE PASTA GIGI 75 GRAM TUBE', '2025-04-22', '20000', 'kardus', 'Tube', 20, 100, '40000000', 0),
(16, 'PO1306190005', '8999909028228', '8999909028228', 'ALYSSA ASHLEY WHITE MUSK BODY LOTION 750 ML BOTOL', '2025-04-22', '135000', 'kardus', 'Botol', 20, 100, '270000000', 0),
(17, 'PO1306190006', '8999909028229', '8999909028229', 'ACNES TREATMENT SERIES ACNES SEALING JELL 15 GRAM TUBE', '2025-04-22', '25000', 'kardus', 'Tube', 100, 100, '250000000', 0),
(18, 'PO1306190006', '8999909028230', '8999909028230', 'BIOVISION STRIP 10 KAPSUL', '2025-04-22', '17000', 'kardus', 'Tablet', 100, 30, '51000000', 0),
(19, 'PO1306190006', '8999909028231', '8999909028231', 'BIO GOLD GAMAT EMAS 350 GRAM', '2025-04-22', '140000', 'kardus', 'Botol', 50, 40, '280000000', 0),
(20, 'PO1306190006', '8999909028232', '8999909028232', 'BINTANG TOEDJOE MASUK ANGIN PLUS 4 TUBE', '2025-04-22', '7000', 'kardus', 'Botol', 50, 50, '17500000', 0),
(21, 'PO1306190007', '8999909028233', '8999909028233', 'BALPIRIK BALSEM GOSOK EXTRA KUAT HIJAU 20 GRAM', '2025-04-22', '6000', 'kardus', 'Botol', 100, 50, '30000000', 0),
(22, 'PO1306190007', '8999909028234', '8999909028234', 'Cussons Baby Telon Oil Plus 60 Ml', '2030-04-22', '25000', 'kardus', 'Botol', 100, 40, '100000000', 0),
(23, 'PO1306190007', '8999909028235', '8999909028235', 'AIR MANCUR PARCOK 75 ML', '2025-04-22', '13000', 'kardus', 'Botol', 100, 30, '39000000', 0),
(24, 'PO1306190008', '8999909028236', '8999909028236', 'ALBIBET ALBIRUNI BOX 50 KAPSUL', '2025-04-22', '50000', 'kardus', 'Botol', 100, 100, '500000000', 0),
(25, 'PO1306190008', '8999909028237', '8999909028237', 'AMBEVEN BOX 100 KAPSUL', '2025-04-22', '130000', 'kardus', 'Box', 100, 100, '1300000000', 0),
(26, 'PO1306190008', '8999909028238', '8999909028238', 'APRICOT SYRUP 100 ML', '2025-04-22', '8000', 'kardus', 'Botol', 100, 100, '80000000', 0),
(27, 'PO1306190008', '8999909028239', '8999909028239', 'BALJITOT MINYAK GOSOK 50 ML', '2025-04-22', '9000', 'kardus', 'Botol', 100, 100, '90000000', 0),
(28, 'PO2206190009', '8999909028213', '8999909028213', 'AFI SALEP 15 GRAM', '2019-06-30', '10000', 'kardus', 'Botol', 12, 5, '600000', 0),
(29, 'PO2206190009', '8999909028215', '8999909028215', 'BETASON KRIM 5 GRAM', '2019-06-30', '20000', 'kardus', 'Tube', 12, 5, '1200000', 0),
(36, 'PO2206190011', '8999909028215', '8999909028215', 'BETASON KRIM 5 GRAM', '2019-06-14', '1000', 'kardus', 'tube', 101, 10, '909000', 10),
(37, 'PO2206190010', '8999909028214', '8999909028214', 'PAGODA SALEP EXTRA 10G', '2019-06-17', '10000', 'kardus', 'Box', 11, 11, '1210000', 0),
(38, 'PO2206190010', '8999909028216', '8999909028216', 'ABIXA 10 MG TABLET', '2019-06-17', '1000', 'kardus', 'Botol', 11, 11, '121000', 0),
(40, 'PO1111190013', 'AMOX01', 'AMOX01', 'AMOXYCILLIN 500MG TAB', '2026-02-21', '17000', '', 'Box', 0, 0, '0', 0),
(41, 'PO1111190013', '8999909028239', '8999909028239', 'BALJITOT MINYAK GOSOK 50 ML', '2026-02-21', '7000', '', 'Botol', 0, 0, '0', 0),
(42, 'PO2410190012', '8999909028230', '8999909028230', 'BIOVISION STRIP 10 KAPSUL', '2021-10-16', '30000', 'box', 'Tablet', 1, 0, '0', 0),
(43, 'PO1411190014', '098765', '098765', 'CIPRO', '2023-11-14', '20000', 'BOX', 'Box', 0, 10, '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rekening_kode`
--

CREATE TABLE `rekening_kode` (
  `kode_rekening` varchar(30) NOT NULL,
  `kategori` enum('pemasukan','pengeluaran') NOT NULL DEFAULT 'pemasukan',
  `nama_rekening` varchar(200) NOT NULL,
  `waktu_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `editable` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekening_kode`
--

INSERT INTO `rekening_kode` (`kode_rekening`, `kategori`, `nama_rekening`, `waktu_update`, `editable`) VALUES
('10001', 'pemasukan', 'Penjualan', '2019-05-28 14:03:51', '0'),
('10002', 'pemasukan', 'Piutang customer', '2019-05-31 10:12:45', '0'),
('10003', 'pemasukan', 'Setoran Dana Pemilik', '2019-06-05 13:31:42', '1'),
('10004', 'pemasukan', 'Penjualan Aset', '2019-06-25 03:24:04', '1'),
('20001', 'pengeluaran', 'Pembelian ke supplier', '2019-05-28 14:03:51', '0'),
('20002', 'pengeluaran', 'Pembayaran telepon', '2019-05-28 14:53:27', '1'),
('20003', 'pengeluaran', 'Pembayaran listrik', '2019-05-28 14:53:40', '1');

-- --------------------------------------------------------

--
-- Table structure for table `retur_detail`
--

CREATE TABLE `retur_detail` (
  `idd` int(11) NOT NULL,
  `nomor_retur` varchar(100) NOT NULL,
  `kode_item` varchar(100) NOT NULL,
  `sku` varchar(200) NOT NULL,
  `nama_item` varchar(200) NOT NULL,
  `tgl_expired` date NOT NULL,
  `kuantiti` int(5) NOT NULL,
  `satuan_kecil` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `retur_detail`
--

INSERT INTO `retur_detail` (`idd`, `nomor_retur`, `kode_item`, `sku`, `nama_item`, `tgl_expired`, `kuantiti`, `satuan_kecil`) VALUES
(5, 'RE2306190001', '8999909028236', '8999909028236', 'ALBIBET ALBIRUNI BOX 50 KAPSUL', '2025-04-22', 10, 'Botol'),
(6, 'RE2306190001', '8999909028237', '8999909028237', 'AMBEVEN BOX 100 KAPSUL', '2025-04-22', 20, 'Box'),
(7, 'RE2306190001', '8999909028238', '8999909028238', 'APRICOT SYRUP 100 ML', '2025-04-22', 11, 'Botol'),
(8, 'RE2306190001', '8999909028239', '8999909028239', 'BALJITOT MINYAK GOSOK 50 ML', '2025-04-22', 0, 'Botol');

-- --------------------------------------------------------

--
-- Table structure for table `retur_pembelian`
--

CREATE TABLE `retur_pembelian` (
  `nomor_retur` varchar(100) NOT NULL,
  `nomor_faktur` varchar(100) NOT NULL,
  `nomor_rec_penerimaan` varchar(100) NOT NULL,
  `tanggal_retur` date NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `waktu_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `retur_pembelian`
--

INSERT INTO `retur_pembelian` (`nomor_retur`, `nomor_faktur`, `nomor_rec_penerimaan`, `tanggal_retur`, `keterangan`, `waktu_update`) VALUES
('RE2306190001', 'F1306190008', 'PE1306190008', '2019-06-26', 'koe', '2019-06-23 18:49:23');

-- --------------------------------------------------------

--
-- Table structure for table `stok_adjustment`
--

CREATE TABLE `stok_adjustment` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nomor_ref` varchar(100) NOT NULL,
  `stok_sebelum` int(11) NOT NULL,
  `kuantiti_berubah` int(5) NOT NULL,
  `kode_item` varchar(100) NOT NULL,
  `nama_item` varchar(200) NOT NULL,
  `tgl_expired` date NOT NULL,
  `satuan_kecil` varchar(100) NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `waktu_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stok_keluar`
--

CREATE TABLE `stok_keluar` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nomor_ref` varchar(100) NOT NULL,
  `nomor_retur_pembelian` varchar(100) DEFAULT NULL,
  `kuantiti` int(5) NOT NULL,
  `kode_item` varchar(100) NOT NULL,
  `nama_item` varchar(200) NOT NULL,
  `tgl_expired` date NOT NULL,
  `satuan_kecil` varchar(100) NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `waktu_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stok_opname`
--

CREATE TABLE `stok_opname` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nomor_ref` varchar(100) NOT NULL,
  `stok_sebelum` int(11) NOT NULL,
  `kuantiti_berubah` int(5) NOT NULL,
  `kode_item` varchar(100) NOT NULL,
  `nama_item` varchar(200) NOT NULL,
  `tgl_expired` date NOT NULL,
  `satuan_kecil` varchar(100) NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `waktu_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `verifikasi` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stok_opname`
--

INSERT INTO `stok_opname` (`id`, `tanggal`, `nomor_ref`, `stok_sebelum`, `kuantiti_berubah`, `kode_item`, `nama_item`, `tgl_expired`, `satuan_kecil`, `keterangan`, `waktu_update`, `verifikasi`) VALUES
(1, '2019-10-17', 'SO2410190001', 2997, 100, '8999909028230', 'BIOVISION STRIP 10 KAPSUL', '2021-10-23', 'Tablet', 'baru', '2019-10-24 01:00:21', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cash_in_out`
--
ALTER TABLE `cash_in_out`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_rekening` (`kode_rekening`),
  ADD KEY `id_hutang_dibayar` (`id_hutang_dibayar`),
  ADD KEY `id_piutang_dibayar` (`id_piutang_dibayar`),
  ADD KEY `id_penjualan` (`id_penjualan`);

--
-- Indexes for table `hutang_dibayar_history`
--
ALTER TABLE `hutang_dibayar_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_hutang` (`id_hutang`);

--
-- Indexes for table `hutang_history`
--
ALTER TABLE `hutang_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nomor_faktur` (`nomor_faktur`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indexes for table `kartu_stok`
--
ALTER TABLE `kartu_stok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_item` (`kode_item`),
  ADD KEY `nomor_rec` (`nomor_rec_penerimaan`),
  ADD KEY `id_stok_keluar` (`id_stok_keluar`),
  ADD KEY `id_stok_adjustment` (`id_stok_adjustment`),
  ADD KEY `id_stok_opname` (`id_stok_opname`),
  ADD KEY `id_penjualan` (`id_penjualan`);

--
-- Indexes for table `kategori_user`
--
ALTER TABLE `kategori_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kategori_user` (`kategori_user`),
  ADD KEY `beranda` (`beranda`);

--
-- Indexes for table `kategori_user_modul`
--
ALTER TABLE `kategori_user_modul`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori_user` (`kategori_user`),
  ADD KEY `modul` (`modul`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_admin` (`id_admin`),
  ADD KEY `id_pembeli` (`id_pembeli`);

--
-- Indexes for table `keranjang_detail`
--
ALTER TABLE `keranjang_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_keranjang` (`id_keranjang`),
  ADD KEY `kode_item` (`kode_item`);

--
-- Indexes for table `master_admin`
--
ALTER TABLE `master_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `kategori` (`kategori`);

--
-- Indexes for table `master_bank`
--
ALTER TABLE `master_bank`
  ADD PRIMARY KEY (`singkatan`);

--
-- Indexes for table `master_diskon_kelipatan`
--
ALTER TABLE `master_diskon_kelipatan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_item` (`kode_item`);

--
-- Indexes for table `master_dokter`
--
ALTER TABLE `master_dokter`
  ADD PRIMARY KEY (`kode_dokter`);

--
-- Indexes for table `master_item`
--
ALTER TABLE `master_item`
  ADD PRIMARY KEY (`kode_item`);

--
-- Indexes for table `master_kategori`
--
ALTER TABLE `master_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_merk`
--
ALTER TABLE `master_merk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_pembeli`
--
ALTER TABLE `master_pembeli`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_dokter` (`kode_dokter`);

--
-- Indexes for table `master_racikan`
--
ALTER TABLE `master_racikan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `master_racikan_ibfk_1` (`kode_racikan`),
  ADD KEY `kode_obat` (`kode_obat`);

--
-- Indexes for table `master_satuan`
--
ALTER TABLE `master_satuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_satuan_besar` (`satuan_besar`);

--
-- Indexes for table `master_supplier`
--
ALTER TABLE `master_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembelian_langsung`
--
ALTER TABLE `pembelian_langsung`
  ADD PRIMARY KEY (`nomor_faktur`),
  ADD KEY `supplier` (`supplier`),
  ADD KEY `nomor_po` (`nomor_po`);

--
-- Indexes for table `pembelian_langsung_detail`
--
ALTER TABLE `pembelian_langsung_detail`
  ADD PRIMARY KEY (`idd`),
  ADD KEY `kode_item` (`kode_item`),
  ADD KEY `nomor_po` (`nomor_faktur`);

--
-- Indexes for table `penerimaan_barang`
--
ALTER TABLE `penerimaan_barang`
  ADD PRIMARY KEY (`nomor_rec`),
  ADD KEY `nomor_faktur` (`nomor_faktur`);

--
-- Indexes for table `penerimaan_barang_detail`
--
ALTER TABLE `penerimaan_barang_detail`
  ADD PRIMARY KEY (`idd`),
  ADD KEY `nomor_rec` (`nomor_rec`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pembeli` (`id_pembeli`),
  ADD KEY `id_admin` (`id_admin`),
  ADD KEY `admin_retur` (`admin_retur`);

--
-- Indexes for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_item` (`kode_item`),
  ADD KEY `id_penjualan` (`id_penjualan`);

--
-- Indexes for table `penjualan_pembayaran`
--
ALTER TABLE `penjualan_pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_penjualan` (`id_penjualan`);

--
-- Indexes for table `piutang_dibayar_history`
--
ALTER TABLE `piutang_dibayar_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_piutang` (`id_piutang`);

--
-- Indexes for table `piutang_history`
--
ALTER TABLE `piutang_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pembeli` (`id_pembeli`),
  ADD KEY `id_penjualan` (`id_penjualan`);

--
-- Indexes for table `profil_apotek`
--
ALTER TABLE `profil_apotek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`nomor_po`),
  ADD KEY `supplier` (`supplier`);

--
-- Indexes for table `purchase_order_detail`
--
ALTER TABLE `purchase_order_detail`
  ADD PRIMARY KEY (`idd`),
  ADD KEY `kode_item` (`kode_item`),
  ADD KEY `nomor_po` (`nomor_po`);

--
-- Indexes for table `rekening_kode`
--
ALTER TABLE `rekening_kode`
  ADD PRIMARY KEY (`kode_rekening`);

--
-- Indexes for table `retur_detail`
--
ALTER TABLE `retur_detail`
  ADD PRIMARY KEY (`idd`),
  ADD KEY `nomor_rec` (`nomor_retur`);

--
-- Indexes for table `retur_pembelian`
--
ALTER TABLE `retur_pembelian`
  ADD PRIMARY KEY (`nomor_retur`),
  ADD KEY `nomor_faktur` (`nomor_faktur`),
  ADD KEY `nomor_rec_penerimaan` (`nomor_rec_penerimaan`);

--
-- Indexes for table `stok_adjustment`
--
ALTER TABLE `stok_adjustment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomor_ref` (`nomor_ref`),
  ADD KEY `kode_item` (`kode_item`);

--
-- Indexes for table `stok_keluar`
--
ALTER TABLE `stok_keluar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomor_ref` (`nomor_ref`),
  ADD KEY `kode_item` (`kode_item`),
  ADD KEY `stok_keluar_ibfk_2` (`nomor_retur_pembelian`);

--
-- Indexes for table `stok_opname`
--
ALTER TABLE `stok_opname`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomor_ref` (`nomor_ref`),
  ADD KEY `kode_item` (`kode_item`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cash_in_out`
--
ALTER TABLE `cash_in_out`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `hutang_dibayar_history`
--
ALTER TABLE `hutang_dibayar_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hutang_history`
--
ALTER TABLE `hutang_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `kartu_stok`
--
ALTER TABLE `kartu_stok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `kategori_user`
--
ALTER TABLE `kategori_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `kategori_user_modul`
--
ALTER TABLE `kategori_user_modul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12070;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `keranjang_detail`
--
ALTER TABLE `keranjang_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `master_admin`
--
ALTER TABLE `master_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_diskon_kelipatan`
--
ALTER TABLE `master_diskon_kelipatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `master_pembeli`
--
ALTER TABLE `master_pembeli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `master_racikan`
--
ALTER TABLE `master_racikan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `master_supplier`
--
ALTER TABLE `master_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `pembelian_langsung_detail`
--
ALTER TABLE `pembelian_langsung_detail`
  MODIFY `idd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `penerimaan_barang_detail`
--
ALTER TABLE `penerimaan_barang_detail`
  MODIFY `idd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `penjualan_pembayaran`
--
ALTER TABLE `penjualan_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `piutang_dibayar_history`
--
ALTER TABLE `piutang_dibayar_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `piutang_history`
--
ALTER TABLE `piutang_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_order_detail`
--
ALTER TABLE `purchase_order_detail`
  MODIFY `idd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `retur_detail`
--
ALTER TABLE `retur_detail`
  MODIFY `idd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `stok_adjustment`
--
ALTER TABLE `stok_adjustment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stok_keluar`
--
ALTER TABLE `stok_keluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stok_opname`
--
ALTER TABLE `stok_opname`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cash_in_out`
--
ALTER TABLE `cash_in_out`
  ADD CONSTRAINT `cash_in_out_ibfk_1` FOREIGN KEY (`kode_rekening`) REFERENCES `rekening_kode` (`kode_rekening`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cash_in_out_ibfk_2` FOREIGN KEY (`id_hutang_dibayar`) REFERENCES `hutang_dibayar_history` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cash_in_out_ibfk_3` FOREIGN KEY (`id_piutang_dibayar`) REFERENCES `piutang_dibayar_history` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cash_in_out_ibfk_4` FOREIGN KEY (`id_penjualan`) REFERENCES `penjualan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hutang_dibayar_history`
--
ALTER TABLE `hutang_dibayar_history`
  ADD CONSTRAINT `hutang_dibayar_history_ibfk_1` FOREIGN KEY (`id_hutang`) REFERENCES `hutang_history` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hutang_history`
--
ALTER TABLE `hutang_history`
  ADD CONSTRAINT `hutang_history_ibfk_1` FOREIGN KEY (`nomor_faktur`) REFERENCES `pembelian_langsung` (`nomor_faktur`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hutang_history_ibfk_2` FOREIGN KEY (`id_supplier`) REFERENCES `master_supplier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kartu_stok`
--
ALTER TABLE `kartu_stok`
  ADD CONSTRAINT `kartu_stok_ibfk_1` FOREIGN KEY (`kode_item`) REFERENCES `master_item` (`kode_item`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kartu_stok_ibfk_2` FOREIGN KEY (`nomor_rec_penerimaan`) REFERENCES `penerimaan_barang` (`nomor_rec`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kartu_stok_ibfk_3` FOREIGN KEY (`id_stok_keluar`) REFERENCES `stok_keluar` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kartu_stok_ibfk_4` FOREIGN KEY (`id_stok_adjustment`) REFERENCES `stok_adjustment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kartu_stok_ibfk_5` FOREIGN KEY (`id_stok_opname`) REFERENCES `stok_opname` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kartu_stok_ibfk_6` FOREIGN KEY (`id_penjualan`) REFERENCES `penjualan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kategori_user`
--
ALTER TABLE `kategori_user`
  ADD CONSTRAINT `kategori_user_ibfk_1` FOREIGN KEY (`beranda`) REFERENCES `modul` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kategori_user_modul`
--
ALTER TABLE `kategori_user_modul`
  ADD CONSTRAINT `kategori_user_modul_ibfk_1` FOREIGN KEY (`kategori_user`) REFERENCES `kategori_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kategori_user_modul_ibfk_2` FOREIGN KEY (`modul`) REFERENCES `modul` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `keranjang_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `master_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `keranjang_ibfk_2` FOREIGN KEY (`id_pembeli`) REFERENCES `master_pembeli` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `keranjang_detail`
--
ALTER TABLE `keranjang_detail`
  ADD CONSTRAINT `keranjang_detail_ibfk_1` FOREIGN KEY (`id_keranjang`) REFERENCES `keranjang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `keranjang_detail_ibfk_2` FOREIGN KEY (`kode_item`) REFERENCES `master_item` (`kode_item`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `master_admin`
--
ALTER TABLE `master_admin`
  ADD CONSTRAINT `master_admin_ibfk_1` FOREIGN KEY (`kategori`) REFERENCES `kategori_user` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `master_diskon_kelipatan`
--
ALTER TABLE `master_diskon_kelipatan`
  ADD CONSTRAINT `master_diskon_kelipatan_ibfk_1` FOREIGN KEY (`kode_item`) REFERENCES `master_item` (`kode_item`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `master_pembeli`
--
ALTER TABLE `master_pembeli`
  ADD CONSTRAINT `master_pembeli_ibfk_1` FOREIGN KEY (`kode_dokter`) REFERENCES `master_dokter` (`kode_dokter`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `master_racikan`
--
ALTER TABLE `master_racikan`
  ADD CONSTRAINT `master_racikan_ibfk_1` FOREIGN KEY (`kode_racikan`) REFERENCES `master_item` (`kode_item`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `master_racikan_ibfk_2` FOREIGN KEY (`kode_obat`) REFERENCES `master_item` (`kode_item`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pembelian_langsung`
--
ALTER TABLE `pembelian_langsung`
  ADD CONSTRAINT `pembelian_langsung_ibfk_1` FOREIGN KEY (`nomor_po`) REFERENCES `purchase_order` (`nomor_po`);

--
-- Constraints for table `pembelian_langsung_detail`
--
ALTER TABLE `pembelian_langsung_detail`
  ADD CONSTRAINT `pembelian_langsung_detail_ibfk_1` FOREIGN KEY (`nomor_faktur`) REFERENCES `pembelian_langsung` (`nomor_faktur`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembelian_langsung_detail_ibfk_2` FOREIGN KEY (`kode_item`) REFERENCES `master_item` (`kode_item`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penerimaan_barang`
--
ALTER TABLE `penerimaan_barang`
  ADD CONSTRAINT `penerimaan_barang_ibfk_1` FOREIGN KEY (`nomor_faktur`) REFERENCES `pembelian_langsung` (`nomor_faktur`) ON UPDATE CASCADE;

--
-- Constraints for table `penerimaan_barang_detail`
--
ALTER TABLE `penerimaan_barang_detail`
  ADD CONSTRAINT `penerimaan_barang_detail_ibfk_1` FOREIGN KEY (`nomor_rec`) REFERENCES `penerimaan_barang` (`nomor_rec`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`id_pembeli`) REFERENCES `master_pembeli` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penjualan_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `master_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penjualan_ibfk_3` FOREIGN KEY (`admin_retur`) REFERENCES `master_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  ADD CONSTRAINT `penjualan_detail_ibfk_1` FOREIGN KEY (`kode_item`) REFERENCES `master_item` (`kode_item`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penjualan_detail_ibfk_2` FOREIGN KEY (`id_penjualan`) REFERENCES `penjualan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penjualan_pembayaran`
--
ALTER TABLE `penjualan_pembayaran`
  ADD CONSTRAINT `penjualan_pembayaran_ibfk_1` FOREIGN KEY (`id_penjualan`) REFERENCES `penjualan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `piutang_dibayar_history`
--
ALTER TABLE `piutang_dibayar_history`
  ADD CONSTRAINT `piutang_dibayar_history_ibfk_1` FOREIGN KEY (`id_piutang`) REFERENCES `piutang_history` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `piutang_history`
--
ALTER TABLE `piutang_history`
  ADD CONSTRAINT `piutang_history_ibfk_2` FOREIGN KEY (`id_pembeli`) REFERENCES `master_pembeli` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `piutang_history_ibfk_3` FOREIGN KEY (`id_penjualan`) REFERENCES `penjualan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD CONSTRAINT `purchase_order_ibfk_1` FOREIGN KEY (`supplier`) REFERENCES `master_supplier` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `purchase_order_detail`
--
ALTER TABLE `purchase_order_detail`
  ADD CONSTRAINT `purchase_order_detail_ibfk_1` FOREIGN KEY (`nomor_po`) REFERENCES `purchase_order` (`nomor_po`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchase_order_detail_ibfk_2` FOREIGN KEY (`kode_item`) REFERENCES `master_item` (`kode_item`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `retur_detail`
--
ALTER TABLE `retur_detail`
  ADD CONSTRAINT `retur_detail_ibfk_1` FOREIGN KEY (`nomor_retur`) REFERENCES `retur_pembelian` (`nomor_retur`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `retur_pembelian`
--
ALTER TABLE `retur_pembelian`
  ADD CONSTRAINT `retur_pembelian_ibfk_1` FOREIGN KEY (`nomor_faktur`) REFERENCES `pembelian_langsung` (`nomor_faktur`) ON UPDATE CASCADE,
  ADD CONSTRAINT `retur_pembelian_ibfk_2` FOREIGN KEY (`nomor_rec_penerimaan`) REFERENCES `penerimaan_barang` (`nomor_rec`) ON UPDATE CASCADE;

--
-- Constraints for table `stok_adjustment`
--
ALTER TABLE `stok_adjustment`
  ADD CONSTRAINT `stok_adjustment_ibfk_1` FOREIGN KEY (`kode_item`) REFERENCES `master_item` (`kode_item`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stok_keluar`
--
ALTER TABLE `stok_keluar`
  ADD CONSTRAINT `stok_keluar_ibfk_1` FOREIGN KEY (`kode_item`) REFERENCES `master_item` (`kode_item`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stok_keluar_ibfk_2` FOREIGN KEY (`nomor_retur_pembelian`) REFERENCES `retur_pembelian` (`nomor_retur`) ON UPDATE CASCADE;

--
-- Constraints for table `stok_opname`
--
ALTER TABLE `stok_opname`
  ADD CONSTRAINT `stok_opname_ibfk_1` FOREIGN KEY (`kode_item`) REFERENCES `master_item` (`kode_item`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
