-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2019 at 03:11 PM
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
  `id` int(11) NOT NULL,
  `device_id` int(20) NOT NULL,
  `port_no` varchar(20) NOT NULL,
  `port_data` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_access_device`
--

INSERT INTO `tbl_access_device` (`id`, `device_id`, `port_no`, `port_data`) VALUES
(1, 8, 'fd', 'ds'),
(2, 19, '1', ''),
(3, 19, '2', ''),
(4, 19, '3', ''),
(5, 20, '1', ''),
(6, 20, '2', ''),
(7, 20, '3', ''),
(8, 27, '1', ''),
(9, 27, '2', ''),
(10, 27, '3', '');

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

--
-- Dumping data for table `tbl_device_list`
--

INSERT INTO `tbl_device_list` (`id`, `device_id`, `device_type`, `device_ports`) VALUES
(2, '1000', '1', 2),
(3, '2000', '2', 2),
(4, '3522', '3', 2),
(5, '50001', '2', 0),
(6, '50002', '2', 0),
(7, '50003', '2', 0),
(8, '50003', '2', 0),
(9, '50003', '2', 0),
(10, '50004', '2', 4),
(11, '50005', '3', 3),
(12, '50006', '3,safety', 0),
(13, '50003', '2', 4),
(14, '6000', '4', 4),
(15, '50090', '3', 3),
(16, '6009', '1', 3),
(17, '60003', '1', 3),
(18, '50089', '1', 3),
(19, '5000377', '1', 3),
(20, '6000', '1', 3),
(23, '50003', '2', 4),
(25, '7000', '3', 3),
(26, 'i00001', '4', 4),
(27, '800001', '1', 3),
(28, '800002', '2', 4),
(29, '800003', '3', 3),
(30, '800004', '4', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_device_type`
--

CREATE TABLE `tbl_device_type` (
  `id` int(20) NOT NULL,
  `device_types` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_device_type`
--

INSERT INTO `tbl_device_type` (`id`, `device_types`) VALUES
(1, 'access'),
(2, 'environment'),
(3, 'safety'),
(4, 'industrial');

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

--
-- Dumping data for table `tbl_environment_device`
--

INSERT INTO `tbl_environment_device` (`id`, `device_id`, `ports`, `port_data`) VALUES
(1, '23', '1', ''),
(2, '23', '2', ''),
(3, '23', '3', ''),
(4, '23', '4', ''),
(5, '28', '1', ''),
(6, '28', '2', ''),
(7, '28', '3', ''),
(8, '28', '4', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_industrial_device`
--

CREATE TABLE `tbl_industrial_device` (
  `id` int(16) NOT NULL,
  `deviceID` varchar(64) NOT NULL,
  `ports` varchar(8) NOT NULL,
  `portData` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_industrial_device`
--

INSERT INTO `tbl_industrial_device` (`id`, `deviceID`, `ports`, `portData`) VALUES
(1, '26', '1', ''),
(2, '26', '2', ''),
(3, '26', '3', ''),
(4, '26', '4', ''),
(5, '30', '1', ''),
(6, '30', '2', ''),
(7, '30', '3', ''),
(8, '30', '4', '');

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

--
-- Dumping data for table `tbl_portname`
--

INSERT INTO `tbl_portname` (`id`, `device_type`, `device_portname`, `portno`) VALUES
(1, '1', 'RFID', '1'),
(2, '1', 'Door Access', '2'),
(3, '2', 'Humidity', '1'),
(4, '2', 'Temperature', '2'),
(5, '2', 'CO2', '3'),
(6, '2', 'GAS', '4'),
(7, '3', 'Fire', '1'),
(8, '3', 'Smoke', '2'),
(9, '3', 'Alarm', '3'),
(10, '4', 'Light', '1'),
(11, '4', 'Fan', '2'),
(12, '4', 'AC', '3'),
(13, '4', 'Motor', '4'),
(15, '1', 'Motion', '3');

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

--
-- Dumping data for table `tbl_safety_device`
--

INSERT INTO `tbl_safety_device` (`id`, `device_id`, `ports`, `port_data`) VALUES
(1, '25', '1', ''),
(2, '25', '2', ''),
(3, '25', '3', ''),
(4, '29', '1', ''),
(5, '29', '2', ''),
(6, '29', '3', '');

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
(3, 'absiddik', 'sg', '0998912417', 'ab@gmail.com'),
(5, 'absiddik1', '1234', '88058809', 'absiddik@gmail.com'),
(7, 'habib', '1234', '88058809', 'habib@bhj.com'),
(8, 'bdnath', '1234', '01744555875', 'bdnath.me@gmail.com');

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
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tbl_industrial_device`
--
ALTER TABLE `tbl_industrial_device`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_device_list`
--
ALTER TABLE `tbl_device_list`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_device_type`
--
ALTER TABLE `tbl_device_type`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_environment_device`
--
ALTER TABLE `tbl_environment_device`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_industrial_device`
--
ALTER TABLE `tbl_industrial_device`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_portname`
--
ALTER TABLE `tbl_portname`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_rfid_user_map`
--
ALTER TABLE `tbl_rfid_user_map`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_safety_device`
--
ALTER TABLE `tbl_safety_device`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
