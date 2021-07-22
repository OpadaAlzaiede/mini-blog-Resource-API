-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2021 at 10:14 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `miniblogpost_v.0.1`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(122, 'Est beatae cum saepe totam. Enim velit aut ea est fugit enim repellendus. Aut maiores aut quis doloremque.', 362, 203, '2021-07-22 17:13:31', '2021-07-22 17:13:31'),
(123, 'Est ipsa aut dolorem harum. Mollitia sed id qui cumque qui. Id tempore et velit atque ut minus adipisci. Repellendus provident et ut est laudantium non.', 363, 204, '2021-07-22 17:13:31', '2021-07-22 17:13:31'),
(124, 'Ex maiores nisi temporibus aut et dignissimos. Aut voluptas qui et ab voluptas consequatur. Ipsum in animi iure distinctio ut eligendi non suscipit. Fugit magnam qui aut similique eum vel.', 364, 204, '2021-07-22 17:13:31', '2021-07-22 17:13:31'),
(125, 'Non animi libero quas sunt est. Ratione velit aut facilis voluptatem sed enim. Eum et est voluptatem accusantium aut autem. Ad eum quis tempora suscipit veniam ex natus.', 364, 204, '2021-07-22 17:13:31', '2021-07-22 17:13:31'),
(126, 'Aut hic aut animi ut. Maiores tenetur ullam et aut perspiciatis. Recusandae sint ratione dolore voluptas quo magnam id nemo.', 365, 205, '2021-07-22 17:13:31', '2021-07-22 17:13:31'),
(127, 'Aut aut hic sit expedita officia est fugit. Necessitatibus aut eveniet et debitis aut explicabo reiciendis. Hic repellendus id et quidem non voluptatibus rem.', 365, 205, '2021-07-22 17:13:31', '2021-07-22 17:13:31'),
(128, 'Nisi iste reiciendis unde velit delectus delectus. Maxime rerum et doloribus voluptate reprehenderit amet totam. Cupiditate ab ipsa odit quisquam quis debitis aut.', 366, 206, '2021-07-22 17:13:31', '2021-07-22 17:13:31'),
(129, 'Et nisi accusantium velit ut pariatur ut doloribus. Doloremque reprehenderit soluta temporibus est. Consequuntur enim placeat expedita esse omnis modi aut. Tenetur delectus eum iusto qui earum.', 366, 206, '2021-07-22 17:13:31', '2021-07-22 17:13:31'),
(130, 'Qui magni explicabo quam sunt rerum qui molestiae. Dicta iure dolor aut incidunt aut eos. Provident eaque aliquam debitis optio ut. Dolorem corporis similique quia consequatur odio adipisci voluptas.', 367, 207, '2021-07-22 17:13:31', '2021-07-22 17:13:31'),
(131, 'Dolore ut sit voluptates quia nam qui. Eum aspernatur quidem itaque sunt aut. Corporis quae aut vero asperiores voluptatem.', 368, 207, '2021-07-22 17:13:31', '2021-07-22 17:13:31');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_22_052351_create_posts_table', 1),
(5, '2021_07_22_052802_create_comments_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 51, 'someToken', '9313d678c117d11ee6750d0f5f1d777b83344db619658cca9dba75ce2922c35f', '[\"*\"]', '2021-07-22 15:00:31', '2021-07-22 03:32:13', '2021-07-22 15:00:31'),
(2, 'App\\Models\\User', 52, 'someToken', 'aeac1ee4a6a32beb4134c2581aefb939c552fd28bae3fe4ebb94325ce8b249dc', '[\"*\"]', '2021-07-22 16:56:17', '2021-07-22 16:53:55', '2021-07-22 16:56:17');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(362, 'Elinore Nitzsche', 'Expedita non dolor qui. Ut sunt non est sed sint non. Rem id perferendis nihil placeat qui. Facilis quae occaecati corrupti et architecto.', 203, '2021-07-22 17:13:31', '2021-07-22 17:13:31'),
(363, 'Briana Barrows II', 'Consectetur qui qui quo ut neque. Dicta quasi omnis non soluta. Tempore aspernatur voluptatem quae laudantium eos.', 204, '2021-07-22 17:13:31', '2021-07-22 17:13:31'),
(364, 'Mrs. Angela Feil PhD', 'Id suscipit non dolor ut. Aut et quasi mollitia rem et non molestias. Eaque qui veniam corrupti. Dolores eligendi aut veniam quis dolore.', 204, '2021-07-22 17:13:31', '2021-07-22 17:13:31'),
(365, 'Ms. Zaria Zboncak', 'Rerum in dignissimos et deserunt nemo fuga deleniti. Laborum dolore dolorem et dolore libero enim. Rerum magnam placeat neque et molestiae deserunt. Nam nam quam quia numquam eos velit.', 205, '2021-07-22 17:13:31', '2021-07-22 17:13:31'),
(366, 'Roscoe McKenzie', 'Vitae voluptates eos incidunt sunt autem assumenda in. Dignissimos accusantium sint amet laudantium.', 206, '2021-07-22 17:13:31', '2021-07-22 17:13:31'),
(367, 'Adrienne Jast', 'Vel sit minus quasi atque. Inventore earum beatae eveniet blanditiis ex et. Aut eos vel sequi est commodi magni. Dolorum aut ex aut quod.', 207, '2021-07-22 17:13:31', '2021-07-22 17:13:31'),
(368, 'Fermin Schamberger DDS', 'Qui dolorum hic quas necessitatibus molestiae tempora illum. Saepe dolores et est et. Deserunt in qui minus inventore consectetur.', 207, '2021-07-22 17:13:31', '2021-07-22 17:13:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(203, 'Prof. Liana Weber', 'memard@example.com', '2021-07-22 17:13:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Xy8amtUNG2', '2021-07-22 17:13:31', '2021-07-22 17:13:31'),
(204, 'Mrs. Amaya Bergstrom', 'jacklyn83@example.net', '2021-07-22 17:13:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vJzgalamNH', '2021-07-22 17:13:31', '2021-07-22 17:13:31'),
(205, 'Jarrell Shields', 'howell.angela@example.net', '2021-07-22 17:13:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TnCepOst41', '2021-07-22 17:13:31', '2021-07-22 17:13:31'),
(206, 'Prof. Edward Spencer', 'wiegand.chloe@example.com', '2021-07-22 17:13:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c9HxR9QCml', '2021-07-22 17:13:31', '2021-07-22 17:13:31'),
(207, 'Cordelia Streich', 'hessel.kory@example.net', '2021-07-22 17:13:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Zi3h1wdhQP', '2021-07-22 17:13:31', '2021-07-22 17:13:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

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
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=369;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
