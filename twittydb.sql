-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2022 at 09:03 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `twitty`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `postsnaja` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `us` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `postsnaja`, `us`) VALUES
(82, 'joooo', 'big'),
(83, 'hiiiiiii', 'big7983'),
(86, 'hello', 'bestbkk'),
(104, 'DAD', 'best'),
(107, 'dadad', 'hello'),
(108, 'uuu', 'hello'),
(109, 'hello', 'best'),
(110, 'daa', 'ghjghjgh');

-- --------------------------------------------------------

--
-- Table structure for table `rating_info`
--

CREATE TABLE `rating_info` (
  `name` varchar(255) NOT NULL,
  `post_id` int(11) NOT NULL,
  `rating_action` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating_info`
--

INSERT INTO `rating_info` (`name`, `post_id`, `rating_action`) VALUES
('8', 82, 'like'),
('8', 83, 'like'),
('8', 86, 'like'),
('8', 104, 'dislike'),
('8', 107, 'like'),
('8', 108, 'like'),
('8', 109, 'dislike'),
('8', 110, 'like'),
('9', 82, 'like'),
('9', 83, 'dislike'),
('9', 86, 'like'),
('9', 104, 'dislike'),
('9', 107, 'like'),
('9', 108, 'dislike'),
('9', 109, 'like'),
('9', 110, 'dislike');

-- --------------------------------------------------------

--
-- Table structure for table `user_form`
--

CREATE TABLE `user_form` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_form`
--

INSERT INTO `user_form` (`id`, `name`, `email`, `password`, `image`) VALUES
(3, 'big', 'rtx3060@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'download.jpg'),
(4, 'ghjghjghjgh', 'bazuka11223300@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'download.jpg'),
(5, 'big7983', 'b@b', '81dc9bdb52d04dc20036dbd8313ed055', '_124800859_gettyimages-817514614.jpg'),
(6, 'bestbkk', 'bestbkk@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'angry_chihuahua.png'),
(8, 'hello', 'dada@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '6aofsvaglm_Medium_WW226365.jpg'),
(9, 'best', 'bestchatchawanbest@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'e0b88be0b8b2e0b8a1e0b8ade0b8a2e0b894e0b98c.jpg'),
(10, 'ghjghjgh', 'gaga@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'ดาวน์โหลด.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_info`
--
ALTER TABLE `rating_info`
  ADD UNIQUE KEY `UC_rating_info` (`name`,`post_id`);

--
-- Indexes for table `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `user_form`
--
ALTER TABLE `user_form`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
