-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2017 at 08:18 AM
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
-- Database: `lab2`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer1`
--

CREATE TABLE `customer1` (
  `customer_id` int(4) NOT NULL,
  `cust_name` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `grade` int(3) NOT NULL,
  `salesman_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer1`
--

INSERT INTO `customer1` (`customer_id`, `cust_name`, `city`, `grade`, `salesman_id`) VALUES
(10, 'preethi', 'bangalore', 100, 1000),
(11, 'vivek', 'mangalore', 300, 1000),
(12, 'bhaskar', 'chennai', 400, 2000),
(13, 'chetan', 'bangalore', 200, 2000),
(14, 'mamatha', 'bangalore', 400, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ord_no` int(5) NOT NULL,
  `purchase_amt` int(10) NOT NULL,
  `ord_date` date NOT NULL,
  `customer_id` int(4) NOT NULL,
  `salesman_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ord_no`, `purchase_amt`, `ord_date`, `customer_id`, `salesman_id`) VALUES
(50, 5000, '2017-05-04', 10, 1000),
(51, 450, '2017-01-17', 10, 2000),
(52, 1000, '2017-02-24', 13, 2000),
(53, 3500, '2017-04-13', 14, 3000),
(54, 550, '2017-03-09', 12, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `salesman`
--

CREATE TABLE `salesman` (
  `salesman_id` int(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `comission` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesman`
--

INSERT INTO `salesman` (`salesman_id`, `name`, `city`, `comission`) VALUES
(1000, 'john', 'bangalore', '25'),
(2000, 'ravi', 'bangalore', '20'),
(3000, 'kumar', 'mysore', '15'),
(4000, 'smith', 'delhi', '30'),
(5000, 'harsha', 'hydrabad', '15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer1`
--
ALTER TABLE `customer1`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ord_no`);

--
-- Indexes for table `salesman`
--
ALTER TABLE `salesman`
  ADD PRIMARY KEY (`salesman_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
