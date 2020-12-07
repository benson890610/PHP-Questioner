-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 07, 2020 at 12:04 PM
-- Server version: 8.0.22-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` smallint UNSIGNED NOT NULL,
  `question` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`) VALUES
(1, 'What does PHP stand for?'),
(2, 'PHP server script are surrounded by delimeters, which?'),
(3, 'How do you write \"Hello World\" in PHP?'),
(4, 'All variables in PHP start with which symbol?'),
(5, 'What is the correct way to end a PHP statement?'),
(6, 'The PHP syntax is most similar to:'),
(7, 'How do you get information from a form that is submitted using the \"get\" method?'),
(8, 'When using the POST method, variables are displayed in the URL:'),
(9, 'In PHP you can use both single quotes (\') and double quotes (\"\") for strings'),
(10, 'Included files must have the file extension \".inc\":'),
(11, 'What is the correct way to include file \"time.inc\"?'),
(12, 'What is the correct way to create a function in PHP?'),
(13, 'What is the correct way to open file \"time.inc\" as readable?'),
(14, 'PHP allows you to send emails directly from a script?'),
(15, 'Which superglobal variable holds information about headers, paths and script locations?');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
