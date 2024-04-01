-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2022 at 07:37 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tutorials`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `Agent_code` varchar(10) NOT NULL,
  `Agent_name` varchar(150) NOT NULL,
  `DOB` date NOT NULL,
  `Address` varchar(80) NOT NULL,
  `Pincode` int(6) NOT NULL,
  `Branch` varchar(50) NOT NULL,
  `Contact_Num` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`Agent_code`, `Agent_name`, `DOB`, `Address`, `Pincode`, `Branch`, `Contact_Num`) VALUES
('234abc231', 'Sanjay', '1966-02-21', '21/694, Satyam Apartment, Refinery Road, Gorwa', 390016, 'Vadodara', 7016636683),
('234abc232', 'Mayank Bhatt', '2022-02-01', 'badrish vihar miyawala', 248001, 'dehradun', 812655577),
('234abc233', 'Maharn', '2003-06-24', 'badrish vihar miyawala', 248001, 'sbi', 812655317),
('234abc234', 'Rohit', '2022-03-01', 'Ashok bihar rishikesh', 248001, 'ims', 812655317),
('234abc235', 'Mukal Rawat', '1991-05-21', 'Katri Syampur', 248002, 'ims', 9126553177),
('234abc236', 'Rohit Singh', '1995-10-24', 'Jolligrant', 248001, 'ims', 8126553121),
('234abc237', 'Aditiya Negi ', '2002-04-15', 'Ballawala D.Dun', 248001, 'ins ballawala', 9126553177);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_Num` bigint(10) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Middle_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Gender` char(1) NOT NULL,
  `DOB` date NOT NULL,
  `Address` varchar(70) NOT NULL,
  `Pincode` int(6) NOT NULL,
  `Contact_Number` bigint(10) NOT NULL,
  `Mother_Name` varchar(150) NOT NULL,
  `Mother_Status` varchar(10) NOT NULL,
  `Father_Name` varchar(150) NOT NULL,
  `Father_Status` varchar(10) NOT NULL,
  `Marital_status` char(1) NOT NULL,
  `Spouse` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_Num`, `First_Name`, `Middle_Name`, `Last_Name`, `Gender`, `DOB`, `Address`, `Pincode`, `Contact_Number`, `Mother_Name`, `Mother_Status`, `Father_Name`, `Father_Status`, `Marital_status`, `Spouse`) VALUES
(10002, 'Devam', 'Sanjay', 'Sheth', 'M', '2018-10-02', '21/694, Satyam Apartment, Refinery Road, Gorwa', 390016, 7016636683, 'Harsha Sheth', 'A', 'Sanjay Sheth', 'A', 'S', ''),
(10003, 'Mayank', 's', 'Bhatt', 'M', '2022-02-01', 'badrish vihar miyawala', 248001, 812655327, 'd', 'A', 'j', 'A', 'S', 'm11'),
(10014, 'Sohal', '', 'Singh', 'M', '2022-02-28', '8126273211', 248001, 812655317, 'rita', 'A', 'Gopal', 'A', 'S', 'm11'),
(10016, 'Kapil', 'singh', 'Rana', 'M', '1992-09-24', 'Aman vihar Delhi', 248001, 9123344745, 'ariti', 'A', 'kanik', 'A', 'S', 'm12'),
(10017, 'Mayank', '', 'Bhatt', 'M', '2022-03-07', 'badrish vihar miyawala', 248001, 8126553177, 'Beena Bhatt', 'A', 'R P Bhatt', 'A', 'S', 'm11'),
(10018, 'Mayank', '', 'Bhatt', 'M', '2022-03-07', 'badrish vihar miyawala', 248001, 8126553177, 'Beena Bhatt', 'A', 'R P Bhatt', 'A', 'S', 'm11');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Subject` varchar(50) NOT NULL,
  `textarea` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`Subject`, `textarea`) VALUES
('sdgsdg', ''),
('sdgsdg', 'asfafsfgfdsahddf\r\ndf\r\ngdg\r\nd\r\ngd\r\nfgd\r\ng\r\n'),
('sdgsdg', 'asfafsfgfdsahddf\r\ndf\r\ngdg\r\nd\r\ngd\r\nfgd\r\ng\r\n'),
('sdgsdg', 'asfafsfgfdsahddf\r\ndf\r\ngdg\r\nd\r\ngd\r\nfgd\r\ng\r\n'),
('sdgsdg', 'asfafsfgfdsahddf\r\ndf\r\ngdg\r\nd\r\ngd\r\nfgd\r\ng\r\n'),
('sdgsdg', 'asfafsfgfdsahddf\r\ndf\r\ngdg\r\nd\r\ngd\r\nfgd\r\ng\r\n'),
('aa', 'bb'),
('aa', 'bb'),
('aa', 'bb'),
('aa', 'bb'),
('aa', 'bb'),
('aa', 'bb'),
('sdasf', 'fbdbd'),
('Hanging Problem ', 'very bad site');

-- --------------------------------------------------------

--
-- Table structure for table `paid_premium`
--

CREATE TABLE `paid_premium` (
  `Receipt_Num` int(23) NOT NULL,
  `Receipt_Date` date NOT NULL,
  `Policy_Num` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paid_premium`
--

INSERT INTO `paid_premium` (`Receipt_Num`, `Receipt_Date`, `Policy_Num`) VALUES
(325256815, '2018-10-31', 123564789),
(325284137, '2018-11-01', 284049583),
(325289940, '2018-11-01', 123564789),
(1648129945, '2022-03-24', 232465197),
(1648133833, '2022-03-24', 284049583);

-- --------------------------------------------------------

--
-- Table structure for table `policy_data`
--

CREATE TABLE `policy_data` (
  `Policy_Num` int(15) NOT NULL,
  `Customer_Num` bigint(10) NOT NULL,
  `Agent_code` varchar(10) NOT NULL,
  `DOC` date NOT NULL,
  `Product` varchar(50) NOT NULL,
  `Sum_Assured` int(10) NOT NULL,
  `Pay_Period` int(2) NOT NULL,
  `Ins_Period` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `policy_data`
--

INSERT INTO `policy_data` (`Policy_Num`, `Customer_Num`, `Agent_code`, `DOC`, `Product`, `Sum_Assured`, `Pay_Period`, `Ins_Period`) VALUES
(284049583, 10002, '234abc231', '2007-06-20', 'Jeevan Lakshya', 450000, 35, 80),
(123456787, 10002, '234abc231', '0000-00-00', 'erp', 12000, 12, 6),
(123453534, 10002, '234abc231', '2022-03-01', 'fsf', 111, 1, 3),
(123454678, 10016, '234abc231', '2022-03-01', 'Health insurance', 4309, 12, 9),
(123454678, 10016, '234abc231', '2022-03-01', 'Health insurance', 4309, 12, 9),
(232465197, 10014, '234abc231', '2022-03-08', 'marine', 129999, 1, 3),
(123454678, 10016, '234abc235', '2022-03-16', 'Marine', 12090, 12, 9),
(123454678, 10016, '234abc235', '2022-03-16', 'Marine', 12090, 12, 9),
(123454678, 10016, '234abc235', '2022-03-16', 'Marine', 12090, 12, 9),
(123454678, 10016, '234abc235', '2022-03-16', 'Marine', 12090, 12, 9),
(123454678, 10016, '234abc235', '2022-03-16', 'Marine', 12090, 12, 9),
(224454678, 10002, '234abc235', '2022-02-28', 'Marine', 12080, 12, 6),
(123454312, 10002, '234abc231', '2022-03-02', 'car Insurance', 15900, 1, 3),
(123454312, 10002, '234abc231', '2022-03-02', 'car Insurance', 15900, 1, 3),
(123454312, 10002, '234abc231', '2022-03-02', 'car Insurance', 15900, 1, 3),
(123212398, 10016, '234abc233', '2022-03-15', 'bike Insurance', 12000, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `premium`
--

CREATE TABLE `premium` (
  `Policy_Num` int(15) NOT NULL,
  `Premium` int(10) NOT NULL,
  `Mode` varchar(3) NOT NULL,
  `Last_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `premium`
--

INSERT INTO `premium` (`Policy_Num`, `Premium`, `Mode`, `Last_date`) VALUES
(123564789, 3500, 'YLY', '2018-12-01'),
(284049583, 469, 'MLY', '0000-00-00'),
(123456789, 12000, 'YLY', '2023-02-28'),
(123456789, 92, 'MLY', '2022-04-14'),
(123456789, 100, 'MLY', '2022-04-14'),
(123456789, 50, 'MLY', '2022-04-14'),
(123456789, 50, 'MLY', '2022-04-14'),
(123456783, 83, 'MLY', '2022-04-01'),
(123453534, 3, 'MLY', '2022-04-01'),
(123454678, 40, 'MLY', '2022-04-01'),
(123454678, 40, 'MLY', '2022-04-01'),
(232465197, 129999, 'SSS', '0000-00-00'),
(123454678, 112, 'MLY', '2022-04-16'),
(123454678, 112, 'MLY', '2022-04-16'),
(123454678, 112, 'MLY', '2022-04-16'),
(123454678, 112, 'MLY', '2022-04-16'),
(123454678, 112, 'MLY', '2022-04-16'),
(224454678, 2013, 'YLY', '2023-02-28'),
(123454312, 5300, 'YLY', '2023-03-02'),
(123454312, 5300, 'YLY', '2023-03-02'),
(123454312, 5300, 'YLY', '2023-03-02'),
(123212398, 83, 'MLY', '2022-04-15');

-- --------------------------------------------------------

--
-- Table structure for table `unpaid_premium`
--

CREATE TABLE `unpaid_premium` (
  `Policy_Num` int(15) NOT NULL,
  `Fine` int(10) NOT NULL,
  `Lateness` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unpaid_premium`
--

INSERT INTO `unpaid_premium` (`Policy_Num`, `Fine`, `Lateness`) VALUES
(123564789, 0, 0),
(284049583, 0, 0),
(123456789, 0, 0),
(123456789, 0, 0),
(123456789, 0, 0),
(123456789, 0, 0),
(123456789, 0, 0),
(123456783, 0, 0),
(123453534, 0, 0),
(123454678, 0, 0),
(123454678, 0, 0),
(232465197, 0, 0),
(123454678, 0, 0),
(123454678, 0, 0),
(123454678, 0, 0),
(123454678, 0, 0),
(123454678, 0, 0),
(224454678, 0, 0),
(123454312, 0, 0),
(123454312, 0, 0),
(123454312, 0, 0),
(123212398, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`Agent_code`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_Num`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_Num` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10019;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
