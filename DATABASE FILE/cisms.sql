-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2021 at 10:32 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cisms`
--

-- --------------------------------------------------------

--
-- Table structure for table `mentor`
--

CREATE TABLE `mentor` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(2) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `postal` int(11) NOT NULL,
  `country` varchar(200) NOT NULL,
  `designation` varchar(5) NOT NULL,
  `ment_pic` varchar(256) NOT NULL DEFAULT 'profile.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mentor`
--

INSERT INTO `mentor` (`id`, `email`, `dob`, `gender`, `city`, `state`, `postal`, `country`, `designation`, `ment_pic`) VALUES
(38, 'steven@gmail.com', '1980-07-27', 'm', 'Chicago', 'Illinois', 69650, 'United', 'HOD', 'profile.jpg'),
(39, 'daniel@gmail.com', '0000-00-00', 'm', 'Kabankalan City', 'Negros Occidental', 6109, 'Philippines', 'PRO', 'profile.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(2) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `postal` int(15) NOT NULL,
  `country` text NOT NULL,
  `course` varchar(10) NOT NULL,
  `yop` int(4) NOT NULL,
  `marks` float NOT NULL,
  `college` text NOT NULL,
  `stu_pic` varchar(256) NOT NULL DEFAULT 'profile.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `email`, `dob`, `gender`, `city`, `state`, `postal`, `country`, `course`, `yop`, `marks`, `college`, `stu_pic`) VALUES
(37, 'jude@gmail.com', '1996-02-11', 'm', 'Himamaylan City', 'Negros Occidental', 6108, 'Philippines', 'BTech', 2022, 90, 'Carlos Hilado Memorial State University', '278e037b11f268b5b7cd0ae5a026647e.png');

-- --------------------------------------------------------

--
-- Table structure for table `uni`
--

CREATE TABLE `uni` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `founder_day` date NOT NULL,
  `college1` varchar(256) NOT NULL,
  `seats1` int(7) NOT NULL,
  `college2` varchar(256) NOT NULL,
  `seats2` int(7) NOT NULL,
  `college3` varchar(256) NOT NULL,
  `seats3` int(7) NOT NULL,
  `college4` varchar(256) NOT NULL,
  `seats4` int(7) NOT NULL,
  `college5` varchar(256) NOT NULL,
  `seats5` int(7) NOT NULL,
  `reg_no` varchar(20) NOT NULL,
  `uni_pic` varchar(256) NOT NULL DEFAULT 'profile.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uni`
--

INSERT INTO `uni` (`id`, `email`, `founder_day`, `college1`, `seats1`, `college2`, `seats2`, `college3`, `seats3`, `college4`, `seats4`, `college5`, `seats5`, `reg_no`, `uni_pic`) VALUES
(40, 'suarez081119@gmail.com', '2013-10-11', 'ITSOURCECODE College', 306, 'Proud Pinoy College', 402, '', 511, '', 215, '', 323, '355751354', '2eaade566f35a9de3e631c6171775b24.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(256) NOT NULL,
  `user_type` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `password`, `user_type`) VALUES
(37, 'Jude', 'Suarez', 'jude@gmail.com', '123', 'student'),
(39, 'Adones', 'Evangelista', 'adones@gmail.com', '123', 'mentor'),
(40, 'IT SOURCECODE', 'University', 'suarez081119@gmail.com', 'itsourcecode', 'university');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mentor`
--
ALTER TABLE `mentor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uni`
--
ALTER TABLE `uni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
