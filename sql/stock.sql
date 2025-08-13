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
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_ id` varchar(10) NOT NULL,
  `product_id` varchar(10) NOT NULL,
  `quantity` smallint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_ id`, `product_id`, `quantity`) VALUES
('SA1', '01', 100),
('SB10', 'A10', 96),
('SB11', 'B11', 23),
('SB12', 'C12', 40),
('SB13', 'CK02', 22),
('SB14', 'CK03', 92),
('SB15', 'CK14', 74),
('SB16', 'CK15', 53),
('SB17', 'D13', 49),
('SB18', 'HM003', 55),
('SB19', 'HM004', 66),
('SB2', '02', 54),
('SB20', 'HM01', 33),
('SB21', 'HM02', 104),
('SB3', '03', 24),
('SB4', '04', 18),
('SB5', '05', 39),
('SB6', '06', 47),
('SB7', '07', 16),
('SB8', '08', 87),
('SB9', '09', 82);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_ id`),
  ADD KEY `product_ id` (`product_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
