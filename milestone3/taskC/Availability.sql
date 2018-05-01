-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 01, 2018 at 03:32 AM
-- Server version: 5.6.38
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `proj1`
--

-- --------------------------------------------------------

--
-- Table structure for table `Availability`
--

CREATE TABLE `Availability` (
  `professorID` int(11) NOT NULL,
  `day` int(1) NOT NULL,
  `starts` time DEFAULT NULL,
  `ends` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Availability`
--

INSERT INTO `Availability` (`professorID`, `day`, `starts`, `ends`) VALUES
(5681, 4, '10:00:00', '11:00:00'),
(5681, 5, '13:00:00', '14:00:00'),
(5682, 1, '12:30:00', '14:00:00'),
(5682, 5, '15:00:00', '16:00:00'),
(5687, 1, '13:00:00', '14:00:00'),
(5687, 2, '12:00:00', '13:30:00'),
(5688, 2, '13:00:00', '14:00:00'),
(5688, 3, '14:00:00', '16:00:00'),
(5689, 3, '12:00:00', '13:30:00'),
(5689, 4, '14:30:00', '16:00:00'),
(5690, 1, '12:00:00', '13:00:00'),
(5690, 4, '12:00:00', '13:30:00'),
(5691, 2, '11:00:00', '12:30:00'),
(5691, 5, '14:00:00', '15:30:00'),
(5692, 1, '12:00:00', '13:00:00'),
(5692, 3, '11:30:00', '12:30:00'),
(5693, 2, '11:30:00', '13:30:00'),
(5693, 4, '12:00:00', '14:00:00'),
(5694, 3, '10:00:00', '11:30:00'),
(5694, 5, '12:30:00', '13:30:00'),
(5695, 1, '13:00:00', '14:00:00'),
(5695, 4, '10:00:00', '11:00:00'),
(5696, 2, '13:30:00', '14:30:00'),
(5696, 5, '14:00:00', '15:30:00'),
(5697, 1, '15:00:00', '16:00:00'),
(5697, 3, '14:00:00', '15:00:00'),
(5698, 2, '16:00:00', '17:00:00'),
(5698, 4, '14:00:00', '15:30:00'),
(5699, 3, '15:00:00', '17:00:00'),
(5699, 5, '14:30:00', '15:30:00'),
(5700, 1, '14:30:00', '15:00:00'),
(5700, 4, '14:30:00', '16:00:00'),
(5701, 2, '15:00:00', '16:00:00'),
(5701, 5, '12:00:00', '13:00:00'),
(5702, 1, '12:30:00', '14:00:00'),
(5702, 3, '15:30:00', '16:30:00'),
(5703, 2, '13:30:00', '15:00:00'),
(5703, 4, '15:00:00', '16:00:00'),
(5704, 3, '15:00:00', '16:30:00'),
(5704, 5, '13:30:00', '15:00:00'),
(5705, 1, '13:30:00', '14:30:00'),
(5705, 4, '10:00:00', '11:30:00'),
(5706, 2, '14:00:00', '15:00:00'),
(5706, 5, '12:30:00', '14:00:00'),
(5707, 1, '13:00:00', '14:00:00'),
(5707, 3, '14:00:00', '15:30:00'),
(5708, 2, '12:30:00', '14:00:00'),
(5708, 4, '11:00:00', '12:00:00'),
(5709, 3, '15:00:00', '17:00:00'),
(5709, 5, '10:30:00', '12:00:00'),
(5710, 1, '11:00:00', '12:30:00'),
(5710, 4, '13:30:00', '15:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Availability`
--
ALTER TABLE `Availability`
  ADD PRIMARY KEY (`professorID`,`day`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Availability`
--
ALTER TABLE `Availability`
  ADD CONSTRAINT `availability_ibfk_1` FOREIGN KEY (`professorID`) REFERENCES `Users` (`userID`) ON DELETE CASCADE;