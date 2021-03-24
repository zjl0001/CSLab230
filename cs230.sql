-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 24, 2021 at 10:54 AM
-- Server version: 5.7.33-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs230`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `pid` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `descript` text NOT NULL,
  `picpath` varchar(80) NOT NULL,
  `upload_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`pid`, `title`, `descript`, `picpath`, `upload_date`, `rating`) VALUES
(1, 'deathStar', '', '../gallery/604c2638df9966.98941132.jpeg', '2021-03-12 21:40:56', NULL),
(2, 'Fighting', '', '../gallery/604c27125113e2.99143918.jpeg', '2021-03-12 21:44:34', NULL),
(4, 'Darth', '', '../gallery/604c2a2ae42d97.18406195.jpeg', '2021-03-12 21:57:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `pid` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `profpic` varchar(50) NOT NULL DEFAULT '../images/default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`pid`, `fname`, `uname`, `profpic`) VALUES
(1, 'zach', '4567', '../images/default.png'),
(2, 'Bob', 'billy1', '../images/default.png'),
(3, 'aaaa', '123', '../profiles/604c260758ffe4.15371157.jpeg'),
(4, 'Zach', 'Zach', '../images/default.png');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `revid` int(11) NOT NULL COMMENT 'id for each review',
  `itemid` int(11) NOT NULL COMMENT 'id for item being reviewed',
  `uname` varchar(80) NOT NULL COMMENT 'user reviewing item',
  `title` varchar(60) NOT NULL,
  `reviewtext` text NOT NULL,
  `revdate` datetime NOT NULL,
  `ratingnum` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'is there at least 1 review'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`revid`, `itemid`, `uname`, `title`, `reviewtext`, `revdate`, `ratingnum`, `status`) VALUES
(1, 7, '123', 'aaa', 'ddd', '2021-03-19 21:22:00', 3, 1),
(2, 7, '123', '555', '555', '2021-03-19 21:23:51', 5, 1),
(3, 7, '123', '4567', '4567', '2021-03-19 21:23:58', 5, 1),
(4, 2, '123', '', '', '2021-03-19 22:03:05', 5, 1),
(5, 2, '123', 'aaa', '12345', '2021-03-19 22:03:19', 3, 1),
(6, 2, '123', 'akjdsl;fajk', 'comment', '2021-03-19 22:06:45', 1, 1),
(7, 2, '123', 'jjjjjj', 'fffff', '2021-03-19 22:25:40', 5, 1),
(8, 2, '123', 'akjdsl;fajk', 'dddddd', '2021-03-19 22:25:49', 5, 1),
(9, 2, '123', '000000', '0000000', '2021-03-19 22:30:01', 3, 1),
(10, 4, '123', 'darth', 'darth', '2021-03-19 22:35:06', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COMMENT='user database for signup and signin';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `fname`, `lname`, `uname`, `password`, `email`) VALUES
(1, 'zach', 'pink', '4567', '$2y$10$/ihko1bMSeS66GJJyikNZuGkMzbJnfl2I.flE4.d83ntMuU4Q9tIe', '4567@1.com'),
(2, 'Bob', 'Billy', 'billy1', '$2y$10$mx.8l7DdIofgJZtwQ2.UHO9bLwpnFx5d0ZGlaTmaiuEqib8kjtI5C', 'billy@1.com'),
(3, 'aaaa', 'zzzz', '123', '$2y$10$VYz2jZJ6fM8Mz44zVewepe5uPZ9HMtHegmXu1lNvSLmRY36xnDq/W', '123@1.com'),
(4, 'Zach', 'Lynch', 'Zach', '$2y$10$p5RjDytrzG7n7qQeaDbr4edgUvdkOClCjJHL4mqwmokRiqGqS1vmi', '123@1.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`revid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `revid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id for each review', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
