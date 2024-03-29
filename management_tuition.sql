-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2024 at 09:25 AM
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
-- Database: `management_tuition`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstname`, `lastname`, `email`, `password`, `updated_at`) VALUES
(0, 'ahmad', 'albab', 'ahmad@gmail.com', 'a8364ea6d183f9d01cd54ec137d6204a', '2024-03-27 08:31:20'),
(0, 'ahmad', 'ali', 'ali@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-27 08:33:38');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `ubid` int(11) NOT NULL,
  `bid` varchar(10) NOT NULL,
  `pamt` varchar(10) NOT NULL,
  `sid` int(11) NOT NULL,
  `scid` int(50) NOT NULL,
  `due` date NOT NULL,
  `complete` int(11) NOT NULL,
  `note` varchar(100) NOT NULL,
  `ramt` varchar(10) NOT NULL,
  `psrc` varchar(30) NOT NULL,
  `ptxnid` varchar(30) NOT NULL,
  `pdate` date NOT NULL,
  `bsent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`ubid`, `bid`, `pamt`, `sid`, `scid`, `due`, `complete`, `note`, `ramt`, `psrc`, `ptxnid`, `pdate`, `bsent`) VALUES
(1, 'CC4b55b', '20 $', 4, 3, '2024-02-20', 1, '', '10', 'bank', '07876546576', '2024-02-28', 0),
(2, 'CC65b28', '60', 8, 4, '2024-03-14', 1, '', '60', 'bank', '07876546576', '2024-03-08', 0),
(3, 'CCe1d5d', '2500 $', 6, 5, '2024-03-06', 1, '', 'asda', 'bank', 'lmlml', '2024-03-06', 0);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `rid` int(11) NOT NULL,
  `scid` int(20) NOT NULL,
  `sid` int(20) NOT NULL,
  `scstatus` varchar(35) NOT NULL,
  `cancby` varchar(10) NOT NULL,
  `cReason` varchar(120) NOT NULL,
  `AcSTime` time NOT NULL,
  `AcFTime` time NOT NULL,
  `LDuration` int(10) NOT NULL,
  `LDurReason` varchar(120) NOT NULL,
  `takenTopic` varchar(50) NOT NULL,
  `nextTopic` varchar(50) NOT NULL,
  `HWork` varchar(20) NOT NULL,
  `hwNote` varchar(50) NOT NULL,
  `schMark` varchar(15) NOT NULL,
  `wbMark` varchar(15) NOT NULL,
  `pvtComment` varchar(120) NOT NULL,
  `parentComm` varchar(120) NOT NULL,
  `pubComment` varchar(120) NOT NULL,
  `scdate` date NOT NULL,
  `billed` tinyint(1) NOT NULL,
  `psent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`rid`, `scid`, `sid`, `scstatus`, `cancby`, `cReason`, `AcSTime`, `AcFTime`, `LDuration`, `LDurReason`, `takenTopic`, `nextTopic`, `HWork`, `hwNote`, `schMark`, `wbMark`, `pvtComment`, `parentComm`, `pubComment`, `scdate`, `billed`, `psent`) VALUES
(2, 4, 8, 'Completed', '', '', '18:30:00', '22:13:00', 0, '', 'Maintenance PC', '', 'notgiven', '', '', '', '', '', '', '0000-00-00', 1, 0),
(3, 5, 6, 'Completed', '', '', '18:01:00', '00:00:00', 0, '', 'fesafsadfsa', '', '', '', '', '', '', '', '', '0000-00-00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `scid` int(11) NOT NULL,
  `sid` int(50) NOT NULL,
  `scdate` date NOT NULL,
  `sctime` time NOT NULL,
  `scstatus` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`scid`, `sid`, `scdate`, `sctime`, `scstatus`) VALUES
(4, 8, '0000-00-00', '18:30:00', 'Completed'),
(5, 6, '0000-00-00', '18:01:00', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `std_info`
--

CREATE TABLE `std_info` (
  `sid` int(11) NOT NULL,
  `sname` text NOT NULL,
  `course` varchar(25) NOT NULL,
  `smail` varchar(40) NOT NULL DEFAULT 'conronald13@gmail.com',
  `spno` varchar(15) NOT NULL,
  `ic` varchar(35) NOT NULL,
  `pname` text NOT NULL,
  `pmail` varchar(40) NOT NULL,
  `ppno` varchar(15) NOT NULL,
  `tzone` varchar(30) NOT NULL,
  `ctry` text NOT NULL,
  `rm` varchar(5) NOT NULL,
  `doj` date NOT NULL,
  `note` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `std_info`
--

INSERT INTO `std_info` (`sid`, `sname`, `course`, `smail`, `spno`, `ic`, `pname`, `pmail`, `ppno`, `tzone`, `ctry`, `rm`, `doj`, `note`) VALUES
(5, 'lkdpawkdwldd', 'IT', 'dndda@gmail.com', 'wkqjdoqwjdq', 'daidawddwqdkankd', 'dewjnkednwd', 'dsakjokqwdq@gmail.com', 'dpoajdpw', 'America/Bogota', 'dawdnkawddamnd111', '222', '2024-02-21', 'dsnkwd'),
(6, 'asdasdas', 'Bahasa Melayu', 'ahhaha@gmail.com', '01213131', '', 'malajiq', 'afiq02345@gmail.com', '01111637786', 'Asia/Kuala_Lumpur', 'Malaysia', '100', '2024-02-27', ''),
(7, 'jaja', 'IT', 'dada@gmail.com', '0121212121', '011112', 'wawa', 'mama@gmail.com', '0123242141', 'Asia/Kuala_Lumpur', 'Malaysia', '13', '2024-03-05', 'ga'),
(8, 'didi', 'IT', 'didi24@gmail.com', '0123422221', '0302010401', 'didi daus', 'didaus@gmail.com', '0132211231', 'Asia/Kuala_Lumpur', 'Malaysia', '30', '2024-03-06', 'father gay person'),
(9, 'test', 'IT', 'amirulyusfx@gmail.com', '0172102091', '111211512', 'jtocro', 'amirulyus@gmail.com', '0199400275', 'America/Lima', 'Malaysia', '100', '2024-03-06', ''),
(10, 'test', 'IT', 'amirulyusfx@gmail.com', '0172102091', '9999', 'rahmi', 'amirulyus@gmail.com', '0199400275', 'America/Lima', 'Malaysia', '21', '2024-03-23', '');

-- --------------------------------------------------------

--
-- Table structure for table `txn`
--

CREATE TABLE `txn` (
  `pid` int(11) NOT NULL,
  `pamt` varchar(10) NOT NULL,
  `psrc` varchar(30) NOT NULL,
  `ptxnid` varchar(30) NOT NULL,
  `pdate` date NOT NULL,
  `sid` int(11) NOT NULL,
  `psent` int(5) NOT NULL DEFAULT 0,
  `scid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `email`, `password`, `updated_at`) VALUES
(0, 'AMIRUL SYUSHAIDI BIN', 'LATIF', 'amirulyus@gmail.com', '9e0d6580b71ecdcd488dba342cdcd999', '2024-03-09 16:52:13'),
(0, 'AMIRUL SYUSHAIDI', 'LATIF', 'amirulyusfx@gmail.com', '9e0d6580b71ecdcd488dba342cdcd999', '2024-03-09 17:03:09'),
(0, 'ahmad', 'albab', 'albab@g.com', 'e10adc3949ba59abbe56e057f20f883e', '2024-03-27 06:57:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`ubid`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`scid`);

--
-- Indexes for table `std_info`
--
ALTER TABLE `std_info`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `txn`
--
ALTER TABLE `txn`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `ubid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `scid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `std_info`
--
ALTER TABLE `std_info`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `txn`
--
ALTER TABLE `txn`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
