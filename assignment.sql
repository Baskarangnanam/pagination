-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2021 at 06:12 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `datas`
--

CREATE TABLE `datas` (
  `id` int(11) NOT NULL,
  `PO number` int(100) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Currency` varchar(100) NOT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datas`
--

INSERT INTO `datas` (`id`, `PO number`, `Date`, `Currency`, `Status`) VALUES
(1, 2000000111, '2021-03-03 03:44:23', 'USD', 1),
(2, 2000000112, '2021-03-03 03:44:31', 'USD', 1),
(3, 2000000113, '2021-03-03 04:09:50', 'USD', 0),
(4, 2000000135, '2021-03-03 04:09:50', 'USD', 0),
(5, 2000000345, '2021-03-03 04:10:38', 'USD', 0),
(6, 2000000567, '2021-03-03 04:10:38', 'USD', 0),
(7, 2000000987, '2021-03-03 04:28:49', 'USD', 0),
(8, 2000000142, '2021-03-03 04:28:49', 'USD', 0),
(9, 2000000234, '2021-03-03 04:29:33', 'USD', 0),
(10, 2000000187, '2021-03-03 04:29:33', 'USD', 0),
(11, 2000000638, '2021-03-03 04:30:16', 'USD', 0),
(12, 2000000852, '2021-03-03 04:30:16', 'USD', 0),
(13, 2000000999, '2021-03-03 04:37:22', 'USD', 0),
(14, 2000000852, '2021-03-03 04:37:22', 'USD', 0),
(15, 2000000332, '2021-03-03 04:38:13', 'USD', 0),
(16, 2000000183, '2021-03-03 04:38:13', 'USD', 0),
(17, 2000000238, '2021-03-03 04:39:01', 'USD', 0),
(18, 2000000197, '2021-03-03 04:39:01', 'USD', 0),
(19, 2000000176, '2021-03-03 04:39:51', 'USD', 0),
(20, 2000000182, '2021-03-03 04:39:51', 'USD', 0),
(21, 2000000103, '2021-03-03 04:40:38', 'USD', 0),
(22, 2000000165, '2021-03-03 04:40:38', 'USD', 0),
(23, 2000000154, '2021-03-03 04:41:24', 'USD', 0),
(24, 2000000563, '2021-03-03 04:41:24', 'USD', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;