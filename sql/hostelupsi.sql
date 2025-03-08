-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3366
-- Generation Time: Jan 20, 2025 at 02:36 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostelupsi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'admin@gmail.com', 'D00F5D5217896FB7FD601412CB890830', '2025-01-15 12:31:45', '2025-01-16');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int NOT NULL,
  `roomno` int NOT NULL,
  `seater` int NOT NULL,
  `feespm` int NOT NULL,
  `foodstatus` int NOT NULL,
  `stayfrom` date NOT NULL,
  `duration` int NOT NULL,
  `regno` varchar(255) NOT NULL,
  `firstName` varchar(500) NOT NULL,
  `lastName` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `egycontactno` bigint NOT NULL,
  `guardianName` varchar(500) NOT NULL,
  `guardianRelation` varchar(500) NOT NULL,
  `guardianContactno` bigint NOT NULL,
  `corresAddress` varchar(500) NOT NULL,
  `corresCIty` varchar(500) NOT NULL,
  `corresPincode` int NOT NULL,
  `pmntAddress` varchar(500) NOT NULL,
  `pmntCity` varchar(500) NOT NULL,
  `pmntPincode` int NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `regno`, `firstName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmntPincode`, `postingDate`) VALUES
(24, 103, 3, 500, 0, '2025-01-23', 1, 'D20221101888', 'Muhammad', 'Zulkarnain', 'male', 199981189, 'mzlkrnainn@gmail.com', 999, 'maznah', 'ibu', 213123, 'asdasdad', 'asdasda', 0, 'asdasdad', 'asdasda', 0, '2025-01-19 22:03:25'),
(25, 104, 4, 650, 0, '2025-01-25', 1, 'D20221101876', 'Atikah', 'Malik', 'Female', 2468, 'atikah@gmail.com', 16700800, 'Ab. Malik', 'Father', 119008000, 'RUMAH PPRT KAMPUNG TANAH ROM JERANTUT FERI', 'Jerantut', 27150, 'RUMAH PPRT KAMPUNG TANAH ROM JERANTUT FERI', 'Jerantut', 27150, '2025-01-20 01:35:25'),
(26, 231, 1, 123, 0, '2025-01-22', 1, 'D20221101888', 'Muhammad ', 'Zulkarnain', 'male', 199981189, 'mzlkrnainn@gmail.com', 199123456, 'Maznah', 'Ibu', 199878979, 'UPSI', 'Perak', 40000, 'UPSI', 'Perak', 40000, '2025-01-20 11:54:29'),
(27, 123, 1, 200, 0, '2025-01-24', 1, 'D20221101888', 'Muhammad ', 'Zulkarnain', 'male', 199981189, 'mzlkrnainn@gmail.com', 1987827682, 'Maznah', 'ibu', 119008000, 'UPSI', 'Perak', 40000, 'UPSI', 'Perak', 40000, '2025-01-20 11:55:54'),
(28, 102, 2, 350, 0, '2025-01-24', 1, 'D20221101876', 'Atikah', 'Malik', 'female', 16700800, 'atikah@gmail.com', 1544134228, 'Ab. Malik', 'Father', 199878979, 'UPSI', 'Perak', 40000, 'UPSI', 'Perak', 40000, '2025-01-20 11:57:27');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int NOT NULL,
  `seater` int NOT NULL,
  `room_no` int NOT NULL,
  `fees` int NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(10, 1, 101, 200, '2025-01-09 16:00:00'),
(11, 2, 102, 350, '2025-01-10 16:00:00'),
(12, 3, 103, 500, '2025-01-11 16:00:00'),
(13, 4, 104, 650, '2025-01-12 16:00:00'),
(14, 5, 105, 800, '2025-01-13 16:00:00'),
(15, 1, 231, 123, '2025-01-18 17:45:03'),
(16, 1, 123, 200, '2025-01-20 01:20:48');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Johor'),
(2, 'Kedah'),
(3, 'Kelantan'),
(4, 'Melaka'),
(5, 'Negeri Sembilan'),
(6, 'Pahang'),
(7, 'Penang'),
(8, 'Perak'),
(9, 'Perlis'),
(10, 'Sabah'),
(11, 'Sarawak'),
(12, 'Selangor'),
(13, 'Terengganu'),
(14, 'Kuala Lumpur'),
(15, 'Labuan'),
(16, 'Putrajaya');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(45, 36, 'nain2015gempak@gmail.com', 0x3132372e302e302e31, '', '', '2025-01-16 13:19:38'),
(46, 36, 'nain2015gempak@gmail.com', 0x3132372e302e302e31, '', '', '2025-01-16 15:21:22'),
(47, 36, 'nain2015gempak@gmail.com', 0x3132372e302e302e31, '', '', '2025-01-18 17:31:24'),
(48, 36, 'nain2015gempak@gmail.com', 0x3132372e302e302e31, '', '', '2025-01-18 17:39:12'),
(49, 36, 'nain2015gempak@gmail.com', 0x3132372e302e302e31, '', '', '2025-01-19 08:20:49'),
(50, 36, 'nain2015gempak@gmail.com', 0x3132372e302e302e31, '', '', '2025-01-19 08:44:58'),
(51, 38, 'amirul@gmail.com', 0x3132372e302e302e31, '', '', '2025-01-19 09:49:48'),
(52, 36, 'nain2015gempak@gmail.com', 0x3132372e302e302e31, '', '', '2025-01-19 09:53:50'),
(53, 36, 'nain2015gempak@gmail.com', 0x3132372e302e302e31, '', '', '2025-01-19 09:58:06'),
(54, 36, 'nain2015gempak@gmail.com', 0x3132372e302e302e31, '', '', '2025-01-19 10:02:36'),
(55, 36, 'nain2015gempak@gmail.com', 0x3132372e302e302e31, '', '', '2025-01-19 10:07:56'),
(56, 36, 'nain2015gempak@gmail.com', 0x3132372e302e302e31, '', '', '2025-01-19 10:11:21'),
(57, 39, 'mzlkrnainn@gmail.com', 0x3132372e302e302e31, '', '', '2025-01-19 22:04:18'),
(58, 39, 'mzlkrnainn@gmail.com', 0x3132372e302e302e31, '', '', '2025-01-20 01:17:57'),
(59, 42, 'atikah@gmail.com', 0x3132372e302e302e31, '', '', '2025-01-20 01:33:28'),
(60, 39, 'mzlkrnainn@gmail.com', 0x3132372e302e302e31, '', '', '2025-01-20 02:56:50'),
(61, 39, 'mzlkrnainn@gmail.com', 0x3132372e302e302e31, '', '', '2025-01-20 03:22:33'),
(62, 39, 'mzlkrnainn@gmail.com', 0x3132372e302e302e31, '', '', '2025-01-20 11:43:07'),
(63, 45, 'atikah@gmail.com', 0x3132372e302e302e31, '', '', '2025-01-20 11:52:35'),
(64, 39, 'mzlkrnainn@gmail.com', 0x3132372e302e302e31, '', '', '2025-01-20 12:08:35');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int NOT NULL,
  `regNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`) VALUES
(39, 'D20221101888', 'Muhammad', 'Zulkarnain', 'Male', 199981189, 'mzlkrnainn@gmail.com', '6911ce0b67e45660207aa3fdf9f412c2', '2025-01-19 22:01:03'),
(43, 'D20221101883', 'Amirul', 'Shahrul', 'Male', 1161745814, 'd20221101883@siswa.edu.my', '762fc15b9eb367c97bb8772bd884893c', '2025-01-20 01:32:56'),
(44, 'D20221101798', 'Fatin', 'Naziha', 'Female', 189998178, 'fatin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2025-01-20 11:49:11'),
(45, 'D20221101876', 'Atikah', 'Malik', 'Female', 199788897, 'atikah@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2025-01-20 11:50:31'),
(46, 'D20221101877', 'Naif', 'Haina', 'Male', 176654545, 'naif@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2025-01-20 11:51:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
