-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 20, 2017 at 08:59 PM
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
-- Database: `lumen_angularjs`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_user_id_foreign` (`user_id`),
  KEY `comments_post_id_foreign` (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content`, `created_at`, `updated_at`, `user_id`, `post_id`) VALUES
(1, 'Eveniet reiciendis blanditiis qui corrupti.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 7, 10),
(2, 'Molestiae vero voluptates aut ut commodi doloribus.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 2, 22),
(3, 'Quia at et voluptatibus et et quae.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 6, 46),
(4, 'Placeat numquam ipsam repudiandae blanditiis quasi expedita molestiae. At molestiae est ab assumenda.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 7, 46),
(5, 'Est assumenda dolorem quidem cum dolores.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 3, 21),
(6, 'Totam non officia possimus rerum deleniti.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 6, 10),
(7, 'Rem sint ab nihil deleniti. Voluptatibus aperiam quos debitis deserunt nisi.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 3, 22),
(8, 'Laborum sint error magni ipsum.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 10, 5),
(9, 'Aspernatur nulla molestiae velit facilis consectetur dolores illum quo. At repellat est qui pariatur qui mollitia a officiis.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 3, 15),
(10, 'Fugiat molestias nihil officiis natus placeat.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 9, 33),
(11, 'Sed occaecati porro praesentium. Neque assumenda pariatur ullam sit iure cumque sint ullam.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 9, 7),
(12, 'Mollitia ut ea autem sit. Ut beatae nulla unde voluptas.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 2, 22),
(13, 'Nulla ex tenetur autem quod ea.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 9, 29),
(14, 'Corrupti consequatur placeat est eum corrupti.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 4, 40),
(15, 'Eligendi vel at illum commodi fuga sunt placeat. Assumenda aperiam voluptatem dolores quis eum.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 4, 7),
(16, 'Qui in eum aut fugiat. Esse nisi incidunt est voluptas sed et.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 7, 30),
(17, 'Facere maxime sapiente quisquam iusto recusandae. Sed consequatur est nihil sint aut.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 9, 9),
(18, 'Aut doloremque asperiores nobis sint hic quidem molestiae. Saepe corrupti qui modi dolorem ut dolores exercitationem.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 4, 29),
(19, 'Est illum voluptas nostrum cumque fuga quia.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 3, 50),
(20, 'Nobis aut alias nulla non corporis asperiores dolores. Sunt inventore inventore aut fugit aliquid.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 1, 26),
(21, 'Aut assumenda debitis et voluptas.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 9, 16),
(22, 'Omnis magni sed quo rerum culpa earum at.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 10, 32),
(23, 'Quam eveniet recusandae molestiae sit. Soluta assumenda qui quis enim amet est dolorem quia.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 7, 20),
(24, 'Atque aut officiis tempora.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 1, 6),
(25, 'Repellendus maiores qui eos aperiam minima.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 7, 44),
(26, 'Vero voluptatem in earum aliquam et voluptatem saepe.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 2, 34),
(27, 'Tempore voluptas dicta et dolores et dolores.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 9, 40),
(28, 'Quisquam error veniam sapiente quos deserunt ipsum.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 7, 43),
(29, 'Et voluptatem iure dicta illum. Pariatur nesciunt voluptatem vel.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 10, 28),
(30, 'At consequatur recusandae sit eum qui dolore quam.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 6, 3),
(31, 'Quia doloribus dolorem dolor id.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 3, 5),
(32, 'Dolorum eaque voluptates dolores non adipisci fuga quaerat.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 2, 30),
(33, 'Voluptatem temporibus neque minus veniam atque.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 7, 47),
(34, 'Libero qui corporis fuga dolores consequatur. Laudantium quaerat cum nesciunt distinctio et.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 6, 2),
(35, 'Quae nihil sit quis quo id dolorem illo. Laboriosam ut sed sit inventore.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 4, 4),
(36, 'Saepe aut rerum possimus ipsam nam.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 1, 4),
(37, 'Reiciendis eos quidem non harum dolore eligendi at. Voluptatem corporis aut amet iusto.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 8, 30),
(38, 'Autem deleniti reprehenderit ut et. Sunt modi repellendus odio amet voluptatem aut a esse.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 4, 34),
(39, 'Aut necessitatibus laboriosam quaerat officia ipsa ut magnam. Sunt officia id dolore nihil sapiente dolor.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 9, 41),
(40, 'Laborum eum enim quia aliquid. Et iure vero reprehenderit ipsa laboriosam pariatur dolor.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 1, 4),
(41, 'Deserunt nesciunt minima hic. Veniam quos expedita quisquam laborum voluptatum.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 7, 18),
(42, 'Sequi officia nobis culpa id omnis quisquam esse.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 2, 18),
(43, 'Beatae enim consectetur est ea dolorum adipisci accusamus.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 7, 37),
(44, 'Eum doloribus neque dolor assumenda enim. Quasi qui excepturi qui illum.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 4, 19),
(45, 'Vero reprehenderit dolore voluptates.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 4, 2),
(46, 'Voluptate ea voluptatibus non ea sit. Tempore quas assumenda non nesciunt in odio unde possimus.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 5, 16),
(47, 'Non architecto quisquam quia reiciendis. Autem tempora ea quia perspiciatis corporis enim impedit.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 3, 27),
(48, 'Nam laudantium harum aut quibusdam molestiae ipsum.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 1, 3),
(49, 'Et odit facere harum blanditiis.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 5, 50),
(50, 'Repellat illo voluptas similique nulla fugit saepe. Temporibus ea sed suscipit modi possimus.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 7, 42),
(51, 'Sint hic sed expedita. Culpa vero accusamus laudantium tempora voluptatem corrupti deserunt.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 5, 46),
(52, 'Voluptatem porro quos minima repellendus excepturi sit ut expedita.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 6, 15),
(53, 'Voluptatem eius fuga repudiandae consequatur facilis consequatur consequatur.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 4, 6),
(54, 'Quisquam excepturi repudiandae impedit corrupti.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 10, 17),
(55, 'Rerum ipsa et eveniet dolore ea molestiae deleniti.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 10, 11),
(56, 'Delectus et incidunt blanditiis cumque architecto. Sit itaque porro molestiae.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 8, 29),
(57, 'Doloribus incidunt et ut voluptatem. Harum vitae dolorem dolores numquam quibusdam.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 6, 21),
(58, 'Dolores cum nemo aliquam quaerat non architecto.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 8, 12),
(59, 'Quibusdam est tenetur molestiae distinctio cumque libero rerum. Et voluptatem voluptatum beatae non.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 2, 36),
(60, 'Itaque suscipit alias minus et voluptatem molestiae. Ut nemo magni commodi.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 3, 10),
(61, 'Hic voluptatum eius voluptas minus aut dolorem.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 2, 34),
(62, 'Eum eos aut non voluptatum eaque odit quis consequuntur.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 7, 14),
(63, 'Et sint et assumenda libero alias.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 5, 2),
(64, 'Quidem quo omnis ipsum rerum esse necessitatibus architecto et. Voluptatem atque vero architecto optio error.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 8, 9),
(65, 'Culpa rerum tempore beatae aperiam.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 4, 34),
(66, 'Aut ad distinctio sint doloribus cumque ipsum fugiat. Quasi est molestiae sed magnam provident molestiae.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 8, 49),
(67, 'Ut occaecati quam ab qui.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 10, 10),
(68, 'Autem autem quia enim tenetur nobis dignissimos aliquam.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 6, 2),
(69, 'Facilis labore saepe nemo voluptatem eum. Praesentium expedita excepturi voluptatem voluptatem nobis unde sed.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 10, 5),
(70, 'Ea ut dolorum magnam autem repudiandae eaque inventore.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 1, 19),
(71, 'Maiores quis ipsam sit tempore dolorem. Iste quod ullam nobis nemo ea facilis corporis.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 3, 47),
(72, 'Voluptatem qui facere autem quia. Aut excepturi fuga quo.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 1, 29),
(73, 'Quae eius veritatis maxime.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 6, 10),
(74, 'Fugit voluptate consequuntur harum explicabo delectus.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 8, 12),
(75, 'Velit autem voluptatem doloremque voluptas earum laboriosam. Dolor vel aut id impedit voluptatibus ea et.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 9, 16),
(76, 'Ea vitae sunt asperiores culpa sed consequatur pariatur alias.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 3, 45),
(77, 'Autem eveniet ullam numquam ullam.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 5, 15),
(78, 'Qui omnis facilis sint accusamus iure vitae suscipit. Esse magni ut et voluptate.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 8, 14),
(79, 'Labore laudantium non vitae magnam optio quasi in.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 5, 3),
(80, 'Ad reiciendis porro odit fugit alias vel. Expedita voluptatem consequatur ex quis asperiores.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 4, 35),
(81, 'Sed magnam explicabo nobis recusandae.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 9, 44),
(82, 'Cum quaerat ea nam et.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 2, 23),
(83, 'Enim odit eum quasi quasi.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 3, 34),
(84, 'Esse vel vel est similique.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 2, 32),
(85, 'Dolorem dolores aut ut velit qui.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 6, 32),
(86, 'Ut at dolorem facilis voluptatem iusto. Nemo voluptates sit consequatur consequatur excepturi esse voluptatum.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 1, 18),
(87, 'Autem autem aut pariatur vel.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 2, 7),
(88, 'Eum dolorem aperiam sit iste et.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 1, 47),
(89, 'Enim sit quo quam accusantium.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 5, 27),
(90, 'Quo necessitatibus nihil sint rerum. Eius eos hic facilis consequatur sapiente a voluptatem.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 8, 41),
(91, 'Minima assumenda et et voluptatem aut laborum facilis.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 2, 30),
(92, 'Quo autem sit est quo dolores.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 1, 35),
(93, 'Vero voluptas distinctio quam tempore quas velit exercitationem repellendus. Quaerat et accusantium esse iste et placeat tempora.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 4, 48),
(94, 'Corrupti suscipit veritatis rerum qui. Consequuntur amet facilis impedit eaque.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 4, 31),
(95, 'Minima modi rerum illo ut consequatur.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 10, 32),
(96, 'Modi reprehenderit ab saepe fugiat.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 8, 13),
(97, 'Quia dignissimos iure distinctio autem nisi natus.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 5, 32),
(98, 'Adipisci officiis voluptatum beatae. Eius est et voluptas.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 1, 1),
(99, 'Et expedita adipisci modi consequatur repellendus autem. Odit quisquam cum occaecati laboriosam aut non ipsam.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 9, 23),
(100, 'Dolor maiores harum autem unde quia incidunt. Omnis quia quae velit quod.', '2017-10-20 20:29:06', '2017-10-20 20:29:06', 10, 15);

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
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_04_24_110151_create_oauth_scopes_table', 1),
(2, '2014_04_24_110304_create_oauth_grants_table', 1),
(3, '2014_04_24_110403_create_oauth_grant_scopes_table', 1),
(4, '2014_04_24_110459_create_oauth_clients_table', 1),
(5, '2014_04_24_110557_create_oauth_client_endpoints_table', 1),
(6, '2014_04_24_110705_create_oauth_client_scopes_table', 1),
(7, '2014_04_24_110817_create_oauth_client_grants_table', 1),
(8, '2014_04_24_111002_create_oauth_sessions_table', 1),
(9, '2014_04_24_111109_create_oauth_session_scopes_table', 1),
(10, '2014_04_24_111254_create_oauth_auth_codes_table', 1),
(11, '2014_04_24_111403_create_oauth_auth_code_scopes_table', 1),
(12, '2014_04_24_111518_create_oauth_access_tokens_table', 1),
(13, '2014_04_24_111657_create_oauth_access_token_scopes_table', 1),
(14, '2014_04_24_111810_create_oauth_refresh_tokens_table', 1),
(15, '2016_03_24_182334_create_users_table', 1),
(16, '2016_03_24_221425_create_posts_table', 1),
(17, '2016_03_24_221457_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` int(10) UNSIGNED NOT NULL,
  `expire_time` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth_access_tokens_id_session_id_unique` (`id`,`session_id`),
  KEY `oauth_access_tokens_session_id_index` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `session_id`, `expire_time`, `created_at`, `updated_at`) VALUES
('OvqTWVNrfikzt55kJry3kjsrFMpHQP15CFjRq6Fc', 1, 1508535050, '2017-10-20 20:30:50', '2017-10-20 20:30:50'),
('PZ9AijXFISpYPXP4Z3MJiop7yFLqeX9BTqCVXu7w', 2, 1508535350, '2017-10-20 20:35:50', '2017-10-20 20:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_token_scopes`
--

DROP TABLE IF EXISTS `oauth_access_token_scopes`;
CREATE TABLE IF NOT EXISTS `oauth_access_token_scopes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `access_token_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_token_scopes_access_token_id_index` (`access_token_id`),
  KEY `oauth_access_token_scopes_scope_id_index` (`scope_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` int(10) UNSIGNED NOT NULL,
  `redirect_uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expire_time` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_session_id_index` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_code_scopes`
--

DROP TABLE IF EXISTS `oauth_auth_code_scopes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_code_scopes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `auth_code_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_code_scopes_auth_code_id_index` (`auth_code_id`),
  KEY `oauth_auth_code_scopes_scope_id_index` (`scope_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth_clients_id_secret_unique` (`id`,`secret`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `secret`, `name`, `created_at`, `updated_at`) VALUES
('id0', 'secret0', 'Test Client 0', NULL, NULL),
('id1', 'secret1', 'Test Client 1', NULL, NULL),
('id2', 'secret2', 'Test Client 2', NULL, NULL),
('id3', 'secret3', 'Test Client 3', NULL, NULL),
('id4', 'secret4', 'Test Client 4', NULL, NULL),
('id5', 'secret5', 'Test Client 5', NULL, NULL),
('id6', 'secret6', 'Test Client 6', NULL, NULL),
('id7', 'secret7', 'Test Client 7', NULL, NULL),
('id8', 'secret8', 'Test Client 8', NULL, NULL),
('id9', 'secret9', 'Test Client 9', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_client_endpoints`
--

DROP TABLE IF EXISTS `oauth_client_endpoints`;
CREATE TABLE IF NOT EXISTS `oauth_client_endpoints` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth_client_endpoints_client_id_redirect_uri_unique` (`client_id`,`redirect_uri`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_client_grants`
--

DROP TABLE IF EXISTS `oauth_client_grants`;
CREATE TABLE IF NOT EXISTS `oauth_client_grants` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `grant_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_client_grants_client_id_index` (`client_id`),
  KEY `oauth_client_grants_grant_id_index` (`grant_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_client_scopes`
--

DROP TABLE IF EXISTS `oauth_client_scopes`;
CREATE TABLE IF NOT EXISTS `oauth_client_scopes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_client_scopes_client_id_index` (`client_id`),
  KEY `oauth_client_scopes_scope_id_index` (`scope_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_grants`
--

DROP TABLE IF EXISTS `oauth_grants`;
CREATE TABLE IF NOT EXISTS `oauth_grants` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_grant_scopes`
--

DROP TABLE IF EXISTS `oauth_grant_scopes`;
CREATE TABLE IF NOT EXISTS `oauth_grant_scopes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `grant_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_grant_scopes_grant_id_index` (`grant_id`),
  KEY `oauth_grant_scopes_scope_id_index` (`scope_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `expire_time` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`access_token_id`),
  UNIQUE KEY `oauth_refresh_tokens_id_unique` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `expire_time`, `created_at`, `updated_at`) VALUES
('1pKPmonkcEjNcxBmWtPMqyN0NEluuLlDZBWwd6rp', 'OvqTWVNrfikzt55kJry3kjsrFMpHQP15CFjRq6Fc', 1508567450, '2017-10-20 20:30:50', '2017-10-20 20:30:50'),
('5Gqc6X0EBahiFJNE3xti5dxIF1SyDh66y023Uc5w', 'PZ9AijXFISpYPXP4Z3MJiop7yFLqeX9BTqCVXu7w', 1508567750, '2017-10-20 20:35:50', '2017-10-20 20:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_scopes`
--

DROP TABLE IF EXISTS `oauth_scopes`;
CREATE TABLE IF NOT EXISTS `oauth_scopes` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_sessions`
--

DROP TABLE IF EXISTS `oauth_sessions`;
CREATE TABLE IF NOT EXISTS `oauth_sessions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `owner_type` enum('client','user') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `owner_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_redirect_uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_sessions_client_id_owner_type_owner_id_index` (`client_id`,`owner_type`,`owner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_sessions`
--

INSERT INTO `oauth_sessions` (`id`, `client_id`, `owner_type`, `owner_id`, `client_redirect_uri`, `created_at`, `updated_at`) VALUES
(1, 'id1', 'user', '1', NULL, '2017-10-20 20:30:50', '2017-10-20 20:30:50'),
(2, 'id1', 'user', '2', NULL, '2017-10-20 20:35:50', '2017-10-20 20:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_session_scopes`
--

DROP TABLE IF EXISTS `oauth_session_scopes`;
CREATE TABLE IF NOT EXISTS `oauth_session_scopes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `session_id` int(10) UNSIGNED NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_session_scopes_session_id_index` (`session_id`),
  KEY `oauth_session_scopes_scope_id_index` (`scope_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` datetime NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `user_id`, `created_at`, `updated_at`, `published_at`, `image`) VALUES
(1, 'Omnis a non.', 'Reiciendis reprehenderit sunt neque accusamus omnis facere vel. Enim est eius dolores incidunt sint. Sit sint alias amet accusamus.', 4, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(2, 'Laudantium accusantium et et dicta autem.', 'Maiores facilis maxime dolor a unde neque sint ut. A nemo exercitationem vel ut saepe at ad. Et aut provident laudantium dolores quae atque asperiores. Aliquam necessitatibus quam impedit quod qui consequatur quia. Sit repudiandae in sint non omnis.', 3, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(3, 'Unde et dolores.', 'Ex ut beatae et commodi debitis. Odit cumque provident et facilis omnis. Nostrum eius voluptas qui omnis. Ipsa quas quos quo. Voluptatem optio et enim fugiat qui fugiat deserunt.', 1, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(4, 'Velit nemo officia nostrum.', 'Quia veritatis consectetur inventore omnis quisquam quae. Illo est ullam consequuntur perferendis. Ut et cumque nobis ipsam dolorum mollitia officiis. Libero officiis officiis qui non.', 2, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(5, 'Veritatis natus rem voluptatem.', 'Voluptatem quos doloremque velit sapiente adipisci voluptatem fuga. Incidunt officiis quam qui voluptate. Quam qui quam delectus ut corrupti porro. Asperiores veniam omnis sequi qui dolore veniam. Eaque vel impedit velit neque maiores et molestias libero.', 4, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(6, 'Quaerat in laboriosam dolore cum.', 'Id tempore molestiae voluptas beatae. Est modi quia rerum. Fugiat in est dolor eos aspernatur dolorum.', 7, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(7, 'Quia nihil velit quasi et et.', 'Sed ullam vel fugiat vel. Et quia pariatur est ipsam quasi eos adipisci. Consequatur iste delectus ab ut consectetur. Voluptas harum distinctio aut qui. Esse sunt quis temporibus architecto ad et. Error quia aut asperiores omnis ut aspernatur doloremque.', 5, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(8, 'Dolore voluptas hic reprehenderit dignissimos veniam.', 'Cupiditate vitae qui quis sit impedit eum sequi. Voluptatem neque quae corporis est tempora ipsum. Illum consequatur maiores officia autem odit placeat. Sed magni optio consequatur excepturi corporis maxime ullam. Quam nihil totam rerum voluptatem eos qui', 7, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(9, 'Hic ut assumenda id esse doloribus.', 'Aspernatur voluptatem sunt illum eos inventore quos dolorem laborum. In et inventore quos laboriosam. Aut consequatur modi ut maxime. At aspernatur dolorum voluptatum at consequuntur amet libero. Quas rerum aliquam voluptates velit velit sapiente non. Eni', 1, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(10, 'Delectus deserunt id aspernatur ex.', 'Et recusandae tenetur hic ea exercitationem modi quia. Laborum iure quasi doloremque fuga rerum temporibus eaque. Esse ipsam dolores sint cum voluptates ipsa.', 3, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(11, 'Ab atque consequatur nulla.', 'Harum pariatur nisi ratione nulla rerum numquam. Commodi pariatur sapiente reiciendis voluptas voluptas ipsum. Vel cumque ad aut amet esse dicta. Harum qui rerum architecto et tempora deserunt officia. Saepe velit et voluptas molestiae cumque repellendus ', 6, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(12, 'Sequi sed recusandae debitis.', 'Eaque eos enim dolores dolore eum nostrum in. Aut iste earum voluptatum. Quae odio ipsum eveniet quaerat voluptatem consequuntur veritatis id. Eos exercitationem voluptas consectetur. Et repellat eaque excepturi nobis accusantium ut harum.', 6, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(13, 'Veniam error iure.', 'Dolores molestias nulla soluta totam. Repellendus facilis quisquam repellendus ad. Et nulla odit quibusdam consequatur dicta totam quos. Ut doloremque eligendi dolor in.', 7, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(14, 'Unde saepe odio iusto.', 'Non aut suscipit aut eaque fuga soluta voluptatem. Fugiat nam atque harum neque. Voluptatum aut modi est aut. Aliquam dolores excepturi provident.', 7, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(15, 'Aut ea veritatis veritatis animi.', 'Eum cumque est delectus provident nostrum odio. Vero unde repudiandae qui ea ullam dolor. Rerum et aut impedit voluptas similique possimus. Et labore et laudantium cum maxime. Nemo explicabo ratione et rem dolor.', 10, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(16, 'Quo consequatur quo non.', 'Quos ex quia laborum non soluta. Quo ullam fugiat nemo. Quibusdam quisquam et ipsa possimus quod. Nam ratione quia in sed. Hic sit aperiam est quia labore laborum quaerat modi. Quis magnam consequatur nam adipisci aut itaque.', 2, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(17, 'Hic ad maiores.', 'Aut ipsa suscipit maxime aut mollitia est quas. Molestiae dolor rem doloremque quia aliquam vel cum. Ducimus consequatur ipsam quis rerum alias voluptas.', 10, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(18, 'Dolores debitis omnis dicta beatae vel.', 'Iste mollitia vitae dolorem. Et cumque minima minus. At numquam qui occaecati placeat. Laborum occaecati neque itaque eveniet ut esse cumque.', 8, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(19, 'Impedit dolore totam omnis ut.', 'Rerum tempora perspiciatis est illo. Officiis quis velit rerum deserunt dolores libero temporibus a. Distinctio ut aut quia aut vitae. Ea minima exercitationem rerum ea non aut et. Nulla nihil odio enim deserunt nisi.', 5, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(20, 'Nobis voluptatem nihil quia ipsam quas.', 'Dolor tempore soluta ut dolor qui quia. Iure distinctio sit ut natus adipisci. Tempora earum consectetur laboriosam temporibus. Est cumque ducimus in nesciunt quasi. Numquam molestiae temporibus doloribus et. Eos id dolorum provident est nesciunt officia.', 2, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(21, 'Aspernatur est voluptas error id.', 'Nemo sed veniam voluptas officia hic. Nesciunt molestiae delectus vitae dolorem. Dolor alias tempora laboriosam magnam et sed. Ut sed sed non maiores.', 6, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(22, 'Ut sapiente iure facilis aspernatur.', 'Ea quia et voluptas ipsum sed. Dicta facere sapiente alias ipsum voluptas exercitationem aut. Atque sapiente quo dolores aut dolor accusantium quia. Hic et amet blanditiis in animi et aut. Sapiente ducimus consequatur optio est omnis reprehenderit vel.', 8, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(23, 'Vero perspiciatis nemo autem.', 'Id facere ipsa est officiis eos commodi. Molestiae optio deserunt maxime repudiandae est vel. Ut aut non quo ex. Velit et voluptas et harum pariatur sunt dolorem.', 6, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(24, 'In provident adipisci quos aut.', 'Praesentium vitae aut officiis suscipit. Numquam dolorem nobis voluptate omnis nisi minima aut. Eligendi perspiciatis ex voluptatibus cumque quae.', 4, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(57, 'ccccc', 'ccccc', 2, '2017-10-20 20:47:28', '2017-10-20 20:47:28', '2017-10-21 12:47:09', 'kCzYj3Ztq5qHF9nwFKP6.jpg'),
(58, 'ddd', 'dddd', 2, '2017-10-20 20:47:59', '2017-10-20 20:51:38', '2017-10-21 12:47:53', ''),
(52, 'eeeeee', 'eeeeeeeeeee', 2, '2017-10-20 20:37:03', '2017-10-20 20:37:03', '2017-10-21 12:36:57', ''),
(53, 'ww', 'ww', 2, '2017-10-20 20:38:50', '2017-10-20 20:38:50', '2017-10-21 12:38:42', ''),
(54, 'aaaa', 'aaaaa', 2, '2017-10-20 20:42:13', '2017-10-20 20:43:27', '2017-10-21 12:42:07', 'Lx8r53yZbU7AvM5B2L09.jpg'),
(55, 'aa1', 'aaa1', 2, '2017-10-20 20:43:59', '2017-10-20 20:43:59', '2017-10-21 12:43:51', ''),
(56, 'bb', 'bb', 2, '2017-10-20 20:46:20', '2017-10-20 20:46:20', '2017-10-21 12:44:24', ''),
(31, 'Quam quia officiis veritatis id corporis.', 'Qui sit aut eos voluptatum. Dolores blanditiis quo voluptate adipisci. Dolor quia ipsum voluptas consequuntur.', 2, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(32, 'Omnis rerum maiores illo omnis.', 'Quia laborum quia aperiam sed sequi asperiores. Eos autem dolores magnam impedit a. Repudiandae id eveniet commodi consequatur impedit nesciunt in. Nam delectus et dolorem. Cumque incidunt assumenda pariatur deserunt. Sapiente et consequuntur deserunt vol', 10, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(33, 'Quibusdam sit sed eum qui sint.', 'In qui amet iure sunt facere. Veritatis vel veniam rerum necessitatibus deserunt qui nostrum. Vero nobis eius dolorem. Aut minus quia dolor molestias voluptatem quo. Ex non ut eligendi veniam incidunt quasi et laborum.', 8, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(34, 'Aut molestiae dolor eius.', 'Rerum et delectus pariatur et repudiandae dolorem. Incidunt in delectus aut ex totam eligendi. Et cumque fugit incidunt quasi iste velit. Rerum doloremque ut eum possimus exercitationem sit quos.', 1, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(35, 'Fugit aliquam aspernatur similique.', 'Et sint dolores aut doloremque tempora explicabo. Est illo accusamus rerum aut et exercitationem enim autem. Dolorem modi debitis recusandae minus.', 3, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(36, 'Explicabo vel ea facere qui.', 'Maiores excepturi quo nemo non et. Ut nihil est consequuntur consequuntur similique ut qui. Atque dolore omnis eius necessitatibus aut dignissimos minus. Id similique id veritatis quam sed laboriosam fugit. Est est placeat ut sint non illum deserunt. Dese', 5, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(37, 'Molestiae omnis eveniet ipsam facere.', 'Ut sint quas et voluptatum. Tempora reprehenderit sunt voluptatem deleniti numquam in. Quam fuga sapiente quod illum at quis et. Libero laborum consequuntur corporis dolores. Quia sint exercitationem saepe quis et labore.', 4, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(38, 'Distinctio eius deleniti unde provident.', 'Quia magni ab eius molestiae. Earum ea dolor quo ut. Nobis non ex consequatur ratione modi quas suscipit. Omnis ab mollitia consequatur delectus nisi labore. Ut porro atque odio id tenetur perferendis sunt optio. Dolore autem iure adipisci ut reiciendis l', 2, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(39, 'Fuga nulla necessitatibus.', 'Blanditiis et reiciendis rerum nihil sapiente. Cupiditate explicabo perferendis omnis quod odio voluptatem praesentium. Veritatis adipisci culpa deleniti est totam voluptatibus quo quos. Laudantium consequatur ut et aut. Cum adipisci voluptates aut autem ', 5, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(40, 'Vero enim repudiandae dolorem sint dicta.', 'Illo consequatur quidem molestiae rerum sed. Vel maiores sit quis quo et. Animi et officiis et quae. Nam omnis quasi velit ad odit omnis. Est possimus est commodi officiis enim. Dolorem sequi molestiae culpa beatae.', 3, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(41, 'Veritatis eius dolores fuga fuga.', 'Architecto ipsum est consequatur eum eum. Deleniti expedita est qui quas ea. Aut et officia et quibusdam nulla. Autem non est commodi. At repudiandae sit soluta quae nihil nesciunt doloribus.', 4, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(42, 'Nemo repellendus beatae corporis.', 'Sint ea doloribus sunt possimus tenetur consectetur. Dicta animi tempora nobis qui voluptates velit. Vel sit delectus aut hic quo.', 6, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(43, 'Cum rerum nostrum optio ullam.', 'Dolor vel veniam magnam sit quibusdam. Aliquam sit voluptas eum. Quibusdam exercitationem vel aut. Laboriosam et animi et voluptatem. Error voluptas reprehenderit culpa ut voluptatibus sunt. Esse ipsam quaerat et veritatis.', 2, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(44, 'Nesciunt est earum aut similique aspernatur.', 'Magni modi fugit non voluptatem. Inventore quaerat quaerat veritatis omnis repellendus dolor voluptatem culpa. Laborum est et ducimus molestias nobis. Soluta expedita inventore est accusamus ea officia unde.', 10, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(45, 'Amet ipsum eligendi id illum aut.', 'Unde corporis velit quod incidunt nam sunt et aut. Amet eveniet voluptatum et aut voluptas dolorem soluta. Minima qui magni sint exercitationem nobis ducimus tempora magni. Corporis cupiditate iusto et earum praesentium. Consequatur minus quis inventore c', 6, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(46, 'Dignissimos aspernatur exercitationem occaecati iusto.', 'Hic omnis qui recusandae est. Ex ratione qui vero sunt eum ut est. Nemo soluta qui debitis facere.', 2, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(47, 'Sapiente perferendis ea perferendis et.', 'Ut consequatur eaque ea exercitationem voluptas fugit. Voluptatem et repellendus officiis. Omnis velit laudantium molestias aut debitis perspiciatis numquam. Aut adipisci iure omnis vel voluptatem et. Maxime officia ipsam fuga minima.', 2, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(48, 'Illum placeat numquam ut facilis.', 'Facilis quo et sed deserunt asperiores repellendus. Voluptate placeat velit in sint. Sint eius quod soluta voluptas repudiandae.', 2, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(49, 'Voluptatem id quasi nostrum dolorem.', 'Quibusdam neque et voluptatem tempora. Temporibus id quae quasi aut pariatur vitae nesciunt. Labore inventore quidem tenetur minus mollitia unde iste. Consectetur ipsam quis perspiciatis culpa unde inventore.', 7, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(50, 'Repellendus et et mollitia.', 'Minima sequi aut a modi. Aut distinctio harum minima qui. Repudiandae repellendus quod ut neque possimus repudiandae. Explicabo nihil sequi autem provident ipsa et. Est quos fugiat consequatur.', 1, '2017-10-20 20:29:06', '2017-10-20 20:29:06', '0000-00-00 00:00:00', ''),
(51, 'cccc1', 'cccccc1', 1, '2017-10-20 20:31:07', '2017-10-20 20:32:29', '2017-10-01 12:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 'Maudie Rice', 'alvina94@yahoo.com', '$2y$10$WzFCYuEJbyNuXMGr8jtHT.g8rdOsO9eCNnFPdnzc4D0dzIUBTyUjK', 0, '2017-10-20 20:29:06', '2017-10-20 20:29:06'),
(2, 'Maurice Kshlerin', 'laura.wyman@yahoo.com', '$2y$10$rj5fEsegBDXI62DxiIKxmePMUUyMXQY2w9zsfdsdB1uDJ5MAadEgS', 1, '2017-10-20 20:29:06', '2017-10-20 20:29:06'),
(3, 'Sunny Balistreri', 'damion.wilkinson@gmail.com', '$2y$10$WkbUxPea2XfUglyxDCZkzO0No8iyxCMmhjU23O/gvnnzsT8SOYxqS', 0, '2017-10-20 20:29:06', '2017-10-20 20:29:06'),
(4, 'Alene Jerde', 'elza31@gmail.com', '$2y$10$32fiNjKMUHjFfBD/mZEvruA4.yQTOEr7.P0R.1n13l79XTuN1Br96', 0, '2017-10-20 20:29:06', '2017-10-20 20:29:06'),
(5, 'Savanna O\'Hara I', 'lbode@yahoo.com', '$2y$10$ewjf2v/lfhIh7pbX6Q/B3uwIY.cs028lWKRFa0ubeDUfaCEqWzdnG', 0, '2017-10-20 20:29:06', '2017-10-20 20:29:06'),
(6, 'Ethelyn Feil', 'lucie.kassulke@glover.com', '$2y$10$E6EKNXtBkBZZyoyXBNRaW.KIMZ2lmGf5/NCmiEtchydCt/wTCinQy', 1, '2017-10-20 20:29:06', '2017-10-20 20:29:06'),
(7, 'Pauline Gerlach Jr.', 'faye38@brekke.com', '$2y$10$98LanQoewUuxJ8pva57R5.OZg1bqP5XQB3fflyiew8KV46sJvOG26', 1, '2017-10-20 20:29:06', '2017-10-20 20:29:06'),
(8, 'Wilton Swaniawski', 'trent.gulgowski@hotmail.com', '$2y$10$4NxNuUboOBPzfbkF9ifD8uVpzJikHG9uol52QZTOj3M93tudDYBqW', 0, '2017-10-20 20:29:06', '2017-10-20 20:29:06'),
(9, 'Duane Zboncak', 'lesch.jamie@larson.com', '$2y$10$kPWj.KAw04m8ZOBRJEcDS.W0RrYvhj7w2Q8F1zrui.4V9XcFQpEb.', 0, '2017-10-20 20:29:06', '2017-10-20 20:29:06'),
(10, 'Orville West MD', 'kattie.bergstrom@lubowitz.com', '$2y$10$zAMKbYdd5Tc2eo/rhBc3r.jfU7j/UW1kLi2Am2iZ0KdI2pGGX2.ZS', 1, '2017-10-20 20:29:06', '2017-10-20 20:29:06');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
