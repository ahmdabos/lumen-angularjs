-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 13, 2017 at 10:02 PM
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
-- Database: `lumen-api-oauth`
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
(1, 'Quia est quo qui labore incidunt id enim.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 10, 7),
(2, 'Et aut qui et incidunt odit vitae.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 5, 19),
(3, 'Voluptatem consectetur nihil numquam deleniti quo voluptatibus non. Distinctio rem veniam at inventore illum voluptas.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 7, 8),
(4, 'Quia sint ducimus quas aut repellendus. Libero voluptatem similique ullam hic.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 6, 11),
(5, 'Dicta ipsam rerum et eligendi vel minus magni voluptatem. Voluptatem ea sit aut et.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 4, 18),
(6, 'Doloremque magni doloribus fugiat sit iusto mollitia rem.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 4, 48),
(7, 'Explicabo blanditiis soluta nihil velit ipsam est voluptatem.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 10, 43),
(8, 'Consequatur quia qui consequatur incidunt deserunt. Ut distinctio vitae laudantium consectetur.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 5, 19),
(9, 'Optio dicta corrupti voluptatem aperiam sunt veniam sint.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 3, 17),
(10, 'Non corporis qui et.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 8, 41),
(11, 'Nemo odio eum nesciunt dolor. Qui sapiente modi suscipit quos id.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 5, 49),
(12, 'Numquam ad natus in non voluptate. Dolorum aspernatur velit voluptate velit autem et voluptas.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 10, 32),
(13, 'Non officiis mollitia id necessitatibus. Quae vel quidem rerum.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 10, 28),
(14, 'Amet hic rerum praesentium quam asperiores illo repellendus.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 2, 3),
(15, 'Labore quo et quam et labore ut eos.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 10, 40),
(16, 'Autem ut modi non accusamus. Cumque saepe consequatur qui est perferendis officiis.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 7, 20),
(17, 'Tempore adipisci officiis sit. Ab eum neque mollitia ea error.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 5, 49),
(18, 'Ea asperiores enim at ullam recusandae est. Doloremque eaque sit adipisci unde architecto.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 7, 17),
(19, 'Sed animi alias cupiditate accusantium iste ipsum ullam. Sint aspernatur minus perspiciatis.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 2, 26),
(20, 'Rerum sapiente quibusdam consequatur et.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 4, 36),
(21, 'Quo repellat rem dolorum ut. Assumenda et molestiae qui ipsum rerum quam eos.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 3, 2),
(22, 'Rerum dignissimos nam sapiente culpa consectetur est.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 3, 49),
(23, 'Non praesentium pariatur tempora.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 7, 18),
(24, 'Soluta laboriosam asperiores et autem corporis reiciendis vel. Modi sed repellat ipsum.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 4, 47),
(25, 'Autem quisquam laboriosam laborum deleniti est voluptatem. Fugit corporis iste alias.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 6, 45),
(26, 'Fugiat sed molestiae voluptatem suscipit cumque culpa dolorem nisi.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 5, 38),
(27, 'Vero quis tempora dolore saepe.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 7, 18),
(28, 'Vel illo corporis voluptas ad voluptas pariatur.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 3, 49),
(29, 'Et eos autem voluptas labore ut omnis iste.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 2, 1),
(30, 'Recusandae doloribus at totam fugit consequatur natus. Consequatur qui quibusdam aut nostrum similique nobis et.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 6, 10),
(31, 'Eaque optio dolorem incidunt voluptas deleniti.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 4, 43),
(32, 'Ut sed enim illo est sunt. Deleniti ratione voluptas laudantium dolores totam atque quis.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 8, 8),
(33, 'Architecto labore dolore nihil laborum quaerat dolor.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 4, 35),
(34, 'Provident atque ut quasi culpa.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 9, 14),
(35, 'Inventore pariatur quia illum veniam. Ex illo perspiciatis consequatur quia a aut.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 3, 46),
(36, 'In iure ullam sapiente est. Laudantium voluptatem ullam quibusdam totam hic.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 7, 32),
(37, 'Sint voluptatum eaque cum rerum quis neque. Iure et ut ratione ex qui ullam est.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 2, 16),
(38, 'Assumenda veritatis placeat velit hic eum.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 5, 6),
(39, 'Dicta blanditiis aliquam repudiandae sit quam molestiae qui temporibus. Atque molestias ad odio sunt ut.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 1, 38),
(40, 'Voluptas quidem nihil sunt ipsum error.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 4, 42),
(41, 'Corporis eum maiores omnis placeat aliquam.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 7, 30),
(42, 'Rerum laudantium asperiores illum. Neque voluptas amet quos accusamus ab omnis voluptas dicta.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 4, 45),
(43, 'Tenetur temporibus perspiciatis ipsam quam quidem iure quos error.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 9, 44),
(44, 'Molestiae sint voluptate sunt voluptates iure vel officia.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 5, 7),
(45, 'Animi natus non recusandae nobis. Ut qui minima voluptatem in nihil ullam consequuntur non.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 7, 46),
(46, 'Ipsam molestias magnam eum quibusdam repellendus molestiae. Error earum sit at illo.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 7, 36),
(47, 'Enim fugiat consequatur molestiae libero est ut labore. Sit aut in nulla voluptas quas quo.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 5, 39),
(48, 'Et porro qui fugit ea est. Omnis quidem labore ducimus deleniti voluptatum placeat aut.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 9, 25),
(49, 'Distinctio occaecati suscipit laborum perferendis doloribus magnam et.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 1, 45),
(50, 'Nemo sequi dicta eius enim.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 9, 23),
(51, 'Vel qui sequi ut aut ut.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 2, 12),
(52, 'Voluptate omnis molestiae ipsam deserunt ut quam ut. Cumque modi quia omnis quia sed dolorem.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 5, 2),
(53, 'Exercitationem facilis enim veniam molestiae quidem illo.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 3, 34),
(54, 'Et quasi maiores quia accusamus in.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 10, 6),
(55, 'Eius impedit aut beatae eos placeat nihil ratione. Accusamus illo modi sit aut qui aut.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 7, 28),
(56, 'Sit id provident ut nisi at non. Quis mollitia enim praesentium dignissimos molestiae officiis aliquam illum.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 4, 10),
(57, 'Vitae ut tempore quia doloribus.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 2, 38),
(58, 'Reiciendis qui reprehenderit voluptatum amet.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 10, 2),
(59, 'Animi voluptatum quia nam quis sapiente. Accusamus animi consectetur omnis labore.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 7, 11),
(60, 'Et quidem voluptatum qui minima eveniet fugit dicta alias.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 9, 29),
(61, 'Rem non nihil magni iusto. Iusto et omnis sed culpa hic dolor ad.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 7, 14),
(62, 'Dolore dolorem possimus corporis delectus optio.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 6, 43),
(63, 'Sed expedita non maiores a et eos.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 6, 10),
(64, 'Voluptatum itaque illum qui.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 8, 29),
(65, 'Natus odit voluptatem saepe aliquid laudantium voluptatem suscipit.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 10, 26),
(66, 'Aut omnis et inventore earum et non iste.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 4, 17),
(67, 'Necessitatibus quos id voluptatibus dolores et exercitationem voluptatem.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 5, 10),
(68, 'Excepturi enim eos nihil aliquid placeat velit voluptatum. Voluptatem quos quidem molestiae.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 10, 2),
(69, 'Nostrum aut exercitationem consequatur ut.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 2, 15),
(70, 'Quo aperiam et minus vel.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 2, 8),
(71, 'Officia commodi corrupti minus non. Et laboriosam nulla nobis iusto ab.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 6, 48),
(72, 'Nostrum quibusdam beatae facilis odit illum incidunt.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 5, 26),
(73, 'Ut molestias ut ut et. Quo voluptate ad aut in est.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 7, 28),
(74, 'Optio velit nesciunt saepe rerum modi.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 8, 49),
(75, 'Est eaque corrupti vel fuga. Autem distinctio itaque consequatur deserunt et deleniti est.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 4, 6),
(76, 'Eius itaque qui tenetur consectetur minus at voluptate. Nemo odio labore cumque et perferendis earum.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 2, 34),
(77, 'Dolor quia veritatis amet alias ipsum.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 7, 28),
(78, 'Fugit voluptatibus iste deserunt itaque dicta cupiditate cum.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 5, 6),
(79, 'Velit aut ea recusandae voluptas.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 6, 9),
(80, 'Eveniet consequuntur dolores quia. Ducimus debitis accusantium laboriosam iste.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 2, 19),
(81, 'Est voluptatem qui iusto recusandae consequuntur aut laudantium. Ratione numquam incidunt ut laudantium sed.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 9, 31),
(82, 'Quasi perferendis aliquid qui commodi. Ipsum ut veniam sequi quidem.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 2, 31),
(83, 'Quod quasi animi consequuntur laudantium consequatur. Vel vel aperiam occaecati molestias veritatis laudantium temporibus.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 1, 47),
(84, 'Corporis temporibus suscipit laborum aut.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 6, 23),
(85, 'Consequatur sit et reiciendis natus maiores aut sit rerum.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 3, 45),
(86, 'Repudiandae asperiores temporibus maxime iure aut.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 6, 3),
(87, 'Et voluptas amet odit facilis sint omnis.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 7, 23),
(88, 'Quos quo expedita qui non quia rerum doloremque.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 5, 48),
(89, 'Ducimus nesciunt corporis vel doloremque. Velit enim consequatur nostrum molestias minus.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 2, 17),
(90, 'Voluptates facilis minima rem.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 4, 2),
(91, 'Et veritatis non qui.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 5, 14),
(92, 'Sed tempore quo quidem atque sed nobis id eum. Maxime vel quo labore deserunt et quo qui.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 3, 2),
(93, 'Eaque sunt nostrum repudiandae velit voluptatem.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 9, 29),
(94, 'Doloribus molestias qui facilis officia non autem eaque aut.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 7, 29),
(95, 'Nihil cumque qui optio nihil ullam voluptatum dolor in. Qui repudiandae nihil ad saepe pariatur ipsa unde tempora.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 7, 33),
(96, 'Sit iste quasi neque. Nemo repellendus autem autem sint laborum consequatur sed.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 7, 37),
(97, 'At in autem quo et totam cum omnis.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 4, 25),
(98, 'Sed sunt iusto necessitatibus rerum omnis est officiis voluptatibus. Maiores quia omnis illo quos facere.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 8, 25),
(99, 'Consequatur ipsa fugit consequatur earum aliquid amet sint. Eaque sed suscipit labore qui voluptatem asperiores.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 1, 12),
(100, 'Et fugit maiores sint quia.', '2017-10-13 20:51:38', '2017-10-13 20:51:38', 7, 20);

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
('COpHkJmSb01Zm9s7g5tdrZx22jIFlIB95CuNbJwh', 1, 1507934023, '2017-10-13 21:33:43', '2017-10-13 21:33:43'),
('5wihSWYHp3mK6h6bdpH3wjzWWqB7ve5FdePz6IcR', 2, 1507934277, '2017-10-13 21:37:57', '2017-10-13 21:37:57'),
('JSYB0B18PT3zWcOkbLtCEFbSsoAXYD3PjlinMwjq', 3, 1507935356, '2017-10-13 21:55:56', '2017-10-13 21:55:56');

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
('WZvoWSkpMQpCzTNGLUDkvhQnMJRnJ71mxjYP49JH', '5wihSWYHp3mK6h6bdpH3wjzWWqB7ve5FdePz6IcR', 1507966677, '2017-10-13 21:37:57', '2017-10-13 21:37:57'),
('wM49zCAVnbUCc8FkUmAmt9jqBK0DXSMHqjistOlA', 'JSYB0B18PT3zWcOkbLtCEFbSsoAXYD3PjlinMwjq', 1507967756, '2017-10-13 21:55:56', '2017-10-13 21:55:56');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_sessions`
--

INSERT INTO `oauth_sessions` (`id`, `client_id`, `owner_type`, `owner_id`, `client_redirect_uri`, `created_at`, `updated_at`) VALUES
(1, 'id0', 'user', '1', NULL, '2017-10-13 21:33:43', '2017-10-13 21:33:43'),
(2, 'id0', 'user', '1', NULL, '2017-10-13 21:34:51', '2017-10-13 21:34:51'),
(3, 'id0', 'user', '1', NULL, '2017-10-13 21:55:56', '2017-10-13 21:55:56');

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
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Vel rerum rerum dolorem similique.', 'Ullam amet assumenda nesciunt ducimus minima dolore. Ipsa consectetur exercitationem quo sit. Ut assumenda aspernatur illum. Consequatur quo possimus temporibus dolores animi. Corrupti dolores vitae autem sapiente amet dolor.', 2, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(2, 'Sequi cupiditate modi fugit laudantium.', 'Eius qui reprehenderit voluptates aut dignissimos. Neque corporis neque incidunt at enim id saepe. Possimus animi non tempore eum sequi velit est ut.', 2, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(3, 'Nihil ex rerum ea totam.', 'Accusamus qui saepe fuga non alias. Ex odio qui qui consectetur velit. Aspernatur vitae et laudantium et accusantium voluptate consequatur.', 10, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(4, 'Maiores quos occaecati quia iure tempore.', 'Inventore voluptatem enim laboriosam ea occaecati et error impedit. Enim assumenda repellat facilis et aperiam aut iste. Laboriosam doloribus magni et. Dolorum ut eum saepe maxime et non. Veritatis quae modi magni dicta.', 6, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(5, 'Qui occaecati sequi illum.', 'Excepturi voluptatum ipsum est qui sint dolor. Fugit sit quod error maxime deserunt sequi. Minus assumenda eum dolorum veritatis blanditiis. Debitis eius quia quis. Aut qui non amet in nesciunt iste doloremque culpa. Temporibus laborum eius soluta sunt si', 3, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(6, 'Esse consequatur aspernatur nihil expedita.', 'Velit quia voluptas dignissimos consequatur dolor autem deserunt. Ut repellendus minus et cum quisquam vel officia. Dolores reprehenderit labore soluta aut accusamus quo a. Explicabo ea ut nihil voluptatem omnis. Veritatis animi nesciunt tenetur deserunt ', 2, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(7, 'Molestiae amet adipisci consequuntur inventore molestias.', 'Accusantium dolorem sint dolores reiciendis consequatur. Omnis eveniet aut et consequuntur quod. Similique voluptate maiores aut eveniet sint cumque quam. Ut doloremque culpa molestiae voluptatem. Ullam qui et fugit officia. Quisquam facere consectetur au', 10, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(8, 'Velit illo quia illum.', 'Reprehenderit rerum in delectus. Modi natus impedit aut nam a. Qui voluptate omnis voluptas cupiditate.', 1, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(9, 'Ex a accusantium voluptatem.', 'Reprehenderit expedita voluptas facilis et mollitia et tempore. Dicta repudiandae nam totam occaecati voluptatem iste. Tenetur libero quasi ut ut mollitia sed. Laborum rem illo ut officia. Quasi adipisci quas aut non aut.', 5, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(10, 'Ipsum officiis deleniti voluptatem earum ut.', 'Nihil quo fugiat aspernatur. Placeat delectus quasi pariatur ipsam. Earum voluptatem possimus doloribus quas numquam. Qui perferendis suscipit ut quis.', 10, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(11, 'Maiores consectetur et.', 'Deserunt laborum sed quaerat ut exercitationem fugiat modi. Quia debitis inventore culpa itaque sed a. Libero expedita esse enim accusantium qui adipisci magnam. Sapiente reiciendis suscipit aut animi.', 7, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(12, 'Veniam amet necessitatibus libero consequatur.', 'Illum nam tempore aut. Reiciendis animi voluptate eveniet consequatur. Est nihil nostrum praesentium beatae. Voluptates repudiandae quidem commodi temporibus aut et nulla sit.', 3, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(13, 'Dolor et rerum necessitatibus.', 'Ratione quis possimus dolorum dignissimos corporis. Praesentium quis qui blanditiis optio natus. Reprehenderit praesentium quisquam iusto unde. Dolor doloribus animi est rerum sint vitae.', 6, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(14, 'Cumque soluta id.', 'Molestiae quia magni nam impedit porro nisi. Provident voluptas suscipit praesentium dolorem similique iure. Error occaecati neque neque nihil.', 8, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(15, 'Et doloribus illum earum.', 'Corrupti non tenetur quo qui aspernatur explicabo. Eum eum ea quis necessitatibus unde modi et. Rem similique cum rerum explicabo tempora odio. Impedit officia aut non similique omnis quae. Omnis quis eveniet perspiciatis totam.', 10, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(16, 'Cumque rem illum.', 'Dolorum placeat et repellat. Illo non tenetur et voluptas. Qui sint libero fuga est. Adipisci delectus sed harum.', 8, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(17, 'Rerum amet consequatur.', 'Libero voluptatibus facere in tempora et quos. Ea quia voluptas alias harum inventore non. Corporis harum vitae corrupti soluta magni non. Eum animi quibusdam consequatur.', 9, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(18, 'Rerum ut blanditiis.', 'Iusto ipsam veniam maiores ipsa. Beatae architecto minima consequatur sint et esse labore. Est eos accusamus reiciendis. Ratione inventore culpa doloremque natus corrupti debitis et. Qui doloremque voluptatum ullam voluptates voluptas maxime ut.', 9, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(19, 'Tempore consectetur odit beatae explicabo exercitationem.', 'Cupiditate unde dolorem distinctio. Sequi distinctio et fugit a minus molestiae. Enim non praesentium consequatur. Qui tenetur cum exercitationem. Dolore exercitationem optio dicta quam sapiente.', 7, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(20, 'Aperiam et facere quia quis.', 'Animi quo necessitatibus doloremque inventore. Adipisci eum aut corrupti libero. Pariatur nobis quia nostrum beatae. Rerum cumque dicta et assumenda possimus. Recusandae minima sed officia perspiciatis cum alias voluptatem quisquam.', 9, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(21, 'Error a fugiat dolorum sit.', 'Reprehenderit quo sapiente laboriosam. Molestiae corporis odit molestiae sit occaecati eveniet. Assumenda perferendis dolor consequuntur a sunt commodi expedita. Natus et accusantium ipsum sequi. Dolorem dignissimos in suscipit a minima nemo quaerat. Quis', 2, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(22, 'Voluptas dolorem tempore repudiandae sed.', 'Adipisci voluptas a ex occaecati. Provident debitis excepturi vitae enim sunt. Aut assumenda quis corrupti mollitia porro sunt. Quisquam iste laborum recusandae autem earum mollitia.', 6, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(23, 'Occaecati qui sapiente.', 'Facere voluptatem accusantium totam autem provident harum. Pariatur ducimus suscipit amet eveniet quis dolorum. Reiciendis sint est est eius. Quia repudiandae reiciendis atque quibusdam nostrum id quae cum. Nam vel aut illo facilis. Pariatur non vel dolor', 4, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(24, 'Qui quia est.', 'Soluta sit ut qui distinctio odio ipsum laudantium. Facere assumenda rerum at nesciunt magnam ut. Ex est dolor iusto doloremque. Vero ipsum aut non consequatur. Suscipit maxime est architecto reprehenderit nemo ut quod. Consequatur id aliquid ullam sed re', 10, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(25, 'Quia neque qui aut.', 'Ducimus non aperiam dolor doloribus est. Mollitia atque laboriosam labore sed iste est. Veritatis pariatur voluptatem commodi odio quia suscipit.', 4, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(26, 'Blanditiis ipsa magnam voluptate voluptates.', 'Voluptatem qui quo non praesentium natus amet distinctio iure. Maiores qui et qui eum. Perferendis illo in magni qui placeat hic.', 7, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(27, 'Vel incidunt sint.', 'Tenetur necessitatibus cumque dolores veniam libero ipsa distinctio non. Ullam eum libero ipsam eos vitae unde. Inventore qui consectetur iure corporis. Est voluptatem delectus eius quia incidunt laudantium necessitatibus qui.', 4, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(28, 'Rerum aut voluptatem accusamus.', 'Voluptas quae eaque illum aut possimus. Voluptate ipsa in fugit a corporis veniam aliquam aut. Asperiores iste necessitatibus reiciendis est eligendi placeat voluptatem aut. Omnis qui excepturi ex sed amet officiis. Quos ipsa consequuntur qui omnis nemo v', 8, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(29, 'Velit delectus rerum ex.', 'Alias enim fuga facere optio expedita. Rerum minus doloremque vel atque rerum unde. Laudantium ducimus impedit eveniet ut eos aut. Distinctio soluta omnis sed illum dignissimos id qui. Quo exercitationem cum consequatur qui dolor mollitia ut.', 1, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(30, 'Qui sit laboriosam.', 'Atque qui cupiditate eius quia eius quia. Veritatis est voluptates quia eum tempora quia. Voluptate et exercitationem accusamus tenetur rem rerum commodi. Magni fuga soluta dolores aut magni sed dolor. Quasi ipsa et rem distinctio voluptas libero dolore.', 1, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(31, 'Reiciendis et laudantium quas.', 'Voluptatum molestiae error molestiae dolores tenetur maiores. Voluptates labore sit laboriosam aliquam quisquam sed. Unde officiis suscipit est est.', 4, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(32, 'Aut eos culpa.', 'Vel eum laudantium quam sit explicabo aut impedit. Fuga ad in itaque quisquam tempora. In praesentium non animi vel tenetur. Commodi magni perspiciatis consequatur rerum eum rerum distinctio a. Quis aperiam architecto voluptatem laudantium ipsam rerum mol', 6, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(33, 'Facilis voluptas architecto deserunt est voluptatem.', 'Aut hic et neque hic sequi dolorum deleniti. Assumenda id vero magnam distinctio quod totam voluptatem. Non non aut dolorem totam voluptate numquam. Ut ratione omnis quas sit ad.', 6, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(34, 'Ea quia ut omnis.', 'Error aut cum voluptatibus fuga quidem. Nesciunt qui ducimus sed aut aliquam expedita. Ut corporis doloremque ipsam eligendi.', 2, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(35, 'Eaque et est occaecati quibusdam.', 'Distinctio odit in repudiandae molestiae quod. Perferendis est aspernatur voluptate porro velit quo corporis. Ut molestiae qui sint quidem in consequatur excepturi fugit. Mollitia eveniet autem mollitia distinctio sed. Molestiae ratione nihil fuga ducimus', 7, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(36, 'Quos mollitia corrupti sunt.', 'Error excepturi debitis illum et. Molestiae commodi odit atque. Aliquam quos aspernatur sint ea et.', 6, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(37, 'Aut qui voluptas vero.', 'Rerum possimus similique placeat qui omnis. Nesciunt est explicabo beatae quia. Nihil et aut aliquam nulla natus.', 9, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(38, 'Aspernatur quae et laboriosam inventore.', 'Sapiente est qui dolor accusamus enim. Dolores blanditiis atque qui iusto. Alias omnis qui quis optio quia a maxime. Iusto ea quis numquam et reiciendis libero placeat.', 10, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(39, 'Aut voluptas voluptate quis.', 'Eos cumque delectus iure ea blanditiis perferendis nobis. Esse a nesciunt ab ad iure et nemo. Est temporibus saepe eum autem architecto ipsam. Accusamus omnis id voluptas optio consectetur et. A qui aliquam facilis itaque esse.', 2, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(40, 'Molestiae ut quidem eum eaque et.', 'Ex quasi excepturi aliquid accusantium incidunt atque. Molestiae omnis provident dolores aut inventore consequatur cumque. Error odit et rerum expedita voluptatem autem quo et. Quos tempore quae maxime illo. Ratione odio sapiente qui enim minima eaque.', 2, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(41, 'Et eum error iste.', 'Eum et dignissimos ea. Aperiam molestiae consequatur sint mollitia consectetur eveniet. Nisi dolores voluptatem culpa iusto molestias dolore tempore. Doloribus amet vitae veniam non eaque nihil. Et quo quae autem fugiat natus soluta.', 3, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(42, 'Sunt ut voluptatem asperiores soluta.', 'Consequatur quos maxime omnis deserunt qui. Esse maiores voluptatum fugiat veritatis. Necessitatibus ut amet dolor beatae inventore. Et error esse quia asperiores maiores. Libero maiores vel placeat culpa eaque voluptas. Eaque repellat nesciunt provident ', 6, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(43, 'Quasi repellendus pariatur voluptatibus est.', 'Consequatur quasi odio vel voluptatem omnis quidem repellat. Fugit perferendis natus ea laboriosam beatae aliquam molestias. Est porro ut est quia minima. Itaque laboriosam tempore natus saepe. At sed amet dolores amet impedit velit. Vero sit soluta eius ', 9, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(44, 'Unde nam in et.', 'Omnis voluptas quisquam voluptate accusamus minima dignissimos assumenda. Consequuntur velit officiis voluptates architecto et. Ad ut nisi tempore.', 3, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(45, 'Voluptatum quia culpa minima consequatur.', 'Quis expedita iusto consectetur quae. Ducimus nam quia magnam quod unde quis. Nihil aperiam at numquam eum. Corporis perferendis quidem distinctio qui qui. Deleniti magnam non quibusdam molestias ea officiis aliquid. Ab optio dolor consectetur ut nisi nih', 9, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(46, 'Quidem voluptatem corrupti nihil dicta.', 'Aut debitis laboriosam consequatur est vitae. Vitae similique voluptas qui natus. Commodi veritatis id sed vero. Est et officiis animi corrupti dolor alias perferendis. Illo amet aut nemo et veritatis voluptatem quod autem.', 8, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(47, 'Maiores libero dolor sit quia.', 'Sit consequatur sed quo inventore. Expedita quae in sed in repellendus quisquam. Sit soluta reiciendis corrupti eligendi. Fugiat maiores est eius voluptatum odit molestiae. Voluptatum et maiores autem nostrum.', 1, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(48, 'Animi sequi consequatur eum.', 'Quaerat velit qui sequi modi. Veritatis nam pariatur quia distinctio ut ut. Natus dolore veritatis et voluptate totam iusto. Ea eligendi aliquid neque atque et nihil voluptas. Maiores rerum dolor laudantium labore laborum quia.', 8, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(49, 'Non autem velit fugiat iusto.', 'Voluptates esse deserunt laboriosam eos. Explicabo officia animi alias blanditiis facilis odio. Autem et possimus qui incidunt sunt cumque voluptatem. Praesentium aliquam aliquid qui quam adipisci.', 1, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(50, 'Mollitia qui qui fuga.', 'Et libero velit accusamus voluptatum tempora hic natus. Quaerat eum ipsum placeat cumque rerum nihil maiores veritatis. Repellat autem hic eligendi ad nihil nostrum aut beatae. Omnis aut rerum dicta voluptatibus aperiam deleniti quae. Odio nihil modi veni', 3, '2017-10-13 20:51:38', '2017-10-13 20:51:38');

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
(1, 'Jennie Langosh', 'jaida14@trantow.biz', '$2y$10$UNe0ldpS7eLI3EoGGhIAtuSr2FFHHInNB3cmQP5yHfN.dRH8xXGny', 1, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(2, 'Elsie Harvey', 'vvonrueden@yahoo.com', '$2y$10$t4ZZuH/0eE56tZnM1LvEH.GqFe6lSvV.YQgqoTrKmeY4bi620gEaC', 1, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(3, 'Jordan Kunde', 'hwindler@yahoo.com', '$2y$10$NmvfUD0cclHj7nqm.nIouuIO6MErHIQiKmgg7IiQg/I.rtPsvfCSC', 1, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(4, 'Jovani Littel', 'bsporer@yahoo.com', '$2y$10$bO0wEnZpnLMU6NKXJzKs/.AfneDquZwId9VEVSmAtxm554I0DEycK', 0, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(5, 'Jazmyn Zieme', 'lucious.wiza@yahoo.com', '$2y$10$/K13oeLyoDUXqOXbQKu2COFWPeDWH0LpezGT.BfPU0op25bl6n5zy', 1, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(6, 'Imogene Herman', 'sanford.brigitte@muller.com', '$2y$10$mhrx.t.APjzj6wb3C45tX.UcghaP31LiEilwXy8CzPm4S2gHhuEU.', 1, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(7, 'Prof. Jayda Gulgowski', 'lavina15@koelpin.org', '$2y$10$P1cy7z4OO0Oba4UMrwLG7eibF6kWYiNAi0s8FDEGA32lDOgreKy6C', 1, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(8, 'Solon Monahan', 'barney.barrows@cartwright.com', '$2y$10$Ep2jtWbj57zsd4SmuoSalOmGXlMFMl1dW2HoOONsEmy.WtXlQ5xBK', 1, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(9, 'Isabell Leuschke', 'daija98@yahoo.com', '$2y$10$i1uqxOsCNopnMp5A/hmP3u2La4rcwbc.cEVO1gVxVva4oRdpJ2yya', 0, '2017-10-13 20:51:38', '2017-10-13 20:51:38'),
(10, 'Juwan Muller', 'heber04@hotmail.com', '$2y$10$ZECrs5HRAzRRV3jT3zn0KuAPobdTyu14zSZtmjodcgnVDG.g3vN1W', 0, '2017-10-13 20:51:38', '2017-10-13 20:51:38');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
