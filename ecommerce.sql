-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2023 at 09:41 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'et voluptatem', 'et-voluptatem', '2023-11-09 00:03:38', '2023-11-09 00:03:38'),
(2, 'voluptatem id', 'voluptatem-id', '2023-11-09 00:03:38', '2023-11-09 00:03:38'),
(3, 'temporibus enim', 'temporibus-enim', '2023-11-09 00:03:38', '2023-11-09 00:03:38'),
(4, 'et inventore', 'et-inventore', '2023-11-09 00:03:38', '2023-11-09 00:03:38'),
(5, 'perferendis tempora', 'perferendis-tempora', '2023-11-09 00:03:38', '2023-11-09 00:03:38'),
(6, 'aspernatur omnis', 'aspernatur-omnis', '2023-11-09 00:03:38', '2023-11-09 00:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(8, '2023_11_09_070105_create_categories_table', 2),
(9, '2023_11_09_070256_create_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) NOT NULL,
  `stock_status` enum('instock','outofstock') NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) NOT NULL,
  `images` text DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'in sint placeat explicabo aspernatur libero', 'in-sint-placeat-explicabo-aspernatur-libero', 'Harum labore eos ad quos in blanditiis et soluta. Ad non sapiente qui aut non. Suscipit illo quo corporis ipsa.', 'Repudiandae ab quod et. Vitae soluta dolorem aut sunt vero maxime corrupti. Voluptate ipsa quas consectetur sit. Et officia aut magnam nostrum aperiam aut minus. Quae nihil vel voluptate magni quia. In eius et excepturi est. Accusamus quia ullam rerum alias. Aperiam sit soluta officia exercitationem libero. Rerum aut omnis cum nobis sunt.', '425.00', NULL, 'PRD237', 'instock', 0, 46, 'products-8', NULL, 1, '2023-11-09 00:09:59', '2023-11-09 00:09:59'),
(2, 'eos eum dignissimos incidunt ipsa dolores', 'eos-eum-dignissimos-incidunt-ipsa-dolores', 'Vitae error ut laborum dicta. Molestias molestiae distinctio aliquid ex sed. Ducimus optio aliquid voluptas excepturi dolorem at unde.', 'Fugit modi inventore minus cumque. Corporis tenetur cum qui qui. Aperiam assumenda minima quo et quos facilis. Accusantium dolores qui consequatur laboriosam dicta voluptas officiis. Voluptatem odio quam distinctio. Nobis numquam aut eum. Dolorum rem adipisci rerum minus ut. Consequuntur incidunt labore exercitationem unde fugit commodi officiis.', '99.00', NULL, 'PRD338', 'instock', 0, 33, 'products-4', NULL, 1, '2023-11-09 00:09:59', '2023-11-09 00:09:59'),
(3, 'sunt enim et ullam voluptate aliquam', 'sunt-enim-et-ullam-voluptate-aliquam', 'Fugit blanditiis dolor accusantium modi. Aut omnis ipsam autem beatae saepe mollitia voluptatum. Odit eos odio magnam voluptatem et non qui.', 'Repellat quisquam aperiam occaecati deleniti et. Asperiores distinctio id sapiente similique sint. Qui nam adipisci sapiente qui officia sit. Sit consequuntur commodi optio id enim id. Ipsum quaerat quam id. Laborum unde necessitatibus debitis reprehenderit autem. Consequatur optio qui eligendi temporibus. Mollitia error velit autem. Fugiat aut incidunt sint.', '389.00', NULL, 'PRD388', 'instock', 0, 11, 'products-7', NULL, 2, '2023-11-09 00:09:59', '2023-11-09 00:09:59'),
(4, 'et sint voluptatibus molestiae est qui', 'et-sint-voluptatibus-molestiae-est-qui', 'Qui et similique cum doloribus voluptatem aliquid. Quo nihil alias corrupti officiis enim. Et ullam dolores ea repellat quasi maiores delectus.', 'Et quisquam sit sit accusantium consequatur animi. Est et rerum voluptas veniam quasi. Deserunt iste sint at molestias consectetur. Eaque id deserunt dolor. Molestiae in magni nesciunt nihil. Voluptates quo dolores ut. Quia est numquam saepe possimus quos facilis aut qui. Commodi nam veritatis voluptatem sint et. Fugit laborum delectus quibusdam et consequatur autem.', '240.00', NULL, 'PRD333', 'instock', 0, 14, 'products-4', NULL, 5, '2023-11-09 00:10:00', '2023-11-09 00:10:00'),
(5, 'tempora quis dicta voluptate sed ut', 'tempora-quis-dicta-voluptate-sed-ut', 'Totam est nobis ut eum unde optio quia et. Maiores quisquam ipsam aut autem dolor id laboriosam. Inventore aperiam beatae dolores minus rem.', 'Vel pariatur ipsa rerum sed. Reprehenderit quia quia non dolore. Nostrum perspiciatis qui omnis id dolore sequi voluptatem. Officia quis deserunt fugit qui repudiandae commodi magni earum. Aliquid quos quaerat qui nemo corporis. Illum magni voluptas qui fugit dolores facere sed consequatur. Reprehenderit omnis vel soluta aut laudantium.', '190.00', NULL, 'PRD266', 'instock', 0, 30, 'products-10', NULL, 1, '2023-11-09 00:10:00', '2023-11-09 00:10:00'),
(6, 'harum a vero deleniti itaque eius', 'harum-a-vero-deleniti-itaque-eius', 'Officia quos quo nostrum minima unde maiores consequuntur. Non doloremque et commodi asperiores quia numquam. Ab ratione dolorem sint libero.', 'Et vel ex ad atque eaque. Praesentium non architecto reiciendis nihil qui. Aut explicabo blanditiis repellendus est non autem ut eaque. Aspernatur eum neque maxime. In et minima voluptatem omnis modi. Nostrum ut voluptatem rerum quia nam voluptatem in repellat. Odit ipsum sequi ut quia officiis dolor. Vero earum maxime esse nemo modi vel voluptatibus. Illo quo quo ab quo harum quia. Ut fugiat accusantium commodi velit nostrum. Eos eaque repellat quod. Dolor et et recusandae eum amet.', '367.00', NULL, 'PRD115', 'instock', 0, 28, 'products-6', NULL, 3, '2023-11-09 00:10:00', '2023-11-09 00:10:00'),
(7, 'aut in dolorem velit quibusdam quia', 'aut-in-dolorem-velit-quibusdam-quia', 'Voluptatem qui eum laudantium totam laudantium illum quasi fugit. Consequatur fugiat aut dolor atque ab provident. Reiciendis est maiores quia illo possimus eum natus error.', 'Consequuntur rerum officia dolorum molestias et. Accusamus sunt quis ea est inventore ducimus et culpa. Aut error enim sequi dolor. Quaerat odio ex incidunt nobis rerum consequatur soluta. Adipisci voluptates aperiam est asperiores consequatur et sed sed. Eum alias est reiciendis porro rerum. Consectetur at velit laboriosam sit laudantium qui ex et. Culpa dolorum aperiam odio odit voluptatem. Similique veniam ullam doloribus quam sunt.', '97.00', NULL, 'PRD156', 'instock', 0, 44, 'products-15', NULL, 5, '2023-11-09 00:10:00', '2023-11-09 00:10:00'),
(8, 'laborum et quia quia eum voluptatem', 'laborum-et-quia-quia-eum-voluptatem', 'Blanditiis et fugit porro. Debitis qui qui aliquid commodi eum labore. Eum eaque voluptas mollitia ut corporis. Ad et harum recusandae.', 'Esse accusamus unde ut veniam. Explicabo pariatur enim repellat ducimus modi. Earum corrupti sit corrupti et omnis. Non et ipsam aspernatur a. Autem consequatur earum ex vel quibusdam tenetur voluptatem et. Quisquam quos officiis omnis quia sunt non. Dolore enim eos nihil suscipit. Praesentium sit odio non consequatur est. Distinctio explicabo saepe dolore aliquam. Et dolores non aut molestiae quam eos ea. Quae ut delectus aut inventore rem esse possimus.', '155.00', NULL, 'PRD390', 'instock', 0, 44, 'products-3', NULL, 5, '2023-11-09 00:10:00', '2023-11-09 00:10:00'),
(9, 'eos expedita non excepturi qui voluptatum', 'eos-expedita-non-excepturi-qui-voluptatum', 'Placeat nam voluptas ea accusantium omnis quisquam quas. Sit facere nobis saepe recusandae voluptas molestiae. Labore facilis commodi reprehenderit sed. Atque voluptatem sit dolor ipsam dicta.', 'Nisi modi expedita qui amet totam. Ut velit ea ut ut sapiente porro ut. Quis aperiam dolorum rerum consequatur amet dolor occaecati. Dolor porro quos odit consequatur non excepturi. Sit aut non a ipsa dolore sequi consequatur qui. Possimus quae nobis ipsum. Repudiandae ad nesciunt minus non pariatur quo voluptas. Ut natus eos vel atque incidunt porro. Sint doloremque asperiores maxime architecto.', '315.00', NULL, 'PRD179', 'instock', 0, 14, 'products-3', NULL, 4, '2023-11-09 00:10:00', '2023-11-09 00:10:00'),
(10, 'ad cumque soluta pariatur eaque totam', 'ad-cumque-soluta-pariatur-eaque-totam', 'Expedita id ipsa voluptates voluptates repellendus et. Quia molestias sed dignissimos labore reiciendis corporis vitae. Corporis quas facere totam qui atque aut doloribus.', 'Soluta ea nemo culpa tempora. Impedit soluta earum corporis aut molestiae consequatur. Error quam doloremque et nobis. Voluptate dolor rerum sunt qui. A quo consequatur sed quia ab est impedit totam. Qui at unde pariatur veniam. Qui non non ut. Neque sunt illum officia. Incidunt rerum facilis corporis totam sint. Voluptas et quia quia. Eligendi qui quidem mollitia harum dolores amet esse non.', '401.00', NULL, 'PRD112', 'instock', 0, 11, 'products-14', NULL, 5, '2023-11-09 00:10:00', '2023-11-09 00:10:00'),
(11, 'ad voluptatem voluptate dignissimos exercitationem qui', 'ad-voluptatem-voluptate-dignissimos-exercitationem-qui', 'Veritatis unde aspernatur ut maiores. Beatae repellendus veritatis ipsum cupiditate. Iusto quo sequi nisi quaerat molestiae magnam.', 'Qui corporis et ipsa esse voluptas. Magni voluptatem aut sit. Eum tenetur harum earum. Eius est aut qui libero ullam. A officia non aut non. Illum tenetur quia et ad alias. Voluptas non expedita a quia ipsam accusamus quas. Fuga id sint eius facere sapiente. A fugiat ipsam dolor sunt magni beatae deserunt. Praesentium ea et delectus officiis magni nulla saepe. Qui ea et sit totam sunt et labore. Ipsum non qui perspiciatis.', '314.00', NULL, 'PRD192', 'instock', 0, 12, 'products-6', NULL, 3, '2023-11-09 00:10:00', '2023-11-09 00:10:00'),
(12, 'animi maxime dolorem eaque voluptate maiores', 'animi-maxime-dolorem-eaque-voluptate-maiores', 'Animi neque sint autem et. Et quo qui laboriosam vel exercitationem iusto.', 'Dolor iste nostrum pariatur exercitationem dicta asperiores mollitia. Dolorem quis dolore consectetur consectetur quibusdam accusantium. Dicta illum natus rerum eum qui molestias. Modi dolores necessitatibus et. Praesentium vel blanditiis repellat consequuntur quae est. Natus non qui ex velit officia. Molestias assumenda ea magni. Et sint sed cumque et quibusdam cupiditate quia saepe.', '98.00', NULL, 'PRD134', 'instock', 0, 41, 'products-13', NULL, 3, '2023-11-09 00:10:00', '2023-11-09 00:10:00'),
(13, 'qui hic eum consequatur molestiae animi', 'qui-hic-eum-consequatur-molestiae-animi', 'Sunt sit et id expedita sit. Dolorem est nesciunt pariatur repellendus aut ut sit pariatur. Laboriosam distinctio qui et ut sapiente fugit. Veritatis possimus est aut sint.', 'Ratione voluptatem rerum libero doloribus odit ducimus est qui. Itaque minus aut cum corporis animi sit. Dignissimos qui vel modi quasi laudantium corporis est. Cupiditate quis ipsam et. Et velit culpa qui voluptate impedit. Ex dicta eos a omnis aliquam deleniti sit. Earum recusandae tempore doloribus ab. Neque ut dolore omnis id. Illum optio aliquid officiis sequi cupiditate inventore rem. Qui quis quae sint laudantium. Repellat totam quas ea nemo.', '48.00', NULL, 'PRD303', 'instock', 0, 34, 'products-3', NULL, 1, '2023-11-09 00:10:00', '2023-11-09 00:10:00'),
(14, 'alias sit dolorem sit quos quisquam', 'alias-sit-dolorem-sit-quos-quisquam', 'Voluptatem ut nesciunt officia dignissimos tempore dolore aut illo. Velit quas laudantium neque amet molestiae. Deserunt doloremque facere qui.', 'Adipisci hic in sit facilis. Aspernatur sit quia magnam porro. Nesciunt rerum nihil sapiente vel nihil fugiat velit doloremque. Aperiam numquam rerum natus voluptate magnam accusamus dolores. Quia saepe doloremque quo delectus culpa. Sunt voluptatibus magnam ducimus reiciendis laudantium suscipit deleniti debitis. Ullam fuga in iure id cumque dolores. Et distinctio fuga perferendis rem numquam. Laudantium velit quis voluptatem at. Omnis illum amet qui et velit sapiente voluptatum.', '93.00', NULL, 'PRD451', 'instock', 0, 29, 'products-15', NULL, 5, '2023-11-09 00:10:00', '2023-11-09 00:10:00'),
(15, 'quia corrupti corporis doloremque saepe quo', 'quia-corrupti-corporis-doloremque-saepe-quo', 'Iste minus maiores libero voluptates. Dignissimos cupiditate quia necessitatibus.', 'Illo velit molestiae maiores. Atque nobis odio modi impedit ea et laboriosam. Asperiores et ut alias quisquam rerum. Veritatis dolorem est aut quo dolorem pariatur aut vel. Quia nesciunt ut similique corrupti. Eius asperiores deleniti sequi at. Pariatur inventore quam nisi. Eos quo neque qui qui non. Dicta unde eum voluptas aut. Dolorem doloremque consequatur sit quis velit voluptas.', '76.00', NULL, 'PRD105', 'instock', 0, 39, 'products-11', NULL, 2, '2023-11-09 00:10:00', '2023-11-09 00:10:00'),
(16, 'dolores vitae adipisci et voluptatum libero', 'dolores-vitae-adipisci-et-voluptatum-libero', 'Vitae nostrum qui mollitia iusto sed quae. Quo temporibus autem modi. Cum suscipit facere aliquid et error.', 'Pariatur nihil aspernatur at voluptas cum repellat rem. Asperiores doloribus eos aut quisquam ab. Illum ipsum pariatur perspiciatis nulla. Cumque ut in quia nesciunt corrupti consequatur. Eos excepturi eum maxime ipsa esse. Perspiciatis libero omnis ducimus qui incidunt et. Et optio qui ipsam officiis voluptate voluptas qui. Ut sit sequi eligendi autem incidunt ab rerum. Earum quasi pariatur quo incidunt dolores praesentium fugiat ex.', '462.00', NULL, 'PRD202', 'instock', 0, 14, 'products-7', NULL, 1, '2023-11-09 00:10:00', '2023-11-09 00:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `utype` varchar(255) NOT NULL DEFAULT 'USR' COMMENT 'ADM for admin user user for normal user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `utype`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'john carl', 'johnmurillo758@gmail.com', NULL, '$2y$10$e.opvz8obKk8hV8g/FY54ODbU.6LE7kSrlCdXLdnOM0QzrJOwl96C', 'ADM', NULL, '2023-11-08 22:11:30', '2023-11-08 22:11:30'),
(2, 'luffy', 'luffy@gmail.com', NULL, '$2y$10$fKCSlSzQlKECMahqnQaajedtmDSdU6ftcyFLd0dSrzG7ImCtxwHTC', 'USR', NULL, '2023-11-08 22:13:39', '2023-11-08 22:13:39'),
(3, 'alowakbar', 'sample123@gmail.com', NULL, '$2y$10$.4lKLc58gJL7yP6H2v7kfOJ3zHdWppOtJnjx1bth/Q2qo3sEkp2rW', 'USR', NULL, '2023-11-08 22:47:04', '2023-11-08 22:47:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
