-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2021 at 06:59 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

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
-- Table structure for table `jumlah_penduduk`
--

CREATE TABLE `jumlah_penduduk` (
  `id` int(11) NOT NULL,
  `tahun` text NOT NULL,
  `idKecamatan` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jumlah_penduduk`
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
(71, '2021', 42, 27213);

-- --------------------------------------------------------

--
-- Table structure for table `kasus_dbd`
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
-- Dumping data for table `kasus_dbd`
--

INSERT INTO `kasus_dbd` (`id`, `idPenduduk`, `idPenyakit`, `bulan`, `dbd1L`, `dbd1P`, `dbd14L`, `dbd14P`, `dbd59L`, `dbd59P`, `dbd1014L`, `dbd1014P`, `dbd1519L`, `dbd1519P`, `dbd2044L`, `dbd2044P`, `dbd45L`, `dbd45P`, `dbd_meninggal`) VALUES
(3, 49, 1, 'Januari', 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
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
(15, 48, 1, 'Januari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0),
(16, 48, 1, 'Februari', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(17, 48, 1, 'Maret', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1),
(18, 48, 1, 'April', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 48, 1, 'Mei', 1, 0, 0, 2, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 2),
(20, 48, 1, 'Juni', 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 48, 1, 'Juli', 1, 0, 1, 1, 2, 0, 0, 2, 2, 0, 0, 0, 0, 0, 2),
(22, 48, 1, 'Agustus', 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0),
(23, 48, 1, 'September', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 48, 1, 'Oktober', 1, 2, 3, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0),
(25, 48, 1, 'November', 2, 3, 0, 4, 2, 1, 1, 0, 1, 2, 0, 0, 0, 0, 1),
(26, 48, 1, 'Desember', 0, 1, 1, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 51, 1, 'Januari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 51, 1, 'Februari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(29, 51, 1, 'Maret', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0),
(30, 51, 1, 'April', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 51, 1, 'Mei', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
(32, 51, 1, 'Juni', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 51, 1, 'Juli', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, 51, 1, 'Agustus', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 51, 1, 'September', 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0),
(36, 51, 1, 'Oktober', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(37, 51, 1, 'November', 0, 2, 0, 0, 3, 3, 1, 0, 0, 0, 0, 1, 1, 0, 1),
(38, 51, 1, 'Desember', 2, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 1, 0, 0, 0),
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
(63, 54, 1, 'Januari', 0, 1, 0, 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(64, 54, 1, 'Februari', 0, 0, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(65, 54, 1, 'Maret', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(66, 54, 1, 'April', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(67, 54, 1, 'Mei', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(68, 54, 1, 'Juni', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(69, 54, 1, 'Juli', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(70, 54, 1, 'Agustus', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(71, 54, 1, 'September', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(72, 54, 1, 'Oktober', 0, 0, 0, 0, 1, 0, 0, 4, 0, 2, 0, 0, 0, 0, 0),
(73, 54, 1, 'November', 0, 1, 0, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(74, 54, 1, 'Desember', 1, 1, 0, 2, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1),
(83, 42, 1, 'Januari', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98, 71, 1, 'Januari', 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kasus_kusta`
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
-- Dumping data for table `kasus_kusta`
--

INSERT INTO `kasus_kusta` (`id`, `idPenduduk`, `idPenyakit`, `kus15LMB`, `kus15PMB`, `kus15LPB`, `kus15PPB`, `kus1625LMB`, `kus1625PMB`, `kus1625LPB`, `kus1625PPB`, `kus2635LMB`, `kus2635PMB`, `kus2635LPB`, `kus2635PPB`, `kus3645LMB`, `kus3645PMB`, `kus3645LPB`, `kus3645PPB`, `kus4655LMB`, `kus4655PMB`, `kus4655LPB`, `kus4655PPB`, `kus56LMB`, `kus56PMB`, `kus56LPB`, `kus56PPB`, `kusta_baruPB`, `kusta_baruMB`, `sembuhPB`, `sembuhMB`, `cacatPB`, `cacatMB`) VALUES
(10, 53, 3, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 2, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 4, 0, 0, 0, 0),
(11, 49, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 52, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 54, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(14, 48, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 51, 3, 1, 1, 0, 0, 1, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0),
(24, 42, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 2, 1, 0, 1, 2, 0, 1, 1, 3, 0, 0, 0, 0),
(25, 43, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0),
(26, 44, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 45, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 2, 0, 0, 1, 3, 0, 0, 0, 2, 0, 0, 0, 0),
(28, 46, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(29, 47, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 2, 0, 2, 1, 0, 0, 0, 0),
(30, 55, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0),
(31, 56, 3, 0, 0, 0, 0, 1, 1, 0, 0, 0, 2, 0, 0, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(32, 57, 3, 0, 1, 0, 0, 2, 1, 0, 0, 4, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 58, 3, 0, 0, 0, 0, 1, 2, 0, 0, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(34, 59, 3, 0, 0, 0, 1, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0),
(35, 60, 3, 0, 0, 0, 0, 0, 1, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(37, 71, 3, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 2, 3, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kasus_malaria`
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
-- Dumping data for table `kasus_malaria`
--

INSERT INTO `kasus_malaria` (`id`, `idPenduduk`, `idPenyakit`, `malaria_klinis`, `mal011L`, `mal011P`, `mal14L`, `mal14P`, `mal59L`, `mal59P`, `mal1014L`, `mal1014P`, `mal1564L`, `mal1564P`, `mal65L`, `mal65P`, `mik`, `rdt`, `pf`, `pv`, `pm`, `po`, `mix`, `malaria_meninggal`) VALUES
(6, 52, 2, 15, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0, 0),
(10, 51, 2, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 49, 2, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 53, 2, 22, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0),
(15, 54, 2, 23, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0),
(16, 48, 2, 35, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 2, 0, 1, 1, 0, 0, 0, 0),
(21, 42, 2, 37, 0, 0, 0, 0, 2, 0, 1, 1, 1, 0, 0, 0, 4, 1, 4, 1, 0, 0, 0, 0),
(22, 43, 2, 55, 0, 0, 0, 2, 1, 2, 2, 1, 0, 1, 0, 0, 9, 0, 5, 2, 1, 0, 1, 0),
(23, 44, 2, 44, 1, 0, 2, 0, 1, 0, 1, 3, 0, 0, 0, 0, 6, 2, 5, 1, 0, 0, 2, 0),
(24, 45, 2, 56, 0, 0, 2, 0, 0, 2, 0, 1, 0, 0, 0, 0, 5, 0, 3, 0, 0, 0, 2, 0),
(25, 46, 2, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 47, 2, 34, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0, 0),
(31, 55, 2, 55, 1, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 4, 0, 0, 0, 0, 0),
(32, 56, 2, 43, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 2, 1, 3, 0, 0, 0, 0, 0),
(33, 57, 2, 56, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 1, 1, 0, 0, 0, 0),
(34, 58, 2, 34, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0, 0),
(35, 59, 2, 66, 0, 1, 0, 1, 1, 0, 2, 1, 0, 0, 0, 0, 4, 2, 4, 2, 0, 0, 0, 0),
(36, 60, 2, 45, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0, 1),
(50, 71, 2, 12, 1, 0, 0, 0, 0, 1, 0, 1, 2, 0, 0, 0, 1, 4, 3, 1, 0, 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `keterangan` text NOT NULL,
  `geojson` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kecamatan`
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
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id` int(11) NOT NULL,
  `penyakit` varchar(128) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id`, `penyakit`, `keterangan`) VALUES
(1, 'DBD', 'Demam berdarah dengue (disingkat DBD) adalah infeksi yang disebabkan oleh virus dengue. Beberapa jenis nyamuk menularkan (atau menyebarkan) virus dengue.'),
(2, 'Malaria', 'Malaria adalah penyakit yang ditularkan oleh nyamuk dari manusia dan hewan lain yang disebabkan oleh protozoa parasit (sekelompok mikroorganisme bersel tunggal) dalam tipe Plasmodium.'),
(3, 'Kusta', 'Penyakit Hansen atau Morbus Hansen yang dahulu dikenal sebagai penyakit kusta atau lepra adalah sebuah penyakit infeksi kronis yang sebelumnya, diketahui hanya disebabkan oleh bakteri Mycobacterium leprae, hingga ditemukan bakteri Mycobacterium');

-- --------------------------------------------------------

--
-- Table structure for table `user`
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
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `gambar`, `alamat`, `levelUser`, `status`) VALUES
(10, 'admin', '$2y$10$5K7CjCPX12R3vcX2q/LO5OYySO3W4ZUHlusTkM8DzTMnwsV75XhIW', 'John Doe', 'john_doe.png', 'Jl. Ampera, Komp. Ampera Indah, No.223', 'Admin', 'Aktif'),
(40, 'pegawai', '$2y$10$x2IKc33y3dbXV7eUp0SQ7eoDK46EVwvn6KQS97MUUpsoUNdvd/To.', 'Jane Doe', 'jane_doe.png', 'Jalan RE Martadinata, Komp. Pemda, Jalur F, No. 333', 'Pegawai', 'Aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jumlah_penduduk`
--
ALTER TABLE `jumlah_penduduk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jumlah_penduduk_ibfk_1` (`idKecamatan`);

--
-- Indexes for table `kasus_dbd`
--
ALTER TABLE `kasus_dbd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idPenduduk` (`idPenduduk`),
  ADD KEY `idPenyakit` (`idPenyakit`);

--
-- Indexes for table `kasus_kusta`
--
ALTER TABLE `kasus_kusta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idPenduduk` (`idPenduduk`),
  ADD KEY `idPenyakit` (`idPenyakit`);

--
-- Indexes for table `kasus_malaria`
--
ALTER TABLE `kasus_malaria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kasus_malaria_ibfk_1` (`idPenduduk`),
  ADD KEY `kasus_malaria_ibfk_2` (`idPenyakit`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jumlah_penduduk`
--
ALTER TABLE `jumlah_penduduk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `kasus_dbd`
--
ALTER TABLE `kasus_dbd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `kasus_kusta`
--
ALTER TABLE `kasus_kusta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `kasus_malaria`
--
ALTER TABLE `kasus_malaria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jumlah_penduduk`
--
ALTER TABLE `jumlah_penduduk`
  ADD CONSTRAINT `jumlah_penduduk_ibfk_1` FOREIGN KEY (`idKecamatan`) REFERENCES `kecamatan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kasus_dbd`
--
ALTER TABLE `kasus_dbd`
  ADD CONSTRAINT `kasus_dbd_ibfk_1` FOREIGN KEY (`idPenduduk`) REFERENCES `jumlah_penduduk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kasus_dbd_ibfk_2` FOREIGN KEY (`idPenyakit`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kasus_kusta`
--
ALTER TABLE `kasus_kusta`
  ADD CONSTRAINT `kasus_kusta_ibfk_1` FOREIGN KEY (`idPenduduk`) REFERENCES `jumlah_penduduk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kasus_kusta_ibfk_2` FOREIGN KEY (`idPenyakit`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kasus_malaria`
--
ALTER TABLE `kasus_malaria`
  ADD CONSTRAINT `kasus_malaria_ibfk_1` FOREIGN KEY (`idPenduduk`) REFERENCES `jumlah_penduduk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kasus_malaria_ibfk_2` FOREIGN KEY (`idPenyakit`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
