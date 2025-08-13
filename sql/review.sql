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
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` varchar(10) NOT NULL,
  `customer_id` varchar(10) NOT NULL,
  `product_id` varchar(10) NOT NULL,
  `rating` enum('1','2','3','4','5') NOT NULL,
  `comments` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `customer_id`, `product_id`, `rating`, `comments`) VALUES
('REV001', '0000101', '01', '4', NULL),
('REV0015', '877878', 'A10', '4', ''),
('REV0016', '997878', 'HM01', '4', ''),
('REV0017', '3121321', 'HM003', '2', 'Disappointed with the quality.'),
('REV0018', '7474744', 'CK15', '5', ''),
('REV0019', '7847484', 'A10', '5', ''),
('REV002', '101010', '02', '3', 'NICE SHIRT.PERFECT FIT'),
('REV0020', '8548954', 'HM004', '5', '\"I love the fit of this shirt — not too tight, not too loose.\"'),
('REV0021', '9547835', 'HM01', '4', 'Breathable fabric makes this shirt perfect for warmer days.\r\n'),
('REV003', '102120', '03', '5', 'This shirt is so comfortable; I could wear it all day.\"'),
('REV004', '123654', '04', '1', 'The dress shirt wrinkles easily, making it impractical for professional settings.\"'),
('REV005', '123789', '05', '4', '\"Great value for the price\"'),
('REV006', '178849', '06', '3', ''),
('REV007', '201010', '06', '3', 'shirt\'s color faded '),
('REV008', '252252', 'B11', '4', '\"The sizing is spot-on; it fits me perfectly.\"'),
('REV009', '254870', '07', '5', ''),
('REV010', '287874', '08', '5', 'This shirt is a reliable choice for a polished and put-together look.\"'),
('REV011', '454545', 'A10', '5', ''),
('REV012', '586589', 'CK03', '5', '\"I get compliments every time I wear this shirt; the style stands out.\"'),
('REV013', '784547', 'HM003', '5', ''),
('REV014', '784785', 'D13', '1', 'shirt lost its softness after the first wash. Feels rough now.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
