-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2020 at 09:12 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_kasir`
--

CREATE TABLE `daftar_kasir` (
  `id_kasir` int(5) NOT NULL,
  `nama_kasir` text NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` int(12) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daftar_kasir`
--

INSERT INTO `daftar_kasir` (`id_kasir`, `nama_kasir`, `tanggal_lahir`, `alamat`, `no_telp`, `email`) VALUES
(11, 'Fauzan Fathurrahman', '1999-11-12', 'Desa Banjaran, Kecamatan Maja', 813214656, 'fazkia@yahoo.com'),
(12, 'Asep Bambang', '1999-02-15', 'Desa Ujungjaya, Kecamatan Ujungjaya', 812003456, 'asbak@gmail.com'),
(13, 'Iqbal Assegaf', '1999-12-10', 'Desa Babakan, Kecamatan Kertajati', 851324356, 'iqbalass@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_konsumen`
--

CREATE TABLE `daftar_konsumen` (
  `id_konsumen` int(5) NOT NULL,
  `nama_konsumen` text NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` int(11) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daftar_konsumen`
--

INSERT INTO `daftar_konsumen` (`id_konsumen`, `nama_konsumen`, `tanggal_lahir`, `alamat`, `no_telp`, `email`) VALUES
(111, 'Geraldy Fatullah', '1997-10-11', 'Desa Majalengka', 891222891, 'geraldy@gmail.com'),
(112, 'Surya Heryana', '1998-04-10', 'Desa Jatitujuh', 831267851, 'suryaher@yahoo.com'),
(113, 'Firmansyah', '1997-03-12', 'Desa Ciamis', 857685551, 'firmansyah@gmail.com'),
(114, 'Cecep Roni', '1998-09-23', 'Desa Rajagaluh', 87966512, 'ceroni3@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_makanan`
--

CREATE TABLE `daftar_makanan` (
  `id_makanan` int(5) NOT NULL,
  `nama_makanan` text NOT NULL,
  `harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daftar_makanan`
--

INSERT INTO `daftar_makanan` (`id_makanan`, `nama_makanan`, `harga`) VALUES
(1, 'Nasi Goreng', 10000),
(2, 'Nasi Uduk', 8000),
(3, 'Burger', 15000),
(4, 'Ayam Bakar', 12000),
(5, 'Sapi Panggang', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `daftar_minuman`
--

CREATE TABLE `daftar_minuman` (
  `id_minuman` int(5) NOT NULL,
  `nama_minuman` text NOT NULL,
  `harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daftar_minuman`
--

INSERT INTO `daftar_minuman` (`id_minuman`, `nama_minuman`, `harga`) VALUES
(10, 'Es Teh Manis', 5000),
(20, 'Jus Alpukat', 10000),
(30, 'Jus Apel', 10000),
(40, 'Teh Tarik', 8000),
(50, 'Susu', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_konsumen` int(5) NOT NULL,
  `id_minuman` int(5) NOT NULL,
  `id_makanan` int(5) NOT NULL,
  `id_kasir` int(5) NOT NULL,
  `jmlh_makanan` int(3) NOT NULL,
  `jmlh_minuman` int(3) NOT NULL,
  `no_meja` int(2) NOT NULL,
  `total_harga` int(15) NOT NULL,
  `tgl_pesan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_konsumen`, `id_minuman`, `id_makanan`, `id_kasir`, `jmlh_makanan`, `jmlh_minuman`, `no_meja`, `total_harga`, `tgl_pesan`) VALUES
(111, 30, 1, 13, 2, 2, 3, 40000, '2020-04-10'),
(113, 20, 3, 11, 3, 3, 2, 75000, '2020-04-03'),
(114, 10, 4, 12, 2, 2, 1, 34000, '2020-04-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_kasir`
--
ALTER TABLE `daftar_kasir`
  ADD PRIMARY KEY (`id_kasir`);

--
-- Indexes for table `daftar_konsumen`
--
ALTER TABLE `daftar_konsumen`
  ADD PRIMARY KEY (`id_konsumen`);

--
-- Indexes for table `daftar_makanan`
--
ALTER TABLE `daftar_makanan`
  ADD PRIMARY KEY (`id_makanan`);

--
-- Indexes for table `daftar_minuman`
--
ALTER TABLE `daftar_minuman`
  ADD PRIMARY KEY (`id_minuman`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_konsumen`),
  ADD UNIQUE KEY `id_minuman` (`id_minuman`),
  ADD UNIQUE KEY `id_makanan` (`id_makanan`),
  ADD UNIQUE KEY `id_kasir` (`id_kasir`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_konsumen`) REFERENCES `daftar_konsumen` (`id_konsumen`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_kasir`) REFERENCES `daftar_kasir` (`id_kasir`),
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`id_makanan`) REFERENCES `daftar_makanan` (`id_makanan`),
  ADD CONSTRAINT `transaksi_ibfk_4` FOREIGN KEY (`id_minuman`) REFERENCES `daftar_minuman` (`id_minuman`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
