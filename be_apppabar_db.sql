-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2020 at 02:09 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be_apppabar_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `covid_data`
--

CREATE TABLE `covid_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jumlah` int(11) NOT NULL,
  `meningkat_menurun` int(11) NOT NULL,
  `tanggal_update` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `covid_data`
--

INSERT INTO `covid_data` (`id`, `status`, `total_jumlah`, `meningkat_menurun`, `tanggal_update`, `created_at`, `updated_at`) VALUES
(1, 'Positif', 236, 0, '29 Juni 2020', NULL, NULL),
(2, 'Negatif', 1838, 0, '29 Juni 2020', '2020-06-29 11:51:08', '2020-06-29 11:51:08'),
(3, 'Sembuh', 152, 0, '29 Juni 2020', '2020-06-29 11:55:58', '2020-06-29 11:55:58'),
(4, 'Meninggal', 18, 0, '29 Juni 2020', '2020-06-29 11:55:58', '2020-06-29 11:55:58'),
(5, 'PDP', 107, 0, '29 Juni 2020', '2020-06-29 11:55:58', '2020-06-29 11:55:58'),
(6, 'ODP', 1246, 0, '29 Juni 2020', '2020-06-29 11:55:58', '2020-06-29 11:55:58'),
(7, 'OTG', 2803, 0, '29 Juni 2020', '2020-06-29 11:55:58', '2020-06-29 11:55:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_06_27_031852_create_covid_data_table', 1),
(2, '2020_06_27_032010_create_rumah_sakit_table', 1),
(3, '2020_06_27_032048_create_tentang_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rumah_sakit`
--

CREATE TABLE `rumah_sakit` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_rs` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tlp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tentang`
--

CREATE TABLE `tentang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `biodata` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `covid_data`
--
ALTER TABLE `covid_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rumah_sakit`
--
ALTER TABLE `rumah_sakit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tentang`
--
ALTER TABLE `tentang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `covid_data`
--
ALTER TABLE `covid_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rumah_sakit`
--
ALTER TABLE `rumah_sakit`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tentang`
--
ALTER TABLE `tentang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
