-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jan 2022 pada 07.15
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sigppm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jumlah_penduduk`
--

CREATE TABLE `jumlah_penduduk` (
  `id` int(11) NOT NULL,
  `tahun` text NOT NULL,
  `idKecamatan` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jumlah_penduduk`
--

INSERT INTO `jumlah_penduduk` (`id`, `tahun`, `idKecamatan`, `jumlah`) VALUES
(42, '2019', 44, 3659),
(43, '2019', 43, 15573),
(44, '2019', 47, 11991),
(45, '2019', 45, 33664),
(46, '2019', 42, 25460),
(47, '2019', 46, 22368),
(48, '2018', 42, 25101),
(49, '2018', 44, 3597),
(51, '2018', 46, 21974),
(52, '2018', 43, 15343),
(53, '2018', 47, 11718),
(54, '2018', 45, 33166),
(55, '2020', 42, 29651),
(56, '2020', 43, 16359),
(57, '2020', 44, 3765),
(58, '2020', 45, 38594),
(59, '2020', 46, 25465),
(60, '2020', 47, 12737),
(71, '2021', 42, 27213),
(72, '2016', 42, 24213),
(73, '2016', 43, 14809),
(74, '2016', 44, 3273),
(75, '2016', 45, 32444),
(76, '2016', 46, 21291),
(77, '2016', 47, 11238),
(78, '2017', 43, 15130),
(79, '2017', 42, 24743),
(80, '2017', 45, 32565),
(81, '2017', 46, 21601),
(82, '2017', 47, 11551),
(83, '2017', 44, 3511),
(84, '2014', 42, 4000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasus_dbd`
--

CREATE TABLE `kasus_dbd` (
  `id` int(11) NOT NULL,
  `idPenduduk` int(11) NOT NULL,
  `idPenyakit` int(11) NOT NULL,
  `bulan` text NOT NULL,
  `dbd1L` int(11) NOT NULL,
  `dbd1P` int(11) NOT NULL,
  `dbd14L` int(11) NOT NULL,
  `dbd14P` int(11) NOT NULL,
  `dbd59L` int(11) NOT NULL,
  `dbd59P` int(11) NOT NULL,
  `dbd1014L` int(11) NOT NULL,
  `dbd1014P` int(11) NOT NULL,
  `dbd1519L` int(11) NOT NULL,
  `dbd1519P` int(11) NOT NULL,
  `dbd2044L` int(11) NOT NULL,
  `dbd2044P` int(11) NOT NULL,
  `dbd45L` int(11) NOT NULL,
  `dbd45P` int(11) NOT NULL,
  `dbd_meninggal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kasus_dbd`
--

INSERT INTO `kasus_dbd` (`id`, `idPenduduk`, `idPenyakit`, `bulan`, `dbd1L`, `dbd1P`, `dbd14L`, `dbd14P`, `dbd59L`, `dbd59P`, `dbd1014L`, `dbd1014P`, `dbd1519L`, `dbd1519P`, `dbd2044L`, `dbd2044P`, `dbd45L`, `dbd45P`, `dbd_meninggal`) VALUES
(3, 49, 1, 'Januari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 49, 1, 'Februari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 49, 1, 'Maret', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 49, 1, 'April', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 49, 1, 'Mei', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 49, 1, 'Juni', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 49, 1, 'Juli', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 49, 1, 'Agustus', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 49, 1, 'September', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 49, 1, 'Oktober', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 49, 1, 'November', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 49, 1, 'Desember', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 48, 1, 'Januari', 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 48, 1, 'Februari', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 48, 1, 'Maret', 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(18, 48, 1, 'April', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 48, 1, 'Mei', 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 48, 1, 'Juni', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 48, 1, 'Juli', 0, 0, 0, 0, 4, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 48, 1, 'Agustus', 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 48, 1, 'September', 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 48, 1, 'Oktober', 0, 0, 0, 0, 0, 0, 4, 4, 0, 0, 0, 0, 0, 0, 0),
(25, 48, 1, 'November', 0, 0, 0, 0, 0, 0, 0, 1, 3, 6, 4, 0, 0, 2, 0),
(26, 48, 1, 'Desember', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0),
(27, 51, 1, 'Januari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 51, 1, 'Februari', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 51, 1, 'Maret', 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 51, 1, 'April', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 51, 1, 'Mei', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 51, 1, 'Juni', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 51, 1, 'Juli', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, 51, 1, 'Agustus', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 51, 1, 'September', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 51, 1, 'Oktober', 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, 51, 1, 'November', 0, 0, 0, 0, 0, 0, 3, 3, 0, 3, 2, 0, 0, 0, 0),
(38, 51, 1, 'Desember', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 1, 0),
(39, 52, 1, 'Januari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40, 52, 1, 'Februari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(41, 52, 1, 'Maret', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(42, 52, 1, 'April', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(43, 52, 1, 'Mei', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(44, 52, 1, 'Juni', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45, 52, 1, 'Juli', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(46, 52, 1, 'Agustus', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(47, 52, 1, 'September', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(48, 52, 1, 'Oktober', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(49, 52, 1, 'November', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50, 52, 1, 'Desember', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(51, 53, 1, 'Januari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52, 53, 1, 'Februari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53, 53, 1, 'Maret', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(54, 53, 1, 'April', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(55, 53, 1, 'Mei', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56, 53, 1, 'Juni', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(57, 53, 1, 'Juli', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(58, 53, 1, 'Agustus', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(59, 53, 1, 'September', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60, 53, 1, 'Oktober', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(61, 53, 1, 'November', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(62, 53, 1, 'Desember', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(63, 54, 1, 'Januari', 0, 0, 3, 5, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(64, 54, 1, 'Februari', 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0),
(65, 54, 1, 'Maret', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(66, 54, 1, 'April', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(67, 54, 1, 'Mei', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(68, 54, 1, 'Juni', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(69, 54, 1, 'Juli', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(70, 54, 1, 'Agustus', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(71, 54, 1, 'September', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(72, 54, 1, 'Oktober', 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0),
(73, 54, 1, 'November', 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0),
(74, 54, 1, 'Desember', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0),
(83, 42, 1, 'Januari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98, 71, 1, 'Januari', 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1),
(99, 83, 1, 'Januari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(100, 78, 1, 'Januari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(101, 82, 1, 'Januari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(102, 80, 1, 'Januari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(103, 79, 1, 'Januari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(104, 81, 1, 'Januari', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(105, 83, 1, 'Februari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(106, 78, 1, 'Februari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(107, 82, 1, 'Februari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(108, 80, 1, 'Februari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(109, 79, 1, 'Februari', 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(110, 81, 1, 'Februari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(111, 83, 1, 'Maret', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(112, 78, 1, 'Maret', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(113, 82, 1, 'Maret', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(114, 80, 1, 'Maret', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(115, 79, 1, 'Maret', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(116, 81, 1, 'Maret', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(117, 83, 1, 'April', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(118, 78, 1, 'April', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(119, 82, 1, 'April', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(120, 80, 1, 'April', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(121, 79, 1, 'April', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(122, 81, 1, 'April', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(123, 83, 1, 'Mei', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(124, 78, 1, 'Mei', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(125, 82, 1, 'Mei', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(126, 80, 1, 'Mei', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(127, 79, 1, 'Mei', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(128, 81, 1, 'Mei', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(129, 83, 1, 'Juni', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(130, 78, 1, 'Juni', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(131, 82, 1, 'Juni', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(132, 80, 1, 'Juni', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(133, 79, 1, 'Juni', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(134, 81, 1, 'Juni', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(135, 83, 1, 'Juli', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(136, 78, 1, 'Juli', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(137, 82, 1, 'Juli', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(138, 80, 1, 'Juli', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(139, 79, 1, 'Juli', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(140, 81, 1, 'Juli', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(141, 83, 1, 'Agustus', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(142, 78, 1, 'Agustus', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(143, 82, 1, 'Agustus', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(144, 80, 1, 'Agustus', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(145, 79, 1, 'Agustus', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(146, 81, 1, 'Agustus', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(147, 83, 1, 'September', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(148, 78, 1, 'September', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(149, 82, 1, 'September', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(150, 80, 1, 'September', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(151, 79, 1, 'September', 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(152, 81, 1, 'September', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(153, 83, 1, 'Oktober', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(154, 78, 1, 'Oktober', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(155, 82, 1, 'Oktober', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(156, 80, 1, 'Oktober', 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0),
(157, 79, 1, 'Oktober', 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0),
(158, 81, 1, 'Oktober', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(159, 83, 1, 'November', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(160, 78, 1, 'November', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(161, 82, 1, 'November', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(162, 80, 1, 'November', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(163, 79, 1, 'November', 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0),
(164, 81, 1, 'November', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(165, 83, 1, 'Desember', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(166, 78, 1, 'Desember', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(167, 82, 1, 'Desember', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(168, 80, 1, 'Desember', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(169, 79, 1, 'Desember', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(170, 81, 1, 'Desember', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(171, 42, 1, 'Februari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(172, 42, 1, 'Maret', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(173, 42, 1, 'April', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(174, 42, 1, 'Mei', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(175, 42, 1, 'Juni', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(176, 42, 1, 'Juli', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(177, 42, 1, 'Agustus', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(178, 42, 1, 'September', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(179, 42, 1, 'Oktober', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(180, 42, 1, 'November', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(181, 42, 1, 'Desember', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(182, 43, 1, 'Januari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(183, 43, 1, 'Februari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(184, 43, 1, 'Maret', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(185, 43, 1, 'April', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(186, 43, 1, 'Mei', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(187, 43, 1, 'Juni', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(188, 43, 1, 'Juli', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(189, 43, 1, 'Agustus', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(190, 43, 1, 'September', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(191, 43, 1, 'Oktober', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(192, 43, 1, 'November', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(193, 43, 1, 'Desember', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(194, 44, 1, 'Januari', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(195, 44, 1, 'Februari', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(196, 44, 1, 'Maret', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(197, 44, 1, 'April', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(198, 44, 1, 'Mei', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(199, 44, 1, 'Juni', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(200, 44, 1, 'Juli', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(201, 44, 1, 'Agustus', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(202, 44, 1, 'September', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(203, 44, 1, 'Oktober', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(204, 44, 1, 'November', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(205, 44, 1, 'Desember', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(206, 45, 1, 'Januari', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(207, 45, 1, 'Februari', 0, 0, 0, 0, 3, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0),
(208, 45, 1, 'Maret', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(209, 58, 1, 'April', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(220, 45, 1, 'April', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(221, 45, 1, 'Mei', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(222, 45, 1, 'Juni', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(223, 45, 1, 'Juli', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(224, 58, 1, 'Agustus', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(225, 45, 1, 'Agustus', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(226, 45, 1, 'September', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(227, 45, 1, 'Oktober', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(228, 45, 1, 'November', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(229, 45, 1, 'Desember', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(230, 46, 1, 'Januari', 0, 0, 1, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(231, 46, 1, 'Februari', 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(232, 46, 1, 'Maret', 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(233, 46, 1, 'April', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(234, 46, 1, 'Mei', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(235, 46, 1, 'Juni', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(236, 46, 1, 'Juli', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(237, 46, 1, 'Agustus', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(238, 46, 1, 'September', 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(239, 46, 1, 'Oktober', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(240, 46, 1, 'November', 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0),
(241, 46, 1, 'Desember', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0),
(242, 47, 1, 'Januari', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(243, 59, 1, 'Februari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(244, 47, 1, 'Maret', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(245, 47, 1, 'April', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(246, 47, 1, 'Mei', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(247, 47, 1, 'Juni', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(248, 47, 1, 'Juli', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(249, 47, 1, 'Agustus', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(250, 47, 1, 'September', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(251, 47, 1, 'Oktober', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(252, 47, 1, 'November', 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(253, 47, 1, 'Desember', 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0),
(254, 47, 1, 'Februari', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(255, 57, 1, 'Januari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(256, 57, 1, 'Februari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(257, 57, 1, 'Maret', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(258, 57, 1, 'April', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(259, 57, 1, 'Mei', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(260, 57, 1, 'Juni', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(261, 57, 1, 'Juli', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(262, 57, 1, 'Agustus', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(263, 57, 1, 'September', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(264, 57, 1, 'Oktober', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(265, 57, 1, 'November', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(266, 57, 1, 'Desember', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(267, 56, 1, 'Januari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(268, 56, 1, 'Februari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(269, 56, 1, 'Maret', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(270, 56, 1, 'April', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(271, 56, 1, 'Mei', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(272, 56, 1, 'Juni', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(273, 56, 1, 'Juli', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(274, 56, 1, 'Agustus', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(275, 56, 1, 'September', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(276, 56, 1, 'Oktober', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(277, 56, 1, 'November', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(278, 56, 1, 'Desember', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(279, 60, 1, 'Januari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(280, 60, 1, 'Februari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(281, 60, 1, 'Maret', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(282, 60, 1, 'April', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(283, 60, 1, 'Mei', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(284, 60, 1, 'Juni', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(285, 60, 1, 'Juli', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(286, 60, 1, 'Agustus', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(287, 60, 1, 'September', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(288, 60, 1, 'Oktober', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(289, 60, 1, 'November', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(290, 60, 1, 'Desember', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(291, 58, 1, 'Januari', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(292, 58, 1, 'Februari', 0, 0, 0, 0, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(293, 58, 1, 'Maret', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(294, 58, 1, 'Mei', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(295, 58, 1, 'Juni', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(296, 58, 1, 'Juli', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(297, 58, 1, 'September', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(298, 58, 1, 'Oktober', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(299, 58, 1, 'November', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(300, 58, 1, 'Desember', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(301, 55, 1, 'Januari', 1, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(302, 55, 1, 'Februari', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(303, 55, 1, 'Maret', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(304, 55, 1, 'April', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(305, 55, 1, 'Mei', 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(306, 55, 1, 'Juni', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(307, 55, 1, 'Juli', 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0),
(308, 55, 1, 'Agustus', 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0),
(309, 55, 1, 'September', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(310, 55, 1, 'Oktober', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(311, 55, 1, 'November', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(312, 55, 1, 'Desember', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(313, 59, 1, 'Januari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(314, 59, 1, 'Maret', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(315, 59, 1, 'April', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(317, 59, 1, 'Juni', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(318, 59, 1, 'Mei', 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(319, 59, 1, 'Juli', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(320, 59, 1, 'Agustus', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(321, 59, 1, 'September', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(322, 59, 1, 'Oktober', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(323, 59, 1, 'November', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(324, 59, 1, 'Desember', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasus_kusta`
--

CREATE TABLE `kasus_kusta` (
  `id` int(11) NOT NULL,
  `idPenduduk` int(11) NOT NULL,
  `idPenyakit` int(11) NOT NULL,
  `kus15LMB` int(11) NOT NULL,
  `kus15PMB` int(11) NOT NULL,
  `kus15LPB` int(11) NOT NULL,
  `kus15PPB` int(11) NOT NULL,
  `kus1625LMB` int(11) NOT NULL,
  `kus1625PMB` int(11) NOT NULL,
  `kus1625LPB` int(11) NOT NULL,
  `kus1625PPB` int(11) NOT NULL,
  `kus2635LMB` int(11) NOT NULL,
  `kus2635PMB` int(11) NOT NULL,
  `kus2635LPB` int(11) NOT NULL,
  `kus2635PPB` int(11) NOT NULL,
  `kus3645LMB` int(11) NOT NULL,
  `kus3645PMB` int(11) NOT NULL,
  `kus3645LPB` int(11) NOT NULL,
  `kus3645PPB` int(11) NOT NULL,
  `kus4655LMB` int(11) NOT NULL,
  `kus4655PMB` int(11) NOT NULL,
  `kus4655LPB` int(11) NOT NULL,
  `kus4655PPB` int(11) NOT NULL,
  `kus56LMB` int(11) NOT NULL,
  `kus56PMB` int(11) NOT NULL,
  `kus56LPB` int(11) NOT NULL,
  `kus56PPB` int(11) NOT NULL,
  `kusta_baruPB` int(11) NOT NULL,
  `kusta_baruMB` int(11) NOT NULL,
  `sembuhPB` int(11) NOT NULL,
  `sembuhMB` int(11) NOT NULL,
  `cacatPB` int(11) NOT NULL,
  `cacatMB` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kasus_kusta`
--

INSERT INTO `kasus_kusta` (`id`, `idPenduduk`, `idPenyakit`, `kus15LMB`, `kus15PMB`, `kus15LPB`, `kus15PPB`, `kus1625LMB`, `kus1625PMB`, `kus1625LPB`, `kus1625PPB`, `kus2635LMB`, `kus2635PMB`, `kus2635LPB`, `kus2635PPB`, `kus3645LMB`, `kus3645PMB`, `kus3645LPB`, `kus3645PPB`, `kus4655LMB`, `kus4655PMB`, `kus4655LPB`, `kus4655PPB`, `kus56LMB`, `kus56PMB`, `kus56LPB`, `kus56PPB`, `kusta_baruPB`, `kusta_baruMB`, `sembuhPB`, `sembuhMB`, `cacatPB`, `cacatMB`) VALUES
(10, 53, 3, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 2, 9, 0, 8, 0, 0),
(11, 49, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(12, 52, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(13, 54, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0),
(14, 48, 3, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 3, 0, 0),
(15, 51, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 5, 0, 5, 0, 0),
(24, 42, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 43, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 4, 0, 0),
(26, 44, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 45, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 7, 0, 6, 0, 0),
(28, 46, 3, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 4, 0, 6, 0, 0),
(29, 47, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 4, 0, 0, 0, 1, 0, 0, 0, 0, 5, 0, 7, 0, 0),
(30, 55, 3, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 3, 0, 0),
(31, 56, 3, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0),
(32, 57, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 58, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, 59, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 4, 0, 0),
(35, 60, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, 71, 3, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 2, 3, 0, 0, 0),
(38, 74, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 73, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0),
(40, 77, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2, 0, 0),
(41, 75, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2, 0, 0),
(42, 72, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(43, 76, 3, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 3, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 7, 0, 7, 0, 0),
(44, 83, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 2, 0, 0),
(45, 78, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(46, 82, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0),
(47, 80, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(48, 79, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(49, 81, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 5, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasus_malaria`
--

CREATE TABLE `kasus_malaria` (
  `id` int(11) NOT NULL,
  `idPenduduk` int(11) NOT NULL,
  `idPenyakit` int(11) NOT NULL,
  `malaria_klinis` int(11) NOT NULL,
  `mal011L` int(11) NOT NULL,
  `mal011P` int(11) NOT NULL,
  `mal14L` int(11) NOT NULL,
  `mal14P` int(11) NOT NULL,
  `mal59L` int(11) NOT NULL,
  `mal59P` int(11) NOT NULL,
  `mal1014L` int(11) NOT NULL,
  `mal1014P` int(11) NOT NULL,
  `mal1564L` int(11) NOT NULL,
  `mal1564P` int(11) NOT NULL,
  `mal65L` int(11) NOT NULL,
  `mal65P` int(11) NOT NULL,
  `mik` int(11) NOT NULL,
  `rdt` int(11) NOT NULL,
  `pf` int(11) NOT NULL,
  `pv` int(11) NOT NULL,
  `pm` int(11) NOT NULL,
  `po` int(11) NOT NULL,
  `mix` int(11) NOT NULL,
  `malaria_meninggal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kasus_malaria`
--

INSERT INTO `kasus_malaria` (`id`, `idPenduduk`, `idPenyakit`, `malaria_klinis`, `mal011L`, `mal011P`, `mal14L`, `mal14P`, `mal59L`, `mal59P`, `mal1014L`, `mal1014P`, `mal1564L`, `mal1564P`, `mal65L`, `mal65P`, `mik`, `rdt`, `pf`, `pv`, `pm`, `po`, `mix`, `malaria_meninggal`) VALUES
(6, 52, 2, 124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 51, 2, 277, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 49, 2, 2146, 0, 0, 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 5, 0, 1, 2, 0, 0, 2, 0),
(14, 53, 2, 65, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0),
(15, 54, 2, 228, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0),
(16, 48, 2, 264, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0),
(21, 42, 2, 1457, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 3, 0, 2, 0, 0, 0, 1, 0),
(22, 43, 2, 396, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 44, 2, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 45, 2, 194, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 46, 2, 354, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 100, 0, 0, 100, 0, 0, 0, 0),
(26, 47, 2, 118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 55, 2, 298, 78, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 78, 1, 78, 0, 0, 0, 0),
(32, 56, 2, 110, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0),
(33, 57, 2, 1435, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0),
(34, 58, 2, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 59, 2, 98, 0, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 11, 0, 0, 0, 0, 0),
(36, 60, 2, 116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50, 71, 2, 12, 1, 0, 0, 0, 0, 1, 0, 1, 2, 0, 0, 0, 1, 4, 3, 1, 0, 0, 1, 2),
(51, 74, 2, 1768, 0, 0, 1, 0, 3, 0, 1, 0, 2, 0, 0, 0, 7, 0, 5, 0, 0, 0, 2, 0),
(52, 73, 2, 462, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0),
(53, 77, 2, 97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(54, 75, 2, 398, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(55, 72, 2, 259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56, 76, 2, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(57, 83, 2, 845, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(58, 78, 2, 211, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 3, 0, 0, 3, 0, 0, 0, 0),
(59, 82, 2, 362, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(60, 80, 2, 335, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0),
(61, 79, 2, 263, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(62, 81, 2, 197, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0),
(63, 84, 2, 5000, 2, 0, 0, 0, 0, 0, 0, 0, 3, 2, 0, 0, 2, 5, 7, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `keterangan` text NOT NULL,
  `geojson` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kecamatan`
--

INSERT INTO `kecamatan` (`id`, `nama`, `keterangan`, `geojson`) VALUES
(42, 'Sukadana', 'Sukadana adalah sebuah kecamatan yang juga merupakan ibu kota Kabupaten Kayong Utara, Provinsi Kalimantan Barat, Indonesia', 'sukadana.geojson'),
(43, 'Pulau Maya', 'Pulau Maya adalah sebuah kecamatan di Kabupaten Kayong Utara, Kalimantan Barat, Indonesia. Pusat pemerintahannya berada di Desa Tanjung Satai. Pada tahun 2011, kecamatan ini dimekarkan menjadi Kecamatan Kepulauan Karimata.', 'pulau_maya.geojson'),
(44, 'Kepulauan Karimata', 'Kepulauan Karimata terdiri dari beberapa pulau kecil yang terletak di pesisir barat Kalimantan, Indonesia. Pulau yang paling besar adalah Pulau Karimata.', 'kepulauan_karimata.geojson'),
(45, 'Simpang Hilir', 'Simpang Hilir adalah sebuah kecamatan di Kabupaten Kayong Utara, Kalimantan Barat, Indonesia. Simpang Hilir adalah merupakan salah satu kecamatan yang terletak di Kabupaten Kayong Utara, ibu kota kecamatan terletak di Kota Telok Melano.', 'simpang_hilir.geojson'),
(46, 'Teluk Batang', 'Teluk Batang adalah sebuah kecamatan di Kabupaten Kayong Utara, Kalimantan Barat, Indonesia.', 'teluk_batang.geojson'),
(47, 'Seponti', 'Seponti adalah sebuah kecamatan di Kabupaten Kayong Utara, Provinsi Kalimantan Barat, Indonesia. Kecamatan ini berjarak sekitar 77 Km ke arah utara dari ibukota Kabupaten Kayong Utara. Pusat pemerintahannya berada di Desa Seponti Jaya. Sebahagian besar mata pencaharian penduduknya adalah petani. Kecamatan Seponti merupakan daerah transmigrasi yang umumnya berpenduduk Suku jawa.', 'seponti.geojson');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `id` int(11) NOT NULL,
  `penyakit` varchar(128) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`id`, `penyakit`, `keterangan`) VALUES
(1, 'DBD', 'Demam berdarah dengue (disingkat DBD) adalah infeksi yang disebabkan oleh virus dengue. Beberapa jenis nyamuk menularkan (atau menyebarkan) virus dengue.'),
(2, 'Malaria', 'Malaria adalah penyakit yang ditularkan oleh nyamuk dari manusia dan hewan lain yang disebabkan oleh protozoa parasit (sekelompok mikroorganisme bersel tunggal) dalam tipe Plasmodium.'),
(3, 'Kusta', 'Penyakit Hansen atau Morbus Hansen yang dahulu dikenal sebagai penyakit kusta atau lepra adalah sebuah penyakit infeksi kronis yang sebelumnya, diketahui hanya disebabkan oleh bakteri Mycobacterium leprae, hingga ditemukan bakteri Mycobacterium');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(128) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `gambar` varchar(128) NOT NULL,
  `alamat` varchar(256) NOT NULL,
  `levelUser` varchar(128) NOT NULL,
  `status` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `gambar`, `alamat`, `levelUser`, `status`) VALUES
(10, 'admin', '$2y$10$5K7CjCPX12R3vcX2q/LO5OYySO3W4ZUHlusTkM8DzTMnwsV75XhIW', 'John Doe', 'john_doe.png', 'Jl. Ampera, Komp. Ampera Indah, No.223', 'Admin', 'Aktif'),
(46, 'pegawai', '$2y$10$fe2rVSrQ8.VE/lDoECCU/uEgaR3RqjkxhBUyb/Aq1fcerQLcN0/Y2', 'Mikael', 'serti.PNG', 'Ampera', 'Pegawai', 'Aktif');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jumlah_penduduk`
--
ALTER TABLE `jumlah_penduduk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jumlah_penduduk_ibfk_1` (`idKecamatan`);

--
-- Indeks untuk tabel `kasus_dbd`
--
ALTER TABLE `kasus_dbd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idPenduduk` (`idPenduduk`),
  ADD KEY `idPenyakit` (`idPenyakit`);

--
-- Indeks untuk tabel `kasus_kusta`
--
ALTER TABLE `kasus_kusta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idPenduduk` (`idPenduduk`),
  ADD KEY `idPenyakit` (`idPenyakit`);

--
-- Indeks untuk tabel `kasus_malaria`
--
ALTER TABLE `kasus_malaria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kasus_malaria_ibfk_1` (`idPenduduk`),
  ADD KEY `kasus_malaria_ibfk_2` (`idPenyakit`);

--
-- Indeks untuk tabel `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jumlah_penduduk`
--
ALTER TABLE `jumlah_penduduk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT untuk tabel `kasus_dbd`
--
ALTER TABLE `kasus_dbd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT untuk tabel `kasus_kusta`
--
ALTER TABLE `kasus_kusta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `kasus_malaria`
--
ALTER TABLE `kasus_malaria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT untuk tabel `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jumlah_penduduk`
--
ALTER TABLE `jumlah_penduduk`
  ADD CONSTRAINT `jumlah_penduduk_ibfk_1` FOREIGN KEY (`idKecamatan`) REFERENCES `kecamatan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kasus_dbd`
--
ALTER TABLE `kasus_dbd`
  ADD CONSTRAINT `kasus_dbd_ibfk_1` FOREIGN KEY (`idPenduduk`) REFERENCES `jumlah_penduduk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kasus_dbd_ibfk_2` FOREIGN KEY (`idPenyakit`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kasus_kusta`
--
ALTER TABLE `kasus_kusta`
  ADD CONSTRAINT `kasus_kusta_ibfk_1` FOREIGN KEY (`idPenduduk`) REFERENCES `jumlah_penduduk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kasus_kusta_ibfk_2` FOREIGN KEY (`idPenyakit`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kasus_malaria`
--
ALTER TABLE `kasus_malaria`
  ADD CONSTRAINT `kasus_malaria_ibfk_1` FOREIGN KEY (`idPenduduk`) REFERENCES `jumlah_penduduk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kasus_malaria_ibfk_2` FOREIGN KEY (`idPenyakit`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
