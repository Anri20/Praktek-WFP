-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2023 at 05:26 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wfp_week3`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `kategori`, `sub_kategori`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Appliances', 'Cooling', 'aaa', NULL, NULL),
(2, 'Appliances', 'Cooling', '', NULL, NULL),
(3, 'Appliances', 'Cooling', 'ccc', NULL, NULL),
(4, 'Appliances', 'Dispenser', 'aaa', NULL, NULL),
(5, 'Appliances', 'Dispenser', 'bbb', NULL, NULL),
(6, 'Appliances', 'Dispenser', 'ccc', NULL, NULL),
(7, 'Appliances', 'Kulkas', 'aaa', NULL, NULL),
(8, 'Appliances', 'Kulkas', 'bbb', NULL, NULL),
(9, 'Appliances', 'Kulkas', '', NULL, NULL),
(10, 'Appliances', 'Mesin Cuci & Pengering', '', NULL, NULL),
(11, 'Appliances', 'Mesin Cuci & Pengering', 'bbb', NULL, NULL),
(12, 'Appliances', 'Mesin Cuci & Pengering', '', NULL, NULL),
(13, 'Appliances', 'Microwaves & Ovens', 'aaa', NULL, NULL),
(14, 'Appliances', 'Microwaves & Ovens', 'bbb', NULL, NULL),
(15, 'Appliances', 'Microwaves & Ovens', 'ccc', NULL, NULL),
(16, 'Appliances', 'Setrika', 'aaa', NULL, NULL),
(17, 'Appliances', 'Setrika', 'bbb', NULL, NULL),
(18, 'Appliances', 'Setrika', 'ccc', NULL, NULL),
(19, 'Appliances', 'Small Appliances', 'aaa', NULL, NULL),
(20, 'Appliances', 'Small Appliances', '', NULL, NULL),
(21, 'Appliances', 'Small Appliances', 'ccc', NULL, NULL),
(22, 'Appliances', 'TV', 'aaa', NULL, NULL),
(23, 'Appliances', 'TV', 'bbb', NULL, NULL),
(24, 'Appliances', 'TV', 'ccc', NULL, NULL),
(25, 'Appliances', 'Vacuum Cleaner', 'aaa', NULL, NULL),
(26, 'Appliances', 'Vacuum Cleaner', 'bbb', NULL, NULL),
(27, 'Appliances', 'Vacuum Cleaner', 'ccc', NULL, NULL);

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
(4, '2023_09_11_035804_create_products_table', 1),
(5, '2023_09_11_035818_create_categories_table', 1),
(6, '2023_09_11_040440_add_category_id_column', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `nama_produk`, `deskripsi`, `stok`, `harga`, `gambar`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'X5YHgbeeOo', 'ULV8caVXwtvUrBlxBmWSGRiBYiHKZJoCDr7RmsCpu4ZUG5UZ4zGsGKr7y78LudDA7R1xAGADzItjf8sasV0mplBBZV2tTapYK6Us', 78, 65639, 'Image1', NULL, NULL, 1),
(2, 'uwcxMZ05WP', 'IMpDymgAb2tSD9cqlcNhU7bFdy2bHjJPyCNro9JPD8g3lsDjDO29vsrURqESCg1twJ7coLoMg8NPjgIc1ka3Lhf3eKSZptVjNnRa', 52, 93470, 'Image2', NULL, NULL, 14),
(3, 'UmIN4MJuCC', '1D62rMaJQYfiMsSWN4dFJyINgs88S6P5KWOaMgh4xMCJJT9d3ha1JsYme8Y9xeUR99i668oNZHX7dOmrxFYOp6tvJz9CEOybkitz', 65, 22868, 'Image3', NULL, NULL, 16),
(4, 'iJ2ALfPoPG', '98a9nf8tl1qSZcYaDK4jIySh7Zfk4j3pmHZ5Rw7w1q65ln0fxuciGOjjvwetSoENpG6xNJwiszigHUza6me6l1T9hvJMyJSYxs15', 8, 87989, 'Image4', NULL, NULL, 12),
(5, '8JIeU10qPO', 'Ma31rAUOHJgdMiDcO6QmgHCu2lnQqzICQ1pbuLRz6usLLgYgjSFEIBmrL9kHCAEj41M2mnFciMDoESB7zohzZ8d0jdUV5F72Fo3x', 75, 98142, 'Image5', NULL, NULL, 21),
(6, 'd156HsJCdb', 'DA8VFqnp44Ec2rPnSutCrIuRciswcCbukFeKA5sCj2XuCaoD8Cduy2SyYTWHS73GXSdUNgA4EKnNwA9APVcuOAqH722nFZjcjXZi', 52, 34476, 'Image6', NULL, NULL, 2),
(7, 'ML2OZwu0M3', 'bIvqtS67lB9wgxDXYGyeC3eQZSxO4HISChvdMSEHdOF38hbp4SpPvvB4KYYbUoEsKTKV3rijiqyBLp7mYeC1FATji2uif9UidoV4', 38, 45916, 'Image7', NULL, NULL, 10),
(8, 'LmFLnOOZn2', 'vjPOlYHn6eC2oe8f8D5BZWmxNlE6k49bmdTGbZbd5qBoe1RpZqLFSvPGIRFCtDjBoIyEkDH4IfJuqmNC3rY4JtPdCvW9FbFXmXqd', 72, 28755, 'Image8', NULL, NULL, 9),
(9, 'Zl3LnAvnji', 'Gl1JULPckicWtM3OswxaCRdNfFFdOXal1TBVaoJ5rpZfztKPg6y4jgJXI8HIlFSIay5yJIrgwXVAUPjCrWfJfrQknTDdhLZsS6p7', 61, 16834, 'Image9', NULL, NULL, 6),
(10, 'XDQMBVNnx9', '7vB8wiPg25ETh1BUT9mzTRpv6YEN55lNXKlqF9WsEeE3iBuRrGZ8870hb4Ia6xPkENVxZsnN0Ka7CDn6rFf9mqfo6o8clmG2kDhN', 80, 26896, 'Image10', NULL, NULL, 21);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
