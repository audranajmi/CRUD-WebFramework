-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2021 at 05:56 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii2basic`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `harga` double NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `satuan`, `id_jenis`, `id_supplier`, `harga`, `stock`) VALUES
(1, 'B001', 'Kemeja H&M', 'helai', 2, 2, 290000, 20),
(2, 'B002', 'Scarlett', 'pcs', 7, 5, 65000, 150),
(3, 'B003', 'Indomie', 'dus', 1, 3, 2500, 23),
(4, 'B004', 'Ultramilk', 'buah', 4, 1, 3000, 250),
(5, 'B005', 'Meja Belajar', 'buah', 6, 3, 1500000, 19),
(6, 'B006', 'Spatula', 'pcs', 2, 1, 35000, 100);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `code` char(2) NOT NULL,
  `name` char(52) NOT NULL,
  `population` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`code`, `name`, `population`) VALUES
('AU', 'Australia', 24016400),
('BR', 'Brazil', 205722000),
('CA', 'Canada', 35985751),
('CN', 'China', 1375210000),
('DE', 'Germany', 81459000),
('FR', 'France', 65097000),
('GB', 'United Kingdom', 65097000),
('IN', 'India', 1285400000),
('RU', 'Rusia', 146519759),
('US', 'United States', 322976000);

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id` int(20) NOT NULL,
  `nama_fakultas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id`, `nama_fakultas`) VALUES
(1, 'Fakultas Sistem Informasi'),
(2, 'Fakultas Ilmu Komunikasi');

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id` int(11) NOT NULL,
  `nama_jenis` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id`, `nama_jenis`, `keterangan`) VALUES
(1, 'Makanan', 'COD, Transfer'),
(2, 'Pakaian', 'COD, Transfer'),
(4, 'Minuman', 'COD'),
(6, 'Perabot', 'Transfer'),
(7, 'Skincare', 'COD, Transfer'),
(8, 'Peralatan Dapur', 'COD');

-- --------------------------------------------------------

--
-- Table structure for table `kantor`
--

CREATE TABLE `kantor` (
  `id_kantor` int(20) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kantor`
--

INSERT INTO `kantor` (`id_kantor`, `alamat`) VALUES
(1, 'Jl. Gunung Pangilun Padang');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` varchar(18) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tgl_lahir` varchar(10) NOT NULL,
  `jekel` char(1) NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `tgl_lahir`, `jekel`, `id_fakultas`, `id_prodi`, `email`, `alamat`) VALUES
(1, '190101', 'Maymunah', '2001-01-01', 'P', 1, 4, 'maymunah.01@gmail.com', 'Pasar Baru, Padang'),
(2, '190102', 'Anto', '', 'L', 0, 1, 'anto.02@gmail.com', 'Jalan Dr. Moh. Hatta, Padang'),
(3, '190103', 'Ani', '', 'P', 0, 2, 'ani03@gmail.com', 'Siteba, Padang'),
(4, '190104', 'Ferro', '', 'L', 0, 1, 'ferro.04@gmail.com', 'Pengambiran, Padang'),
(5, '190105', 'Sigit', '', 'L', 0, 3, 'sigit.05@gmail.com', 'Pasar Baru, Padang'),
(6, '190106', 'Dina', '', 'P', 0, 2, 'dina.06@gmail.com', 'Lapai, Padang'),
(7, '190107', 'Hanifah', '', 'P', 0, 1, 'hanifah.07@gmail.com', 'Andalas, Padang'),
(8, '190108', 'Yusuf', '', 'P', 0, 1, 'yusuf.08@gmail.com', 'Gunung Pangilun, Padang'),
(9, '190109', 'Arif', '', 'L', 0, 3, 'arif.09@gmail.com', 'Lapai, Padang'),
(10, '190110', 'Sekar', '', 'P', 0, 2, 'sekar.10@gmail.com', 'Tunggul Hitam, Padang');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(20) NOT NULL,
  `nama_pegawai` varchar(50) NOT NULL,
  `tgl_lahir` varchar(25) NOT NULL,
  `jekel` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(25) NOT NULL,
  `id_kantor` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `tgl_lahir`, `jekel`, `alamat`, `email`, `id_kantor`) VALUES
(1, 'FARREL', '16 November 2004', 'PRIA', 'Padang', 'abcdefghi@gmail.com', 1),
(2, 'swcw', '03-Jun-2021', 'W', 'efev', 'veve', 1),
(3, 'swcw', '03-Jun-2021', 'W', 'efev', 'veve', 1),
(4, 'INA', '23-Jun-2021', 'W', 'Padang', 'ina123400@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id` int(11) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id`, `prodi`, `id_fakultas`, `keterangan`) VALUES
(1, 'D3-Teknik Komputer', 0, 'Masa Pendidikan 3 tahun'),
(2, 'D3-Manajemen Informatika', 0, 'Masa Pendidikan 3 tahun'),
(3, 'D4-Teknologi Rekayasa Perangkat Lunak', 0, 'Masa Pendidikan 4 tahun'),
(4, 'S1 - Ilmu Komputer', 1, 'Sarjana'),
(5, 'S1 - Ilmu Komunikasi', 2, 'Sarjana');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `nama_supplier`, `notelp`, `email`, `alamat`) VALUES
(1, 'Ani', '08111222333', 'ani01@gmail.com', 'Pauh, Padang'),
(2, 'Rima', '08222111333', 'rima.02@gmail.com', 'Andalas, Padang'),
(3, 'Fadhel', '08333111222', 'fadhel.03@gmail.com', 'Alai, Padang'),
(4, 'Arif', '08111333222', 'arif.04@gmail.com', 'Lapai, Padang'),
(5, 'Dini', '08333222111', 'dini.05@gmail.com', 'Ulak Karang, Padang'),
(6, 'Bunga', '08111222124', 'bunga.06@gmail.com', 'Padang');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barang_jenis` (`id_jenis`),
  ADD KEY `barang_supplier` (`id_supplier`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kantor`
--
ALTER TABLE `kantor`
  ADD PRIMARY KEY (`id_kantor`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_prodi` (`id_prodi`),
  ADD KEY `id_fakultas` (`id_fakultas`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `id_kantor` (`id_kantor`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_fakultas` (`id_fakultas`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kantor`
--
ALTER TABLE `kantor`
  MODIFY `id_kantor` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_jenis` FOREIGN KEY (`id_jenis`) REFERENCES `jenis` (`id`),
  ADD CONSTRAINT `barang_supplier` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id`);

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`id_kantor`) REFERENCES `kantor` (`id_kantor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
