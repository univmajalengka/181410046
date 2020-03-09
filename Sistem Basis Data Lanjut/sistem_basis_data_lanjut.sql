-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2020 at 09:46 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_basis_data_lanjut`
--

-- --------------------------------------------------------

--
-- Table structure for table `data berita`
--

CREATE TABLE `data berita` (
  `id_news` int(5) NOT NULL,
  `Judul` varchar(100) NOT NULL,
  `Berita` text NOT NULL,
  `pengirim` varchar(30) NOT NULL,
  `jml_baca` int(6) NOT NULL,
  `Tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data berita`
--

INSERT INTO `data berita` (`id_news`, `Judul`, `Berita`, `pengirim`, `jml_baca`, `Tgl`) VALUES
(3, 'Seekor ayam disembelih untuk dijadikan teman nasi', 'Pada tanggal 10 Januari 2020, telah disembelih seekor ayam yang telah dikurung selama beberapa hari di kandang untuk dijadikan seekor ayam.', 'Taufik Fathurrahman', 60, '2020-01-12');

-- --------------------------------------------------------

--
-- Table structure for table `data buku tamu`
--

CREATE TABLE `data buku tamu` (
  `id` int(1) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `url` varchar(30) DEFAULT NULL,
  `komentar` text DEFAULT NULL,
  `Tgl` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data buku tamu`
--

INSERT INTO `data buku tamu` (`id`, `nama`, `email`, `url`, `komentar`, `Tgl`) VALUES
(1, 'Raihan Widiyansyah N', 'raihan00@roketmail.c', 'duka naon pak', 'naon cing???', '2020-01-14');

-- --------------------------------------------------------

--
-- Table structure for table `data komentar`
--

CREATE TABLE `data komentar` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `url` varchar(30) DEFAULT NULL,
  `komentar` text DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `jml_komen` int(11) NOT NULL,
  `id_news` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data komentar`
--

INSERT INTO `data komentar` (`id`, `nama`, `email`, `url`, `komentar`, `tgl`, `jml_komen`, `id_news`) VALUES
(111, 'Zia Al-Hak', 'zeero11@nyao.com', 'naon wae atuh lah', 'Pokok n mh alus weh', '2020-01-17', 100, 3);

-- --------------------------------------------------------

--
-- Table structure for table `data pengumuman`
--

CREATE TABLE `data pengumuman` (
  `id` int(5) NOT NULL,
  `Judul` varchar(100) NOT NULL,
  `Isi` text NOT NULL,
  `pengirim` varchar(30) NOT NULL,
  `jml_baca` int(6) NOT NULL,
  `Tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data pengumuman`
--

INSERT INTO `data pengumuman` (`id`, `Judul`, `Isi`, `pengirim`, `jml_baca`, `Tgl`) VALUES
(5, 'Penyembelihan Hewan Qurban', 'Besok, tanggal 15 Februari 2020 akan dilakukan penyembelihan hewan Qurban bertempat di Balai Desa Babakan Jawa', 'Riza Shocc', 100, '2020-02-14');

-- --------------------------------------------------------

--
-- Table structure for table `data profil`
--

CREATE TABLE `data profil` (
  `id_profil` int(11) NOT NULL,
  `nama_profil` varchar(50) NOT NULL,
  `isi_profil` text NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data profil`
--

INSERT INTO `data profil` (`id_profil`, `nama_profil`, `isi_profil`, `username`) VALUES
(12, 'Gelen Jeniffer', 'Nama saya Gelen Jeniffer. Saya tinggal di Desa Sindang, Kecamatan Cikijing, Kabupaten Majalengka, Jawa Barat. Saya seorang mahasiswa program studi informatika Universitas Majalengka.', 'gelen123');

-- --------------------------------------------------------

--
-- Table structure for table `data user`
--

CREATE TABLE `data user` (
  `username` varchar(30) NOT NULL,
  `password` varchar(32) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `Nama_lengkap` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data user`
--

INSERT INTO `data user` (`username`, `password`, `level`, `Nama_lengkap`) VALUES
('gelen123', 'dukahilap', '100', 'Gelen Jeniffer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data berita`
--
ALTER TABLE `data berita`
  ADD PRIMARY KEY (`id_news`);

--
-- Indexes for table `data buku tamu`
--
ALTER TABLE `data buku tamu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data komentar`
--
ALTER TABLE `data komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data pengumuman`
--
ALTER TABLE `data pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data profil`
--
ALTER TABLE `data profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indexes for table `data user`
--
ALTER TABLE `data user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
