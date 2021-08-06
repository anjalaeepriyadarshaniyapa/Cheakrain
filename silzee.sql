-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2021 at 12:15 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `silzee`
--

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE `device` (
  `devi_id` int(11) NOT NULL,
  `device` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `device`
--

INSERT INTO `device` (`devi_id`, `device`) VALUES
(1, 'I Phone'),
(2, 'I Pad'),
(3, 'I Pod Touch');

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `m_id` int(11) NOT NULL,
  `model_name` varchar(225) NOT NULL,
  `device_id` int(11) NOT NULL,
  `start_varsion` varchar(225) NOT NULL,
  `end_varsion` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`m_id`, `model_name`, `device_id`, `start_varsion`, `end_varsion`) VALUES
(1, 'iPhone 5C  ', 1, '1', '58'),
(2, 'iPhone 5S ', 1, '1', '58'),
(3, 'iPhone 6    ', 1, '1', '58'),
(4, 'iPhone 6 Plus ', 1, '1', '58'),
(5, 'iPhone 6s ', 1, '1', '58'),
(6, 'iPhone 6s Plus', 1, '1', '58'),
(7, 'iPhone SE (1st)', 1, '1', '58'),
(8, 'iPhone 7', 1, '1', '58'),
(9, 'iPhone 7 Plus', 1, '1', '58'),
(10, 'iPhone 8', 1, '1', '58'),
(11, 'iPhone 8 Plus', 1, '1', '58'),
(12, 'iPhone X', 1, '1', '58'),
(13, 'iPhone XS', 1, '1', '58'),
(14, 'iPhone XS Max', 1, '1', '58'),
(15, 'iPhone XR   ', 1, '1', '58'),
(16, 'iPhone 11', 1, '1', '58'),
(17, 'iPhone 11 Pro ', 1, '1', '58'),
(18, 'iPhone 11 Pro Max', 1, '1', '58'),
(19, 'iPhone SE 2nd Gen', 1, '1', '58'),
(20, 'iPhone 12 Mini ', 1, '1', '58'),
(21, 'iPhone 12', 1, '1', '58'),
(22, 'iPhone 12 Pro ', 1, '1', '58'),
(23, 'iPhone 12 Pro Max', 1, '1', '58'),
(24, 'iPad Air\r\n', 2, '1', '58'),
(25, 'iPad Mini 2', 2, '1', '58'),
(26, 'iPad Mini 3', 2, '1', '58'),
(27, 'iPad Air 2\r\n', 2, '1', '58'),
(28, 'iPad Mini 4', 2, '1', '58'),
(29, 'iPad Pro (1st,12.9)', 2, '1', '58'),
(30, 'iPad Pro(1st,9.7)', 2, '1', '58'),
(31, 'iPad (5th Generation)', 2, '1', '58'),
(32, 'iPad Pro (2nd, 12.9)', 2, '1', '58'),
(33, 'iPad Pro (2nd, 10.5\')', 2, '1', '58'),
(34, 'iPad (6th generation)', 2, '1', '58'),
(35, 'iPad Pro (3rd, 11)', 2, '1', '58'),
(36, 'iPad Pro (3rd, 12.9\")', 2, '1', '58'),
(37, 'iPad Air (3rd generation)\r\n', 2, '1', '58'),
(38, 'iPad Mini (5th generation)\r\n', 2, '1', '58'),
(39, 'iPad (7th generation)\r\n', 2, '1', '58'),
(40, 'iPad Pro (4th, 11)\r\n', 2, '1', '58'),
(41, 'iPad Pro (4th, 12.9)', 2, '1', '58'),
(42, 'iPad (8th generation)', 2, '1', '58'),
(43, 'iPad Air (4th generation)\r\n', 2, '1', '58'),
(44, '7G', 3, '40', '58');

-- --------------------------------------------------------

--
-- Table structure for table `model_tool`
--

CREATE TABLE `model_tool` (
  `id` int(225) NOT NULL,
  `model_id` int(225) NOT NULL,
  `tool_id` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `model_tool`
--

INSERT INTO `model_tool` (`id`, `model_id`, `tool_id`) VALUES
(1, 5, 1),
(2, 6, 1),
(3, 7, 1),
(4, 8, 1),
(5, 9, 1),
(6, 10, 1),
(7, 11, 1),
(8, 12, 1),
(9, 29, 1),
(10, 30, 1),
(11, 32, 1),
(12, 33, 1),
(13, 34, 1),
(14, 39, 1),
(15, 44, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tool`
--

CREATE TABLE `tool` (
  `id` int(11) NOT NULL,
  `tool_name` varchar(225) NOT NULL,
  `link` varchar(225) NOT NULL,
  `alternative_link` varchar(225) NOT NULL,
  `image` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tool`
--

INSERT INTO `tool` (`id`, `tool_name`, `link`, `alternative_link`, `image`) VALUES
(1, 'Cheakrain', 'https://silzee.com/Checkm8/', 'https://silzee.com/tweaked-apps/', 'img-checkrain.png'),
(2, 'testing', 'www.w3school.com', 'www.w3school.com', 'img-cheakrain.png');

-- --------------------------------------------------------

--
-- Table structure for table `tool_varsion`
--

CREATE TABLE `tool_varsion` (
  `id` int(11) NOT NULL,
  `tool_id` int(11) NOT NULL,
  `varsions_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tool_varsion`
--

INSERT INTO `tool_varsion` (`id`, `tool_id`, `varsions_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 20),
(18, 1, 21),
(19, 1, 22),
(20, 1, 23),
(21, 1, 24),
(22, 1, 25),
(23, 1, 26),
(24, 1, 27),
(25, 1, 28),
(26, 1, 29),
(27, 1, 30),
(28, 1, 31),
(29, 1, 32),
(30, 1, 33),
(31, 1, 34),
(32, 1, 35),
(33, 1, 36),
(34, 1, 37),
(35, 1, 38),
(36, 1, 39),
(37, 1, 40),
(38, 1, 41),
(39, 1, 42),
(40, 1, 43),
(41, 1, 44),
(42, 1, 45),
(43, 1, 46),
(44, 1, 47),
(45, 1, 48),
(46, 1, 49),
(47, 1, 50),
(48, 1, 51),
(49, 1, 52),
(50, 1, 53),
(51, 1, 54),
(52, 1, 55),
(53, 1, 56),
(54, 1, 57),
(55, 1, 58);

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE `versions` (
  `id` int(11) NOT NULL,
  `versions_number` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `versions`
--

INSERT INTO `versions` (`id`, `versions_number`) VALUES
(1, '12.0 \r\n'),
(2, ' 12.0.1'),
(3, ' 12.1 '),
(4, '  12.1.1 	'),
(5, ' 12.1.2'),
(6, ' 12.1.3'),
(7, ' 12.1.4'),
(8, '  12.2	'),
(9, ' 12.3'),
(10, ' 12.3.1'),
(11, ' 12.3.2'),
(12, '  12.4	'),
(13, ' 12.4.1'),
(14, ' 12.4.2'),
(15, ' 12.4.3'),
(16, '  12.4.4	'),
(17, ' 12.4.5'),
(18, ' 12.4.6'),
(19, ' 12.4.7'),
(20, '  12.4.8	'),
(21, ' 12.4.9'),
(22, ' 12.5'),
(23, ' 12.5.1'),
(24, '  12.5.2	'),
(25, ' 12.5.3'),
(26, ' 12.5.4'),
(27, ' 13.0'),
(28, '  13.1'),
(29, ' 13.1.1'),
(30, ' 13.1.2'),
(31, ' 13.1.3'),
(32, '  13.2	'),
(33, ' 13.2.1'),
(34, ' 13.2.2'),
(35, ' 13.2.3'),
(36, '  13.3	'),
(37, ' 13.3.1'),
(38, ' 13.4'),
(39, ' 13.4.1'),
(40, '  13.5'),
(41, ' 13.5.1'),
(42, ' 13.6'),
(43, ' 13.6.1'),
(44, '  13.7'),
(45, ' 14.0'),
(46, ' 14.0.1'),
(47, ' 14.1'),
(48, '  14.2'),
(49, ' 14.2.1'),
(50, ' 14.3'),
(51, ' 14.4'),
(52, '  14.4.1'),
(53, ' 14.4.2'),
(54, ' 14.5'),
(55, ' 14.5.1'),
(56, '  14.6'),
(57, ' 14.7'),
(58, ' 14.7.1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`devi_id`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `model_tool`
--
ALTER TABLE `model_tool`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tool`
--
ALTER TABLE `tool`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tool_varsion`
--
ALTER TABLE `tool_varsion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `versions`
--
ALTER TABLE `versions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `device`
--
ALTER TABLE `device`
  MODIFY `devi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `model`
--
ALTER TABLE `model`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `model_tool`
--
ALTER TABLE `model_tool`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tool`
--
ALTER TABLE `tool`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tool_varsion`
--
ALTER TABLE `tool_varsion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `versions`
--
ALTER TABLE `versions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
