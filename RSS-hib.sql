-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 04, 2022 at 08:51 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `RSS-hib`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookedTicket`
--

CREATE TABLE `bookedTicket` (
  `id` int(11) NOT NULL,
  `Date` varchar(255) DEFAULT NULL,
  `_return` varchar(255) DEFAULT NULL,
  `classs` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookedTicket`
--

INSERT INTO `bookedTicket` (`id`, `Date`, `_return`, `classs`, `destination`, `source`, `user_id`) VALUES
(8, '2022-09-22', 'No', 'FirstClass', 'Panvel', 'Panvel', 4),
(9, '2022-09-29', 'No', 'FirstClass', 'Chemubr', 'Panvel', 4);

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(10);

-- --------------------------------------------------------

--
-- Table structure for table `Station`
--

CREATE TABLE `Station` (
  `id` int(11) NOT NULL,
  `station_name` varchar(50) NOT NULL,
  `fare` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Station`
--

INSERT INTO `Station` (`id`, `station_name`, `fare`) VALUES
(1, 'Panvel', 55),
(2, 'Vasai', 60),
(3, 'Chemubr', 30),
(4, 'Virar', 6),
(5, 'Andheri', 50),
(6, 'Dadar', 40);

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `upassword` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`id`, `email`, `name`, `surname`, `upassword`) VALUES
(1, 'dik@23', 'Dikshant', 'Naik', 'awdad'),
(2, 'hahah@ahah', 'hahahh', 'hahah@ahah', 'awdad'),
(3, 'dik@gmail.com', 'Dikshant', 'dik@gmail.com', 'pass'),
(4, 'admin@gmail.com', 'Admin', 'admin@gmail.com', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookedTicket`
--
ALTER TABLE `bookedTicket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKaxfedpdgmb1jj18lwpuroq1nh` (`user_id`);

--
-- Indexes for table `Station`
--
ALTER TABLE `Station`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Station`
--
ALTER TABLE `Station`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
