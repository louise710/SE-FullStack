-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2025 at 07:06 AM
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
-- Database: `iot`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `descript` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `date`, `descript`) VALUES
(1, '2024-07-30', 'No class');

-- --------------------------------------------------------

--
-- Table structure for table `classuspen`
--

CREATE TABLE `classuspen` (
  `cid` int(11) NOT NULL,
  `t_start` time NOT NULL,
  `t_end` time NOT NULL,
  `date` date NOT NULL,
  `class_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `devlog`
--

CREATE TABLE `devlog` (
  `logId` int(11) NOT NULL,
  `dev` varchar(10) NOT NULL,
  `devfunc` varchar(15) NOT NULL,
  `action` varchar(5) DEFAULT NULL,
  `oras` time NOT NULL,
  `pitsa` date NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `devlogs`
--

CREATE TABLE `devlogs` (
  `logid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time DEFAULT NULL,
  `job` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `devlogs`
--

INSERT INTO `devlogs` (`logid`, `fid`, `date`, `time`, `job`) VALUES
(1, 3, '2024-09-24', '08:55:00', 1),
(2, 3, '2024-09-24', '08:55:00', 1),
(3, 3, '2024-09-24', '08:56:00', 1),
(4, 3, '2024-09-24', '08:59:00', 1),
(5, 3, '2024-09-24', '09:00:00', 1),
(6, 3, '2024-09-24', '09:02:00', 1),
(7, 3, '2024-09-24', '09:22:00', 1),
(8, 3, '2024-09-24', '10:29:00', 1),
(9, 3, '2024-09-24', '10:32:00', 1),
(10, 3, '2024-09-24', '10:36:00', 1),
(11, 3, '2024-09-24', '10:42:00', 1),
(12, 3, '2024-09-24', '10:43:00', 1),
(13, 3, '2024-09-24', '10:43:00', 1),
(14, 3, '2024-09-24', '10:44:00', 1),
(15, 3, '2024-09-24', '11:13:00', 1),
(16, 3, '2024-09-24', '11:14:00', 1),
(17, 3, '2024-09-24', '11:15:00', 1),
(18, 3, '2024-09-24', '11:17:00', 1),
(19, 3, '2024-09-24', '11:23:00', 1),
(20, 3, '2024-09-24', '11:23:00', 1),
(21, 3, '2024-09-24', '11:24:00', 1),
(22, 3, '2024-09-24', '11:26:00', 1),
(23, 3, '2024-09-24', '11:54:00', 1),
(24, 3, '2024-09-24', '11:59:00', 1),
(25, 3, '2024-09-24', '12:02:00', 1),
(26, 3, '2024-09-24', '12:08:00', 1),
(27, 3, '2024-09-24', '12:24:00', 1),
(28, 3, '2024-09-24', '13:36:00', 1),
(29, 3, '2024-09-24', '13:38:00', 1),
(30, 3, '2024-09-24', '13:46:00', 1),
(31, 3, '2024-09-24', '13:48:00', 1),
(32, 3, '2024-09-24', '15:11:00', 1),
(33, 3, '2024-09-24', '16:08:00', 1),
(34, 3, '2024-09-24', '16:45:00', 1),
(35, 3, '2024-09-25', '12:10:00', 1),
(36, 3, '2024-09-25', '12:10:00', 1),
(37, 3, '2024-09-25', '12:15:00', 1),
(38, 3, '2024-09-25', '15:42:00', 1),
(39, 3, '2024-09-26', '10:11:00', 1),
(40, 3, '2024-09-26', '10:33:00', 1),
(41, 3, '2024-09-26', '13:35:00', 1),
(42, 3, '2024-09-26', '15:27:00', 1),
(43, 3, '2024-09-26', '15:47:00', 1),
(44, 3, '2024-09-30', '12:34:00', 1),
(45, 3, '2024-09-30', '12:42:00', 1),
(46, 3, '2024-09-30', '12:42:00', 1),
(47, 3, '2024-09-30', '12:45:00', 1),
(48, 3, '2024-10-01', '13:32:00', 1),
(49, 3, '2024-10-01', '16:21:00', 1),
(50, 3, '2024-10-02', '08:47:00', 1),
(51, 3, '2024-10-02', '08:54:00', 1),
(52, 3, '2024-10-02', '09:01:00', 1),
(53, 3, '2024-10-02', '09:01:00', 1),
(54, 3, '2024-10-02', '09:14:00', 1),
(55, 3, '2024-10-02', '09:26:00', 1),
(56, 3, '2024-10-02', '09:26:00', 1),
(57, 3, '2024-10-02', '10:44:00', 1),
(58, 38, '2024-10-16', '14:11:00', 1),
(59, 38, '2024-10-16', '14:12:00', 1),
(60, 38, '2024-10-16', '14:22:00', 1),
(61, 38, '2024-10-16', '14:26:00', 1),
(62, 38, '2024-10-16', '14:33:00', 1),
(63, 38, '2024-10-16', '14:39:00', 1),
(64, 38, '2024-10-16', '15:06:00', 1),
(65, 38, '2024-10-16', '15:08:00', 1),
(66, 38, '2024-10-16', '15:29:00', 1),
(67, 38, '2024-10-16', '15:30:00', 1),
(68, 38, '2024-10-16', '16:57:00', 1),
(69, 38, '2024-10-16', '16:59:00', 1),
(70, 38, '2024-10-16', '17:00:00', 1),
(71, 38, '2024-10-16', '17:01:00', 1),
(72, 38, '2024-10-17', '08:23:00', 1),
(73, 38, '2024-10-17', '08:28:00', 1),
(74, 38, '2024-10-17', '08:50:00', 1),
(75, 38, '2024-10-17', '09:09:00', 1),
(76, 38, '2024-10-17', '09:11:00', 1),
(77, 38, '2024-10-17', '09:20:00', 1),
(78, 38, '2024-10-17', '09:22:00', 1),
(79, 38, '2024-10-17', '09:41:00', 1),
(80, 38, '2024-10-17', '09:42:00', 1),
(81, 38, '2024-10-17', '09:43:00', 1),
(82, 38, '2024-10-17', '11:27:00', 1),
(83, 38, '2024-10-17', '13:06:00', 1),
(84, 38, '2024-10-17', '13:06:00', 1),
(85, 38, '2024-10-17', '13:08:00', 1),
(86, 38, '2024-10-17', '13:16:00', 1),
(87, 38, '2024-10-17', '13:23:00', 1),
(88, 38, '2024-10-17', '16:43:00', 1),
(89, 38, '2024-10-18', '08:59:00', 1),
(90, 38, '2024-10-18', '10:39:00', 1),
(91, 38, '2024-10-29', '14:39:00', 1),
(92, 38, '2024-10-29', '14:55:00', 1),
(93, 38, '2024-10-29', '15:34:00', 1),
(94, 38, '2024-10-29', '15:42:00', 1),
(95, 38, '2024-10-29', '15:52:00', 1),
(96, 38, '2024-10-29', '17:01:00', 1),
(97, 38, '2024-10-29', '17:04:00', 1),
(98, 38, '2024-10-30', '08:41:00', 1),
(99, 38, '2024-10-30', '08:42:00', 1),
(100, 38, '2024-10-30', '08:43:00', 1),
(101, 38, '2024-10-30', '08:46:00', 1),
(102, 38, '2024-10-30', '08:50:00', 1),
(103, 38, '2024-10-30', '10:06:00', 1),
(104, 38, '2024-10-30', '10:39:00', 1),
(105, 38, '2024-10-30', '10:52:00', 1),
(106, 38, '2024-10-30', '11:22:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `devstart`
--

CREATE TABLE `devstart` (
  `id_start` int(11) NOT NULL,
  `t_start` time NOT NULL,
  `date` date NOT NULL,
  `rmdev` varchar(10) NOT NULL,
  `ip_add` varchar(20) DEFAULT NULL,
  `mac_add` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `devstart`
--

INSERT INTO `devstart` (`id_start`, `t_start`, `date`, `rmdev`, `ip_add`, `mac_add`) VALUES
(1, '19:19:00', '2024-08-19', '208', '10.10.5.30', 'no'),
(2, '19:19:00', '2024-08-19', '209', '10.10.5.30', 'no'),
(3, '19:25:00', '2024-08-19', '208', '10.10.5.30', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `fid` int(11) NOT NULL,
  `fidno` int(11) NOT NULL,
  `rfid` varchar(50) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `stat` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`fid`, `fidno`, `rfid`, `fname`, `lname`, `stat`) VALUES
(10, 14764, '', 'Renz', 'Adal', 1),
(15, 35900, '', 'Francine', 'Diaz', 1);

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `holiday_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `descript` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `holiday`
--

INSERT INTO `holiday` (`holiday_id`, `date`, `descript`) VALUES
(5, '2024-10-24', 'Mam Petralba\'s Birthday wohoo'),
(6, '2025-01-29', 'Chinese New Year');

-- --------------------------------------------------------

--
-- Table structure for table `logsonoff`
--

CREATE TABLE `logsonoff` (
  `log_id` int(11) NOT NULL,
  `time_1st_act` time NOT NULL,
  `rm_id` int(11) NOT NULL,
  `activity` varchar(5) NOT NULL,
  `sched_id` int(11) NOT NULL,
  `snd_try` int(11) NOT NULL,
  `timeAck` time DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mydevlogs`
--

CREATE TABLE `mydevlogs` (
  `logId` int(11) NOT NULL,
  `dev` varchar(10) NOT NULL,
  `devfunc` varchar(15) NOT NULL,
  `action` varchar(5) DEFAULT NULL,
  `oras` time NOT NULL,
  `pitsa` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mydevlogs`
--

INSERT INTO `mydevlogs` (`logId`, `dev`, `devfunc`, `action`, `oras`, `pitsa`) VALUES
(1, 'rm208', '43706f35', 'On', '13:35:10', '2024-09-26'),
(2, 'rm208', 'sched', 'On', '13:36:02', '2024-09-26'),
(3, 'rm208', 'btnAC1', 'Off', '13:37:27', '2024-09-26'),
(4, 'rm208', 'btnAC2', 'Off', '13:37:27', '2024-09-26'),
(5, 'rm208', 'btnL1', 'Off', '13:37:28', '2024-09-26'),
(6, 'rm208', 'btnL2', 'Off', '13:37:28', '2024-09-26'),
(7, 'rm208', 'sched', 'On', '14:42:02', '2024-09-26'),
(8, 'rm209', 'btnL2', 'On', '15:26:59', '2024-09-26'),
(9, 'rm209', 'btnL1', 'On', '15:27:03', '2024-09-26'),
(10, 'rm209', 'btnAC2', 'On', '15:27:05', '2024-09-26'),
(4126, 'rm209-ddc', 'L1', 'off', '10:59:23', '2025-02-04'),
(4127, 'rm209-ddc', 'L2', 'off', '10:59:24', '2025-02-04'),
(4128, 'rm209', 'mqttL2', 'Off', '10:59:25', '2025-02-04'),
(4129, 'rm209-ddc', 'AC1', 'off', '10:59:39', '2025-02-04'),
(4130, 'rm209-ddc', 'AC2', 'off', '10:59:40', '2025-02-04'),
(4131, 'rm-ddc', '', '', '11:00:16', '2025-02-04'),
(4132, 'rm209-ddc', 'AC1', 'off', '11:00:17', '2025-02-04'),
(4133, 'rm209', 'mqttAC1', 'Off', '11:00:18', '2025-02-04'),
(4134, 'rm209-ddc', 'AC2', 'off', '11:00:19', '2025-02-04'),
(4135, 'rm209', 'mqttAC2', 'Off', '11:00:20', '2025-02-04'),
(4136, 'rm-ddc', '', '', '11:00:43', '2025-02-04'),
(4137, 'rm-ddc', '', '', '18:50:59', '2025-12-02'),
(4138, 'rm-ddc', '', '', '18:51:05', '2025-12-02'),
(4139, 'rm-ddc', '', '', '18:51:08', '2025-12-02'),
(4140, 'rm-ddc', '', '', '18:51:17', '2025-12-02');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `rm_id` int(11) NOT NULL,
  `rm_no` varchar(10) DEFAULT NULL,
  `rm_desc` varchar(150) DEFAULT NULL,
  `lights` int(11) NOT NULL,
  `ac` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`rm_id`, `rm_no`, `rm_desc`, `lights`, `ac`) VALUES
(2, '1007', '10th Floor', 2, 2),
(4, '1008', '10th Floor', 2, 2),
(11, '1009', '10th Floor', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sched`
--

CREATE TABLE `sched` (
  `sched_id` int(11) NOT NULL,
  `rm_id` int(11) DEFAULT NULL,
  `time_in` time DEFAULT NULL,
  `time_out` time DEFAULT NULL,
  `day` varchar(10) DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  `sub_id` int(11) DEFAULT NULL,
  `stat` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sched`
--

INSERT INTO `sched` (`sched_id`, `rm_id`, `time_in`, `time_out`, `day`, `fid`, `sub_id`, `stat`) VALUES
(135, 4, '03:03:00', '04:02:00', 'TTh', 15, NULL, 1),
(136, 2, '03:04:00', '04:04:00', 'Th', 10, NULL, 1),
(137, 2, '13:30:00', '14:30:00', 'MWF', 10, 67, 1),
(138, 2, '09:00:00', '10:30:00', 'TTh', 15, 48, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub`
--

CREATE TABLE `sub` (
  `sid` int(11) NOT NULL,
  `code` varchar(15) DEFAULT NULL,
  `s_desc` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub`
--

INSERT INTO `sub` (`sid`, `code`, `s_desc`) VALUES
(48, 'Free Elec1', 'Cyber Security'),
(67, 'Net1', 'Introduction to Networking');

-- --------------------------------------------------------

--
-- Table structure for table `systatus`
--

CREATE TABLE `systatus` (
  `Id` int(11) NOT NULL,
  `devstat` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `systatus`
--

INSERT INTO `systatus` (`Id`, `devstat`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `userpass` varchar(60) NOT NULL,
  `acctype` int(11) NOT NULL,
  `ustat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `fname`, `lname`, `username`, `userpass`, `acctype`, `ustat`) VALUES
(5, 'Louise', 'Cañedo', 'ddc', '$2y$10$O6xHjpRKZVgfsSIQRDZ92eZhj2T0JhbNmlu/CHG7xnzx3piOsm7qy', 1, 1),
(10, 'Joefele', '0', 'fel', '$2y$10$0Vq/vnNuC3U8.wKKH2gJNOPFyiD7QHnVBzov0FQ8RLcykEBLyzTbe', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `classuspen`
--
ALTER TABLE `classuspen`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `devlog`
--
ALTER TABLE `devlog`
  ADD PRIMARY KEY (`logId`);

--
-- Indexes for table `devlogs`
--
ALTER TABLE `devlogs`
  ADD PRIMARY KEY (`logid`);

--
-- Indexes for table `devstart`
--
ALTER TABLE `devstart`
  ADD PRIMARY KEY (`id_start`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`holiday_id`);

--
-- Indexes for table `logsonoff`
--
ALTER TABLE `logsonoff`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `rm_id` (`rm_id`);

--
-- Indexes for table `mydevlogs`
--
ALTER TABLE `mydevlogs`
  ADD PRIMARY KEY (`logId`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`rm_id`);

--
-- Indexes for table `sched`
--
ALTER TABLE `sched`
  ADD PRIMARY KEY (`sched_id`),
  ADD KEY `rm_id` (`rm_id`),
  ADD KEY `fid` (`fid`),
  ADD KEY `fk_sub_id` (`sub_id`);

--
-- Indexes for table `sub`
--
ALTER TABLE `sub`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `systatus`
--
ALTER TABLE `systatus`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `classuspen`
--
ALTER TABLE `classuspen`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `devlog`
--
ALTER TABLE `devlog`
  MODIFY `logId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `devlogs`
--
ALTER TABLE `devlogs`
  MODIFY `logid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `devstart`
--
ALTER TABLE `devstart`
  MODIFY `id_start` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `logsonoff`
--
ALTER TABLE `logsonoff`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mydevlogs`
--
ALTER TABLE `mydevlogs`
  MODIFY `logId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4263;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `rm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sched`
--
ALTER TABLE `sched`
  MODIFY `sched_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `sub`
--
ALTER TABLE `sub`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `systatus`
--
ALTER TABLE `systatus`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `logsonoff`
--
ALTER TABLE `logsonoff`
  ADD CONSTRAINT `logsOnOff_ibfk_1` FOREIGN KEY (`rm_id`) REFERENCES `room` (`rm_id`);

--
-- Constraints for table `sched`
--
ALTER TABLE `sched`
  ADD CONSTRAINT `fk_sub_id` FOREIGN KEY (`sub_id`) REFERENCES `sub` (`sid`),
  ADD CONSTRAINT `sched_ibfk_1` FOREIGN KEY (`rm_id`) REFERENCES `room` (`rm_id`),
  ADD CONSTRAINT `sched_ibfk_2` FOREIGN KEY (`fid`) REFERENCES `faculty` (`fid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
