-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2019 at 03:04 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auto_sys`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_access_device`
--

CREATE TABLE `tbl_access_device` (
  `device_id` int(20) NOT NULL,
  `port_no` varchar(20) NOT NULL,
  `port_data` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_device_list`
--

CREATE TABLE `tbl_device_list` (
  `id` int(20) NOT NULL,
  `device_id` varchar(20) NOT NULL,
  `device_type` varchar(50) NOT NULL,
  `device_ports` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_device_type`
--

CREATE TABLE `tbl_device_type` (
  `id` int(20) NOT NULL,
  `device_types` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_environment_device`
--

CREATE TABLE `tbl_environment_device` (
  `id` int(20) NOT NULL,
  `device_id` varchar(30) NOT NULL,
  `ports` varchar(50) NOT NULL,
  `port_data` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_portname`
--

CREATE TABLE `tbl_portname` (
  `id` int(20) NOT NULL,
  `device_type` varchar(255) NOT NULL,
  `device_portname` varchar(30) NOT NULL,
  `portno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rfid_user_map`
--

CREATE TABLE `tbl_rfid_user_map` (
  `id` int(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `rfid_no` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_safety_device`
--

CREATE TABLE `tbl_safety_device` (
  `id` int(30) NOT NULL,
  `device_id` varchar(55) NOT NULL,
  `ports` varchar(55) NOT NULL,
  `port_data` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `userPassword` varchar(20) NOT NULL,
  `userPhone` varchar(15) NOT NULL,
  `userEmail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `userName`, `userPassword`, `userPhone`, `userEmail`) VALUES
(2, 'ab', '3536', '9999', 'b@gg.ggg'),
(3, 'absiddik', 'sg', '0998912417', 'ab@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_profile`
--

CREATE TABLE `tbl_user_profile` (
  `id` int(10) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `nid_number` int(20) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_device_maping`
--

CREATE TABLE `user_device_maping` (
  `id` int(20) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `device_id` varchar(50) NOT NULL,
  `maping_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_access_device`
--
ALTER TABLE `tbl_access_device`
  ADD PRIMARY KEY (`device_id`);

--
-- Indexes for table `tbl_device_list`
--
ALTER TABLE `tbl_device_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_device_type`
--
ALTER TABLE `tbl_device_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_environment_device`
--
ALTER TABLE `tbl_environment_device`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_portname`
--
ALTER TABLE `tbl_portname`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rfid_user_map`
--
ALTER TABLE `tbl_rfid_user_map`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_safety_device`
--
ALTER TABLE `tbl_safety_device`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_userName` (`userName`);

--
-- Indexes for table `tbl_user_profile`
--
ALTER TABLE `tbl_user_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_device_maping`
--
ALTER TABLE `user_device_maping`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_access_device`
--
ALTER TABLE `tbl_access_device`
  MODIFY `device_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_device_list`
--
ALTER TABLE `tbl_device_list`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_device_type`
--
ALTER TABLE `tbl_device_type`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_environment_device`
--
ALTER TABLE `tbl_environment_device`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_portname`
--
ALTER TABLE `tbl_portname`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_rfid_user_map`
--
ALTER TABLE `tbl_rfid_user_map`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_safety_device`
--
ALTER TABLE `tbl_safety_device`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_user_profile`
--
ALTER TABLE `tbl_user_profile`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_device_maping`
--
ALTER TABLE `user_device_maping`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
