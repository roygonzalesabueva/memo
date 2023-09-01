-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2023 at 09:51 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `mem_id` int(11) NOT NULL,
  `trackid` varchar(100) NOT NULL,
  `date_created` varchar(255) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`mem_id`, `trackid`, `date_created`, `firstname`, `lastname`, `section`, `address`) VALUES
(672, '', ' 2023/08/13', 'stacruz.nhs@deped.gov.ph', ' dddd', '', ''),
(673, '', ' 2023/08/13', 'stacruz.nhs@deped.gov.ph', ' gggggggggggg', '', ''),
(674, '', ' 2023/08/13', 'scces@deped.gov.ph', ' scces', '', ''),
(675, '', ' 2023/08/13', 'scces@deped.gov.ph', ' try', '', ''),
(676, '', ' 2023/08/13', 'scces@deped.gov.ph', ' ', '', ''),
(677, '', ' 2023/08/13', 'scces@deped.gov.ph', ' pls send me now', '', ''),
(678, '', ' 2023/08/15', 'admin', ' jhckdjhfs', '', ''),
(679, '', ' 2023/08/16', 'stacruz.nhs@deped.gov.ph', 'gdfgf', '', ''),
(680, '', ' 2023/08/16', 'stacruz.nhs@deped.gov.ph', 'dffkgjdkfgjdroy', '', ''),
(681, '', ' 2023/08/16', 'stacruz.nhs@deped.gov.ph', 'fajskfjs', '', ''),
(682, '', ' 2023/08/16', 'stacruz.nhs@deped.gov.ph', 'dfsdzfsd', '', ''),
(683, '', ' 2023/08/16', 'stacruz.nhs@deped.gov.ph', 'jay', '', ''),
(684, '', ' 2023/08/16', 'scces@deped.gov.ph', 'helo nana menmo', '', ''),
(685, '', ' 2023/08/16', 'stacruz.nhs@deped.gov.ph', 'yes nanana', '', ''),
(686, '', ' 2023/08/17', 'teacher', 'vxcvzxc', '', ''),
(687, '', ' 2023/08/17', 'teacher', 'roy abueva', '', ''),
(688, '', ' 2023/08/17', 'teacher', 'fskldfkasdfj', '', ''),
(689, '', ' 2023/08/18', '1', 'gfhdgfhdf  dgjdf gdj drthd dgfdfj dfjdfjdfjdf ', '', ''),
(690, '', ' 2023/08/18', '1', 'dsfjakl;sdhflkh laknglak snlkandflk naz lsknalekdn', '', ''),
(691, '', ' 2023/08/18', '1', 'dfgdfgd g dfg sdg  hdfg sdrgs ags sg  se hseh sseg', '', ''),
(692, '', ' 2023/08/18', '1', 'bbbbbbbbbbbbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbb ', '', ''),
(693, '', ' 2023/08/18', 'stacruz.nhs@deped.gov.ph', 'nnnnnnnnnnnnnnnn', '', ''),
(694, '', ' 2023/08/18', 'scces@deped.gov.ph', 'nnnnnnnnnnnnnnnnnhhhhhhhhhhhhhh', '', ''),
(695, '', ' 2023/08/24', 'stacruz.nhs@deped.gov.ph', 'ABUEVA', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filesscces`
--

CREATE TABLE `filesscces` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filesscces_history`
--

CREATE TABLE `filesscces_history` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filesscnhs`
--

CREATE TABLE `filesscnhs` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filesscnhs_history`
--

CREATE TABLE `filesscnhs_history` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `parent_id` int(30) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1+admin , 2 = users'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'admin', 'admin123', 1),
(5, 'abueva', 'abueva', 'Pass1234', 2),
(7, 'Rani', 'Rani', 'Pass1234', 2),
(14, 'asdsada', '<html>Hi</html>', 'record', 1),
(15, 'abueva', 'abueva', 'abueva', 1);

-- --------------------------------------------------------

--
-- Table structure for table `usersadmin`
--

CREATE TABLE `usersadmin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usersadmin`
--

INSERT INTO `usersadmin` (`id`, `username`, `password`, `email`, `country`) VALUES
(4, 'administrator', 'admin', 'admin@deped.gov.ph', 'Philippines');

-- --------------------------------------------------------

--
-- Table structure for table `usersasds`
--

CREATE TABLE `usersasds` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usersasds`
--

INSERT INTO `usersasds` (`id`, `username`, `password`, `email`, `country`) VALUES
(4, 'stacruz.nhs@deped.gov.ph', 'scnhs', 'scnhs@deped.gov.ph', 'Philippines');

-- --------------------------------------------------------

--
-- Table structure for table `usersscces`
--

CREATE TABLE `usersscces` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usersscces`
--

INSERT INTO `usersscces` (`id`, `username`, `password`, `email`, `country`) VALUES
(4, 'scces@deped.gov.ph', 'scces', 'scces@deped.gov.ph', 'Philippines');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`mem_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filesscces`
--
ALTER TABLE `filesscces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filesscces_history`
--
ALTER TABLE `filesscces_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filesscnhs`
--
ALTER TABLE `filesscnhs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filesscnhs_history`
--
ALTER TABLE `filesscnhs_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usersadmin`
--
ALTER TABLE `usersadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usersasds`
--
ALTER TABLE `usersasds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usersscces`
--
ALTER TABLE `usersscces`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=696;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=488;

--
-- AUTO_INCREMENT for table `filesscces`
--
ALTER TABLE `filesscces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=488;

--
-- AUTO_INCREMENT for table `filesscces_history`
--
ALTER TABLE `filesscces_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=488;

--
-- AUTO_INCREMENT for table `filesscnhs`
--
ALTER TABLE `filesscnhs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=488;

--
-- AUTO_INCREMENT for table `filesscnhs_history`
--
ALTER TABLE `filesscnhs_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=488;

--
-- AUTO_INCREMENT for table `folders`
--
ALTER TABLE `folders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `usersadmin`
--
ALTER TABLE `usersadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usersasds`
--
ALTER TABLE `usersasds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `usersscces`
--
ALTER TABLE `usersscces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
