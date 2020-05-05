-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2020 at 01:55 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coock`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`) VALUES
(1, 'sushi', 'is a Japanese dish of prepared vinegared rice, usually with some sugar and salt, accompanying a variety of ingredients , such as seafood, vegetables, and occasionally tropical fruits. Styles of sushi and its presentation vary widely,'),
(2, 'beef', 'is a source of high-quality protein and nutrients , can be used as is by merely cutting into certain parts, such as roasts, short ribs or steak'),
(3, 'chicken', 'can be prepared in a vast range of ways, including baking, grilling, barbecuing, frying, and boiling, among many others, depending on its purpose');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `category_id`) VALUES
(1, 'Fried', 'Fried chiken is very deleciuos and very light on stomac', 3),
(2, 'boiled', 'Boiled chiken is very healthy however it is not that tatsty.', 3),
(5, 'ali beef', 'ali beef is good product', 2),
(6, 'mahmoud sushi', 'mahmoud sushi is good quality', 1),
(7, 'Grilled', 'On top of a coal fire that is very hot this kind is cooked and added to it a hot spices', 3),
(8, 'Alfredo', 'This is the easiest, creamiest chicken alfredo you will ever make.', 3),
(9, 'Lemon Pepper Chicken', 'This lemon pepper chicken makes chicken exciting again.', 3),
(10, 'Roast', 'You need this classic recipe in your arsenal.', 3),
(11, 'Biryani', 'Chicken biryani is such an easy and delicious dinner. Served over fluffy white rice, it\'s hard to resist.', 3),
(12, 'Tamale Pie', 'A layer of cornbread topped with cheesy shredded chicken.', 3),
(13, 'grilled', 'very healthy without oil ', 2),
(14, 'omar sushi ', 'coocked with special mix of spicy  salsa ', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
