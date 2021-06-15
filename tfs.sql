-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2021 at 06:42 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tfs`
--

-- --------------------------------------------------------

--
-- Table structure for table `call`
--

CREATE TABLE `call` (
  `s.no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `msg` varchar(150) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `s.no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `msg` varchar(30) NOT NULL,
  `date` int(11) DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`s.no`, `name`, `email`, `subject`, `msg`, `date`) VALUES
(1, 'ankit', 'abc@gmail.com', 'abc', 'hioi', NULL),
(3, 'ankit', 'abc@gmail.com', 'abc', 'hioi', NULL),
(4, 'ANKIT RAJ', 'ankitbhaktraj@gmail.com', 'hi', 'hii everyone', 2021),
(5, 'King Computer', 'ankitbhaktraj1@gmail.com', 'abc', 'ankitraj', 2021),
(6, 'abr', 'gamingraajy@gmail.com', 'hi', 'ankit raj', 2021),
(7, 'abr', 'gamingraajy@gmail.com', 'hi', 'ankit raj', 2021),
(8, 'ANKIT RAJ', 'gamingraajy@gmail.com', 'abc', 'hey every one how are you\r\n', 2021),
(9, 'ANKIT RAJ', 'gamingraajy@gmail.com', 'abc', 'hey every one how are you\r\n', 2021),
(10, 'ANKIT RAJ', 'gamingraajy@gmail.com', 'abc', 'hey every one how are you\r\n', 2021);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `imgfile` varchar(50) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`sno`, `title`, `content`, `imgfile`, `date`) VALUES
(1, 'bharat dharshan', 'hi every one i lve you all best of luck for every think', 'kathmandu.jpg', '0000-00-00'),
(1, 'bharat dharshan', 'hi every one i lve you all best of luck for every think', 'kathmandu.jpg', '0000-00-00'),
(1, 'Raj ', 'hii every one i love you to all ', 'ankitraj.jpg', '0000-00-00'),
(1, 'Raj ', 'hii every one i love you to all ', 'ankitraj.jpg', '0000-00-00'),
(0, 'ankit', 'bharat', 'ankitraj.jpg', '0000-00-00'),
(2, 'ankit raj', 'hii ebery', 'ankitraj.jpg', '0000-00-00'),
(3, 'riya', 'hiii', 'leh.jpg', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `call`
--
ALTER TABLE `call`
  ADD PRIMARY KEY (`s.no`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`s.no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `call`
--
ALTER TABLE `call`
  MODIFY `s.no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `s.no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
