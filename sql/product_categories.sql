-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2023 at 12:25 AM
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
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `product_category_id` varchar(10) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`product_category_id`, `category_name`) VALUES
('CG002', 'Polo Shirt'),
('CG01', 'T-Shirt'),
('CG03', 'Button-Down Shirt'),
('CG04', 'Denim Shirt'),
('CG05', 'Oxford Shirt'),
('CG06', 'Band Collar Shirt'),
('CG07', 'Flannel Shirt'),
('CG08', 'Bowling Shirt'),
('CG09', 'Western Shirt'),
('CG10', 'Baseball Shirt'),
('CG11', 'Turtleneck Shirt'),
('CG12', 'Band Collar Shirt'),
('CG13', 'Sweatshirt'),
('CG14', 'Jersey Shirt'),
('CG15', 'Hoodie'),
('CG16', 'Sleeveless Button-Up Shirt'),
('CG17', 'Mock Neck Shirt'),
('CG18', 'Embroidered Shirt'),
('CG19', 'POLO SHIRT'),
('CG20', 'FULL SLEEVE SHIRT'),
('CG21', 'Cuban Collar Shirt');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`product_category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
