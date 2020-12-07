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
-- Table structure for table `questions_with_answers`
--

CREATE TABLE `questions_with_answers` (
  `id` smallint UNSIGNED NOT NULL,
  `question_id` smallint UNSIGNED NOT NULL,
  `answer_id` smallint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `questions_with_answers`
--

INSERT INTO `questions_with_answers` (`id`, `question_id`, `answer_id`) VALUES
(1, 1, 15),
(2, 2, 14),
(3, 3, 12),
(4, 4, 13),
(5, 5, 10),
(6, 6, 11),
(7, 7, 9),
(8, 11, 5),
(9, 8, 3),
(10, 9, 6),
(11, 10, 7),
(12, 12, 1),
(13, 13, 2),
(14, 14, 8),
(15, 15, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions_with_answers`
--
ALTER TABLE `questions_with_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_with_answers_question_foreign` (`question_id`),
  ADD KEY `questions_with_answers_answer_foreign` (`answer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions_with_answers`
--
ALTER TABLE `questions_with_answers`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `questions_with_answers`
--
ALTER TABLE `questions_with_answers`
  ADD CONSTRAINT `questions_with_answers_answer_foreign` FOREIGN KEY (`answer_id`) REFERENCES `offered_answers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_with_answers_question_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
