-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Jan 09, 2019 at 07:40 AM
-- Server version: 8.0.3-rc-log
-- PHP Version: 7.2.8

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
  `kondisi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jumlah` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bangunan`
--

INSERT INTO `bangunan` (`id`, `sekolah_id`, `kategori`, `tahun`, `nama`, `kondisi`, `jumlah`) VALUES
(1, 1, 2, 2013, 'Ruang A1', 'Baik', 0),
(2, 1, 1, 2010, 'ksjksjd', 'Buruk', 0),
(3, 4, 1, 2018, 'Fobar', 'SANGAT BURUK', 0),
(4, 4, 1, 2018, 'Gedung A', 'BAIK', 0),
(5, 4, 1, 2018, 'Gedung B', 'NORMAL', 0),
(6, 9, 2, 2011, 'Perpustakaan', 'SANGAT BURUK', 0);

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
  `tipeAlat` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kondisi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jumlah` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bantuan`
--

INSERT INTO `bantuan` (`id`, `sekolah_id`, `tahun`, `nama`, `tipeBantuan`, `tipeAlat`, `kondisi`, `jumlah`) VALUES
(1, 1, 2012, 'Meja Siswa', 1, NULL, 'SANGAT BAIK', 0),
(2, 4, 2018, 'B1', 1, NULL, 'SANGAT BAIK', 0),
(3, 4, 2018, 'B2', 1, NULL, 'BAIK', 0),
(4, 2, 2016, 'XXXX', 1, 'MEBELER', 'SANGAT BURUK', 0);

-- --------------------------------------------------------

--
-- Table structure for table `deskripsi_tahun`
--

CREATE TABLE `deskripsi_tahun` (
  `id` int(11) NOT NULL,
  `sekolah_id` int(11) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `js1` int(11) DEFAULT '0',
  `js2` int(11) DEFAULT '0',
  `js3` int(11) DEFAULT '0',
  `js4` int(11) DEFAULT '0',
  `js5` int(11) DEFAULT '0',
  `js6` int(11) DEFAULT '0',
  `rb1` int(11) DEFAULT '0',
  `rb2` int(11) DEFAULT '0',
  `rb3` int(11) DEFAULT '0',
  `rb4` int(11) DEFAULT '0',
  `rb5` int(11) DEFAULT '0',
  `rb6` int(11) DEFAULT '0',
  `lanjutSMPN` int(11) DEFAULT '0',
  `lanjutSMPS` int(11) DEFAULT '0',
  `lanjutMTS` int(11) DEFAULT '0',
  `lanjutPontren` int(11) DEFAULT '0',
  `jumlahSiswa` int(11) DEFAULT '0',
  `jumlahLulus` int(11) DEFAULT '0',
  `lanjutSMAN` int(11) NOT NULL DEFAULT '0',
  `lanjutSMAS` int(11) NOT NULL DEFAULT '0',
  `lanjutSMA` int(11) NOT NULL DEFAULT '0',
  `lanjutMAN` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `deskripsi_tahun`
--

INSERT INTO `deskripsi_tahun` (`id`, `sekolah_id`, `tahun`, `js1`, `js2`, `js3`, `js4`, `js5`, `js6`, `rb1`, `rb2`, `rb3`, `rb4`, `rb5`, `rb6`, `lanjutSMPN`, `lanjutSMPS`, `lanjutMTS`, `lanjutPontren`, `jumlahSiswa`, `jumlahLulus`, `lanjutSMAN`, `lanjutSMAS`, `lanjutSMA`, `lanjutMAN`) VALUES
(1, 1, 2013, 34, 34, 34, NULL, NULL, NULL, 32, 34, 34, 34, 55, 65, 9, 7, 8, 32, NULL, 220, 23, 45, 0, 33),
(2, 1, 1999, 23, 22, 20, 20, 20, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 203, 0, 0, 0, 0),
(3, 1, 2014, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, 22, 12, 10, NULL, 198, 0, 0, 0, 0),
(4, 1, 2015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, 22, 12, 77, NULL, 280, 99, 88, 0, 7),
(5, 4, 2013, 23, 32, 23, NULL, NULL, NULL, 34, 34, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 340, 0, 0, 0, 0),
(6, 4, 2016, NULL, NULL, NULL, NULL, NULL, NULL, 32, 34, 34, NULL, NULL, NULL, 45, 43, 20, 29, NULL, 239, 0, 0, 0, 0),
(7, 4, 2015, 32, 33, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(8, 4, 2015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, 23, 22, 0, 22),
(9, 9, 2012, 60, 55, 50, NULL, NULL, NULL, 2, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 0, 0, 0, 0),
(10, 9, 2013, 63, 64, 50, NULL, NULL, NULL, 2, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(11, 9, 2013, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 30, 10, 0, 10),
(12, 2, 2013, 20, 21, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, 42, 45, 44, 0, 34),
(13, 2, 2014, 170, 170, 170, NULL, NULL, NULL, 8, 8, 8, NULL, NULL, NULL, NULL, NULL, NULL, 33, NULL, 389, 34, 44, 0, 54),
(14, 2, 2015, 232, 200, 198, NULL, NULL, NULL, 6, 6, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(15, 11, 2018, 120, 120, 110, 100, 98, 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `edu_admin`
--

CREATE TABLE `edu_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `edu_admin`
--

INSERT INTO `edu_admin` (`id`, `username`, `password`) VALUES
(1, 'superadmin', 'superadmin');

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
(6, 4, 'Toilet', 3, 'BAIK'),
(7, 9, 'Lapangan Basket', 1, 'BAIK'),
(8, 9, 'Lapangan Futsal', 1, 'BURUK'),
(9, 2, 'ABCD', 23, 'BAIK'),
(10, 2, 'DODO', 33, 'BAIK');

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
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `subtitle` text COLLATE utf8_unicode_ci,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` text COLLATE utf8_unicode_ci,
  `gambar` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `subtitle`, `waktu`, `content`, `gambar`) VALUES
(1, 'sdsd', 'sdsd', '2018-12-08 12:14:21', '<p>asas</p><p>das</p><p>sdsd</p>', '/fuploads/Chart.jpeg'),
(2, 'sd sd sds', 'sdjsd', '2018-12-08 12:20:53', '<p>Note custom attributors are instances, rather than class definitions like Blots. Similar to Blots, instead of creating from scratch, you will probably want to use existing Attributor implementations, such as the base <a href=\"https://github.com/quilljs/parchment/#attributor\" target=\"_blank\">Attributor</a>, <a href=\"https://github.com/quilljs/parchment/#class-attributor\" target=\"_blank\">Class Attributor</a> or <a href=\"https://github.com/quilljs/parchment/#style-attributor\" target=\"_blank\">Style Attributor</a>.</p><p>The implementation for Attributors is surprisingly simple, and its <a href=\"https://github.com/quilljs/parchment/tree/master/src/attributor\" target=\"_blank\">source code</a> may be another source of understanding.</p>', '/fuploads/78a1642c35.jpg'),
(5, 'sdsd', 'sdsd', '2018-12-08 12:25:37', '<p>Its no longer the concern of quill to provide HTML and the they have removed the getHTML methods, it now uses something called <code>delta objects</code> which is a JSON object representation of the output.</p><p>I\'d argue that this library is fairly useless without this functionality as nothing else currently can parse the delta object and provide a html structure which is probably what most people want to use quill for. I understand why they wish to abstract away from providing HTML (and accepting HTML as its initial value) but I wish there was something in place before making this change in various languages to parse the delta objects and provide HTML so we can, for example, just store the delta object in our database and render it when necessary.</p><p>In the meantime you can use:</p><p><br></p>', '/fuploads/2edd19ec94.jpg'),
(6, 'FOOBAR', 'sdsd', '2018-12-08 12:26:22', '<p><strong>WHEREEVER</strong></p><p><br></p><p>Its no longer the concern of quill to provide HTML and the they have removed the getHTML methods, it now uses something called <code>delta objects</code> which is a JSON object representation of the output.</p><p>I\'d argue that this library is fairly useless without this functionality as nothing else currently can parse the delta object and provide a html structure which is probably what most people want to use quill for. I understand why they wish to abstract away from providing HTML (and accepting HTML as its initial value) but I wish there was something in place before making this change in various languages to parse the delta objects and provide HTML so we can, for example, just store the delta object in our database and render it when necessary.</p><p>In the meantime you can use:</p><p><br></p>', '/fuploads/2124e3ae4b.jpg'),
(7, 'White', 'Foo', '2018-12-08 12:32:24', '<p>A white nationalist was convicted of first-degree murder and all other counts Friday after a jury found he intentionally drove his car into a group of counter-protesters at the 2017 “Unite the Right” rally in Virginia, killing Heather Heyer.</p><p><br></p><p>James Fields Jr., who had been known for idolizing Adolf Hitler, was tried in Charlottesville Circuit Court. </p><p>In addition to the murder count, he was also convicted of five counts of aggravated malicious wounding, three counts of malicious wounding and one count of failing to stop at an accident involving a death.</p><p><br></p><p>He drove his Dodge Challenger toward the counterprotesters on Aug. 12, 2017, and fatally struck Heyer, who was 32.</p><p>Heyer, a paralegal and civil right activist, was one of dozens of people who were marching against the white nationalists.</p>', '/fuploads/739e7fa021.jpg'),
(8, 'sdsdsd', 'sdsd', '2018-12-18 13:11:02', '<p class=\"ql-align-center\"><strong>BAB III</strong></p><p class=\"ql-align-center\"><strong>METODOLOGI PENELITIAN</strong></p><p class=\"ql-align-center\"><br></p><p><strong>3.1 Lokasi Penelitian </strong></p><p>	Dalam penelitian ini penulis mengambil studi kasus pada SMA Negeri 4 Kupang yang berlokasi di Jalan Adisucipto, Oesapa, Penfui Timur, Kota Kupang, Provinsi Nusa Tenggara Timur. </p><p><strong>3.2 Sumber dan Jenis Data</strong></p><ol><li><strong>Sumber Data</strong></li></ol><p>	Dalam penelitian yang dilakukan, digunakan 2 (dua) sumber data yaitu sumber data primer dan sumber data sekunder. Untuk data primer, dilakukan wawancara kepada Wakil Kepala Sekolah (WAKASEK) bagian kesiswaan SMA Negeri 4 Kota Kupang guna mendapatkan informasi mengenai data kriteria yang digunakan dalam penentuan siswa/siswi berprestasi, jumlah siswa/siswi yang direkomendasikan untuk penentuan siswa/siswi berprestasi, dan alur atau prosedur yang digunakan oleh sekolah serta waktu pelaksanaannya. </p><p>	Untuk sumber data sekunder, dilakukan pengumpulkan data-data berupa <em>softcopy </em>data rapor siswa dan siswi kelas XI jurusan IPA I sampai VI angkatan 2017. Seluruh data sekunder yang diperoleh juga merupakan penunjang dan sumber data utama dalam proses perhitungan dan pembuatan sistem baru yang lebih efektif. </p><ol><li><strong>Jenis Data</strong></li></ol><p>	Jenis data pada penelitian ini terdiri dari data kualitatif dan kuantitatif. Yang termasuk data kualitatif dalam penelitian ini yaitu gambaran umum obyek penelitian yakni meliputi: sikap sosial dan sikap spiritual masing-masing siswa/siswi dan kegiatan ekstrakurikuler yang diikuti. </p><p>	Sedangkan data kuantitatif yang diperlukan dalam penelitian ini adalah: data nilai pengetahuan dan nilai keterampilan mata pelajaran jurusan, serta nilai seluruh mata pelajaran yang didapat oleh siswa/siswi. </p><p>	</p><p>	</p><p><strong>3.3 Metode Pengumpulan Data</strong></p><p>	Untuk memperoleh data yang dikehendaki sesuai dengan permasalahan dalam penelitian ini, maka digunakan dua metode untuk mempermudah dalam membangun sistem penentuan siswa/siswi berprestasi. Metode pertama yang digunakan adalah studi dokumen, dimana data yang dikumpulkan adalah data siswa/siswi yang direkap oleh guru/wali kelas berupa data rapor yang berisi biodata lengkap siswa/siswi, data perolehan nilai, data absensi, dan peringkat/rangking yang di dapat siswa/siswi di kelas. </p><p>	Selain data rapor, juga digunakan jurnal-jurnal terkait. Jurnal-jurnal yang dipakai beberapa diantaranya adalah tentang sistem pendukung keputusan untuk menentukan prestasi akademik siswa dengan metode TOPSIS dan sistem pendukung keputusan penilaian siswa berprestasi kurikulum 2013 berbasis <em>web</em> dan masih banyak jurnal terkait lainnya. Jurnal-jurnal tersebut dipakai untuk mengetahui kriteria-kriteria apa saja yang dibutuhkan dalam proses pengumpulan data. </p>', '/fuploads/b9f907a141.jpg'),
(9, 'Baru 2', 'Baru 2 Deskripsi', '2018-12-18 14:49:55', '<p>The Naive Bayes algorithm is an intuitive method that uses the probabilities of each attribute belonging to each class to make a prediction. It is the supervised learning approach you would come up with if you wanted to model a predictive modeling problem probabilistically.</p><p>Naive bayes simplifies the calculation of probabilities by assuming that the probability of each attribute belonging to a given class value is independent of all other attributes. This is a strong assumption but results in a fast and effective method.</p><p>The probability of a class value given a value of an attribute is called the conditional probability. By multiplying the conditional probabilities together for each attribute for a given class value, we have a probability of a data instance belonging to that class.</p>', '/fuploads/fcd3eb5e50.png'),
(10, 'sdsd', 'fdfdf', '2018-12-18 15:01:19', '<p>sdsd</p>', '/fuploads/ea8fc11b3e.jpg');

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
(5, 4, 1, 'Andi', 'sdsd', NULL, 'IIA', NULL, 'PEREMPUAN', 'PEREMPUAN', '1980-10-16', 'Kepala', 'dssdsd', 1),
(6, 9, 1, 'Vian Melvin', '198802262014041001', NULL, 'III/b', NULL, NULL, 'Kupang', '1988-02-26', 'Guru Mata pelajaran', 'Aktif', 4),
(7, 2, 1, 'ABCDE', '121212686', '22367676', 'II A', NULL, NULL, 'sdsd', '1991-11-17', 'sdsdsd', 'sdsd', 5);

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
  `negriSwasta` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'NEGRI',
  `jumlahSiswa` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`id`, `nss`, `nama`, `npsn`, `tahunBerdiri`, `tahunBeroperasi`, `statusAkreditasi`, `imb`, `latitude`, `longitude`, `visi`, `misi`, `alamat`, `provinsi`, `kabupaten`, `kecamatan`, `kelurahanDesa`, `kodePos`, `telepon`, `email`, `statusTanah`, `luasTanah`, `bangunanAsetPemerintah`, `bangunanHibahPemerintah`, `bangunanAsetYayasan`, `bangunanHibahPihakLain`, `luasBangunan`, `kategori`, `username`, `password`, `imUrl`, `paudLakiLaki`, `paudPerempuan`, `paud23`, `paud34`, `negriSwasta`, `jumlahSiswa`) VALUES
(1, 'sdsdsd', 'Foobar', 'sdsd', 1990, 1991, 'A', 'sdsd', '-12.929890', '124.265005', '                                                                                                                                                                                                                                sdsdsds asas\r\n                        \r\n                        \r\n                        \r\n                        \r\n                        \r\n                        \r\n                        \r\n                        ', '                                                                                                                                                                                                foobar is god\r\n                        \r\n                        \r\n                        \r\n                        \r\n                        \r\n                        ', 'Jln Suratim, Oesapa', 'NTT', 'Kupang', 'Kolbano', 'Oesapa', '23232', '0823282', 'foobar@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'admin', 'admin', '/fuploads/vladstudio_rider_1024x768_signed.jpg', 34, 32, 12, 18, 'SWASTA', 66),
(2, 'ssdsd', 'School 2', 'sdsdsdsd', 1999, 2000, 'B', '', '-9.869309', '124.265005', '                                \r\n                        ', '                                \r\n                        ', 'Alamat 1', 'NTT', 'Bojonegoro', 'Kolbano', 'Foobar', '121312', '2322323', 'foobar@sssdsd.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'admin02', 'admin02', NULL, 50, 50, 23, 43, 'NEGRI', 409),
(9, '123456', 'SMP N. 1 Soe', '1234567890', 1988, 1989, 'B', 'belum ada IMB', '-9.857007', '124.284412', '                                visi sekolah \r\nvisi sekolah visi sekolah  visi sekolah visi sekolah visi sekolah  visi sekolah visi sekolah  visi sekolah visi sekolah visi sekolah  visi sekolah visi sekolah visi sekolah                     \r\n                        \r\n                        ', '                                misi sekolah\r\n1. misi sekolahmisi sekolahmisi sekolah misi sekolah misi sekolah misi sekolah misi sekolah misi sekolah misi sekolahmisi sekolahmisi sekolah misi sekolah misi sekolah misi sekolah misi sekolah\r\n2. misi sekolahmisi sekolahmisi sekolahmisi sekolah misi sekolah misi sekolah misi sekolah misi sekolah misi sekolah misi sekolahmisi sekolahmisi sekolah misi sekolah misi sekolah misi sekolah misi sekolah\r\n3. misi sekolahmisi sekolahmisi sekolah misi sekolah misi sekolah misi sekolah misi sekolah misi sekolah misi sekolahmisi sekolahmisi sekolah misi sekolah misi sekolah misi sekolah misi sekolah\r\n4. misi sekolahmisi sekolahmisi sekolah misi sekolah misi sekolah misi sekolah misi sekolah misi sekolah misi sekolahmisi sekolahmisi sekolah misi sekolah misi sekolah misi sekolah misi sekolah \r\n                        \r\n                        ', 'Jln. Pasar Inpres Soe', 'NTT', 'Timot Tengah Selatan', 'Kolbano', 'Kota Baru', '85511', '085239156189', 'smpn1soe@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'smpn1soe', 'smpn1soe', '/fuploads/5.jpg', NULL, NULL, NULL, NULL, 'NEGRI', 0),
(10, NULL, 'admin4', NULL, NULL, NULL, 'B', NULL, '-9.864402', '124.286990', NULL, NULL, NULL, NULL, NULL, 'Kolbano', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'admin4', 'admin4', NULL, 54, 26, 20, 60, NULL, 0),
(11, 'sdsd', 'admin5', 'sdsd', 2010, 2011, 'A', 'sdsd', '-9.862975', '124.286486', 'sdsd                                \r\n                        ', 'sdsd                                \r\n                        ', 'sdsdsd', 'NTT', 'ssd', 'Kolbano', 'sdsd', 'dfdf', 'ssd@ssf.cs', 'ssd@ssf.cs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'admin5', 'admin5', NULL, NULL, NULL, NULL, NULL, NULL, 671);

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
-- Indexes for table `edu_admin`
--
ALTER TABLE `edu_admin`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `news`
--
ALTER TABLE `news`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bantuan`
--
ALTER TABLE `bantuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `deskripsi_tahun`
--
ALTER TABLE `deskripsi_tahun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `edu_admin`
--
ALTER TABLE `edu_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sekolah`
--
ALTER TABLE `sekolah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
