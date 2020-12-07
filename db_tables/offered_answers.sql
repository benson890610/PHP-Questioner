-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 07, 2020 at 12:05 PM
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
-- Table structure for table `offered_answers`
--

CREATE TABLE `offered_answers` (
  `id` smallint UNSIGNED NOT NULL,
  `answer1` varchar(100) NOT NULL,
  `answer2` varchar(100) NOT NULL,
  `answer3` varchar(100) DEFAULT NULL,
  `answer4` varchar(100) DEFAULT NULL,
  `correct_answer_id` smallint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `offered_answers`
--

INSERT INTO `offered_answers` (`id`, `answer1`, `answer2`, `answer3`, `answer4`, `correct_answer_id`) VALUES
(1, 'new_function myFunction()', 'create function()', 'function myFunction()', NULL, 14),
(2, 'open(\"time.inc\")', 'fopen(\"time.inc\", \"r\")', 'open(\"time.inc\", \"read\")', 'fopen(\"time.inc\", \"r+\")', 11),
(3, 'TRUE', 'FALSE', NULL, NULL, 8),
(4, '$_SERVER', '$_SESSION', '$_GET', '$GLOBALS', 13),
(5, 'include \"time.inc\";', 'include:\"time.inc\";', 'include file=\"time.inc\";', NULL, 15),
(6, 'FALSE', 'TRUE', NULL, NULL, 9),
(7, 'TRUE', 'FALSE', NULL, NULL, 10),
(8, 'TRUE', 'FALSE', NULL, NULL, 12),
(9, 'Request.Form', 'Request.QueryString', '$_GET', NULL, 5),
(10, ';', 'New line', '.', '</php>', 7),
(11, 'Javascript', 'Perl and C', 'VBScript', NULL, 6),
(12, '\"Hello World\"', 'echo \"Hello World\"', 'Document.Write(\"Hello World\")', NULL, 1),
(13, '$', '!', '&', NULL, 2),
(14, '<?php> </?>', '<&> </&>', '<script> </script>', '<?php ?>', 4),
(15, 'PHP: Hypertext Preprocessor', 'Personal Hypertext Preprocessor', 'Private Home Page', NULL, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `offered_answers`
--
ALTER TABLE `offered_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `correct_answer_id_foreign` (`correct_answer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `offered_answers`
--
ALTER TABLE `offered_answers`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `offered_answers`
--
ALTER TABLE `offered_answers`
  ADD CONSTRAINT `correct_answer_id_foreign` FOREIGN KEY (`correct_answer_id`) REFERENCES `correct_answers` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
