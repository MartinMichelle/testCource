-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 12, 2017 at 02:53 PM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xyz`
--

-- --------------------------------------------------------

--
-- Table structure for table `abc`
--

CREATE TABLE `abc` (
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `abc`
--

INSERT INTO `abc` (`name`, `age`) VALUES
('ma', 122),
('sad', 45);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `idproject` int(11) NOT NULL,
  `project_name` varchar(500) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`idproject`, `project_name`, `id_user`) VALUES
(6, 'qw', 11),
(7, 'martin', 11),
(8, 'martinmichelle', 11);

-- --------------------------------------------------------

--
-- Table structure for table `smaccounts`
--

CREATE TABLE `smaccounts` (
  `id_account` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_project` int(11) NOT NULL,
  `account_name` int(11) NOT NULL,
  `account_href` varchar(590) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'martin', 'martinmichelleebad@gmail.com', '$2a$10$Tm1VVJnlQ7zIiWhEpp7OcOo8f5PHstJVGw6tcimvKxebJ0VNQQODy'),
(8, 'marr', 'martinmichelleebad@yahoo.com', '$2a$10$4KfMHwdpUoVFllRar7zBXuleBr8c6G77p21GG6cp2Mvbno7rq6.5C'),
(9, 'mathew', 'mathew@gmail', '$2a$10$3R8XyhCMV3ICyXAPBp7ek.GlXCVp1xbb1H2ITN3TGiHH98BUs.1Yq'),
(11, 'Hany', 'hany@gmail.com', '$2a$10$NIMQP9QYpkVHqQfiyFNDk.nmBFMCPxH3vhqGD96sj2CJzBEb8DVmS'),
(12, 'mathew', 'mathew@aor', '$2a$10$zxOtYloxlDDLjrjk2X19Tu5gyQH4eATg34kW/CZw/HQNfDSNkgdB2'),
(13, 'admin', 'admin@gmail', '$2a$10$uF037AzuvYzHXu0QHNfYAeh0R5l9a14ysO6IUQ1NPwyTLpojzYI1y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`idproject`),
  ADD KEY `useridRelation` (`id_user`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `smaccounts`
--
ALTER TABLE `smaccounts`
  ADD PRIMARY KEY (`id_account`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_project` (`id_project`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `idproject` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `smaccounts`
--
ALTER TABLE `smaccounts`
  MODIFY `id_account` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
