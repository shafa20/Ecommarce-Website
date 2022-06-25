-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2022 at 10:48 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `example_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 for Active 2 for Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `tag`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Electrical', 'Electrical materials', 'Electrical', 1, '2022-06-20 23:17:22', '2022-06-20 23:17:22'),
(2, 'Electronics', 'Electronics things', 'Electronics', 1, '2022-06-20 23:17:51', '2022-06-20 23:17:51'),
(3, 'Vegetables', 'Vegetables fresh', 'Vegetables', 1, '2022-06-20 23:18:29', '2022-06-20 23:18:29'),
(4, 'Fruits', 'Fresh Fruits', 'Fruits', 1, '2022-06-20 23:29:30', '2022-06-20 23:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_code` int(11) NOT NULL,
  `galery_pic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `item_code`, `galery_pic`, `created_at`, `updated_at`) VALUES
(1, 1, '1183316239.jpg', '2022-06-20 23:54:13', '2022-06-20 23:54:13'),
(2, 1, '685147669.jpg', '2022-06-20 23:54:13', '2022-06-20 23:54:13'),
(3, 2, '1385734626.jpg', '2022-06-20 23:55:28', '2022-06-20 23:55:28'),
(4, 2, '57592986.jpg', '2022-06-20 23:55:28', '2022-06-20 23:55:28'),
(5, 3, '325484433.jpg', '2022-06-20 23:56:31', '2022-06-20 23:56:31'),
(6, 3, '1707450961.jpg', '2022-06-20 23:56:31', '2022-06-20 23:56:31'),
(7, 4, '83421450.jpg', '2022-06-20 23:59:17', '2022-06-20 23:59:17'),
(8, 4, '1716736660.jpg', '2022-06-20 23:59:18', '2022-06-20 23:59:18'),
(9, 5, '1954387514.jpg', '2022-06-21 00:00:49', '2022-06-21 00:00:49'),
(10, 5, '144736022.jpg', '2022-06-21 00:00:49', '2022-06-21 00:00:49'),
(11, 6, '99718413.jpg', '2022-06-21 00:02:21', '2022-06-21 00:02:21'),
(12, 6, '1971667207.jpg', '2022-06-21 00:02:22', '2022-06-21 00:02:22'),
(13, 7, '293863650.jpg', '2022-06-21 00:03:36', '2022-06-21 00:03:36'),
(14, 7, '333378138.jpg', '2022-06-21 00:03:36', '2022-06-21 00:03:36'),
(15, 8, '1694959423.jpg', '2022-06-21 00:04:55', '2022-06-21 00:04:55'),
(16, 8, '1339741580.jpeg', '2022-06-21 00:04:55', '2022-06-21 00:04:55'),
(17, 9, '167327716.jpg', '2022-06-21 00:06:28', '2022-06-21 00:06:28'),
(18, 9, '2113434962.jpg', '2022-06-21 00:06:28', '2022-06-21 00:06:28'),
(19, 10, '656263174.jpg', '2022-06-21 00:07:31', '2022-06-21 00:07:31'),
(20, 10, '1642014041.jpg', '2022-06-21 00:07:31', '2022-06-21 00:07:31'),
(21, 11, '1709031534.jpg', '2022-06-21 00:08:40', '2022-06-21 00:08:40'),
(22, 11, '1158832006.jpg', '2022-06-21 00:08:40', '2022-06-21 00:08:40'),
(23, 12, '954502918.jpg', '2022-06-21 00:10:30', '2022-06-21 00:10:30'),
(24, 12, '1197438052.jpg', '2022-06-21 00:10:30', '2022-06-21 00:10:30');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_code` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salePrice` int(11) DEFAULT NULL,
  `disPrice` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_code`, `name`, `description`, `pic`, `salePrice`, `disPrice`, `created_at`, `updated_at`) VALUES
(1, 1, 'I phone', 'I phone new', '1165455370.jpg', 100000, 900000, '2022-06-20 23:54:12', '2022-06-20 23:54:12'),
(2, 2, 'Hp Laptop', 'HP New corei9', '832413270.jpg', 60000, 50000, '2022-06-20 23:55:28', '2022-06-20 23:55:28'),
(3, 3, 'Rolex', 'American Rolex Brand', '1605614313.jpeg', 12000, 10000, '2022-06-20 23:56:31', '2022-06-20 23:56:31'),
(4, 4, 'Led Light', 'Led Light With High Voltage', '904141831.jpg', 500, 350, '2022-06-20 23:59:17', '2022-06-20 23:59:17'),
(5, 5, 'National Fan', 'Mahindra Fan Old National', '800989739.png', 1890, 1500, '2022-06-21 00:00:49', '2022-06-21 00:00:49'),
(6, 6, 'Singer Tv', 'Singer Tv Indian', '1437511936.jpg', 45000, 34500, '2022-06-21 00:02:21', '2022-06-21 00:02:21'),
(7, 7, 'European Strawberry', 'European Strawberry fresh fruits', '1341688733.jpg', 698, 543, '2022-06-21 00:03:36', '2022-06-21 00:03:36'),
(8, 8, 'Apple American', 'Fresh Fruits  American Apple', '1978525813.jpg', 1298, 890, '2022-06-21 00:04:54', '2022-06-21 00:04:54'),
(9, 9, 'Chaina-3 Lichu', 'Chuadnga and Dinajpur Chaina-3 Lichu', '1118988057.jpg', 300, 200, '2022-06-21 00:06:28', '2022-06-21 00:06:28'),
(10, 10, 'Misti Kumara', 'Deshi fresh vegetables Misti Kumra', '1414727759.jpg', 120, 60, '2022-06-21 00:07:31', '2022-06-21 00:07:31'),
(11, 11, 'Vendi', 'Bangladeshi fresh popular vegetables vendi', '2091197821.jpg', 65, 50, '2022-06-21 00:08:40', '2022-06-21 00:08:40'),
(12, 12, 'Shim', 'Bangladeshi winter   season fresh Vegetables Shim', '1885085874.jpg', 40, 30, '2022-06-21 00:10:30', '2022-06-21 00:10:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, '2022_05_17_164448_create_products_table', 1),
(6, '2022_05_20_092137_create_categories_table', 1),
(7, '2022_05_24_122323_create_subcategories_table', 1),
(8, '2022_05_26_122108_create_items_table', 1),
(9, '2022_05_26_123029_create_galleries_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `amount`, `address`, `status`, `transaction_id`, `currency`) VALUES
(1, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '62aeebbf6650d', 'BDT'),
(2, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '62aeed029cefd', 'BDT'),
(3, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Processing', '62aeef15459fe', 'BDT'),
(4, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Pending', '62aef73073096', 'BDT'),
(5, 'Customer Name', 'customer@mail.com', '8801XXXXXXXXX', 10, 'Customer Address', 'Failed', '62b166295df77', 'BDT');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `costprice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saleprice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '1 for active 2 for inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `catId` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subCatName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 for Active 2 for Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `catId`, `slug`, `subCatName`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'mobile', 'Mobile', 'mobile new', '1655788768.jpg', 1, '2022-06-20 23:19:28', '2022-06-20 23:19:28'),
(2, 1, 'laptop', 'LapTop', 'laptop all new genarations', '1655788813.jpg', 1, '2022-06-20 23:20:13', '2022-06-20 23:20:13'),
(3, 1, 'watch', 'Watch', 'Watch new', '1655789083.jpeg', 1, '2022-06-20 23:24:43', '2022-06-20 23:24:43'),
(4, 2, 'light', 'Light', 'Light high and low voltage', '1655789133.jpg', 1, '2022-06-20 23:25:33', '2022-06-20 23:25:33'),
(5, 2, 'fan', 'Fan', 'Fan new and old genarations', '1655789171.png', 1, '2022-06-20 23:26:11', '2022-06-20 23:26:11'),
(6, 2, 'tv', 'TV', 'Tv led', '1655789204.jpg', 1, '2022-06-20 23:26:44', '2022-06-20 23:26:44'),
(7, 4, 'strawberry', 'Strawberry', 'Strawberry Europe and American', '1655789527.jpg', 1, '2022-06-20 23:32:07', '2022-06-20 23:32:07'),
(8, 4, 'apple', 'Apple', 'Apple Europe and American', '1655789700.jpg', 1, '2022-06-20 23:35:00', '2022-06-20 23:35:00'),
(9, 4, 'lichu', 'Lichu', 'Litchi from all Rajshahi and Khulna', '1655789946.jpg', 1, '2022-06-20 23:39:06', '2022-06-20 23:39:06'),
(10, 3, 'misti-kumra-apple-gourd', 'Misti Kumra (apple gourd)', 'Bangladeshi Misti kumra', '1655790267.jpg', 1, '2022-06-20 23:44:27', '2022-06-20 23:44:27'),
(11, 3, 'vendinelesa-gardening', 'Vendi(Nelesa Gardening)', 'Bangladeshi popular vegetables vendi', '1655790546.jpg', 1, '2022-06-20 23:49:06', '2022-06-20 23:49:06'),
(12, 3, 'shimbins', 'Shim(Bins)', 'Bangladeshi vegetable shim', '1655790773.jpg', 1, '2022-06-20 23:52:53', '2022-06-20 23:52:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `name`, `email`, `role`, `address`, `phone`, `pic`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hm safa', 'safa', 'safa@gmail.com', '1', NULL, NULL, NULL, NULL, '$2y$10$ol6/II95TyZ4pXBLx8aZyuhzrBRjbH/Ycpn5r3SZ9hRmoBQf01sT.', NULL, '2022-06-19 02:08:54', '2022-06-19 02:08:54'),
(2, 'sifat khan', 'sifat', 'sifat@gmail.com', '2', NULL, NULL, NULL, NULL, '$2y$10$xIwejW1X87ZjGZP917YLiOwEhr/FDsRAMbFSkOPrMgsiCm2Kirwzy', NULL, '2022-06-19 04:18:47', '2022-06-19 04:18:47'),
(3, 'Ahad khan', 'Ahad', 'ahad@gmail.com', '3', NULL, NULL, NULL, NULL, '$2y$10$322jduvJ436WbOzjV2ddMeigWXWbqa07BFNI0P5V2ZUXTTRfZshz.', NULL, '2022-06-19 04:19:43', '2022-06-19 04:19:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `items_item_code_unique` (`item_code`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_role_unique` (`role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
