-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 17, 2026 at 02:55 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_simulasi_pbo_ti1c_nafisrizqiramadhan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pendaftaran`
--

CREATE TABLE `tabel_pendaftaran` (
  `id_pendaftaran` int NOT NULL,
  `nama_calon` varchar(100) NOT NULL,
  `asal_sekolah` varchar(100) NOT NULL,
  `nilai_ujian` decimal(5,2) NOT NULL,
  `biaya_pendaftaran_dasar` decimal(10,2) NOT NULL,
  `jalur_pendaftaran` enum('Reguler','Prestasi','Kedinasan') NOT NULL,
  `pilihan_prodi` varchar(100) DEFAULT NULL,
  `lokasi_kampus` varchar(100) DEFAULT NULL,
  `jenis_prestasi` varchar(100) DEFAULT NULL,
  `tingkat_prestasi` varchar(50) DEFAULT NULL,
  `sk_ikatan_dinas` varchar(100) DEFAULT NULL,
  `instansi_sponsor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_pendaftaran`
--

INSERT INTO `tabel_pendaftaran` (`id_pendaftaran`, `nama_calon`, `asal_sekolah`, `nilai_ujian`, `biaya_pendaftaran_dasar`, `jalur_pendaftaran`, `pilihan_prodi`, `lokasi_kampus`, `jenis_prestasi`, `tingkat_prestasi`, `sk_ikatan_dinas`, `instansi_sponsor`) VALUES
(1, 'Budi Santoso', 'SMA 1 Jakarta', '85.50', '250000.00', 'Reguler', 'Teknik Informatika', 'Kampus Utama', NULL, NULL, NULL, NULL),
(2, 'Siti Aminah', 'SMA 2 Bandung', '78.00', '250000.00', 'Reguler', 'Sistem Informasi', 'Kampus Utama', NULL, NULL, NULL, NULL),
(3, 'Agus Pratama', 'SMA 3 Surabaya', '82.25', '250000.00', 'Reguler', 'Manajemen', 'Kampus B', NULL, NULL, NULL, NULL),
(4, 'Rina Wati', 'SMK 1 Malang', '80.00', '250000.00', 'Reguler', 'Akuntansi', 'Kampus B', NULL, NULL, NULL, NULL),
(5, 'Joko Widodo', 'SMA 5 Semarang', '75.50', '250000.00', 'Reguler', 'Ilmu Komunikasi', 'Kampus Utama', NULL, NULL, NULL, NULL),
(6, 'Dewi Lestari', 'SMA 1 Yogyakarta', '88.00', '250000.00', 'Reguler', 'Teknik Sipil', 'Kampus Utama', NULL, NULL, NULL, NULL),
(7, 'Andi Wijaya', 'SMA 2 Medan', '79.50', '250000.00', 'Reguler', 'Hukum', 'Kampus C', NULL, NULL, NULL, NULL),
(8, 'Kevin Sanjaya', 'SMA 1 Kudus', '89.00', '200000.00', 'Prestasi', 'Ilmu Keolahragaan', 'Kampus Utama', 'Bulu Tangkis', 'Nasional', NULL, NULL),
(9, 'Lalu Muhammad', 'SMA 1 Mataram', '86.50', '200000.00', 'Prestasi', 'Manajemen', 'Kampus Utama', 'Atletik Lari', 'Internasional', NULL, NULL),
(10, 'Nusa Bangsa', 'SMA Taruna Nusantara', '95.00', '200000.00', 'Prestasi', 'Teknik Dirgantara', 'Kampus Utama', 'Olimpiade Fisika', 'Internasional', NULL, NULL),
(11, 'Putri Ayu', 'SMA 3 Denpasar', '91.25', '200000.00', 'Prestasi', 'Sastra Inggris', 'Kampus B', 'Debat Bahasa Inggris', 'Provinsi', NULL, NULL),
(12, 'Ahmad Dahlan', 'MA Muhammadiyah', '90.00', '200000.00', 'Prestasi', 'Pendidikan Agama Islam', 'Kampus C', 'MTQ', 'Nasional', NULL, NULL),
(13, 'Gita Gutawa', 'SMA Al Azhar', '88.50', '200000.00', 'Prestasi', 'Seni Musik', 'Kampus B', 'Menyanyi Solo', 'Nasional', NULL, NULL),
(14, 'Dian Sastro', 'SMA 8 Jakarta', '93.00', '200000.00', 'Prestasi', 'Filsafat', 'Kampus Utama', 'Lomba Karya Tulis Ilmiah', 'Provinsi', NULL, NULL),
(15, 'Tito Karnavian', 'SMA 2 Palembang', '92.50', '0.00', 'Kedinasan', 'Ilmu Kepolisian', 'Kampus D', NULL, NULL, 'SK-POL-001', 'Polri'),
(16, 'Sri Mulyani', 'SMA 3 Semarang', '96.00', '0.00', 'Kedinasan', 'Keuangan Negara', 'Kampus D', NULL, NULL, 'SK-KEMENKEU-102', 'Kementerian Keuangan'),
(17, 'Budi Karya', 'SMA 1 Palembang', '87.50', '0.00', 'Kedinasan', 'Transportasi Darat', 'Kampus D', NULL, NULL, 'SK-HUB-204', 'Kementerian Perhubungan'),
(18, 'Retno Marsudi', 'SMA 3 Semarang', '94.00', '0.00', 'Kedinasan', 'Hubungan Internasional', 'Kampus D', NULL, NULL, 'SK-KEMENLU-301', 'Kementerian Luar Negeri'),
(19, 'Basuki Hadimuljono', 'SMA 4 Surakarta', '90.50', '0.00', 'Kedinasan', 'Teknik Pekerjaan Umum', 'Kampus D', NULL, NULL, 'SK-PUPR-099', 'Kementerian PUPR'),
(20, 'Yasonna Laoly', 'SMA 1 Sibolga', '89.50', '0.00', 'Kedinasan', 'Ilmu Pemasyarakatan', 'Kampus D', NULL, NULL, 'SK-KUMHAM-111', 'Kementerian Hukum dan HAM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  MODIFY `id_pendaftaran` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
