-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 11, 2021 at 02:48 PM
-- Server version: 5.7.33-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it490`
--

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `ticker` varchar(255) NOT NULL,
  `timestamp` date NOT NULL,
  `lrconfidence` decimal(60,30) NOT NULL,
  `svmconfidence` decimal(60,30) NOT NULL,
  `lr1` decimal(60,30) NOT NULL,
  `lr2` decimal(60,30) NOT NULL,
  `lr3` decimal(60,30) NOT NULL,
  `svm1` decimal(60,30) NOT NULL,
  `svm2` decimal(60,30) NOT NULL,
  `svm3` decimal(60,30) NOT NULL,
  `rating` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `ticker`, `timestamp`, `lrconfidence`, `svmconfidence`, `lr1`, `lr2`, `lr3`, `svm1`, `svm2`, `svm3`, `rating`) VALUES
(1, 'TSLA', '2020-05-19', '0.567388200000000000000000000000', '0.654493900000000000000000000000', '301.560000000000000000000000000000', '307.320000000000000000000000000000', '310.340000000000000000000000000000', '312.650000000000000000000000000000', '325.670000000000000000000000000000', '345.650000000000000000000000000000', 'buy'),
(2, 'AAPL', '2020-05-05', '0.490392030000000000000000000000', '0.617283040000000000000000000000', '125.650000000000000000000000000000', '129.760000000000000000000000000000', '134.650000000000000000000000000000', '110.420000000000000000000000000000', '117.680000000000000000000000000000', '121.090000000000000000000000000000', 'buy'),
(3, 'AMZN', '2020-04-23', '0.233420400000000000000000000000', '0.356694884000000000000000000000', '1223.650000000000000000000000000000', '1145.900000000000000000000000000000', '1087.870000000000000000000000000000', '1229.760000000000000000000000000000', '1190.760000000000000000000000000000', '1143.650000000000000000000000000000', 'sell');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `code` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `code`, `status`) VALUES
(1, 'Zunair Ahmed', 'zaa4@njit.edu', 'zuDaddy69x', 0, 'Hello'),
(2, 'Zunair Ahmed', 'zaa5@njit.edu', 'zuDaddy69', 0, 'Hello'),
(3, 'Zunair Ahmed', 'zaa3@njit.edu', 'zuDaddy69', 0, 'Hello'),
(5, 'Zunair Ahmed', 'zaa1@njit.edu', 'ZuDaddy', 0, 'Hello');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
