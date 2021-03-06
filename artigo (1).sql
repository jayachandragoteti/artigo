-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2021 at 07:44 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `artigo`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_sno` int(11) NOT NULL,
  `cat_name` varchar(225) NOT NULL,
  `seller_sno` int(11) NOT NULL,
  `datm` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_sno`, `cat_name`, `seller_sno`, `datm`) VALUES
(1, 'JAY', 1, '2021-02-02 06:53:53'),
(2, 'CHECK ', 1, '2021-02-02 07:56:29'),
(3, 'POITTERY', 0, '2021-02-03 04:16:15'),
(4, 'MEG', 1, '2021-02-09 14:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_sno` int(11) NOT NULL,
  `city_name` varchar(225) NOT NULL,
  `city_admin` int(11) DEFAULT NULL,
  `datm` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_sno`, `city_name`, `city_admin`, `datm`) VALUES
(1, 'VSKP', 0, '2021-02-02 06:49:49');

-- --------------------------------------------------------

--
-- Table structure for table `cs`
--

CREATE TABLE `cs` (
  `cs_sno` int(11) NOT NULL,
  `users_sno` int(11) NOT NULL,
  `cs_city` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pro_sno` int(11) NOT NULL,
  `city_sno` int(11) NOT NULL,
  `seller_sno` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `pro_name` text NOT NULL,
  `pro_desc` longtext NOT NULL,
  `pro_cost` int(11) NOT NULL,
  `pro_materialsused` varchar(225) NOT NULL,
  `quantity` int(11) NOT NULL,
  `pro_img1` varchar(225) NOT NULL,
  `pro_img2` varchar(225) NOT NULL,
  `pro_img3` varchar(225) NOT NULL,
  `pro_status` tinyint(1) NOT NULL,
  `datm` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pro_sno`, `city_sno`, `seller_sno`, `category`, `pro_name`, `pro_desc`, `pro_cost`, `pro_materialsused`, `quantity`, `pro_img1`, `pro_img2`, `pro_img3`, `pro_status`, `datm`) VALUES
(1, 1, 1, 1, 'dsaf', 'fdsaf', 23, 'dsaf', 23, 'dsaf925446.png', 'dsaf78132.png', 'dsaf459992.png', 1, '2021-02-09 15:20:04'),
(2, 1, 1, 2, 'fdsaf', 'fdsafas', 245, 'dsfa', 12, 'fdsaf352801.png', 'fdsaf552347.png', 'fdsaf550247.png', 1, '2021-02-09 15:34:34'),
(3, 1, 1, 2, 'dsafa', 'avagdfga', 23, 'fsakdiuf', 23, 'dsafa45225.png', 'dsafa374983.png', 'dsafa716127.png', 1, '2021-02-09 15:42:03'),
(4, 1, 1, 2, 'nds;jn', 'sadufhuaisdh', 9, 'fgdafa', 234, 'nds;jn448783.png', 'nds;jn430262.png', 'nds;jn365409.png', 1, '2021-02-09 15:42:44');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `seller_sno` int(11) NOT NULL,
  `users_sno` int(11) NOT NULL,
  `city_sno` int(11) NOT NULL,
  `seller_status` tinyint(1) NOT NULL,
  `aadharcard` varchar(11) NOT NULL,
  `aadharcard_file` varchar(225) NOT NULL,
  `PANcard` varchar(225) NOT NULL,
  `PANcard_file` varchar(225) NOT NULL,
  `datm` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`seller_sno`, `users_sno`, `city_sno`, `seller_status`, `aadharcard`, `aadharcard_file`, `PANcard`, `PANcard_file`, `datm`) VALUES
(1, 1, 1, 1, '1234567', '1234567.pdf', '5666666666666664', '5666666666666664.pdf', '2021-02-02 06:49:49');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `sno` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` mediumtext NOT NULL,
  `navlogo` varchar(200) NOT NULL,
  `favicon` varchar(200) NOT NULL,
  `footerlogo` varchar(200) NOT NULL,
  `datm` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`sno`, `title`, `description`, `navlogo`, `favicon`, `footerlogo`, `datm`) VALUES
(1, 'ARTIGO', '', 'logo.png', 'logo.png', 'logo.png', '2021-01-30 15:43:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(11) NOT NULL,
  `fname` varchar(225) DEFAULT NULL,
  `mname` varchar(225) DEFAULT NULL,
  `lname` varchar(225) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `pincode` int(10) DEFAULT NULL,
  `password` varchar(225) NOT NULL,
  `otp` varchar(225) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `category` int(11) NOT NULL,
  `datm` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `fname`, `mname`, `lname`, `phone`, `email`, `address`, `pincode`, `password`, `otp`, `status`, `category`, `datm`) VALUES
(1, 'jay', 'knkh', 'admin', '9491694195', 'admin@gmail.com', 'admin@gmail.comadmin@gmail.com', 531034, 'admin@gmail.com', '75d23af433e0cea4c0e45a56dba18b30', 1, 2, '2021-02-02 06:45:39'),
(2, NULL, NULL, NULL, NULL, 'm@gmail.com', NULL, NULL, 'm@gmail.com', 'e4ba34574a801931a8fc2913a12bf6f0', 1, 2, '2021-02-02 17:25:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_sno`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_sno`);

--
-- Indexes for table `cs`
--
ALTER TABLE `cs`
  ADD PRIMARY KEY (`cs_sno`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pro_sno`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`seller_sno`),
  ADD UNIQUE KEY `aadharcard` (`aadharcard`),
  ADD UNIQUE KEY `PANcard` (`PANcard`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cs`
--
ALTER TABLE `cs`
  MODIFY `cs_sno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pro_sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `seller_sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
