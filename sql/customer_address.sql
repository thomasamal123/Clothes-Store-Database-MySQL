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
-- Table structure for table `customer_address`
--

CREATE TABLE `customer_address` (
  `customer_id` varchar(10) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `address_type` enum('billing address','delivery address') NOT NULL,
  `address_line1` varchar(50) NOT NULL,
  `address_line2` varchar(50) NOT NULL,
  `address_city` varchar(50) NOT NULL,
  `address_county` varchar(50) DEFAULT NULL,
  `address_country` varchar(50) NOT NULL,
  `post_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_address`
--

INSERT INTO `customer_address` (`customer_id`, `customer_name`, `address_type`, `address_line1`, `address_line2`, `address_city`, `address_county`, `address_country`, `post_code`) VALUES
('0000101', 'Gladson Thomas', 'delivery address', '85 Chester Road', ' EXETER ', 'Exeter', NULL, 'United Kingdom', ' EX26 2FM'),
('101010', 'Haizal Thomas', 'delivery address', '423 Highfield Road', 'WALSALL', 'WALSALL', NULL, 'United Kingdom', 'WS54 4DY'),
('102120', 'Gena Kim', 'billing address', '77 Station Road', 'CANTERBURY', 'CANTERBURY', NULL, 'United Kingdom', 'CT7 2HE'),
('123654', 'Sreya Ghoshal', 'billing address', '69 Highfield Road', 'CHESTER', 'CHESTER', NULL, 'United Kingdom', 'CH93 0DF'),
('123789', 'Kezia Gladson', 'delivery address', '91 The Drive', 'SHEFFIELD', 'SHEFFIELD', NULL, 'United Kingdom', 'S79 0OM'),
('178849', ' Christina Leji', 'delivery address', '8 New Street', 'LINCOLN', 'LINCOLN', NULL, 'United Kingdom', 'LN8 4DA'),
('201010', 'Suriya Manasam', 'billing address', '84 York Road', 'PORTSMOUTH', 'PORTSMOUTH', NULL, 'United Kingdom', 'PO40 2LA'),
('252252', 'Milan Jayan', 'billing address', '10 York Road', 'EAST LONDON', 'EAST LONDON', NULL, 'United Kingdom', 'E90 9IF'),
('254870', 'Aksa Raichel', 'billing address', '66 New Road', 'CAMBRIDGE', 'CAMBRIDGE', 'CAMBRIDGESHIRE', 'United Kingdom', 'CB80 0BY'),
('287874', 'Thejus Sunil', 'billing address', '96 Victoria Road', 'GLASGOW', 'GLASGOW', NULL, 'United Kingdom', 'G63 2AK'),
('3121321', 'Norah Shynu', 'billing address', '46 York Road', 'SOUTHALL', 'SOUTHALL', NULL, 'United Kingdom', 'UB74 9DC'),
('454545', 'Idan Xavier', 'delivery address', '25 South Street', 'WEST LONDON', 'WEST LONDON', NULL, 'United Kingdom', 'W73 1GZ'),
('586589', 'Kichu Varghese', 'billing address', '9 High Street', 'HARROW', 'HARROW', NULL, 'United Kingdom', 'HA12 9KJ'),
('7474744', 'Ariel Mathew', 'delivery address', '9258 Manor Road', 'OXFORD', 'OXFORD', NULL, 'United Kingdom', 'OX6 8GF'),
('784547', 'Emilia Green', 'billing address', '69 York Road', 'SLOUGH', 'SLOUGH', NULL, 'United Kingdom', 'SL62 2CQ'),
('7847484', 'Riyan Ikka', 'delivery address', '52 George Street', 'OXFORD', 'OXFORD', NULL, 'United Kingdom', 'OX27 4SU'),
('784785', 'Jasmyn Aron', 'billing address', '41 Mill Road', 'SOUTH EAST LONDON', 'SOUTH EAST LONDON', NULL, 'United Kingdom', 'SE33 2NC'),
('8548954', 'Dan Macdonald', 'delivery address', '5 New Road', 'MILTON KEYNES', 'MILTON KEYNES', NULL, 'United Kingdom', 'MK64 0MD'),
('877878', 'Aaron Shibu', 'delivery address', '27 West Street', 'PETERBOROUGH', 'PETERBOROUGH', NULL, 'United Kingdom', 'PE23 1KR'),
('9547835', 'Ann Thomas', 'billing address', '35 Manchester Road', 'NEWPORT', 'NEWPORT', NULL, 'United Kingdom', 'NP3 4XM'),
('997878', 'Alan Vijay', 'delivery address', '62 Queen Street', 'COVENTRY', 'COVENTRY', NULL, 'United Kingdom', 'CV22 4SR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD PRIMARY KEY (`customer_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD CONSTRAINT `customer id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
