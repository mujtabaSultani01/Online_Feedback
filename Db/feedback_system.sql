-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2022 at 07:16 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feedback_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `user`, `pass`) VALUES
(1, 'admin@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `user_alias` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `Province` varchar(50) NOT NULL,
  `Position` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(75) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `date` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `user_alias`, `Name`, `designation`, `Province`, `Position`, `email`, `password`, `mobile`, `date`, `status`) VALUES
(13, 'MTN0771', 'MTN', 'Telecommunication ', 'Kabul', 'Official', 'mtn@inf.af', '123', 771111111, '2022-04-24 10:21:58', 0),
(14, 'Afgh0783', 'Afghan Telecom', 'Telecommunication ', 'Kabul', 'Official', 'Tlecom@gov.af', '123', 783042103, '2022-04-24 12:36:01', 0),
(15, 'Rosh0783', 'Roshan', 'Telecommunication ', 'Kabul', 'Official', 'info@roshan.af', '123', 783042103, '2022-04-25 11:25:31', 1),
(16, 'Sala0783', 'Salaam', 'Telecommunication ', 'Kabul', 'Official', 'slaam@gov.af', '123', 783042103, '2022-04-25 11:26:25', 0),
(17, 'Sala0783', 'Salaam', 'Telecommunication ', 'Kabul', 'Official', 'slaam@info.gov.af', '123', 783042103, '2022-04-25 11:26:43', 1),
(18, 'AWCC0783', 'AWCC', 'Telecommunication ', 'Kabul', 'Official', 'awcc@tec.af', '123', 783042103, '2022-04-25 11:27:50', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `mobile`, `message`, `Date`) VALUES
(5, 'dfd', 'sanjeevtech2@gmail.com', 9015501897, 'ddd', '2016-06-29 17:53:28'),
(6, 'dfd', 'sanjeevtech2@gmail.com', 9015501897, 'ddd', '2016-06-29 17:53:43'),
(7, 'Ajazulhaq', '567890', 0, 'sdjfhkjasdf', '2022-04-23 12:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `Position_id` varchar(50) NOT NULL,
  `Company_id` varchar(50) NOT NULL,
  ` Salamm` enum('0','1') NOT NULL,
  `Afghan Telecome` enum('0','1') NOT NULL,
  `AWCC` enum('0','1') NOT NULL,
  `Roshan` enum('0','1') NOT NULL,
  `Etisalat` enum('0','1') NOT NULL,
  `MTN` enum('0','1') NOT NULL,
  `Put your Opelnl links` text NOT NULL,
  `Put your Massage` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `notice_id` int(11) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` char(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `mobile` bigint(11) NOT NULL,
  `programme` varchar(20) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `hobbies` varchar(40) NOT NULL,
  `image` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `regid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `pass`, `mobile`, `programme`, `semester`, `gender`, `hobbies`, `image`, `dob`, `regid`) VALUES
(18, 'Ajazulhaq Afzlai', 'a.afzali@atra.gov.af', '202cb962ac59075b964b07152d234b70', 783042103, 'BCA', 'i', 'm', 'reading,singin', 'Aja pic.jpg', '1995-04-24', '2022-04-24 09:52:16'),
(19, 'mustafa', 'mustafa@gmail.com', '202cb962ac59075b964b07152d234b70', 783042103, 'MCA', 'iii', 'm', 'reading', 'rapor.PNG', '1960-05-16', '2022-04-24 11:33:51'),
(20, 'hamind', 'hamind@gmail.com', '202cb962ac59075b964b07152d234b70', 783042103, 'wardak', 'Unoffical', 'm', 'singin,playing', 'messy-children-art-craft-kids-dirty-156338656.jpg', '1964-08-15', '2022-04-25 11:53:21'),
(21, 'nawid', 'nawid@gmail.com', '202cb962ac59075b964b07152d234b70', 783042103, '', 'Kunar', 'm', 'reading', 'Edited 1.jpg', '1960-11-17', '2022-04-25 12:01:51'),
(22, 'Ahmad', 'ahmad@mtn.com', '202cb962ac59075b964b07152d234b70', 783042103, '', 'Parwan', 'm', 'reading', 'skynews-kabul-afghanistan_5488011.jpg', '1963-07-16', '2022-04-25 12:05:14'),
(23, 'nawid', 'NAwIID@GMIL.COM', '202cb962ac59075b964b07152d234b70', 783042103, '', 'Kabul', 'm', 'reading', 'fe0863da-fe8d-11eb-83d9-2f907cc4e7e5_image_hires_2', '1966-11-16', '2022-04-25 12:06:05'),
(24, 'khan', 'kkhan@gmail.com', '202cb962ac59075b964b07152d234b70', 783042103, '', 'Kunar', 'f', 'reading', 'coaching-mentoring-education-business-training-dev', '1964-11-14', '2022-04-25 12:08:30'),
(25, 'kkkahn', 'kkkan@mil.com', '202cb962ac59075b964b07152d234b70', 783042103, '', 'Kunar', 'f', 'reading', 'coaching-mentoring-education-business-training-dev', '1964-04-15', '2022-04-25 12:09:10'),
(26, 'jjan', 'jjjan@yahoo.com', '202cb962ac59075b964b07152d234b70', 783042103, '', 'Kunar', 'm', 'reading', 'business-people-colsuting-workshop-analyzing-strat', '1965-10-17', '2022-04-25 12:12:27'),
(27, 'haroon', 'haroon@gmail.com', '202cb962ac59075b964b07152d234b70', 783042103, 'unffical', 'wardak', 'm', 'reading', 'business-conference-presentation-team-training-fli', '1965-10-18', '2022-04-25 12:15:08'),
(28, 'parwiz', 'parwz@gmail.com', '202cb962ac59075b964b07152d234b70', 9809098909, 'unffical', 'Parwan', 'm', 'reading,singin,playing', 'Even-in-times-of-turmoil-businesses-should-strive-', '1964-09-13', '2022-04-25 12:25:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `company` ADD FULLTEXT KEY `email` (`email`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `user` ADD FULLTEXT KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
