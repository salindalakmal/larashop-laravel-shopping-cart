-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 06, 2016 at 08:10 AM
-- Server version: 5.6.26
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larashop`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE IF NOT EXISTS `blog_categories` (
  `id` int(10) unsigned NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'WOMEN', NULL, NULL),
(2, 'MEN', NULL, NULL),
(3, 'KIDS', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_tags`
--

CREATE TABLE IF NOT EXISTS `blog_post_tags` (
  `id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog_post_tags`
--

INSERT INTO `blog_post_tags` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 2, NULL, NULL),
(7, 7, 2, NULL, NULL),
(8, 8, 2, NULL, NULL),
(9, 9, 2, NULL, NULL),
(10, 10, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE IF NOT EXISTS `blog_tags` (
  `id` int(10) unsigned NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog_tags`
--

INSERT INTO `blog_tags` (`id`, `tag`, `created_at`, `updated_at`) VALUES
(1, 'Pink', NULL, NULL),
(2, 'T-Shirt', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`, `created_at_ip`, `updated_at_ip`) VALUES
(1, 'ACNE', NULL, NULL, '', ''),
(2, 'RONHILL', NULL, NULL, '', ''),
(3, 'ALBIRO', NULL, NULL, '', ''),
(4, 'ODDMOLLY', NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `created_at_ip`, `updated_at_ip`) VALUES
(1, 'MENS', NULL, NULL, '', ''),
(2, 'WOMENS', NULL, NULL, '', ''),
(3, 'KIDS', NULL, NULL, '', ''),
(4, 'FASHION', NULL, NULL, '', ''),
(6, 'HEAVY METAL', '2016-04-06 10:43:46', '2016-04-06 10:49:28', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `depts`
--

CREATE TABLE IF NOT EXISTS `depts` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drinks`
--

CREATE TABLE IF NOT EXISTS `drinks` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci,
  `rating` int(11) NOT NULL,
  `brew_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `drinks`
--

INSERT INTO `drinks` (`id`, `name`, `comments`, `rating`, `brew_date`, `created_at`, `updated_at`) VALUES
(1, 'Vodka', 'Blood of creativity', 9, '1973-09-03', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dept_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `contact_number`, `gender`, `dept_id`, `created_at`, `updated_at`) VALUES
(1, 'Linnea Upton', 'Grayson66@yahoo.com', '+60(4)5485121919', '', NULL, NULL, NULL),
(2, 'Dr. Giuseppe Luettgen', 'Hessel.Newell@Conn.com', '+50(5)6982073792', '', NULL, NULL, NULL),
(3, 'Wayne Leannon', 'Beahan.Kiara@hotmail.com', '1-673-158-7628', '', NULL, NULL, NULL),
(4, 'Prof. Rosetta Kunde', 'wThompson@hotmail.com', '(783)574-3323', '', NULL, NULL, NULL),
(5, 'Skye Bradtke', 'Jovany93@Gulgowski.com', '1-491-543-2188x497', '', NULL, NULL, NULL),
(6, 'Crawford Glover III', 'Louie95@gmail.com', '(125)792-5851x9123', '', NULL, NULL, NULL),
(7, 'Dr. Darius Kohler', 'Josie.Cruickshank@yahoo.com', '807.794.2493', '', NULL, NULL, NULL),
(8, 'Ms. Annette Reichert II', 'Sabina14@Morar.com', '133-104-0815x82996', '', NULL, NULL, NULL),
(9, 'Destinee Kemmer', 'Dickinson.Carole@yahoo.com', '549-997-3038x389', '', NULL, NULL, NULL),
(10, 'Prof. Lisa Kuphal III', 'Chyna.Jacobi@hotmail.com', '1-835-899-9694', '', NULL, NULL, NULL),
(11, 'Murl Wuckert', 'Schowalter.Lavada@yahoo.com', '663-690-0446', '', NULL, NULL, NULL),
(12, 'Edwin Sporer', 'Carissa42@Bergstrom.org', '093-966-8765x350', '', NULL, NULL, NULL),
(13, 'Elwin Dibbert', 'Kay18@Dare.com', '1-017-457-9212x849', '', NULL, NULL, NULL),
(14, 'Myrna O''Keefe', 'Robyn59@Mosciski.biz', '(933)565-9744x9275', '', NULL, NULL, NULL),
(15, 'Alfred Wyman', 'wGislason@gmail.com', '(437)427-4725', '', NULL, NULL, NULL),
(16, 'Dino Abbott', 'Koch.Gregg@Hickle.org', '(398)277-1030x3975', '', NULL, NULL, NULL),
(17, 'Percy Sauer', 'Fanny11@Cummings.net', '1-975-697-4674', '', NULL, NULL, NULL),
(18, 'Dr. Fritz Murray', 'Jones.Ezekiel@hotmail.com', '415-114-7873x9355', '', NULL, NULL, NULL),
(19, 'Alessia Lowe', 'Clare97@hotmail.com', '1-190-282-7008', '', NULL, NULL, NULL),
(20, 'Dr. Pat Schmidt', 'Jose36@hotmail.com', '+06(3)0128275884', '', NULL, NULL, NULL),
(21, 'Eliza Graham', 'pPaucek@hotmail.com', '393.064.0265x25014', '', NULL, NULL, NULL),
(22, 'Daryl Howell II', 'sBosco@Macejkovic.com', '1-680-690-4224', '', NULL, NULL, NULL),
(23, 'Mr. Efrain Ruecker DDS', 'xLittle@yahoo.com', '(252)048-9157x1843', '', NULL, NULL, NULL),
(24, 'Lawrence Russel', 'Jessy.Hartmann@Kuvalis.net', '150-654-8454x1065', '', NULL, NULL, NULL),
(25, 'Mr. Ulises Weissnat DVM', 'Wendy.Connelly@yahoo.com', '179.731.3746x29976', '', NULL, NULL, NULL),
(26, 'Bernardo Hickle', 'Cecilia.Adams@hotmail.com', '+10(1)5701737665', '', NULL, NULL, NULL),
(27, 'Dr. Yvette Wyman I', 'rOrn@Kunde.com', '+23(1)7856151930', '', NULL, NULL, NULL),
(28, 'Mireya Schamberger', 'Ova71@Mills.com', '243-621-9164x4713', '', NULL, NULL, NULL),
(29, 'Jewell Green', 'Rosalinda17@yahoo.com', '1-027-317-9647', '', NULL, NULL, NULL),
(30, 'Ms. Ima Koch V', 'Berta56@Will.net', '(239)929-5912x632', '', NULL, NULL, NULL),
(31, 'Mr. Adolf Cronin DDS', 'Powlowski.Carolyn@gmail.com', '510-739-2065', '', NULL, NULL, NULL),
(32, 'Vanessa Upton', 'Fatima71@gmail.com', '1-106-623-9884x748', '', NULL, NULL, NULL),
(33, 'Mr. Diego Hammes DVM', 'Camille89@hotmail.com', '(425)559-4588', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_04_06_115854_create_drinks_table', 1),
('2016_04_06_120959_employees', 1),
('2016_04_06_121823_add_gender_to_employees', 2),
('2016_04_06_145719_modify_gender_in_employees', 3),
('2016_04_06_150922_depts', 4),
('2016_04_06_151212_make_gender_null_in_employees', 5),
('2016_04_06_151458_add_dept_id_in_employees', 6),
('2016_04_06_154628_create_posts_table', 7),
('2016_04_06_154628_create_products_table', 7),
('2016_04_06_154629_create_categories_table', 7),
('2016_04_06_154633_create_brands_table', 7),
('2016_04_28_115047_add_category_id_image_to_posts', 8),
('2016_04_28_115240_blog_categories', 9),
('2016_04_28_122003_blog_tags', 10),
('2016_04_28_122041_blog_post_tags', 11),
('2016_04_28_122251_blog_post_tags', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(140) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(170) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blog` tinyint(1) NOT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `url`, `title`, `description`, `content`, `image`, `blog`, `category_id`, `created_at`, `updated_at`, `created_at_ip`, `updated_at_ip`) VALUES
(1, 'fugit', 'Ex qui suscipit quisquam necessitatibus.', 'Repellendus fuga eligendi non molestiae. Ex aut tempora delectus voluptatem nesciunt provident rem. Omnis et consequatur dignissimos ea aut.', 'Voluptate possimus illo ab sequi. Voluptates excepturi architecto id accusamus qui. Iste quibusdam libero velit fugiat dolorem aliquid in. Sint sint quas minus non iste.', 'blog-one.jpg', 1, 2, '1987-03-02 21:43:21', NULL, '', ''),
(2, 'voluptate', 'Debitis consequatur in eaque laborum facere.', 'Saepe autem sunt non iure doloremque. Unde non cum quo qui quae quia dolore. Voluptatibus asperiores necessitatibus consequuntur culpa.', 'Perferendis fugiat alias repellat qui. Aliquam doloremque reiciendis quis autem. Aspernatur molestiae velit voluptatem consequatur non. Voluptatum ea quidem magnam est ut ratione.', 'blog-three.jpg', 1, 3, '2012-06-13 12:17:48', NULL, '', ''),
(3, 'architecto', 'Aspernatur ut accusamus voluptas assumenda dolore.', 'Omnis atque consequatur quia architecto. Asperiores unde quia minus rerum iusto omnis aut. Nulla eveniet fugiat a cum et neque. Modi illum omnis autem debitis non ipsum.', 'Ducimus ut est ad doloribus cupiditate cumque. Officiis non sint aut blanditiis veritatis nesciunt. Quia voluptates et qui et reprehenderit. Excepturi vel nihil doloribus perspiciatis sed alias sit.', 'blog-one.jpg', 1, 3, '1988-04-10 02:17:00', NULL, '', ''),
(4, 'incidunt', 'Sed reprehenderit iste sit sed.', 'Temporibus at molestias voluptate impedit eaque qui. Qui quos vel consequatur. Distinctio et similique et.', 'Fugiat voluptate et suscipit. Qui error rerum ad animi nam officia nihil et. Iste magni repellendus nostrum perspiciatis.', 'blog-one.jpg', 1, 1, '2015-08-02 21:05:29', NULL, '', ''),
(5, 'ratione', 'Dicta ut et adipisci doloremque.', 'Nulla non alias aut. Qui pariatur sit doloribus corporis. Amet ab maiores aut et numquam vel cum.', 'Sit illum aut ullam iste. Voluptate quos dolores et voluptatem porro. Dolorem in eveniet non autem. Error ut natus quis minus quo nam.', 'blog-three.jpg', 1, 3, '2007-08-29 04:25:17', NULL, '', ''),
(6, 'error', 'Voluptatem odio repellat sunt dolorum adipisci nulla.', 'Veritatis a blanditiis natus repudiandae. Sunt iusto qui beatae officia tempore non eum aut. Sint earum et cupiditate at fugit.', 'Maxime enim et facilis fugiat error molestias. Voluptatem consequatur aliquam et voluptas. Non ea incidunt dicta omnis sed. Consequatur quam nemo quia omnis voluptatem impedit ea.', 'blog-one.jpg', 1, 1, '1987-04-27 17:00:23', NULL, '', ''),
(7, 'qui', 'Dolor rerum maiores distinctio maiores adipisci molestiae et.', 'Voluptatem velit dolorem quae similique quo. Quod ipsum est excepturi debitis non est necessitatibus. Mollitia dolorem nam minus fugiat libero error beatae.', 'Neque et aliquam doloremque tempora reiciendis consequatur est ut. Non est molestiae officiis laborum vitae rerum.', 'blog-three.jpg', 1, 2, '1999-06-25 17:51:01', NULL, '', ''),
(8, 'sapiente', 'Aut laboriosam id laboriosam at laboriosam.', 'Aut maxime possimus officiis atque fugit. Deleniti illum non aperiam earum voluptatem vel. Veritatis quas aperiam dolorum nulla.', 'Est incidunt expedita corporis ex nihil et. Quia eos non odio neque in. Ut ipsa ut cumque dolores ipsum atque doloribus. Ipsa assumenda quasi rerum et ut tempora voluptas.', 'blog-two.jpg', 1, 3, '1994-10-30 05:04:43', NULL, '', ''),
(9, 'et', 'Odio officiis eos ipsam atque qui expedita.', 'Laborum est quia commodi et. Velit eaque sapiente eum quaerat delectus rerum ut. Accusantium aut non harum ut voluptatem error. Quia et animi animi.', 'Ut culpa atque non sint sed. Laboriosam velit et doloribus. Doloremque corrupti deleniti praesentium quisquam vitae quia est. Et commodi cupiditate dignissimos necessitatibus.', 'blog-one.jpg', 1, 2, '2000-07-25 03:54:58', NULL, '', ''),
(10, 'dolore', 'Illo quia ducimus aliquid dolores et aut quae.', 'Reiciendis laborum ipsam id animi ea. Quaerat velit aliquid voluptates in vitae molestias commodi quia. Et ut mollitia tempore odit maiores vel dolores.', 'Blanditiis et eius dignissimos corrupti consequuntur ut deserunt. Non qui natus dignissimos voluptas. Sint ut vel ipsa.', 'blog-one.jpg', 1, 2, '1999-08-12 10:15:57', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(140) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `title`, `description`, `price`, `category_id`, `brand_id`, `created_at`, `updated_at`, `created_at_ip`, `updated_at_ip`) VALUES
(1, 'Mini skirt black edition', 'Mini skirt black edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna', 35, 1, 1, NULL, NULL, '', ''),
(2, 'T-shirt blue edition', 'T-shirt blue edition', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna', 64, 2, 3, NULL, NULL, '', ''),
(3, 'Sleeveless Colorblock Scuba', 'Sleeveless Colorblock Scuba', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna', 13, 3, 2, NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Salinda', 'salindalakmal@gmail.com', '$2y$10$ISQXeNJDeRmooGuuWUC1POBD.xVNuAEN3YEH6Y8UeWXBgZKhmmGje', 'o1p5nIktOi8VMB5i0ex7W9C77nrq53Bw7rp72iiMYzyeGZSN5nx0MUkO4NCZ', '2016-04-28 05:24:14', '2016-04-28 05:50:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_categories_category_unique` (`category`);

--
-- Indexes for table `blog_post_tags`
--
ALTER TABLE `blog_post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_tags_tag_unique` (`tag`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `depts`
--
ALTER TABLE `depts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drinks`
--
ALTER TABLE `drinks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `drinks_name_unique` (`name`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_dept_id_foreign` (`dept_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_url_unique` (`url`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `blog_post_tags`
--
ALTER TABLE `blog_post_tags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `depts`
--
ALTER TABLE `depts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `drinks`
--
ALTER TABLE `drinks`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_dept_id_foreign` FOREIGN KEY (`dept_id`) REFERENCES `depts` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
