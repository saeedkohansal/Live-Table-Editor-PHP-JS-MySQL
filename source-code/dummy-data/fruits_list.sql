-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2022 at 10:30 PM
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
-- Database: `live_table_editor`
--

-- --------------------------------------------------------

--
-- Table structure for table `fruits_list`
--

CREATE TABLE `fruits_list` (
  `id` int(11) NOT NULL,
  `fruit` varchar(16) NOT NULL,
  `calories` varchar(16) NOT NULL,
  `fat` varchar(16) NOT NULL,
  `protein` varchar(16) NOT NULL,
  `carbohydrate` varchar(16) NOT NULL,
  `added` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fruits_list`
--

INSERT INTO `fruits_list` (`id`, `fruit`, `calories`, `fat`, `protein`, `carbohydrate`, `added`, `updated`) VALUES
(1, 'Apple', '52', '0.17', '0.26', '13.81', '2022-10-25 08:40:15', '2022-10-25 08:40:15'),
(2, 'Avocado', '160', '14.66', '2', '8.53', '2022-10-25 08:40:21', '2022-10-25 08:40:45'),
(3, 'Banana', '89', '0.33', '1.09', '22.84', '2022-10-25 08:40:21', '2022-10-25 08:42:24'),
(4, 'Blackberries', '43', '0.49', '1.39', '9.61', '2022-10-25 08:40:21', '2022-10-25 08:42:45'),
(5, 'Cherries', '63', '0.2', '1.06', '16.01', '2022-10-25 08:40:21', '2022-10-25 08:46:55'),
(6, 'Grapefruit', '42', '0.14', '0.77', '10.66', '2022-10-25 08:40:21', '2022-10-25 08:43:28'),
(7, 'Orange', '47', '0.12', '0.94', '11.75', '2022-10-25 08:40:21', '2022-10-25 08:43:51'),
(8, 'Pear', '57', '0.14', '0.36', '15.23', '2022-10-25 08:40:21', '2022-10-25 08:44:28'),
(9, 'Strawberries', '32', '0.3', '0.67', '7.68', '2022-10-25 08:40:21', '2022-10-25 08:44:46'),
(10, 'Watermelon', '30', '0.15', '0.61', '7.55', '2022-10-25 08:40:21', '2022-10-25 08:45:03'),
(11, 'Mango', '60', '0.38', '0.82', '14.98', '2022-10-25 20:19:24', '2022-10-25 20:19:24'),
(12, 'Pineapple', '50', '0.12', '0.54', '13.12', '2022-10-25 20:19:24', '2022-10-25 20:19:24'),
(13, 'Apricot', '48', '0.39', '1.4', '11.12', '2022-10-25 20:21:58', '2022-10-25 20:21:58'),
(14, 'Figs', '74', '0.3', '0.75', '19.18', '2022-10-25 20:21:58', '2022-10-25 20:21:58'),
(15, 'Kiwifruit', '61', '0.52', '1.14', '14.66', '2022-10-25 20:23:17', '2022-10-25 20:23:17'),
(16, 'Lemon', '29', '0.3', '1.1', '9.32', '2022-10-25 20:23:17', '2022-10-25 20:23:17'),
(17, 'Clementine', '68', '0.95', '2.55', '14.32', '2022-10-25 20:23:56', '2022-10-25 20:23:56'),
(18, 'Blueberries', '57', '0.33', '0.74', '14.49', '2022-10-25 20:23:56', '2022-10-25 20:23:56'),
(19, 'Blackberries', '43', '0.49', '1.39', '9.61', '2022-10-25 20:24:28', '2022-10-25 20:24:28'),
(20, 'Loquat', '47', '0.2', '0.43', '12.14', '2022-10-25 20:25:47', '2022-10-25 20:25:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fruits_list`
--
ALTER TABLE `fruits_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fruits_list`
--
ALTER TABLE `fruits_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
