-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2020 at 09:57 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `w3aef`
--

-- --------------------------------------------------------

--
-- Table structure for table `logger`
--

CREATE TABLE `logger` (
  `url` varchar(200) NOT NULL,
  `flag` tinyint(4) NOT NULL,
  `details` varchar(500) NOT NULL,
  `timestamp` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logger`
--

INSERT INTO `logger` (`url`, `flag`, `details`, `timestamp`) VALUES
('https://xss-game.appspot.com/level1/frame', 1, '{\'action\': \'\', \'method\': \'get\', \'inputs\': [{\'type\': \'text\', \'name\': \'query\', \'value\': \"<Script>alert(\'hi\')</scripT>\"}, {\'type\': \'submit\', \'name\': None, \'value\': \'Search\'}], \'buttons\': []}', '2020-10-06 22:19:36'),
('https://web.whatsapp.com/', 0, 'No sql injection', '2020-10-06 22:19:54'),
('https://web.whatsapp.com/', 1, 'No XSS vulnerablity', '2020-10-06 22:19:57'),
('https://github.com/dc480506/CSS-Assignment-W3AF', 1, 'No XSS vulnerablity', '2020-10-06 22:20:20'),
('https://github.com/users/set_protocol?protocol_type=clone', 0, 'No sql injection', '2020-10-06 22:20:25'),
('https://xss-game.appspot.com/level1/frame', 1, '{\'action\': \'\', \'method\': \'get\', \'inputs\': [{\'type\': \'text\', \'name\': \'query\', \'value\': \"<Script>alert(\'hi\')</scripT>\"}, {\'type\': \'submit\', \'name\': None, \'value\': \'Search\'}], \'buttons\': []}', '2020-10-06 22:25:57');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `password`) VALUES
('1711004', 'aditi123'),
('1711006', 'dev123'),
('1711007', 'krunal123'),
('1711009', 'arvind123');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `name` varchar(25) NOT NULL,
  `rollno` int(11) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `course` varchar(25) NOT NULL,
  `user_id` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`name`, `rollno`, `mobile`, `course`, `user_id`) VALUES
('ADITI', 1711004, 1234567890, 'CSE', '1711004'),
('DEV', 1711006, 9876543210, 'IT', '1711006'),
('KRUNAL', 1711007, 6789012345, 'EXTC', '1711007'),
('ARVIND', 1711009, 9876123450, 'ETRX', '1711009');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`rollno`),
  ADD KEY `user_id` (`user_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `login` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
