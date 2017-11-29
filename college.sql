-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 29, 2017 at 05:04 PM
-- Server version: 5.7.20-log
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `USN` varchar(10) NOT NULL,
  `SSID` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`USN`, `SSID`) VALUES
('1RN16CS045', 'CSE3A'),
('1RN16CS088', 'CSE3B'),
('1RN16CS122', 'CSE3C'),
('1RN15CS011', 'CSE4A'),
('1RN15CS029', 'CSE4A'),
('1RN15CS045', 'CSE4B'),
('1RN15CS091', 'CSE4C'),
('1RN14CS010', 'CSE7A'),
('1RN14CS025', 'CSE7A'),
('1RN14CS032', 'CSE7A'),
('1RN13CS020', 'CSE8A'),
('1RN13CS062', 'CSE8A'),
('1RN13CS066', 'CSE8B'),
('1RN13CS091', 'CSE8C');

-- --------------------------------------------------------

--
-- Table structure for table `iamarks`
--

CREATE TABLE `iamarks` (
  `USN` varchar(10) NOT NULL,
  `SUBCODE` varchar(8) NOT NULL,
  `SSID` varchar(5) NOT NULL,
  `TEST1` int(2) DEFAULT NULL,
  `TEST2` int(2) DEFAULT NULL,
  `TEST3` int(2) DEFAULT NULL,
  `FINALIA` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `iamarks`
--

INSERT INTO `iamarks` (`USN`, `SUBCODE`, `SSID`, `TEST1`, `TEST2`, `TEST3`, `FINALIA`) VALUES
('1RN13CS091', '10CS81', 'CSE8C', 15, 16, 18, NULL),
('1RN13CS091', '10CS82', 'CSE8C', 12, 19, 14, NULL),
('1RN13CS091', '10CS83', 'CSE8C', 19, 15, 20, NULL),
('1RN13CS091', '10CS84', 'CSE8C', 20, 16, 19, NULL),
('1RN13CS091', '10CS85', 'CSE8C', 15, 15, 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `semsec`
--

CREATE TABLE `semsec` (
  `SSID` varchar(5) NOT NULL,
  `SEM` int(2) DEFAULT NULL,
  `SEC` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `semsec`
--

INSERT INTO `semsec` (`SSID`, `SEM`, `SEC`) VALUES
('CSE1A', 1, 'A'),
('CSE1B', 1, 'B'),
('CSE1C', 1, 'C'),
('CSE2A', 2, 'A'),
('CSE2B', 2, 'B'),
('CSE2C', 2, 'C'),
('CSE3A', 3, 'A'),
('CSE3B', 3, 'B'),
('CSE3C', 3, 'C'),
('CSE4A', 4, 'A'),
('CSE4B', 4, 'B'),
('CSE4C', 4, 'C'),
('CSE5A', 5, 'A'),
('CSE5B', 5, 'B'),
('CSE5C', 5, 'C'),
('CSE6A', 6, 'A'),
('CSE6B', 6, 'B'),
('CSE6C', 6, 'C'),
('CSE7A', 7, 'A'),
('CSE7B', 7, 'B'),
('CSE7C', 7, 'C'),
('CSE8A', 8, 'A'),
('CSE8B', 8, 'B'),
('CSE8C', 8, 'C');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `USN` varchar(10) NOT NULL,
  `SNAME` varchar(25) DEFAULT NULL,
  `ADDRESS` varchar(25) DEFAULT NULL,
  `PHONE` int(10) DEFAULT NULL,
  `GENDER` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`USN`, `SNAME`, `ADDRESS`, `PHONE`, `GENDER`) VALUES
('1RN13CS020', 'AKSHAY', 'BELAGAVI', 887781122, 'M'),
('1RN13CS062', 'SANDHYA', 'BENGALURU', 772282299, 'F'),
('1RN13CS066', 'SUPRIYA', 'MANGALURU', 887745454, 'F'),
('1RN13CS091', 'TEESHA', 'BENGALURU', 77123123, 'F'),
('1RN14CS010', 'ABHAY', 'BENGALURU', 99002112, 'M'),
('1RN14CS025', 'ASMI', 'BENGALURU', 78947378, 'F'),
('1RN14CS032', 'BHASKAR', 'BENGALURU', 992321109, 'M'),
('1RN15CS011', 'AJAY', 'TUMKUR', 98450913, 'M'),
('1RN15CS029', 'CHITRA', 'DAVANGERE', 7696722, 'F'),
('1RN15CS045', 'JEEVA', 'BELLARY', 99448501, 'M'),
('1RN15CS091', 'SANTOSH', 'MANGALURU', 88123320, 'M'),
('1RN16CS045', 'ISMAIL', 'KALBURGI', 990055422, 'M'),
('1RN16CS088', 'SAMEERA', 'SHIMOGA', 990554221, 'F'),
('1RN16CS122', 'VINAYAKA', 'CHIKAMAGALUR', 880088011, 'M');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `SUBCODE` varchar(8) NOT NULL,
  `TITLE` varchar(20) DEFAULT NULL,
  `SEM` int(2) DEFAULT NULL,
  `CREDITS` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SUBCODE`, `TITLE`, `SEM`, `CREDITS`) VALUES
('10CS71', 'OOAD', 7, 4),
('10CS72', 'ECS', 7, 4),
('10CS73', 'PTW', 7, 4),
('10CS74', 'DWDM', 7, 4),
('10CS75', 'JAVA', 7, 4),
('10CS76', 'SAN', 7, 4),
('10CS81', 'ACA', 8, 4),
('10CS82', 'SSM', 8, 4),
('10CS83', 'NM', 8, 4),
('10CS84', 'CC', 8, 4),
('10CS85', 'PW', 8, 4),
('15CS31', 'M3', 3, 4),
('15CS32', 'ADE', 3, 4),
('15CS33', 'DSA', 3, 4),
('15CS34', 'CO', 3, 4),
('15CS35', 'USP', 3, 3),
('15CS36', 'DMS', 3, 3),
('15CS41', 'M4', 4, 4),
('15CS42', 'SE', 4, 4),
('15CS43', 'DAA', 4, 4),
('15CS44', 'MPMC', 4, 4),
('15CS45', 'OOC', 4, 3),
('15CS46', 'DC', 4, 3),
('15CS51', 'ME', 5, 4),
('15CS52', 'CN', 5, 4),
('15CS53', 'DBMS', 5, 4),
('15CS54', 'ATCI', 5, 4),
('15CS55', 'JAVA', 5, 3),
('15CS56', 'AI', 5, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`USN`,`SSID`),
  ADD KEY `SSID` (`SSID`);

--
-- Indexes for table `iamarks`
--
ALTER TABLE `iamarks`
  ADD PRIMARY KEY (`USN`,`SUBCODE`,`SSID`),
  ADD KEY `SUBCODE` (`SUBCODE`),
  ADD KEY `SSID` (`SSID`);

--
-- Indexes for table `semsec`
--
ALTER TABLE `semsec`
  ADD PRIMARY KEY (`SSID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`USN`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`SUBCODE`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`USN`) REFERENCES `student` (`USN`),
  ADD CONSTRAINT `class_ibfk_2` FOREIGN KEY (`SSID`) REFERENCES `semsec` (`SSID`);

--
-- Constraints for table `iamarks`
--
ALTER TABLE `iamarks`
  ADD CONSTRAINT `iamarks_ibfk_1` FOREIGN KEY (`USN`) REFERENCES `student` (`USN`),
  ADD CONSTRAINT `iamarks_ibfk_2` FOREIGN KEY (`SUBCODE`) REFERENCES `subject` (`SUBCODE`),
  ADD CONSTRAINT `iamarks_ibfk_3` FOREIGN KEY (`SSID`) REFERENCES `semsec` (`SSID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
