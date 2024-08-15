-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2024 at 03:55 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_smarttalk`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chats`
--

CREATE TABLE `tbl_chats` (
  `id` int(11) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_chats`
--

INSERT INTO `tbl_chats` (`id`, `sender`, `message`, `timestamp`) VALUES
(1, 'user', 'hi', '2024-08-14 13:34:11'),
(2, 'assistant', 'This is an auto-generated response.', '2024-08-14 13:34:11'),
(3, 'user', 'Apa yang dimaksud dengan web ?', '2024-08-14 13:34:28'),
(4, 'assistant', 'This is an auto-generated response.', '2024-08-14 13:34:28'),
(5, 'user', 'kkkkk', '2024-08-14 13:36:01'),
(6, 'assistant', 'This is an auto-generated response.', '2024-08-14 13:36:01'),
(7, 'user', 'halo', '2024-08-14 13:42:14'),
(8, 'assistant', 'I\'m not sure how to answer that. Can you please rephrase?', '2024-08-14 13:42:14'),
(9, 'assistant', 'This is an auto-generated response.', '2024-08-14 13:42:14'),
(10, 'assistant', 'I\'m not sure how to answer that. Can you please rephrase?', '2024-08-14 13:42:14'),
(11, 'user', 'halo', '2024-08-14 13:42:16'),
(12, 'assistant', 'I\'m not sure how to answer that. Can you please rephrase?', '2024-08-14 13:42:16'),
(13, 'assistant', 'This is an auto-generated response.', '2024-08-14 13:42:16'),
(14, 'assistant', 'I\'m not sure how to answer that. Can you please rephrase?', '2024-08-14 13:42:16'),
(15, 'user', 'halo', '2024-08-14 13:44:21'),
(16, 'assistant', 'I\'m not sure how to answer that. Can you please rephrase?', '2024-08-14 13:44:21'),
(17, 'assistant', 'This is an auto-generated response.', '2024-08-14 13:44:21'),
(18, 'assistant', 'I\'m not sure how to answer that. Can you please rephrase?', '2024-08-14 13:44:21'),
(19, 'user', 'halo', '2024-08-14 13:44:42'),
(20, 'assistant', 'I\'m not sure how to answer that. Can you please rephrase?', '2024-08-14 13:44:42'),
(21, 'assistant', 'This is an auto-generated response.', '2024-08-14 13:44:42'),
(22, 'assistant', 'I\'m not sure how to answer that. Can you please rephrase?', '2024-08-14 13:44:42'),
(23, 'user', 'halp', '2024-08-14 13:44:46'),
(24, 'assistant', 'I\'m not sure how to answer that. Can you please rephrase?', '2024-08-14 13:44:46'),
(25, 'assistant', 'This is an auto-generated response.', '2024-08-14 13:44:46'),
(26, 'assistant', 'I\'m not sure how to answer that. Can you please rephrase?', '2024-08-14 13:44:46'),
(27, 'user', 'halo', '2024-08-14 13:45:03'),
(28, 'assistant', 'I\'m not sure how to answer that. Can you please rephrase?', '2024-08-14 13:45:03'),
(29, 'assistant', 'This is an auto-generated response.', '2024-08-14 13:45:03'),
(30, 'assistant', 'I\'m not sure how to answer that. Can you please rephrase?', '2024-08-14 13:45:03'),
(31, 'user', 'halo ?', '2024-08-14 13:49:51'),
(32, 'assistant', 'Hello! How can I assist you today?', '2024-08-14 13:49:51'),
(33, 'assistant', 'This is an auto-generated response.', '2024-08-14 13:49:51'),
(34, 'assistant', 'I\'m not sure how to answer that. Can you please rephrase?', '2024-08-14 13:49:51'),
(35, 'user', 'hi apa kabar ?', '2024-08-14 15:06:17'),
(36, 'assistant', 'This is an auto-generated response.', '2024-08-14 15:06:17'),
(37, 'user', 'apa kabar ?', '2024-08-14 15:06:27'),
(38, 'assistant', 'This is an auto-generated response.', '2024-08-14 15:06:28'),
(39, 'user', 'halo ?', '2024-08-14 15:09:50'),
(40, 'assistant', 'This is an auto-generated response.', '2024-08-14 15:09:53'),
(41, 'user', 'apa yang dimaksud dengan web ?', '2024-08-14 15:10:03'),
(42, 'assistant', 'This is an auto-generated response.', '2024-08-14 15:10:05'),
(43, 'user', 'halo', '2024-08-14 15:17:23'),
(44, 'assistant', 'This is an auto-generated response.', '2024-08-14 15:17:26'),
(45, 'user', 'halo ?', '2024-08-14 15:22:49'),
(46, 'assistant', 'This is an auto-generated response.', '2024-08-14 15:22:51'),
(47, 'user', 'hi ?', '2024-08-14 15:27:17'),
(48, 'assistant', 'This is an auto-generated response.', '2024-08-14 15:27:20'),
(49, 'user', 'halo ?', '2024-08-14 15:30:10'),
(50, 'assistant', 'This is an auto-generated response.', '2024-08-14 15:30:10'),
(51, 'assistant', 'This is an auto-generated response.', '2024-08-14 15:30:10'),
(52, 'assistant', 'Hello! How can I assist you today?', '2024-08-14 15:30:10'),
(53, 'user', 'hi', '2024-08-14 15:30:40'),
(54, 'assistant', 'Hello! How can I assist you today?', '2024-08-14 15:30:40'),
(55, 'assistant', 'This is an auto-generated response.', '2024-08-14 15:30:40'),
(56, 'assistant', 'Hello! How can I assist you today?', '2024-08-14 15:30:40'),
(57, 'user', 'hi', '2024-08-14 15:31:41'),
(58, 'assistant', 'Hello! How can I assist you today?', '2024-08-14 15:31:41'),
(59, 'assistant', 'This is an auto-generated response.', '2024-08-14 15:31:41'),
(60, 'assistant', 'Hello! How can I assist you today?', '2024-08-14 15:31:41'),
(61, 'user', 'helo', '2024-08-14 15:31:49'),
(62, 'assistant', 'This is an auto-generated response.', '2024-08-14 15:31:49'),
(63, 'assistant', 'This is an auto-generated response.', '2024-08-14 15:31:49'),
(64, 'assistant', 'Hello! How can I assist you today?', '2024-08-14 15:31:49'),
(65, 'user', 'saat ini saya sedang bingung untuk memulai dari mana jika saya ingin belajar coding ?', '2024-08-14 15:33:38'),
(66, 'assistant', 'This is an auto-generated response.', '2024-08-14 15:33:38'),
(67, 'assistant', 'This is an auto-generated response.', '2024-08-14 15:33:38'),
(68, 'assistant', 'Hello! How can I assist you today?', '2024-08-14 15:33:38'),
(69, 'user', 'hi', '2024-08-15 01:38:54'),
(70, 'assistant', 'Hello! How can I assist you today?', '2024-08-15 01:38:54'),
(71, 'assistant', 'This is an auto-generated response.', '2024-08-15 01:38:54'),
(72, 'assistant', 'Hello! How can I assist you today?', '2024-08-15 01:38:54'),
(73, 'user', '            How to start coding?          ', '2024-08-15 01:47:36'),
(74, 'assistant', 'This is an auto-generated response.', '2024-08-15 01:47:36'),
(75, 'assistant', 'This is an auto-generated response.', '2024-08-15 01:47:36'),
(76, 'assistant', 'Hello! How can I assist you today?', '2024-08-15 01:47:36'),
(77, 'user', '            What are some good coding practices?          ', '2024-08-15 01:48:14'),
(78, 'assistant', 'This is an auto-generated response.', '2024-08-15 01:48:14'),
(79, 'assistant', 'This is an auto-generated response.', '2024-08-15 01:48:14'),
(80, 'assistant', 'Hello! How can I assist you today?', '2024-08-15 01:48:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_chats`
--
ALTER TABLE `tbl_chats`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_chats`
--
ALTER TABLE `tbl_chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
