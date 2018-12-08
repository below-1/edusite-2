-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 26, 2018 at 02:35 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edusite_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_prop`
--

CREATE TABLE `app_prop` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nilai` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bangunan`
--

CREATE TABLE `bangunan` (
  `id` int(11) NOT NULL,
  `sekolah_id` int(11) DEFAULT NULL,
  `kategori` smallint(6) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kondisi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bangunan`
--

INSERT INTO `bangunan` (`id`, `sekolah_id`, `kategori`, `tahun`, `nama`, `kondisi`) VALUES
(1, 1, 2, 2013, 'Ruang A1', 'Baik'),
(2, 1, 1, 2010, 'ksjksjd', 'Buruk'),
(3, 4, 1, 2018, 'Fobar', 'SANGAT BURUK'),
(4, 4, 1, 2018, 'Gedung A', 'BAIK'),
(5, 4, 1, 2018, 'Gedung B', 'NORMAL');

-- --------------------------------------------------------

--
-- Table structure for table `bantuan`
--

CREATE TABLE `bantuan` (
  `id` int(11) NOT NULL,
  `sekolah_id` int(11) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipeBantuan` int(11) NOT NULL,
  `tipeAlat` int(11) DEFAULT NULL,
  `kondisi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bantuan`
--

INSERT INTO `bantuan` (`id`, `sekolah_id`, `tahun`, `nama`, `tipeBantuan`, `tipeAlat`, `kondisi`) VALUES
(1, 1, 2012, 'Meja Siswa', 1, NULL, 'SANGAT BAIK'),
(2, 4, 2018, 'B1', 1, NULL, 'SANGAT BAIK'),
(3, 4, 2018, 'B2', 1, NULL, 'BAIK');

-- --------------------------------------------------------

--
-- Table structure for table `deskripsi_tahun`
--

CREATE TABLE `deskripsi_tahun` (
  `id` int(11) NOT NULL,
  `sekolah_id` int(11) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `js1` int(11) DEFAULT NULL,
  `js2` int(11) DEFAULT NULL,
  `js3` int(11) DEFAULT NULL,
  `js4` int(11) DEFAULT NULL,
  `js5` int(11) DEFAULT NULL,
  `js6` int(11) DEFAULT NULL,
  `rb1` int(11) DEFAULT NULL,
  `rb2` int(11) DEFAULT NULL,
  `rb3` int(11) DEFAULT NULL,
  `rb4` int(11) DEFAULT NULL,
  `rb5` int(11) DEFAULT NULL,
  `rb6` int(11) DEFAULT NULL,
  `lanjutSMPN` int(11) DEFAULT NULL,
  `lanjutSMPS` int(11) DEFAULT NULL,
  `lanjutMTS` int(11) DEFAULT NULL,
  `lanjutPontren` int(11) DEFAULT NULL,
  `jumlahSiswa` int(11) DEFAULT NULL,
  `jumlahLulus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `deskripsi_tahun`
--

INSERT INTO `deskripsi_tahun` (`id`, `sekolah_id`, `tahun`, `js1`, `js2`, `js3`, `js4`, `js5`, `js6`, `rb1`, `rb2`, `rb3`, `rb4`, `rb5`, `rb6`, `lanjutSMPN`, `lanjutSMPS`, `lanjutMTS`, `lanjutPontren`, `jumlahSiswa`, `jumlahLulus`) VALUES
(1, 1, 2013, 34, 34, 34, NULL, NULL, NULL, 32, 34, 34, 34, 55, 65, 9, 7, 8, 10, NULL, 220),
(2, 1, 1999, 23, 22, 20, 20, 20, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 203),
(3, 1, 2014, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, 22, 12, 10, NULL, 198),
(4, 1, 2015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, 22, 12, 12, NULL, 280),
(5, 4, 2013, 23, 32, 23, NULL, NULL, NULL, 34, 34, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 340),
(6, 4, 2016, NULL, NULL, NULL, NULL, NULL, NULL, 32, 34, 34, NULL, NULL, NULL, 45, 43, 20, 29, NULL, 239),
(7, 4, 2015, 32, 33, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas`
--

CREATE TABLE `fasilitas` (
  `id` int(11) NOT NULL,
  `sekolah_id` int(11) DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `kondisi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fasilitas`
--

INSERT INTO `fasilitas` (`id`, `sekolah_id`, `nama`, `jumlah`, `kondisi`) VALUES
(1, 1, 'Bull', 5, 'SANGAT BAIK'),
(2, 1, 'Foobar', 5, 'BAIK'),
(3, 1, 'Egg', 6, 'BURUK'),
(4, 1, 'Jordan Meta', NULL, 'BAIK'),
(5, 4, 'sdsd', 40, 'NORMAL'),
(6, 4, 'Toilet', 3, 'BAIK');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id`, `nama`) VALUES
(5, 'Amanatun Selatan'),
(6, 'Amanatun Utara'),
(7, 'Amanuban Barat'),
(8, 'Amanuban Selatan'),
(9, 'Amanuban Tengah'),
(10, 'Amanuban Timur'),
(11, 'Batu Putih'),
(12, 'Boking'),
(13, 'Fatukopa'),
(14, 'Fatumnasi'),
(15, 'Fautmolo'),
(16, 'Kie'),
(17, 'Kokbaun'),
(18, 'Kolbano'),
(19, 'Kota Soe'),
(20, 'Kot`olin'),
(21, 'Kualin'),
(22, 'Kuan Fatu'),
(23, 'Kuatnana'),
(24, 'Mollo Barat'),
(25, 'Mollo Selatan'),
(26, 'Mollo Tengah'),
(27, 'Mollo Utara'),
(28, 'Noebana'),
(29, 'Noebeba');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `sekolah_id` int(11) DEFAULT NULL,
  `kategori` smallint(6) DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nuptk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `golongan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ruang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tempatLahir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tanggalLahir` date DEFAULT NULL,
  `jabatan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pendTerakhir` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `sekolah_id`, `kategori`, `nama`, `nip`, `nuptk`, `golongan`, `ruang`, `jk`, `tempatLahir`, `tanggalLahir`, `jabatan`, `status`, `pendTerakhir`) VALUES
(1, 1, 1, 'Jordan Meta', '223232', NULL, 'sldsd', NULL, 'LAKI - LAKI', 'Makasar', '2018-11-01', 'sdsd', 'ssdsd', 4),
(2, 1, 1, 'Foobar', 'sdsdsjljsd', NULL, 'jsldsdj', NULL, 'PEREMPUAN', 'sdsdk;', NULL, 'dsdsd', 'dssd', 3),
(3, 1, 1, 'dssd', 'sdsdsd', NULL, 'sdsds', NULL, 'LAKI - LAKI', 'sdsdsd', '1989-10-12', 'dsdsdsd', 'sdssd', 5),
(4, 7, 1, '', '565656', NULL, 'jdskjd', NULL, 'PEREMPUAN', 'sdksd', '1980-09-15', 'dsdsd', 'sdsd', 4),
(5, 4, 1, 'Andi', 'sdsd', NULL, 'IIA', NULL, 'PEREMPUAN', 'PEREMPUAN', '1980-10-16', 'Kepala', 'dssdsd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE `sekolah` (
  `id` int(11) NOT NULL,
  `nss` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `npsn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tahunBerdiri` int(11) DEFAULT NULL,
  `tahunBeroperasi` int(11) DEFAULT NULL,
  `statusAkreditasi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visi` longtext COLLATE utf8_unicode_ci,
  `misi` longtext COLLATE utf8_unicode_ci,
  `alamat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provinsi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kabupaten` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kecamatan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kelurahanDesa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kodePos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telepon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `statusTanah` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `luasTanah` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bangunanAsetPemerintah` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bangunanHibahPemerintah` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bangunanAsetYayasan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bangunanHibahPihakLain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `luasBangunan` int(11) DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paudLakiLaki` int(11) DEFAULT NULL,
  `paudPerempuan` int(11) DEFAULT NULL,
  `paud23` int(11) DEFAULT NULL,
  `paud34` int(11) DEFAULT NULL,
  `negriSwasta` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jumlahSiswa` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`id`, `nss`, `nama`, `npsn`, `tahunBerdiri`, `tahunBeroperasi`, `statusAkreditasi`, `imb`, `latitude`, `longitude`, `visi`, `misi`, `alamat`, `provinsi`, `kabupaten`, `kecamatan`, `kelurahanDesa`, `kodePos`, `telepon`, `email`, `statusTanah`, `luasTanah`, `bangunanAsetPemerintah`, `bangunanHibahPemerintah`, `bangunanAsetYayasan`, `bangunanHibahPihakLain`, `luasBangunan`, `kategori`, `username`, `password`, `imUrl`, `paudLakiLaki`, `paudPerempuan`, `paud23`, `paud34`, `negriSwasta`) VALUES
(1, 'sdsdsd', 'Foobar', 'sdsd', 1990, 1991, 'A', 'sdsd', '-9.859309', '124.265005', '                                                                                                                                                                sdsdsds asas\r\n                        \r\n                        \r\n                        \r\n                        \r\n                        \r\n                        ', '                                                                                                                                foobar is god\r\n                        \r\n                        \r\n                        \r\n                        ', 'Oesapa', 'NTT', 'Kupang', 'Kolbano', 'Oesapa', '23232', '0823282', 'foobar@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'admin', 'foobar21', '/fuploads/vladstudio_rider_1024x768_signed.jpg', NULL, NULL, NULL, NULL, 'SWASTA'),
(2, 'ssdsd', 'School 2', 'sdsdsdsd', 1999, 2000, 'B', '', '-9.869309', '124.265005', '                                \r\n                        ', '                                \r\n                        ', NULL, NULL, NULL, 'Kolbano', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'admin02', 'admin02', NULL, NULL, NULL, NULL, NULL, 'NEGRI'),
(3, 'sdskdhs', 'School 3', 'dsdksdksd', 2010, 2010, 'B', '', '', '', 'Do something good with those child', '                                \r\n                        ', NULL, NULL, NULL, 'Kolbano', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'admin03', 'admin03', '/fuploads/4176.jpg', NULL, NULL, NULL, NULL, 'SWASTA'),
(4, '001299.00.399', 'SMP 2 Kupang', '0012.39-939', 2010, 2010, 'C', 'ssjd sds sds', '12', '123', 'Some default panel content here. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nullam id dolor id nibh ultricies vehicula ut id elit.', 'Some default panel content here. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nullam id dolor id nibh ultricies vehicula ut id elit.', NULL, NULL, NULL, 'Kolbano', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'admin04', 'admin04', '/fuploads/49.jpg', NULL, NULL, NULL, NULL, 'SWASTA'),
(5, NULL, 'SMP 3 Kupang', NULL, NULL, NULL, 'BELUM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kolbano', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'admin05', 'admin05', NULL, NULL, NULL, NULL, NULL, 'NEGRI'),
(6, NULL, 'SD 1 Oesapa Selatan', NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kolbano', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'admin06', 'admin06', NULL, NULL, NULL, NULL, NULL, 'NEGRI'),
(7, NULL, 'TK St. Maria Assumpta', NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kolbano', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'admin07', 'admin07', NULL, 56, 67, 45, 70, 'NEGRI'),
(8, NULL, 'PAUD Oesapa', NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kolbano', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'admin08', 'admin08', NULL, 23, 20, 12, 23, 'NEGRI');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_prop`
--
ALTER TABLE `app_prop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bangunan`
--
ALTER TABLE `bangunan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B855AB4A48940F5` (`sekolah_id`);

--
-- Indexes for table `bantuan`
--
ALTER TABLE `bantuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4641CA8A48940F5` (`sekolah_id`);

--
-- Indexes for table `deskripsi_tahun`
--
ALTER TABLE `deskripsi_tahun`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C269B548A48940F5` (`sekolah_id`);

--
-- Indexes for table `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DBB440A8A48940F5` (`sekolah_id`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_98835748A48940F5` (`sekolah_id`);

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_prop`
--
ALTER TABLE `app_prop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bangunan`
--
ALTER TABLE `bangunan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bantuan`
--
ALTER TABLE `bantuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deskripsi_tahun`
--
ALTER TABLE `deskripsi_tahun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sekolah`
--
ALTER TABLE `sekolah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bangunan`
--
ALTER TABLE `bangunan`
  ADD CONSTRAINT `FK_B855AB4A48940F5` FOREIGN KEY (`sekolah_id`) REFERENCES `sekolah` (`id`);

--
-- Constraints for table `bantuan`
--
ALTER TABLE `bantuan`
  ADD CONSTRAINT `FK_4641CA8A48940F5` FOREIGN KEY (`sekolah_id`) REFERENCES `sekolah` (`id`);

--
-- Constraints for table `deskripsi_tahun`
--
ALTER TABLE `deskripsi_tahun`
  ADD CONSTRAINT `FK_C269B548A48940F5` FOREIGN KEY (`sekolah_id`) REFERENCES `sekolah` (`id`);

--
-- Constraints for table `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD CONSTRAINT `FK_DBB440A8A48940F5` FOREIGN KEY (`sekolah_id`) REFERENCES `sekolah` (`id`);

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `FK_98835748A48940F5` FOREIGN KEY (`sekolah_id`) REFERENCES `sekolah` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
