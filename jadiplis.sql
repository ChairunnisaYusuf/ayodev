-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2018 at 01:26 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jadiplis`
--

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id` int(11) NOT NULL,
  `tanggal_upload` datetime NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  `tipe_file` varchar(10) NOT NULL,
  `ukuran_file` varchar(20) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id`, `tanggal_upload`, `nama_file`, `tipe_file`, `ukuran_file`, `file`) VALUES
(1, '2018-07-28 00:00:00', 'test', 'docx', '106534', 'files/test.docx'),
(2, '2018-07-28 00:00:00', 'test', 'docx', '106534', 'files/test.docx'),
(3, '2018-07-28 00:00:00', 'test', 'docx', '106534', 'files/test.docx'),
(4, '2018-07-28 00:00:00', 'Modul 1', 'docx', '106534', 'files/Modul 1.docx'),
(5, '2018-07-28 08:30:40', 'Modul 2', 'pdf', '397588', 'files/Modul 2.pdf'),
(6, '2018-07-28 08:46:33', 'modul php', 'docx', '301206', 'files/modul php.docx'),
(7, '2018-07-28 08:51:49', 'OPEN HOUSE', 'doc', '61440', 'files/OPEN HOUSE.doc'),
(8, '2018-07-28 08:52:41', 'yihaa', 'docx', '16938', 'files/yihaa.docx'),
(9, '2018-07-29 02:35:18', '', 'docx', '19494', 'files/.docx'),
(10, '2018-07-29 02:37:49', 'bbb', 'docx', '301206', 'files/bbb.docx'),
(11, '2018-07-29 02:39:19', 'uwuwu', 'docx', '16938', 'files/uwuwu.docx'),
(12, '2018-07-29 03:42:10', 'panjak panjak', 'pdf', '88201', 'files/panjak panjak.pdf'),
(13, '0000-00-00 00:00:00', 'abc', 'doc', '61440', 'files/abc.doc'),
(14, '2018-07-29 05:07:00', 'daijobu', 'doc', '61440', 'files/daijobu.doc'),
(15, '2018-07-29 05:08:00', 'OPEN HOUSE', 'pdf', '397588', 'files/OPEN HOUSE.pdf'),
(16, '2018-07-29 17:13:00', 'huhu', 'docx', '19494', 'files/huhu.docx'),
(19, '2018-08-04 17:12:00', '18,9', 'docx', '19391', 'files/18,9.docx'),
(21, '2018-08-04 17:23:00', 'file pdf', 'pdf', '2600444', 'files/file pdf.pdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
