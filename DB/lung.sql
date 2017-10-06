-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 23, 2017 at 08:44 PM
-- Server version: 5.7.19
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
-- Database: `lung`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `publishedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `publishedAt`, `createdAt`, `image`) VALUES
(1, 'asdf', 'asdf', '2017-09-23 06:33:28', '2017-09-23 06:33:28', NULL),
(9, 'sdsads', 'ddsadsad', '2017-09-23 06:33:28', '2017-09-23 06:33:28', NULL),
(4, 'xczxc', 'xczx', '2017-09-23 02:25:06', '2017-09-23 06:33:28', NULL),
(5, 'sdf', 'sdf', '2017-09-23 04:54:39', '2017-09-23 06:33:28', NULL),
(6, '1', '1', '2017-09-23 04:54:45', '2017-09-23 06:33:28', NULL),
(7, '11', '11', '2017-09-23 04:54:51', '2017-09-23 06:33:28', NULL),
(8, 'vv', 'vv', '2017-09-23 05:15:55', '2017-09-23 06:33:28', NULL),
(10, 'sdfsf', 'sdfsddfsfsd', '2017-09-23 10:34:10', '2017-09-23 06:33:28', NULL),
(11, 'ssssss', 'sssssss', '2017-09-23 10:36:40', '0000-00-00 00:00:00', NULL),
(12, 'sdfsdfs', 'dffdsfdsf', '2017-09-23 10:37:43', '2017-09-23 18:37:49', NULL),
(13, 'zzzzzzz', 'zzzzzzz', '2017-09-29 12:10:10', '2017-09-23 18:38:21', NULL),
(14, 'sdfsd', 'sdfsd', '2017-09-23 11:46:12', '2017-09-23 19:46:15', NULL),
(15, 'sdfds', 'sdfsf', '2017-09-24 12:25:28', '2017-09-23 20:25:32', 'KeRqU1tw1tDziDY3UvoI.jpg'),
(16, 'sdfs', 'dfs', '2017-09-24 12:28:50', '2017-09-23 20:28:54', 'X5w6PAGxKcuXmAB3ui54.jpg'),
(17, 'zazaza', 'zazaz', '2017-09-24 12:29:23', '2017-09-23 20:29:30', 'iPtrhmkmgJuwIfk2xLy5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_09_22_160123_create_table_articles', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
