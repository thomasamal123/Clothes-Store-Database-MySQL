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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` varchar(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `size` enum('XS','S','M','L','XL') NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `brand` enum('RALPH LAUREN','LEVIS','H&M','ZARA','CALVIN KLEIN') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `size`, `price`, `brand`) VALUES
('01', 'Polo Ralph Lauren Classic Fit Mesh Polo Shirt', 'S', 11.00, 'RALPH LAUREN'),
('02', 'Ralph Lauren Custom Fit Oxford Shirt', 'M', 12.00, 'RALPH LAUREN'),
('03', 'Ralph Lauren Polo Golf Shirt', 'M', 13.00, 'RALPH LAUREN'),
('04', 'Ralph Lauren Blake Plaid Twill Shirt', 'XL', 15.00, 'RALPH LAUREN'),
('05', 'Ralph Lauren Slim Fit Cotton Poplin Shirt', 'L', 12.25, 'RALPH LAUREN'),
('06', 'Levi\'s Classic Western Shirt', 'M', 20.00, 'LEVIS'),
('07', 'Ralph Lauren  Collar Polo Golf Shirt', 'L', 13.50, 'RALPH LAUREN'),
('08', 'Levi\'s Barstow Western Shirt', 'XS', 21.25, 'LEVIS'),
('09', 'Levi\'s Original HM Tee (T-shirt)', 'XL', 35.00, 'LEVIS'),
('A10', 'Zara Basic Poplin Shirt', 'XS', 14.00, 'ZARA'),
('B11', 'Zara Denim Overshirt', 'XL', 32.30, 'ZARA'),
('C12', 'Zara Flowing Striped Shir', 'XS', 15.00, 'ZARA'),
('CK02', 'Calvin Klein Performance Quick-Dry Polo Shirt', 'L', 60.10, 'CALVIN KLEIN'),
('CK03', 'Calvin Klein Performance Quick-Dry Polo Shirt', 'XL', 60.00, 'CALVIN KLEIN'),
('CK14', 'Calvin Klein Slim Fit Cotton Dress Shirt', 'M', 50.00, 'CALVIN KLEIN'),
('CK15', 'Calvin Klein Jeans Logo T-Shirt', 'XL', 39.21, 'CALVIN KLEIN'),
('D13', 'Zara Linen Shirt with Mandarin Collar', 'S', 13.00, 'ZARA'),
('HM003', 'H&M Printed Short-Sleeve Shirt', 'M', 14.00, 'H&M'),
('HM004', 'H&M Basic V-Neck T-Shirt', 'XS', 11.00, 'H&M'),
('HM01', 'H&M Slim Fit Cotton Shirt', 'S', 21.25, 'H&M'),
('HM02', 'H&M Denim Shirt', 'L', 35.00, 'H&M');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
