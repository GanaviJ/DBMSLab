-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2017 at 08:35 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lab1`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `Book_id` int(11) NOT NULL,
  `Title` varchar(20) DEFAULT NULL,
  `Pub_year` varchar(20) DEFAULT NULL,
  `Publisher_Name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`Book_id`, `Title`, `Pub_year`, `Publisher_Name`) VALUES
(1, 'DBMS', 'Jan-2017', 'Mcgraw_Hill'),
(2, 'ADBMS', 'Jun-2016', 'Mcgraw-Hill'),
(3, 'CN', 'Sep-2016', 'Pearson'),
(4, 'CG', 'Sep-2015', 'Grupo Planeta'),
(5, 'OS', 'May-2016', 'Pearson');

-- --------------------------------------------------------

--
-- Table structure for table `book_authors`
--

CREATE TABLE `book_authors` (
  `Book_id` int(11) NOT NULL,
  `Author_Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_authors`
--

INSERT INTO `book_authors` (`Book_id`, `Author_Name`) VALUES
(1, 'Navathe'),
(2, 'Navathe'),
(3, 'Tanenbaum'),
(4, 'Edward Angel'),
(5, 'Galvin');

-- --------------------------------------------------------

--
-- Table structure for table `book_copies`
--

CREATE TABLE `book_copies` (
  `Book_ID` int(11) NOT NULL,
  `Branch_ID` int(11) NOT NULL,
  `No_Of_Copies` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_copies`
--

INSERT INTO `book_copies` (`Book_ID`, `Branch_ID`, `No_Of_Copies`) VALUES
(1, 10, 10),
(1, 11, 5),
(2, 12, 2),
(2, 13, 5),
(3, 14, 7),
(4, 11, 3),
(5, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `book_lending`
--

CREATE TABLE `book_lending` (
  `Book_ID` int(11) NOT NULL,
  `Branch_ID` int(11) NOT NULL,
  `Card_No` int(11) NOT NULL,
  `Date_Out` date DEFAULT NULL,
  `Due_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_lending`
--

INSERT INTO `book_lending` (`Book_ID`, `Branch_ID`, `Card_No`, `Date_Out`, `Due_Date`) VALUES
(1, 10, 101, '0000-00-00', '0000-00-00'),
(1, 11, 104, '0000-00-00', '0000-00-00'),
(2, 13, 101, '0000-00-00', '0000-00-00'),
(3, 14, 101, '0000-00-00', '0000-00-00'),
(4, 11, 101, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `library_branch`
--

CREATE TABLE `library_branch` (
  `Branch_ID` int(11) NOT NULL,
  `Branch_Name` varchar(20) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_branch`
--

INSERT INTO `library_branch` (`Branch_ID`, `Branch_Name`, `Address`) VALUES
(10, NULL, NULL),
(11, 'RNSIT', 'Bangalore'),
(12, 'Rajaji Nagar', 'Bangalore'),
(13, 'Nitte', 'Managalore'),
(14, 'Manipal', 'Udupi');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `Name` varchar(20) NOT NULL,
  `Phone` int(11) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`Name`, `Phone`, `Address`) VALUES
('Grupo Planeta', 2147483647, 'Bangalore'),
('Hachette Livre', 2147483647, 'Chennai'),
('Mcgraw-hill', 2147483647, 'Bangalore'),
('Pearson', 2147483647, 'NewDelhi'),
('Random House', 2147483647, 'Hyderabad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`Book_id`);

--
-- Indexes for table `book_authors`
--
ALTER TABLE `book_authors`
  ADD PRIMARY KEY (`Book_id`,`Author_Name`);

--
-- Indexes for table `book_copies`
--
ALTER TABLE `book_copies`
  ADD PRIMARY KEY (`Book_ID`,`Branch_ID`);

--
-- Indexes for table `book_lending`
--
ALTER TABLE `book_lending`
  ADD PRIMARY KEY (`Book_ID`,`Branch_ID`,`Card_No`);

--
-- Indexes for table `library_branch`
--
ALTER TABLE `library_branch`
  ADD PRIMARY KEY (`Branch_ID`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`Name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
