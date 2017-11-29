-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 29, 2017 at 06:37 PM
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
-- Database: `company`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dno` varchar(20) NOT NULL,
  `dname` varchar(20) DEFAULT NULL,
  `mgrstartdate` date DEFAULT NULL,
  `mgrssn` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dno`, `dname`, `mgrstartdate`, `mgrssn`) VALUES
('1', 'Accounts', '2001-01-01', 'RNSACC02'),
('2', 'IT', '2016-08-01', 'RNSIT01'),
('3', 'ECE', '2008-06-01', 'RNSECE01'),
('4', 'ISE', '2015-08-01', 'RNSISE01'),
('5', 'CSE', '2002-06-01', 'RNSCSE05');

-- --------------------------------------------------------

--
-- Table structure for table `dlocation`
--

CREATE TABLE `dlocation` (
  `dloc` varchar(20) NOT NULL,
  `dno` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dlocation`
--

INSERT INTO `dlocation` (`dloc`, `dno`) VALUES
('Bangalore', '1'),
('Bangalore', '2'),
('Bangalore', '3'),
('Mangalore', '4'),
('Mangalore', '5');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `ssn` varchar(20) NOT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `superssn` varchar(20) DEFAULT NULL,
  `dno` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`ssn`, `fname`, `lname`, `address`, `sex`, `salary`, `superssn`, `dno`) VALUES
('RNSACC01', 'Ahana', 'K', 'Mangalore', 'F', 350000, 'RNSACC02', '1'),
('RNSACC02', 'Santosh', 'Kumar', 'Mangalore', 'M', 300000, NULL, '1'),
('RNSCSE01', 'James', 'Smith', 'Bangalore', 'M', 500000, 'RNSCSE02', '5'),
('RNSCSE02', 'Hearn', 'Baker', 'Bangalore', 'M', 700000, NULL, NULL),
('RNSCSE03', 'Edward', 'Scott', 'Mysore', 'M', 500000, 'RNSCSE04', '5'),
('RNSCSE04', 'Pavan', 'Hegde', 'Mangalore', 'M', 650000, 'RNSCSE05', '5'),
('RNSCSE05', 'Girish', 'Malya', 'Mysore', 'M', 450000, 'RNSCSE06', '5'),
('RNSCSE06', 'Neha', 'S N', 'Bangalore', 'F', 800000, NULL, NULL),
('RNSECE01', 'John', 'Scott', 'Bangalore', 'M', 450000, NULL, '3'),
('RNSISE01', 'Veena', 'M', 'Mysore', 'F', 600000, NULL, '4'),
('RNSIT01', 'Nagesh', 'H R', 'Bangalore', 'M', 500000, NULL, '2');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `pno` int(11) NOT NULL,
  `pname` varchar(20) DEFAULT NULL,
  `plocation` varchar(20) DEFAULT NULL,
  `dno` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`pno`, `pname`, `plocation`, `dno`) VALUES
(100, 'IoT', 'Bangalore', '5'),
(101, 'Cloud Computing', 'Bangalore', '5'),
(102, 'Big Data', 'Bangalore', '5'),
(103, 'Sensors', 'Bangalore', '3'),
(104, 'Bank Management', 'Bangalore', '1'),
(105, 'Salary Management', 'Bangalore', '2'),
(106, 'Open Stack', 'Bangalore', '4'),
(107, 'Smart City', 'Bangalore', '2');

-- --------------------------------------------------------

--
-- Table structure for table `works_on`
--

CREATE TABLE `works_on` (
  `hours` int(11) DEFAULT NULL,
  `ssn` varchar(20) NOT NULL,
  `pno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `works_on`
--

INSERT INTO `works_on` (`hours`, `ssn`, `pno`) VALUES
(5, 'RNSACC01', 104),
(6, 'RNSACC02', 105),
(4, 'RNSCSE01', 100),
(6, 'RNSCSE01', 101),
(8, 'RNSCSE01', 102),
(7, 'RNSCSE01', 103),
(10, 'RNSCSE02', 100),
(6, 'RNSCSE03', 102),
(3, 'RNSCSE04', 100),
(4, 'RNSCSE05', 101),
(5, 'RNSCSE06', 102),
(4, 'RNSISE01', 106),
(10, 'RNSIT01', 107);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dno`),
  ADD KEY `mgrssn` (`mgrssn`);

--
-- Indexes for table `dlocation`
--
ALTER TABLE `dlocation`
  ADD PRIMARY KEY (`dno`,`dloc`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ssn`),
  ADD KEY `superssn` (`superssn`),
  ADD KEY `dno` (`dno`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pno`),
  ADD KEY `dno` (`dno`);

--
-- Indexes for table `works_on`
--
ALTER TABLE `works_on`
  ADD PRIMARY KEY (`ssn`,`pno`),
  ADD KEY `pno` (`pno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`mgrssn`) REFERENCES `employee` (`ssn`);

--
-- Constraints for table `dlocation`
--
ALTER TABLE `dlocation`
  ADD CONSTRAINT `dlocation_ibfk_1` FOREIGN KEY (`dno`) REFERENCES `department` (`dno`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`superssn`) REFERENCES `employee` (`ssn`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`dno`) REFERENCES `department` (`dno`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`dno`) REFERENCES `department` (`dno`);

--
-- Constraints for table `works_on`
--
ALTER TABLE `works_on`
  ADD CONSTRAINT `works_on_ibfk_1` FOREIGN KEY (`ssn`) REFERENCES `employee` (`ssn`),
  ADD CONSTRAINT `works_on_ibfk_2` FOREIGN KEY (`pno`) REFERENCES `project` (`pno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
