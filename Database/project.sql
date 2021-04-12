-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2021 at 07:50 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `application1`
--

CREATE TABLE `application1` (
  `student_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `application1`
--

INSERT INTO `application1` (`student_id`, `company_id`) VALUES
(181112023, 2),
(181112081, 2);

-- --------------------------------------------------------

--
-- Table structure for table `basicdetails`
--

CREATE TABLE `basicdetails` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `LastName` varchar(25) NOT NULL,
  `USN` varchar(10) NOT NULL,
  `Mobile` bigint(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `DOB` date NOT NULL,
  `Sem` int(11) NOT NULL,
  `Branch` varchar(15) NOT NULL,
  `SSLC` float NOT NULL,
  `PU/Dip` float NOT NULL,
  `BE` float NOT NULL,
  `Backlogs` int(11) NOT NULL,
  `HofBacklogs` tinyint(1) NOT NULL,
  `DetainYears` int(11) NOT NULL,
  `Approve` tinyint(1) NOT NULL DEFAULT 0,
  `ApprovalDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `basicdetails`
--

INSERT INTO `basicdetails` (`Id`, `FirstName`, `LastName`, `USN`, `Mobile`, `Email`, `DOB`, `Sem`, `Branch`, `SSLC`, `PU/Dip`, `BE`, `Backlogs`, `HofBacklogs`, `DetainYears`, `Approve`, `ApprovalDate`) VALUES
(15, 'Dev', 'Goyal', '181112081', 9518096664, 'devgoyal2028@gmail.com', '1999-05-28', 3, 'CSE', 90, 90, 90, 0, 0, 0, 0, '0000-00-00'),
(16, 'hrishi', 'henga', '181112023', 9100000000, 'henga@gmail.com', '1999-02-02', 5, 'CSE', 50, 50, 50, 0, 0, 0, 0, '0000-00-00'),
(17, 'naman', 'khandelwal', '181112035', 5454545454, 'naman@gmail.com', '1999-02-02', 5, 'CSE', 80, 50, 4, 0, 0, 0, 0, '0000-00-00'),
(18, 'sachin', 'gupta', '181112037', 9595959595, 'tau@gmail.com', '1999-02-02', 5, 'mech', 90, 90, 90, 0, 0, 0, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `plogin`
--

CREATE TABLE `plogin` (
  `Id` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plogin`
--

INSERT INTO `plogin` (`Id`, `Name`, `Username`, `Password`, `Email`, `Question`, `Answer`) VALUES
(2, 'Samsung', 'Samsung', 'Samsung', 'Samsung@gmail.com', 'empty', 'empty');

-- --------------------------------------------------------

--
-- Table structure for table `slogin`
--

CREATE TABLE `slogin` (
  `id` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `USN` varchar(10) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slogin`
--

INSERT INTO `slogin` (`id`, `Name`, `USN`, `PASSWORD`, `Email`, `Question`, `Answer`) VALUES
(12, 'Dev Goyal', '181112081', '123456', 'devgoyal2028@gmail.com', 'What is your pet name?', 'hrishi'),
(13, 'hrishi', '181112023', '123456', 'henga@gmail.com', 'What is your enemy name?', 'sumit rathore'),
(14, 'naman khandelwal', '181112035', '123456', 'naman@gmail.com', 'What is your nickname?', 'ramu'),
(15, 'archit kuhar', '181112105', '123456', 'archit@gmail.com', 'What is your nickname?', 'dheela'),
(16, 'Sachin', '181112037', '123456', 'tau@gmail.com', 'What is your enemy name?', 'shilpi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application1`
--
ALTER TABLE `application1`
  ADD PRIMARY KEY (`student_id`,`company_id`);

--
-- Indexes for table `basicdetails`
--
ALTER TABLE `basicdetails`
  ADD PRIMARY KEY (`Id`,`USN`),
  ADD UNIQUE KEY `USN` (`USN`,`Mobile`,`Email`);

--
-- Indexes for table `plogin`
--
ALTER TABLE `plogin`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Username` (`Username`,`Email`);

--
-- Indexes for table `slogin`
--
ALTER TABLE `slogin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `USN` (`USN`,`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basicdetails`
--
ALTER TABLE `basicdetails`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `plogin`
--
ALTER TABLE `plogin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slogin`
--
ALTER TABLE `slogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
