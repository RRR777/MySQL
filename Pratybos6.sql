--
-- Pratybos 6
--

--
-- 1. Paruoškite duomenų bazės kopiją.
--

-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018 m. Spa 19 d. 13:24
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `authors`
--

CREATE TABLE `authors` (
  `authorId` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_german1_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sukurta duomenų kopija lentelei `authors`
--

INSERT INTO `authors` (`authorId`, `name`) VALUES
(1, 'Chris Smith'),
(2, 'Steven Levithan'),
(4, 'Ryan Benedetti'),
(6, 'Clay Breshears'),
(7, 'Kevlin Henney');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `books`
--

CREATE TABLE `books` (
  `bookId` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `year` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Sukurta duomenų kopija lentelei `books`
--

INSERT INTO `books` (`bookId`, `authorId`, `title`, `year`) VALUES
(1, 1, 'Programming F# 3.0, 2nd Edition', 2012),
(2, 2, 'Regular Expressions Cookbook, 2nd Edition', 2012),
(3, 4, 'Head First Networking', 2009),
(4, 6, 'The Art of Concurrency', 2009),
(5, 7, '97 Things Every Programmer Should Know', 2010),
(6, NULL, 'McCullough and Berglund on Mastering Advanced Git', NULL),
(7, NULL, 'Version Control with Git, 2nd Edition', 2012),
(8, NULL, 'Learning Python, 4th Edition', 2009);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`authorId`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `authorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
