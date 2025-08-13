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
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` varchar(10) NOT NULL,
  `customer_id` varchar(10) NOT NULL,
  `offers` varchar(10) DEFAULT NULL,
  `order_date` date NOT NULL,
  `payment_id` varchar(10) NOT NULL,
  `promocode` varchar(50) DEFAULT NULL,
  `total_amount` decimal(5,2) NOT NULL,
  `order_item_quantity` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `offers`, `order_date`, `payment_id`, `promocode`, `total_amount`, `order_item_quantity`) VALUES
('0001', '0000101', NULL, '2023-09-03', '1Q12QW1W2', 'RETHU6', 15.20, 1),
('0002', '101010', NULL, '2023-09-02', '5TTGJMM', 'THIS122', 20.00, 1),
('0003', '102120', NULL, '2023-09-11', '6RWWYW3W5', 'DT6UE100', 152.30, 4),
('0004', '123654', NULL, '2023-09-20', '41POANAM', 'POONAM12', 25.00, 2),
('0005', '123789', NULL, '2023-09-17', '53YBBIO210', '', 140.32, 5),
('0006', '178849', NULL, '2023-08-31', '76BZAQ1A', '', 52.01, 3),
('0007', '201010', NULL, '2023-09-03', '76QAQWAQ', 'THIS132232', 14.14, 1),
('0008', '252252', NULL, '2023-08-31', '80MNW42TS', 'DCK250', 200.00, 5),
('0009', '254870', NULL, '2023-09-29', '321TYDJKSS', 'HI100', 78.21, 4),
('0010', '287874', NULL, '2023-09-23', '524WQSADQ', 'HELLO001', 101.50, 2),
('0011', '454545', NULL, '2023-09-01', '987TYGHJSJ', 'FRESH250', 220.10, 3),
('0012', '586589', NULL, '2023-09-09', '1485WFGWH', '', 100.10, 3),
('0013', '784547', NULL, '2023-08-30', '69252SFGZS', 'HOI8700', 17.10, 1),
('0014', '784785', NULL, '2023-09-10', '87625YGBJS', 'FRSH0001', 25.21, 2),
('0015', '877878', NULL, '2023-09-30', '122187W36Y', 'HELLO120', 32.01, 3),
('0016', '997878', NULL, '2023-09-27', 'ATX212100', 'THISYR87', 210.10, 4),
('0017', '3121321', NULL, '2023-09-28', 'IXTC210101', '', 45.01, 2),
('0018', '7474744', NULL, '2023-09-24', 'JOMN31251', 'HIHELLO', 21.21, 2),
('0019', '7847484', NULL, '2023-09-23', 'UWWYWGWIOW', NULL, 33.50, 3),
('0020', '877878', NULL, '2023-09-29', 'VXV1470000', NULL, 11.00, 1),
('0021', '9547835', NULL, '2023-11-30', 'WYW66W2Y2U', 'LAST100', 105.20, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `orders_ibfk_1` (`customer_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`payment _id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
