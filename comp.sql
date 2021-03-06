-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 04, 2022 at 10:25 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `alliance_video_competition`
--

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `genre_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '0=deactivate 1=activate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `genre_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hip Hop', 1, '2021-03-31 21:51:48', '2021-03-31 22:41:30'),
(2, 'Rap', 1, '2021-03-31 21:53:29', '2021-03-31 22:41:32'),
(3, 'RNB', 1, '2021-03-31 21:54:23', '2021-03-31 21:54:23'),
(4, 'Afrobeat', 1, '2021-03-31 21:54:56', '2021-03-31 21:54:56'),
(5, 'Reggae', 1, '2021-03-31 21:55:40', '2021-03-31 21:55:40'),
(6, 'Dancehall', 1, '2021-03-31 21:55:50', '2021-03-31 21:55:50'),
(7, 'Reggaeton', 1, '2021-03-31 21:56:01', '2021-03-31 21:56:01'),
(8, 'Others', 1, '2021-03-31 21:56:15', '2021-03-31 21:56:15');

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
(4, '2021_04_01_060046_create_genres_table', 1),
(5, '2021_04_02_111703_create_settings_table', 2),
(6, '2021_04_05_071634_create_videos_table', 3),
(7, '2021_04_07_102629_create_votes_table', 4),
(8, '2021_04_09_120204_create_transactions_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `outsiders`
--

CREATE TABLE `outsiders` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `outsiders`
--

INSERT INTO `outsiders` (`email`, `id`, `created_at`, `updated_at`) VALUES
('muhammadarslan0026@gmail.com', 1, '2021-05-26 07:39:57', '2021-05-26 07:39:57'),
('tuqeer@gmail.com', 4, '2021-05-26 08:20:26', '2021-05-26 08:20:26'),
('arslan9878@gmail.com', 5, '2021-05-26 08:27:19', '2021-05-26 08:27:19'),
('talhachamp7003620@gmail.com', 6, '2021-05-26 08:49:21', '2021-05-26 08:49:21'),
('admin@competition.com', 7, '2021-05-27 04:37:56', '2021-05-27 04:37:56'),
('mohammad.moaid@hotmail.com', 8, '2021-05-27 05:00:43', '2021-05-27 05:00:43'),
('test2@gmail.com', 9, '2021-06-01 03:51:06', '2021-06-01 03:51:06');

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
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `queries`
--

INSERT INTO `queries` (`id`, `email`, `name`, `message`, `created_at`, `updated_at`) VALUES
(1, 'contact@gmail.com', 'contact information', 'one eof', '2021-05-04 05:36:13', '2021-05-04 05:36:13');

-- --------------------------------------------------------

--
-- Table structure for table `round_details`
--

CREATE TABLE `round_details` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `min_videos` int(11) NOT NULL DEFAULT '1',
  `max_videos` int(11) NOT NULL,
  `details` text,
  `extra_details` text,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `round_details`
--

INSERT INTO `round_details` (`id`, `name`, `min_videos`, `max_videos`, `details`, `extra_details`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Round 1', 1, 1000000, 'All participants can enter in this round', NULL, 1, '2021-07-05 15:14:02', '2021-07-16 07:37:14'),
(2, 'Round 2', 500, 5000, 'Only Selected videos from round 1 can enter  s', NULL, 0, '2021-07-05 15:14:02', '2021-07-15 23:00:05'),
(3, 'Round 3', 300, 1000, 'Only selected participants from round 2 can enter', NULL, 0, '2021-07-05 15:15:37', '2021-07-15 23:00:10'),
(4, 'Round 4', 50, 100, 'Only Selected videos from round 3 can enter in this round', NULL, 0, '2021-07-05 15:15:37', '2021-07-15 23:18:34'),
(5, 'Round 5', 1, 10, 'Final round will be in the top of the list ', 'http://zoom.com', 0, '2021-07-05 15:17:11', '2021-07-15 23:45:41'),
(6, 'Winners', 1, 1, 'Announce a Winner', NULL, 0, '2021-07-05 15:17:11', '2021-07-16 07:37:13');

-- --------------------------------------------------------

--
-- Table structure for table `round_videos`
--

CREATE TABLE `round_videos` (
  `id` int(11) NOT NULL,
  `video_id` bigint(20) UNSIGNED NOT NULL,
  `round_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `round_videos`
--

INSERT INTO `round_videos` (`id`, `video_id`, `round_id`, `created_at`, `updated_at`) VALUES
(1, 12, 1, '2021-07-16 07:37:13', '2021-07-16 07:37:13'),
(2, 13, 1, '2021-07-16 07:37:14', '2021-07-16 07:37:14'),
(3, 14, 1, '2021-07-16 07:37:14', '2021-07-16 07:37:14'),
(4, 15, 1, '2021-07-16 07:37:14', '2021-07-16 07:37:14'),
(5, 16, 1, '2021-07-16 07:37:14', '2021-07-16 07:37:14'),
(6, 17, 1, '2021-07-16 07:37:14', '2021-07-16 07:37:14'),
(7, 18, 1, '2021-07-16 07:37:14', '2021-07-16 07:37:14');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_upload` int(11) NOT NULL DEFAULT '1' COMMENT '0= no voting 1=voting',
  `stage` int(11) NOT NULL DEFAULT '1',
  `amount` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `is_upload`, `stage`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '33', '2021-04-02 06:36:59', '2021-05-27 05:03:46');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pay_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'vote',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('user','visitor') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `pay_by`, `paid_id`, `amount`, `reason`, `created_at`, `updated_at`, `ip`, `email`, `type`, `video_id`) VALUES
(1, 'tuqeer lilla', '4', '3.00', 'vote', '2021-05-26 08:23:51', '2021-05-26 08:23:51', NULL, NULL, NULL, 6),
(2, NULL, '1', '3.00', 'vote', '2021-05-26 08:32:45', '2021-05-26 08:32:45', NULL, NULL, NULL, 7),
(3, 'tuqeer lilla', '7', '3.00', 'Edit video', '2021-05-27 05:03:46', '2021-05-27 05:03:46', NULL, NULL, NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apeal_count` int(11) NOT NULL DEFAULT '0',
  `round` int(11) NOT NULL DEFAULT '1',
  `can_upload` int(11) NOT NULL DEFAULT '1',
  `role` int(11) NOT NULL COMMENT '1=admin 2=user',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '1=active 0=deacitve',
  `is_fail` int(11) NOT NULL DEFAULT '0' COMMENT '0=no 1=yes',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` text COLLATE utf8mb4_unicode_ci,
  `youtube` text COLLATE utf8mb4_unicode_ci,
  `tiktok` text COLLATE utf8mb4_unicode_ci,
  `instagram` text COLLATE utf8mb4_unicode_ci,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `apeal_count`, `round`, `can_upload`, `role`, `email`, `address`, `age`, `image`, `phone`, `status`, `is_fail`, `email_verified_at`, `password`, `remember_token`, `country`, `code`, `facebook`, `youtube`, `tiktok`, `instagram`, `bio`, `created_at`, `updated_at`) VALUES
(1, 'Admin Admin', 0, 1, 1, 1, 'admin@competition.com', '', 0, '', '', 1, 0, '2021-03-31 20:24:20', '$2y$10$LoeU5Xhdhvr40cWPzEWzuudV.8ACviQ3.cNRVqHweVq1Msxhws4qK', 'oO29XnmM6ePjW4iQNVLSSkxULbOUVRxz4G7p8q6KRy0NyRPvL5SfxOOlx3KH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-31 20:24:20', '2021-07-16 02:37:14'),
(2, 'test user', 0, 1, 1, 2, 'user@gmail.com', 'test', 20, '3111617347440.jpg', '12345678', 1, 0, NULL, '$2y$10$qFVTOkSehiO.vi63PACt2.OsxHCTkI686lad/N/am6hz6TP5cKBMq', NULL, 'pk', '92', NULL, NULL, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-04-01 21:10:40', '2021-07-16 02:37:14'),
(3, 'Muhammad Arslan', 0, 1, 1, 2, 'muhammadarslan0026@gmail.com', '2 Chak Janubi Mandi Bahaudin', 25, '8541617792928.jpg', '03406146195', 1, 0, NULL, '$2y$10$iwPUS.EgD5QVpPU922rxcedutWsjYjt0GYdwSM1J2enMW3ggxqCc.', NULL, 'pk', '92', NULL, NULL, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-04-07 00:55:28', '2021-07-16 02:37:14'),
(4, 'hamza ali hassab', 0, 1, 1, 2, 'testuser@gmail.com', 'mandi', 22, '3291617794176.jpg', '55555', 1, 0, NULL, '$2y$10$EH1Da0kVJ3TKcNtX12Z5leKII6mJ8CAtADJbC7oBN08aCkJEMLWve', NULL, 'pk', '92', NULL, NULL, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-04-07 01:16:16', '2021-07-16 02:37:14'),
(5, 'final testing', 0, 1, 1, 2, 'final@gmail.com', 'final adddress city final', 20, '2631618320873.png', '12345678', 1, 0, NULL, '$2y$10$YWlSjs9VN9TZQ6lcCTnnhe2kEujhYHl8GxPhGABhVT3UUIxb4rkye', NULL, 'pk', '92', NULL, NULL, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-04-13 03:34:33', '2021-07-16 02:37:14'),
(6, 'test acount', 0, 1, 1, 2, 'test12@gmail.com', 'test test', 22, '3381618497163.jpg', '123456', 1, 0, NULL, '$2y$10$BATBu0FBxsX3lrRzlGjp/ei2b.kKlVKPZ6D96Yk9kTnqPrSGMWcRu', NULL, 'pk', '92', NULL, NULL, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-04-15 04:32:44', '2021-07-16 02:37:14'),
(7, 'tuqeer lilla', 0, 1, 1, 2, 'tuqeer@gmail.com', 'new garden town ahmed block', 28, '581618732273.jpg', '03262593255', 1, 0, NULL, '$2y$10$5fw5AE5eF8y8VZdKch4NjuraS6KxN6RSmTQzCo18xvyGDS3j2.3NS', NULL, 'in', '00', 'facebook', 'youtub', 'tiktok', 'instagram', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-04-17 21:51:13', '2021-07-16 02:37:14'),
(8, 'hassan ali', 0, 1, 1, 2, 'hassan@gmail.com', 'hasss dfsfs', 25, '3921620127192.jpg', '123445676', 1, 0, NULL, '$2y$10$HA/LFzTL1KNTUnWL694tz.ZeK7YNzT6sA1o8EgH54lYeV7Lm/uCE2', NULL, 'pk', '92', NULL, NULL, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-05-04 06:19:52', '2021-07-16 02:37:14'),
(9, 'Muhammad Arslan', 0, 1, 1, 2, 'final22@gmail.com', '2 Chak Janubi Mandi Bahaudin', 55, '9561620322625.jpg', '03406146195', 1, 0, NULL, '$2y$10$4cjyHDYXhRtB532nvig/L.RG9ZLWnyhfYaR6dMCUeLVSoZbFS3JIS', NULL, 'in', '92', NULL, NULL, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-05-06 12:37:05', '2021-07-16 02:37:14'),
(10, 'tesfsfsdfd', 0, 1, 1, 2, 'dfsdfsf@gmail.com', 'fsdf', 55, '4331620330520.jpeg', 'fsdfsdfs', 1, 0, NULL, '$2y$10$xXlEXjUlmqFmGIfr.TvdnOhD8rH70mommliUlt7jcmKNxxeT0MYz2', NULL, 'pk', '92', NULL, NULL, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-05-06 14:48:40', '2021-07-16 02:37:14'),
(11, 'fsfsdf', 0, 1, 1, 2, '12@gmail.com', 'fsdfsdfs', 55, '1620734655.png', '123456', 1, 0, NULL, '$2y$10$BpffFkAEIZcK9Hfh.jY1juxqjZQauKbVulwnco1gnZRpGAqJEi5WC', NULL, 'pk', '92', NULL, NULL, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-05-06 14:51:21', '2021-07-16 02:37:14'),
(12, 'sfsfsfsd', 0, 1, 1, 2, '33@gmail.com', 'america', 55, '9541620331170.jpg', '03406146195', 1, 0, NULL, '$2y$10$pJHbGlT/uZZSmjo9uWYAa.RAmgJP58MnlFnWOjn0pyaUmn/aY5BdO', NULL, 'pk', '92', NULL, NULL, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-05-06 14:59:31', '2021-07-16 02:37:14'),
(13, 'fsff', 0, 1, 1, 2, '44@gmail.com', 'fdsfs fdsfsd', 88, '6971620331438.jpg', '03406146195', 1, 0, NULL, '$2y$10$x1GuYKmKC8DCyAJVUpJc6uJkmC0HHndJVRPNQRLqhXIsATzXXeK.u', NULL, 'pk', '92', NULL, NULL, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-05-06 15:03:58', '2021-07-16 02:37:14'),
(14, 'mohammad moaid', 0, 1, 1, 2, 'mohammadmoaid@gmail.com', 'lahor', 25, '7721620846321.png', '03045296525', 1, 0, NULL, '$2y$10$PUzqNU59vD9rNfdgRjLsR.EkqgmTtlXqMeDKm15sI.bzHs54St6tu', NULL, 'sa', '880', NULL, NULL, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-05-12 14:05:21', '2021-07-16 02:37:14'),
(15, 'mohammad mohammad', 0, 1, 1, 2, 'mohammad.moaid@hotmail.como', 'GT Road', 25, '9411621584103.png', '03045296525', 0, 0, NULL, '$2y$10$HEWfnxKfxTEnNmHT3ALZwuzG.baqTgxnQpaxSBCZW/Mu0bi/G555y', NULL, 'pk', '880', NULL, NULL, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-05-21 03:01:43', '2021-07-16 02:37:14'),
(16, 'mm', 0, 1, 1, 2, 'mohammad.moaid@hotmail.com', 'lahore', 60, '6891621598469.png', '03045296525', 1, 0, NULL, '$2y$10$YfMEiHJGiapUF/07OX7meed34rYgsaP.MgFSt4StoXsDXzNiw5A6i', NULL, 'pk', '00', 'https://www.facebook.com/mohammad.moaid', 'https://www.youtube.com/channel/UC7NlhI3kEc8LgLNqSSOCxGw', NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-05-21 07:01:09', '2021-07-16 02:37:14'),
(18, 'Muhammad Arslan', 0, 1, 1, 2, 'muhammadarslan00326@gmail.com', '2 Chak Janubi Mandi Bahaudin', 12, '5641622457322.jpg', '03406146195', 1, 0, NULL, '$2y$10$l1/3vRDVTIHLPyXbshEJGezIVPIgfyEJIPmD0CmDTWl8kp1jOPzqy', NULL, 'pk', '00', NULL, NULL, NULL, NULL, NULL, '2021-05-31 05:35:22', '2021-07-16 02:37:14'),
(19, 'Talha', 0, 1, 1, 2, 'test2@gmail.com', 'Pakistan', 12, '8501622484608.jpg', '923077003620', 1, 0, NULL, '$2y$10$WQOaY2zZAfWCJULqS1MokO5OYCZzlqkFuquFrytwE6BYWBXIND5SG', NULL, 'pk', '00', '#https://', '#Youtueb', '#https://', '#https://', 'hey its me i love Music,  hey its me i love Music hey its me i love Music hey its me i love Music hey its me i love Music,  hey its me i love Music hey its me i love Music hey its me i love Music hey its me i love Music,  hey its me i love Music hey its me i love Music hey its me i love Music hey its me i love Music,  hey its me i love Music hey its me i love Music hey its me i love Music', '2021-05-31 13:10:08', '2021-07-16 02:37:14'),
(20, 'moe moe', 0, 1, 1, 2, '1254@gmail.com', 'pk', 2, '5681622486326.png', '0304552585', 1, 0, NULL, '$2y$10$fg9tcQr8AqVX5t6UMdLlG..NB2PieMjkQXTPwqlh5V9wg3w09Ru8W', NULL, 'pk', '00', NULL, NULL, NULL, NULL, NULL, '2021-05-31 13:38:46', '2021-07-16 02:37:14'),
(21, 'moe', 0, 1, 1, 2, 'myemail@gmail.com', 'pk', 5, '9921622486519.png', '03045296525', 1, 0, NULL, '$2y$10$2qcf5HE4UOcIM12BEJIt9eUqJ5JLQRv5WPEY3CMsLuFB0A2xMqglK', NULL, 'pk', '00', NULL, NULL, NULL, NULL, NULL, '2021-05-31 13:42:00', '2021-07-16 02:37:14'),
(22, 'test 2', 0, 1, 1, 2, 'test3@gmail.com', 'pakistan', 12, '3421622487633.jpg', '021121212', 1, 0, NULL, '$2y$10$IBwlUy5WGjcdZ1sNCn/0QOEN3WUdWXWygoBHQVCV/vu2x/oxruxmq', NULL, 'pk', '00', NULL, NULL, NULL, NULL, NULL, '2021-05-31 14:00:33', '2021-07-16 02:37:14'),
(23, 'Talha', 0, 1, 1, 2, 'tlaha@gmai.com', 'test', 121212, NULL, '12121212', 1, 0, NULL, '$2y$10$Zk5wh0IERQRHVr81v1Mjdedy4sFZVkD8FmaltzkCr2TAHW0fl1Zf6', NULL, 'pk', '00', NULL, NULL, NULL, NULL, NULL, '2021-05-31 14:29:19', '2021-07-16 02:37:14'),
(24, 'test', 0, 1, 1, 2, 'test2@test.com', 'pskd', 22, NULL, '2323232', 1, 0, NULL, '$2y$10$CtG.T6g9u9TiNmi3jar2MuW5ayocBYkhBDTC9uXqVx/xKjxMaqYUS', NULL, 'ad', '00', NULL, NULL, NULL, NULL, NULL, '2021-05-31 14:30:29', '2021-07-16 02:37:14'),
(25, 'test', 0, 1, 1, 2, 'test@gmail.com', '232323', 22, NULL, '2323232', 1, 0, NULL, '$2y$10$zw/2ENEtemarZzktFVMKdO9iEYN2ZaLHqiMOEIWiR0N7zU1FE6Xm2', NULL, 'ad', '00', NULL, NULL, NULL, NULL, NULL, '2021-05-31 14:30:46', '2021-07-16 02:37:14'),
(26, 'Talha Mushtaq', 0, 1, 1, 2, 'talhachamp7003620@gmail.com', 'Fateh Sher Caloni , House#- 25-C/D, godara road', 22, 'users/1626386349_5E10C7B9_68.jpg', '+923077003620', 1, 0, NULL, '$2y$10$yF/pxGe3z6VKkgEl1nxqp.Ez8JPopH1CeN19zv2eMv3mWWQzCUzaK', NULL, 'pk', '00', '#https://', '#https://', '#https://', '#https://', 'hey its me i love Music,  hey its me i love Music hey its me i love Music hey its me i love Music hey its me i love Music,  hey its me i love Music hey its me i love Music hey its me i love Music hey its me i love Music,  hey its me i love Music hey its me i love Music hey its me i love Music hey its me i love Music,  hey its me i love Music hey its me i love Music hey its me i love Music', '2021-07-07 13:10:28', '2021-07-16 02:37:14'),
(27, 'Test', 0, 1, 1, 2, 'test@gmsdils.com', 'Pakistan', 12, 'users/1626393346_3DA671B1_52.jpg', '232323222232', 1, 0, NULL, '$2y$10$46IpqzYSEAWw5ClHJtP6M.xUbti5qc7MBU6aD96HEmHoRfjUoEplq', NULL, 'pk', '00', NULL, NULL, NULL, NULL, NULL, '2021-07-15 18:55:46', '2021-07-16 02:37:14'),
(28, 'Usama', 0, 1, 1, 2, 'usama@gmail.com', 'Paksitan', 26, 'users/1626421096_A0955E50_24.jpg', '030009349333', 1, 0, NULL, '$2y$10$Oimeij7ZStd8zkWlfssiVOxKUibLwenvrTagHTtGNpiQXdzyXfZ7.', NULL, 'pk', '00', NULL, NULL, NULL, NULL, NULL, '2021-07-16 02:38:17', '2021-07-16 02:38:17'),
(29, 'test', 0, 1, 1, 2, 'test33@gmail.com', 'PAkistan', 12, 'users/1626462992_6EB14DD2_28.jpg', '030000000', 1, 0, NULL, '$2y$10$U3Ppw0aOU9g2.MqjftkZQuURma7mT0Lk4WWYsdG8.ECQfpPVPBp/.', NULL, 'pk', '00', NULL, NULL, NULL, NULL, NULL, '2021-07-16 14:16:33', '2021-07-16 14:16:33');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `share_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre_id` int(11) NOT NULL,
  `song_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0= no change',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tumbnail_image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `user_id`, `share_link`, `genre_id`, `song_name`, `video`, `count`, `created_at`, `updated_at`, `tumbnail_image`, `description`, `status`) VALUES
(12, 28, 'TalhaAnnie Marie Birthday1946', 1, 'Annie Marie Birthday', '8361622543334.mp4', '7', '2021-06-01 05:28:56', '2021-07-17 02:57:55', 't6231622543334.png', 'Annie Marie Birthday hd song', 0),
(13, 19, 'TalhaAriana Grande - Side to Side1923', 3, 'Ariana Grande - Side to Side', '8161622543833.mp4', '2', '2021-06-01 05:37:23', '2021-07-15 16:31:29', 't1261622543833.png', 'Ariana Grande - Side to Side Hd Song \r\n#Ariana #Grande - #Side #to Side', 0),
(14, 19, 'TalhaAriana Grande Thank you1973', 4, 'Ariana Grande Thank you', '2601622543934.mp4', '4', '2021-06-01 05:39:15', '2021-07-15 16:31:29', 't8851622543934.png', 'Ariana Grande Thank You  Hd Song\r\n#Ariana #Grande', 0),
(15, 26, 'TalhaDj Snake Let Me Love you1941', 1, 'Dj Snake Let Me Love you', '2431622544014.mp4', '109', '2021-06-01 05:40:16', '2021-07-15 16:31:29', 't4871622544014.png', 'Dj Snake Let Me Love you Justin Berber Song Dj Snake Let Me Love you Justin Berber Song  Hd Song', 0),
(16, 19, 'TalhaJustin Bieber Peaches1949', 1, 'Justin Bieber Peaches', '6931622544075.mp4', '52', '2021-06-01 05:41:20', '2021-07-16 14:32:34', 't3341622544075.png', 'Justin Bieber Peaches New Hd Song 2021 -> Dj Snake', 0),
(17, 19, '19lost-control-lan-walker-sorana1992', 1, 'Lost Control - Alan Walker & Sorana', '4611622545452.mp4', '22', '2021-06-01 06:04:52', '2021-07-15 16:31:29', 't8641622545452.png', 'VINAI - Rise Up (feat. Vamero) is OUT NOW! Like this track? Download or add it to your favourite Spotify/Apple Music playlist by clicking HERE: https://spinninrecords.release.link/r...\r\nMake sure to subscribe to Spinnin\' Records: http://bit.do/spinnintv \r\n..and turn on notifications to stay updated with all new uploads!????\r\nJoin our Spinnin\' Records Top 100 Playlist ??? https://spinninrecords.lnk.to/top100!YT\r\n\r\nFollow VINAI:\r\nhttps://www.facebook.com/vinai.official\r\nhttps://twitter.com/vinaiofficial \r\nhttp://instagram.com/vinaiofficial', 0),
(18, 26, 'TalhaAriana Grande - Side to Side1923', 3, 'Ariana Grande - Side to Side', '8161622543833.mp4', '2', '2021-06-01 05:37:23', '2021-07-15 16:31:29', 't1261622543833.png', 'Ariana Grande - Side to Side Hd Song \r\n#Ariana #Grande - #Side #to Side', 0);

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `round_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `user_id`, `video_id`, `round_id`, `created_at`, `updated_at`) VALUES
(1, 4, 12, 1, '2021-05-26 08:23:51', '2021-05-26 08:23:51'),
(2, 1, 15, 1, '2021-05-26 08:32:45', '2021-05-26 08:32:45'),
(3, 2, 12, 1, '2021-05-26 08:23:51', '2021-05-26 08:23:51'),
(4, 1, 12, 1, '2021-05-26 08:32:45', '2021-05-26 08:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `winners`
--

CREATE TABLE `winners` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `details` text NOT NULL,
  `video_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `winners`
--

INSERT INTO `winners` (`id`, `user_id`, `title`, `details`, `video_id`, `created_at`, `updated_at`) VALUES
(1, 26, 'Wohoo', 'Welcome to our winner', 18, '2021-07-15 23:38:04', '2021-07-15 23:38:04'),
(2, 26, 'Yo bro hellop', 'eheleooemcdcmoemcec c s', 18, '2021-07-15 23:45:41', '2021-07-15 23:45:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outsiders`
--
ALTER TABLE `outsiders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `round_details`
--
ALTER TABLE `round_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `round_videos`
--
ALTER TABLE `round_videos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `video_id_2` (`video_id`,`round_id`),
  ADD KEY `video_id` (`video_id`),
  ADD KEY `round_id` (`round_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `round` (`round`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `round_id` (`round_id`);

--
-- Indexes for table `winners`
--
ALTER TABLE `winners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `video_id` (`video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `outsiders`
--
ALTER TABLE `outsiders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `queries`
--
ALTER TABLE `queries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `round_details`
--
ALTER TABLE `round_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `round_videos`
--
ALTER TABLE `round_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `winners`
--
ALTER TABLE `winners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `round_videos`
--
ALTER TABLE `round_videos`
  ADD CONSTRAINT `rv_round_id` FOREIGN KEY (`round_id`) REFERENCES `round_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `rv_video_id` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `u_round_id` FOREIGN KEY (`round`) REFERENCES `round_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
