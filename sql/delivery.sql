-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2023 at 12:14 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clothes`
--

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `delivery_id` varchar(10) NOT NULL,
  `order_id` varchar(10) NOT NULL,
  `delivery date and time` datetime NOT NULL,
  `delivery charge` decimal(5,2) NOT NULL,
  `delivery method` enum('standard','express','premium') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`delivery_id`, `order_id`, `delivery date and time`, `delivery charge`, `delivery method`) VALUES
('1001', '0021', '2023-11-22 22:39:22', 3.00, 'express'),
('1122', '0011', '2023-10-28 15:27:15', 2.00, 'standard'),
('1201', '0005', '2023-11-20 08:18:50', 2.00, 'standard'),
('2255', '0002', '2023-11-03 07:26:29', 2.00, 'standard'),
('2545', '0012', '2023-11-21 21:27:00', 5.00, 'premium'),
('3121', '0003', '2023-11-05 21:26:29', 3.00, 'express'),
('3210', '0006', '2023-10-24 22:27:53', 3.00, 'express'),
('369', '0001', '2023-11-01 02:24:37', 2.00, 'standard'),
('4001', '0014', '2023-11-18 12:27:12', 3.00, 'express'),
('4141', '0007', '2023-10-18 23:23:53', 3.00, 'express'),
('5001', '0015', '2023-11-17 02:27:53', 5.00, 'premium'),
('5121', '0003', '2023-11-06 13:20:53', 5.00, 'premium'),
('6001', '0016', '2023-11-19 17:27:00', 5.00, 'premium'),
('7001', '0017', '2023-10-25 21:27:50', 3.00, 'express'),
('7840', '0004', '2023-10-10 08:08:53', 2.00, 'standard'),
('7878', '0008', '2023-11-19 09:21:53', 5.00, 'premium'),
('7898', '0013', '2023-11-24 16:26:55', 2.00, 'standard'),
('8001', '0018', '2023-10-15 15:07:07', 2.00, 'standard'),
('8877', '0010', '2023-10-03 22:15:53', 5.00, 'premium'),
('9001', '0020', '2023-10-10 18:39:12', 5.00, 'premium'),
('9878', '0009', '2023-11-30 12:27:53', 5.00, 'premium');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`delivery_id`),
  ADD KEY `order_id` (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
