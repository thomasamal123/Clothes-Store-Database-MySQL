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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment _id` varchar(10) NOT NULL,
  `customer_id` varchar(10) NOT NULL,
  `payment method` enum('visa','maestro','google pay','paypal') NOT NULL,
  `payment date` date DEFAULT NULL,
  `card verification code` int(10) UNSIGNED DEFAULT NULL,
  `card number` mediumint(8) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment _id`, `customer_id`, `payment method`, `payment date`, `card verification code`, `card number`) VALUES
('122187W36Y', '252252', 'visa', '2023-10-15', NULL, NULL),
('1485WFGWH', '784547', 'google pay', '2023-11-05', NULL, NULL),
('1Q12QW1W2', '586589', 'paypal', '2023-11-21', NULL, NULL),
('321TYDJKSS', '287874', 'maestro', '2023-11-26', NULL, NULL),
('41POANAM', '7474744', 'google pay', '2023-10-18', NULL, NULL),
('524WQSADQ', '254870', 'maestro', '2023-10-22', NULL, NULL),
('53YBBIO210', '454545', 'maestro', '2023-10-31', NULL, NULL),
('5TTGJMM', '101010', 'visa', '2023-10-08', NULL, NULL),
('69252SFGZS', '784785', 'maestro', '2023-11-12', NULL, NULL),
('6RWWYW3W5', '123654', 'paypal', '2023-10-16', NULL, NULL),
('76BZAQ1A', '8548954', 'paypal', '2023-10-01', NULL, NULL),
('76QAQWAQ', '7847484', 'visa', '2023-10-22', NULL, NULL),
('80MNW42TS', '877878', 'paypal', '2023-10-04', NULL, NULL),
('87625YGBJS', '997878', 'paypal', '2023-10-29', NULL, NULL),
('987TYGHJSJ', '3121321', 'visa', '2023-10-02', NULL, NULL),
('ATX212100', '0000101', 'visa', '2023-11-01', NULL, NULL),
('IXTC210101', '102120', 'google pay', '2023-11-13', NULL, NULL),
('JOMN31251', '9547835', 'maestro', '2023-10-05', NULL, NULL),
('UWWYWGWIOW', '201010', 'paypal', '2023-10-28', NULL, NULL),
('VXV1470000', '0000101', 'maestro', '2023-10-11', NULL, NULL),
('WYW66W2Y2U', '178849', 'maestro', '2023-10-17', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment _id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
