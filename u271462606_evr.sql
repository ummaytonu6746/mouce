-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 12, 2024 at 11:21 AM
-- Server version: 10.11.7-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u271462606_evr`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `username` varchar(40) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `email_verified_at`, `image`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'Admin@admin.com', 'xcubesolution', NULL, '6238276ac25d11647847274.png', '$2y$10$UtzNvbY9Ku/6LKHHmhs5BeRnyPLF4APK6pYlI3.S7rMindQm/P4pW', 'AhLk065JLPC4vxLKrl4EbjMPVvNtPazWpEbQwyASKUWn3FulPQoTmExvtiO0', NULL, '2023-11-09 15:50:56');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `click_url` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `user_id`, `title`, `is_read`, `click_url`, `created_at`, `updated_at`) VALUES
(1, 1, 'New member registered', 0, '/admin/users/detail/1', '2023-11-03 23:11:39', '2023-11-03 23:11:39'),
(2, 1, 'Deposit request from test01', 1, '/admin/deposit/details/1', '2023-11-03 23:13:32', '2023-11-03 23:13:48'),
(3, 1, '$200.00 invested to Vip2', 0, '#', '2023-11-03 23:14:18', '2023-11-03 23:14:18'),
(4, 2, 'New member registered', 0, '/admin/users/detail/2', '2023-11-04 13:21:22', '2023-11-04 13:21:22'),
(5, 1, '$10.00 invested to VIP 1', 0, '#', '2023-11-04 13:22:56', '2023-11-04 13:22:56'),
(6, 3, 'New member registered', 0, '/admin/users/detail/3', '2023-11-04 13:26:04', '2023-11-04 13:26:04'),
(7, 3, 'Deposit request from admin6887', 0, '/admin/deposit/details/2', '2023-11-04 13:26:31', '2023-11-04 13:26:31'),
(8, 1, '$10.00 invested to VIP 1', 0, '#', '2023-11-04 13:45:14', '2023-11-04 13:45:14'),
(9, 4, 'New member registered', 0, '/admin/users/detail/4', '2023-11-04 14:04:37', '2023-11-04 14:04:37'),
(10, 4, '$20.00 invested to VIP 2', 0, '#', '2023-11-04 14:06:13', '2023-11-04 14:06:13'),
(11, 5, 'New member registered', 0, '/admin/users/detail/5', '2023-11-04 14:07:12', '2023-11-04 14:07:12'),
(12, 5, 'Deposit request from giga', 0, '/admin/deposit/details/3', '2023-11-04 14:07:52', '2023-11-04 14:07:52'),
(13, 5, '$20.00 invested to VIP 2', 0, '#', '2023-11-04 14:09:29', '2023-11-04 14:09:29'),
(14, 5, '$5.00 invested to Vip3', 0, '#', '2023-11-04 14:09:51', '2023-11-04 14:09:51'),
(15, 5, 'New withdraw request from giga', 0, '/admin/withdraw/details/1', '2023-11-04 14:10:11', '2023-11-04 14:10:11'),
(16, 5, '$20.00 invested to VIP 2', 0, '#', '2023-11-04 14:12:04', '2023-11-04 14:12:04'),
(17, 5, '$200.00 invested to Vip2', 0, '#', '2023-11-04 14:12:23', '2023-11-04 14:12:23'),
(18, 5, 'New withdraw request from giga', 0, '/admin/withdraw/details/2', '2023-11-04 14:12:46', '2023-11-04 14:12:46'),
(19, 5, 'Deposit request from giga', 0, '/admin/deposit/details/4', '2023-11-04 14:29:46', '2023-11-04 14:29:46'),
(20, 6, 'New member registered', 0, '/admin/users/detail/6', '2023-11-04 14:30:35', '2023-11-04 14:30:35'),
(21, 6, 'Deposit request from giorgi', 0, '/admin/deposit/details/5', '2023-11-04 14:31:19', '2023-11-04 14:31:19'),
(22, 7, 'New member registered', 0, '/admin/users/detail/7', '2023-11-04 14:33:11', '2023-11-04 14:33:11'),
(23, 7, 'Deposit request from larisa', 0, '/admin/deposit/details/6', '2023-11-04 14:33:28', '2023-11-04 14:33:28'),
(24, 4, '$200.00 invested to Vip2', 0, '#', '2023-11-04 14:46:06', '2023-11-04 14:46:06'),
(25, 8, 'New member registered', 0, '/admin/users/detail/8', '2023-11-04 15:12:26', '2023-11-04 15:12:26'),
(26, 8, 'Deposit request from test2', 0, '/admin/deposit/details/7', '2023-11-04 15:12:42', '2023-11-04 15:12:42'),
(27, 5, '$5.00 invested to Vip3', 0, '#', '2023-11-04 16:34:36', '2023-11-04 16:34:36'),
(28, 7, '$20.00 invested to VIP 2', 0, '#', '2023-11-04 16:35:06', '2023-11-04 16:35:06'),
(29, 4, '$10.00 invested to Vip0', 0, '#', '2023-11-04 19:40:07', '2023-11-04 19:40:07'),
(30, 4, '$10.00 invested to Vip0', 0, '#', '2023-11-04 19:40:26', '2023-11-04 19:40:26'),
(31, 4, '$10.00 invested to Vip0', 0, '#', '2023-11-04 19:40:58', '2023-11-04 19:40:58'),
(32, 4, '$20.00 invested to VIP 2', 0, '#', '2023-11-04 19:41:13', '2023-11-04 19:41:13'),
(33, 4, '$5.00 invested to Vip3', 0, '#', '2023-11-04 19:41:16', '2023-11-04 19:41:16'),
(34, 4, '$10.00 invested to VIP 1', 0, '#', '2023-11-04 19:41:43', '2023-11-04 19:41:43'),
(35, 9, 'New member registered', 0, '/admin/users/detail/9', '2023-11-05 04:13:41', '2023-11-05 04:13:41'),
(36, 10, 'New member registered', 0, '/admin/users/detail/10', '2023-11-05 04:14:13', '2023-11-05 04:14:13'),
(37, 9, 'Deposit request from nchubabria', 0, '/admin/deposit/details/8', '2023-11-05 06:06:42', '2023-11-05 06:06:42'),
(38, 4, 'New withdraw request from nika', 0, '/admin/withdraw/details/3', '2023-11-05 06:34:37', '2023-11-05 06:34:37'),
(39, 4, '$150.00 invested to VIP3', 0, '#', '2023-11-05 06:35:43', '2023-11-05 06:35:43'),
(40, 4, '$12.00 invested to VIP1', 0, '#', '2023-11-05 06:36:48', '2023-11-05 06:36:48'),
(41, 4, 'New withdraw request from nika', 0, '/admin/withdraw/details/4', '2023-11-05 06:37:11', '2023-11-05 06:37:11'),
(42, 4, 'New withdraw request from nika', 0, '/admin/withdraw/details/5', '2023-11-05 06:37:21', '2023-11-05 06:37:21'),
(43, 4, '$40.00 invested to VIP2', 0, '#', '2023-11-05 16:25:35', '2023-11-05 16:25:35'),
(44, 11, 'New member registered', 0, '/admin/users/detail/11', '2023-11-05 16:55:52', '2023-11-05 16:55:52'),
(45, 11, 'Deposit request from admin756', 0, '/admin/deposit/details/14', '2023-11-05 18:35:14', '2023-11-05 18:35:14'),
(46, 4, 'Deposit request from nika', 0, '/admin/deposit/details/16', '2023-11-05 18:49:38', '2023-11-05 18:49:38'),
(47, 12, 'New member registered', 0, '/admin/users/detail/12', '2023-11-05 20:43:34', '2023-11-05 20:43:34'),
(48, 13, 'New member registered', 0, '/admin/users/detail/13', '2023-11-05 20:59:54', '2023-11-05 20:59:54'),
(49, 14, 'New member registered', 0, '/admin/users/detail/14', '2023-11-05 21:00:12', '2023-11-05 21:00:12'),
(50, 15, 'New member registered', 0, '/admin/users/detail/15', '2023-11-05 21:00:31', '2023-11-05 21:00:31'),
(51, 16, 'New member registered', 0, '/admin/users/detail/16', '2023-11-05 21:02:42', '2023-11-05 21:02:42'),
(52, 15, '$12.00 invested to VIP1', 0, '#', '2023-11-05 21:03:52', '2023-11-05 21:03:52'),
(53, 17, 'New member registered', 0, '/admin/users/detail/17', '2023-11-05 21:04:39', '2023-11-05 21:04:39'),
(54, 18, 'New member registered', 0, '/admin/users/detail/18', '2023-11-05 21:05:39', '2023-11-05 21:05:39'),
(55, 13, '$40.00 invested to VIP2', 0, '#', '2023-11-05 21:06:07', '2023-11-05 21:06:07'),
(56, 19, 'New member registered', 0, '/admin/users/detail/19', '2023-11-05 21:07:54', '2023-11-05 21:07:54'),
(57, 13, 'New withdraw request from young12', 0, '/admin/withdraw/details/9', '2023-11-05 21:12:40', '2023-11-05 21:12:40'),
(58, 20, 'New member registered', 0, '/admin/users/detail/20', '2023-11-05 21:15:09', '2023-11-05 21:15:09'),
(59, 21, 'New member registered', 0, '/admin/users/detail/21', '2023-11-05 21:15:22', '2023-11-05 21:15:22'),
(60, 22, 'New member registered', 0, '/admin/users/detail/22', '2023-11-05 21:21:27', '2023-11-05 21:21:27'),
(61, 23, 'New member registered', 0, '/admin/users/detail/23', '2023-11-05 21:24:16', '2023-11-05 21:24:16'),
(62, 24, 'New member registered', 0, '/admin/users/detail/24', '2023-11-05 21:26:25', '2023-11-05 21:26:25'),
(63, 25, 'New member registered', 0, '/admin/users/detail/25', '2023-11-05 21:28:54', '2023-11-05 21:28:54'),
(64, 26, 'New member registered', 0, '/admin/users/detail/26', '2023-11-05 21:33:23', '2023-11-05 21:33:23'),
(65, 27, 'New member registered', 0, '/admin/users/detail/27', '2023-11-05 21:33:32', '2023-11-05 21:33:32'),
(66, 28, 'New member registered', 0, '/admin/users/detail/28', '2023-11-05 21:34:09', '2023-11-05 21:34:09'),
(67, 29, 'New member registered', 0, '/admin/users/detail/29', '2023-11-05 21:39:56', '2023-11-05 21:39:56'),
(68, 30, 'New member registered', 0, '/admin/users/detail/30', '2023-11-05 21:43:13', '2023-11-05 21:43:13'),
(69, 31, 'New member registered', 0, '/admin/users/detail/31', '2023-11-05 21:49:06', '2023-11-05 21:49:06'),
(70, 31, 'Deposit request from cgying', 0, '/admin/deposit/details/27', '2023-11-05 21:53:44', '2023-11-05 21:53:44'),
(71, 19, '$12.00 invested to VIP1', 0, '#', '2023-11-05 21:56:41', '2023-11-05 21:56:41'),
(72, 19, 'New withdraw request from angel', 0, '/admin/withdraw/details/10', '2023-11-05 22:13:29', '2023-11-05 22:13:29'),
(73, 32, 'New member registered', 0, '/admin/users/detail/32', '2023-11-05 22:15:54', '2023-11-05 22:15:54'),
(74, 33, 'New member registered', 0, '/admin/users/detail/33', '2023-11-05 22:51:55', '2023-11-05 22:51:55'),
(75, 34, 'New member registered', 0, '/admin/users/detail/34', '2023-11-05 22:52:35', '2023-11-05 22:52:35'),
(76, 35, 'New member registered', 0, '/admin/users/detail/35', '2023-11-05 22:54:49', '2023-11-05 22:54:49'),
(77, 36, 'New member registered', 0, '/admin/users/detail/36', '2023-11-05 22:56:18', '2023-11-05 22:56:18'),
(78, 31, 'Deposit request from cgying', 0, '/admin/deposit/details/31', '2023-11-05 23:11:09', '2023-11-05 23:11:09'),
(79, 31, '$12.00 invested to VIP1', 0, '#', '2023-11-05 23:13:39', '2023-11-05 23:13:39'),
(80, 31, 'New withdraw request from cgying', 0, '/admin/withdraw/details/11', '2023-11-05 23:14:28', '2023-11-05 23:14:28'),
(81, 15, 'New withdraw request from alix056', 0, '/admin/withdraw/details/12', '2023-11-05 23:27:50', '2023-11-05 23:27:50'),
(82, 37, 'New member registered', 0, '/admin/users/detail/37', '2023-11-05 23:34:18', '2023-11-05 23:34:18'),
(83, 38, 'New member registered', 0, '/admin/users/detail/38', '2023-11-05 23:42:36', '2023-11-05 23:42:36'),
(84, 39, 'New member registered', 0, '/admin/users/detail/39', '2023-11-05 23:45:02', '2023-11-05 23:45:02'),
(85, 40, 'New member registered', 0, '/admin/users/detail/40', '2023-11-05 23:50:29', '2023-11-05 23:50:29'),
(86, 41, 'New member registered', 0, '/admin/users/detail/41', '2023-11-05 23:55:18', '2023-11-05 23:55:18'),
(87, 42, 'New member registered', 0, '/admin/users/detail/42', '2023-11-05 23:56:40', '2023-11-05 23:56:40'),
(88, 43, 'New member registered', 0, '/admin/users/detail/43', '2023-11-05 23:59:52', '2023-11-05 23:59:52'),
(89, 44, 'New member registered', 0, '/admin/users/detail/44', '2023-11-06 00:02:29', '2023-11-06 00:02:29'),
(90, 43, 'Deposit request from kyawthat', 0, '/admin/deposit/details/36', '2023-11-06 00:05:50', '2023-11-06 00:05:50'),
(91, 45, 'New member registered', 0, '/admin/users/detail/45', '2023-11-06 00:09:54', '2023-11-06 00:09:54'),
(92, 46, 'New member registered', 0, '/admin/users/detail/46', '2023-11-06 00:19:37', '2023-11-06 00:19:37'),
(93, 47, 'New member registered', 0, '/admin/users/detail/47', '2023-11-06 00:24:07', '2023-11-06 00:24:07'),
(94, 43, 'Deposit request from kyawthat', 0, '/admin/deposit/details/38', '2023-11-06 00:40:02', '2023-11-06 00:40:02'),
(95, 43, 'Deposit request from kyawthat', 0, '/admin/deposit/details/39', '2023-11-06 00:40:47', '2023-11-06 00:40:47'),
(96, 43, '$12.00 invested to VIP1', 0, '#', '2023-11-06 00:42:35', '2023-11-06 00:42:35'),
(97, 43, 'New withdraw request from kyawthat', 0, '/admin/withdraw/details/13', '2023-11-06 00:43:16', '2023-11-06 00:43:16'),
(98, 30, 'Deposit request from godisgood', 0, '/admin/deposit/details/40', '2023-11-06 00:48:56', '2023-11-06 00:48:56'),
(99, 48, 'New member registered', 0, '/admin/users/detail/48', '2023-11-06 00:51:05', '2023-11-06 00:51:05'),
(100, 30, '$12.00 invested to VIP1', 0, '#', '2023-11-06 00:53:35', '2023-11-06 00:53:35'),
(101, 30, 'New withdraw request from godisgood', 0, '/admin/withdraw/details/14', '2023-11-06 00:55:12', '2023-11-06 00:55:12'),
(102, 49, 'New member registered', 0, '/admin/users/detail/49', '2023-11-06 00:56:45', '2023-11-06 00:56:45'),
(103, 50, 'New member registered', 0, '/admin/users/detail/50', '2023-11-06 01:00:00', '2023-11-06 01:00:00'),
(104, 16, '$12.00 invested to VIP1', 0, '#', '2023-11-06 01:02:28', '2023-11-06 01:02:28'),
(105, 51, 'New member registered', 0, '/admin/users/detail/51', '2023-11-06 01:09:22', '2023-11-06 01:09:22'),
(106, 52, 'New member registered', 0, '/admin/users/detail/52', '2023-11-06 01:11:11', '2023-11-06 01:11:11'),
(107, 53, 'New member registered', 0, '/admin/users/detail/53', '2023-11-06 01:14:05', '2023-11-06 01:14:05'),
(108, 49, 'Deposit request from myatthuzar', 0, '/admin/deposit/details/42', '2023-11-06 01:17:33', '2023-11-06 01:17:33'),
(109, 49, 'Deposit request from myatthuzar', 0, '/admin/deposit/details/44', '2023-11-06 01:19:36', '2023-11-06 01:19:36'),
(110, 49, '$12.00 invested to VIP1', 0, '#', '2023-11-06 01:22:15', '2023-11-06 01:22:15'),
(111, 53, 'Deposit request from salahseffih', 0, '/admin/deposit/details/45', '2023-11-06 01:22:44', '2023-11-06 01:22:44'),
(112, 53, '$12.00 invested to VIP1', 0, '#', '2023-11-06 01:24:13', '2023-11-06 01:24:13'),
(113, 49, 'New withdraw request from myatthuzar', 0, '/admin/withdraw/details/17', '2023-11-06 01:25:27', '2023-11-06 01:25:27'),
(114, 53, 'New withdraw request from salahseffih', 0, '/admin/withdraw/details/18', '2023-11-06 01:25:40', '2023-11-06 01:25:40'),
(115, 54, 'New member registered', 0, '/admin/users/detail/54', '2023-11-06 01:26:52', '2023-11-06 01:26:52'),
(116, 16, 'New withdraw request from techsk84', 0, '/admin/withdraw/details/19', '2023-11-06 01:30:56', '2023-11-06 01:30:56'),
(117, 55, 'New member registered', 0, '/admin/users/detail/55', '2023-11-06 01:32:39', '2023-11-06 01:32:39'),
(118, 56, 'New member registered', 0, '/admin/users/detail/56', '2023-11-06 01:36:07', '2023-11-06 01:36:07'),
(119, 55, 'Deposit request from memelpx', 0, '/admin/deposit/details/47', '2023-11-06 01:38:10', '2023-11-06 01:38:10'),
(120, 57, 'New member registered', 0, '/admin/users/detail/57', '2023-11-06 01:38:42', '2023-11-06 01:38:42'),
(121, 55, '$12.00 invested to VIP1', 0, '#', '2023-11-06 01:39:47', '2023-11-06 01:39:47'),
(122, 55, 'New withdraw request from memelpx', 0, '/admin/withdraw/details/20', '2023-11-06 01:41:25', '2023-11-06 01:41:25'),
(123, 52, 'Deposit request from thurain', 0, '/admin/deposit/details/46', '2023-11-06 01:45:07', '2023-11-06 01:45:07'),
(124, 52, 'Deposit request from thurain', 0, '/admin/deposit/details/51', '2023-11-06 01:45:48', '2023-11-06 01:45:48'),
(125, 52, '$12.00 invested to VIP1', 0, '#', '2023-11-06 01:46:22', '2023-11-06 01:46:22'),
(126, 52, 'New withdraw request from thurain', 0, '/admin/withdraw/details/23', '2023-11-06 01:47:01', '2023-11-06 01:47:01'),
(127, 58, 'New member registered', 0, '/admin/users/detail/58', '2023-11-06 01:53:36', '2023-11-06 01:53:36'),
(128, 59, 'New member registered', 0, '/admin/users/detail/59', '2023-11-06 02:21:36', '2023-11-06 02:21:36'),
(129, 60, 'New member registered', 0, '/admin/users/detail/60', '2023-11-06 02:27:01', '2023-11-06 02:27:01'),
(130, 61, 'New member registered', 0, '/admin/users/detail/61', '2023-11-06 02:28:05', '2023-11-06 02:28:05'),
(131, 60, 'Deposit request from csabika', 0, '/admin/deposit/details/53', '2023-11-06 02:29:43', '2023-11-06 02:29:43'),
(132, 60, '$12.00 invested to VIP1', 0, '#', '2023-11-06 02:34:33', '2023-11-06 02:34:33'),
(133, 62, 'New member registered', 0, '/admin/users/detail/62', '2023-11-06 02:35:04', '2023-11-06 02:35:04'),
(134, 60, 'New withdraw request from csabika', 0, '/admin/withdraw/details/24', '2023-11-06 02:38:26', '2023-11-06 02:38:26'),
(135, 63, 'New member registered', 0, '/admin/users/detail/63', '2023-11-06 02:52:36', '2023-11-06 02:52:36'),
(136, 45, 'Deposit request from aliisa11', 0, '/admin/deposit/details/57', '2023-11-06 03:28:31', '2023-11-06 03:28:31'),
(137, 45, 'Deposit request from aliisa11', 0, '/admin/deposit/details/58', '2023-11-06 03:30:16', '2023-11-06 03:30:16'),
(138, 45, 'Deposit request from aliisa11', 0, '/admin/deposit/details/62', '2023-11-06 03:47:47', '2023-11-06 03:47:47'),
(139, 64, 'New member registered', 0, '/admin/users/detail/64', '2023-11-06 03:50:40', '2023-11-06 03:50:40'),
(140, 45, '$12.00 invested to VIP1', 0, '#', '2023-11-06 04:02:55', '2023-11-06 04:02:55'),
(141, 65, 'New member registered', 0, '/admin/users/detail/65', '2023-11-06 04:03:14', '2023-11-06 04:03:14'),
(142, 45, 'New withdraw request from aliisa11', 0, '/admin/withdraw/details/25', '2023-11-06 04:05:36', '2023-11-06 04:05:36'),
(143, 66, 'New member registered', 0, '/admin/users/detail/66', '2023-11-06 04:33:42', '2023-11-06 04:33:42'),
(144, 46, 'Deposit request from gabi0404', 0, '/admin/deposit/details/65', '2023-11-06 04:52:09', '2023-11-06 04:52:09'),
(145, 46, '$12.00 invested to VIP1', 0, '#', '2023-11-06 04:53:09', '2023-11-06 04:53:09'),
(146, 46, 'New withdraw request from gabi0404', 0, '/admin/withdraw/details/26', '2023-11-06 04:54:12', '2023-11-06 04:54:12'),
(147, 67, 'New member registered', 0, '/admin/users/detail/67', '2023-11-06 05:05:56', '2023-11-06 05:05:56'),
(148, 65, 'Deposit request from lucho3000', 0, '/admin/deposit/details/69', '2023-11-06 07:06:11', '2023-11-06 07:06:11'),
(149, 65, 'Deposit request from lucho3000', 0, '/admin/deposit/details/70', '2023-11-06 07:08:08', '2023-11-06 07:08:08'),
(150, 65, '$12.00 invested to VIP1', 0, '#', '2023-11-06 07:09:35', '2023-11-06 07:09:35'),
(151, 65, 'New withdraw request from lucho3000', 0, '/admin/withdraw/details/27', '2023-11-06 07:10:43', '2023-11-06 07:10:43'),
(152, 68, 'New member registered', 0, '/admin/users/detail/68', '2023-11-06 07:21:25', '2023-11-06 07:21:25'),
(153, 67, 'Deposit request from lumy', 0, '/admin/deposit/details/77', '2023-11-06 07:26:29', '2023-11-06 07:26:29'),
(154, 67, 'Deposit request from lumy', 0, '/admin/deposit/details/78', '2023-11-06 07:28:12', '2023-11-06 07:28:12'),
(155, 67, 'Deposit request from lumy', 0, '/admin/deposit/details/82', '2023-11-06 07:32:49', '2023-11-06 07:32:49'),
(156, 69, 'New member registered', 0, '/admin/users/detail/69', '2023-11-06 07:32:49', '2023-11-06 07:32:49'),
(157, 67, '$40.00 invested to VIP2', 0, '#', '2023-11-06 07:35:04', '2023-11-06 07:35:04'),
(158, 67, 'Deposit request from lumy', 0, '/admin/deposit/details/84', '2023-11-06 07:35:55', '2023-11-06 07:35:55'),
(159, 70, 'New member registered', 0, '/admin/users/detail/70', '2023-11-06 07:37:03', '2023-11-06 07:37:03'),
(160, 69, 'Deposit request from mateace', 0, '/admin/deposit/details/83', '2023-11-06 07:39:45', '2023-11-06 07:39:45'),
(161, 67, 'Deposit request from lumy', 0, '/admin/deposit/details/89', '2023-11-06 07:39:53', '2023-11-06 07:39:53'),
(162, 1, 'Deposit request from test01', 0, '/admin/deposit/details/88', '2023-11-06 07:40:48', '2023-11-06 07:40:48'),
(163, 66, 'Deposit request from anya', 1, '/admin/deposit/details/87', '2023-11-06 07:41:05', '2023-11-06 07:41:34'),
(164, 69, '$12.00 invested to VIP1', 0, '#', '2023-11-06 07:41:56', '2023-11-06 07:41:56'),
(165, 69, 'New withdraw request from mateace', 0, '/admin/withdraw/details/29', '2023-11-06 07:43:45', '2023-11-06 07:43:45'),
(166, 67, 'New withdraw request from lumy', 0, '/admin/withdraw/details/30', '2023-11-06 07:43:45', '2023-11-06 07:43:45'),
(167, 55, 'New withdraw request from memelpx', 0, '/admin/withdraw/details/31', '2023-11-06 07:44:52', '2023-11-06 07:44:52'),
(168, 71, 'New member registered', 1, '/admin/users/detail/71', '2023-11-06 07:52:02', '2023-11-06 08:04:24'),
(169, 71, 'Deposit request from sanda', 1, '/admin/deposit/details/98', '2023-11-06 08:04:22', '2023-11-06 08:04:27'),
(170, 66, 'Deposit request from anya', 0, '/admin/deposit/details/97', '2023-11-06 08:05:15', '2023-11-06 08:05:15'),
(171, 71, '$12.00 invested to VIP1', 0, '#', '2023-11-06 08:08:30', '2023-11-06 08:08:30'),
(172, 71, 'New withdraw request from sanda', 0, '/admin/withdraw/details/32', '2023-11-06 08:10:25', '2023-11-06 08:10:25'),
(173, 72, 'New member registered', 0, '/admin/users/detail/72', '2023-11-06 08:43:10', '2023-11-06 08:43:10'),
(174, 73, 'New member registered', 0, '/admin/users/detail/73', '2023-11-06 08:49:27', '2023-11-06 08:49:27'),
(175, 74, 'New member registered', 0, '/admin/users/detail/74', '2023-11-06 08:55:42', '2023-11-06 08:55:42'),
(176, 75, 'New member registered', 0, '/admin/users/detail/75', '2023-11-06 10:50:21', '2023-11-06 10:50:21'),
(177, 75, 'Deposit request from puma', 0, '/admin/deposit/details/104', '2023-11-06 11:16:43', '2023-11-06 11:16:43'),
(178, 75, 'Deposit request from puma', 0, '/admin/deposit/details/105', '2023-11-06 11:21:31', '2023-11-06 11:21:31'),
(179, 76, 'New member registered', 0, '/admin/users/detail/76', '2023-11-06 11:23:50', '2023-11-06 11:23:50'),
(180, 75, 'Deposit request from puma', 0, '/admin/deposit/details/106', '2023-11-06 11:28:03', '2023-11-06 11:28:03'),
(181, 75, '$150.00 invested to VIP3', 0, '#', '2023-11-06 11:29:36', '2023-11-06 11:29:36'),
(182, 75, 'New withdraw request from puma', 0, '/admin/withdraw/details/33', '2023-11-06 11:30:41', '2023-11-06 11:30:41'),
(183, 43, 'New withdraw request from kyawthat', 0, '/admin/withdraw/details/34', '2023-11-06 13:17:13', '2023-11-06 13:17:13'),
(184, 16, 'New withdraw request from techsk84', 0, '/admin/withdraw/details/35', '2023-11-06 13:55:46', '2023-11-06 13:55:46'),
(185, 77, 'New member registered', 0, '/admin/users/detail/77', '2023-11-06 14:05:58', '2023-11-06 14:05:58'),
(186, 52, 'New withdraw request from thurain', 0, '/admin/withdraw/details/38', '2023-11-06 14:07:16', '2023-11-06 14:07:16'),
(187, 78, 'New member registered', 0, '/admin/users/detail/78', '2023-11-06 15:19:52', '2023-11-06 15:19:52'),
(188, 78, 'Deposit request from valevera', 0, '/admin/deposit/details/108', '2023-11-06 15:25:39', '2023-11-06 15:25:39'),
(189, 78, 'Deposit request from valevera', 0, '/admin/deposit/details/109', '2023-11-06 15:36:57', '2023-11-06 15:36:57'),
(190, 78, '$12.00 invested to VIP1', 0, '#', '2023-11-06 15:38:08', '2023-11-06 15:38:08'),
(191, 78, 'New withdraw request from valevera', 0, '/admin/withdraw/details/39', '2023-11-06 15:59:01', '2023-11-06 15:59:01'),
(192, 39, '$12.00 invested to VIP1', 0, '#', '2023-11-06 16:13:40', '2023-11-06 16:13:40'),
(193, 39, 'New withdraw request from robert', 0, '/admin/withdraw/details/40', '2023-11-06 16:15:11', '2023-11-06 16:15:11'),
(194, 46, 'New withdraw request from gabi0404', 0, '/admin/withdraw/details/41', '2023-11-06 17:28:22', '2023-11-06 17:28:22'),
(195, 75, 'New withdraw request from puma', 0, '/admin/withdraw/details/42', '2023-11-06 17:36:03', '2023-11-06 17:36:03'),
(196, 40, 'Deposit request from alynn', 0, '/admin/deposit/details/111', '2023-11-06 18:32:53', '2023-11-06 18:32:53'),
(197, 79, 'New member registered', 0, '/admin/users/detail/79', '2023-11-06 19:03:39', '2023-11-06 19:03:39'),
(198, 40, '$40.00 invested to VIP2', 0, '#', '2023-11-06 19:09:20', '2023-11-06 19:09:20'),
(199, 40, 'New withdraw request from alynn', 0, '/admin/withdraw/details/43', '2023-11-06 19:10:47', '2023-11-06 19:10:47'),
(200, 30, 'New withdraw request from godisgood', 0, '/admin/withdraw/details/44', '2023-11-06 19:14:20', '2023-11-06 19:14:20'),
(201, 80, 'New member registered', 0, '/admin/users/detail/80', '2023-11-06 20:31:39', '2023-11-06 20:31:39'),
(202, 80, 'Deposit request from giorgi1', 0, '/admin/deposit/details/112', '2023-11-06 20:31:52', '2023-11-06 20:31:52'),
(203, 81, 'New member registered', 0, '/admin/users/detail/81', '2023-11-06 21:04:56', '2023-11-06 21:04:56'),
(204, 71, 'New withdraw request from sanda', 0, '/admin/withdraw/details/46', '2023-11-06 21:19:20', '2023-11-06 21:19:20'),
(205, 55, 'New withdraw request from memelpx', 0, '/admin/withdraw/details/47', '2023-11-06 22:17:35', '2023-11-06 22:17:35'),
(206, 69, 'New withdraw request from mateace', 0, '/admin/withdraw/details/48', '2023-11-06 23:26:29', '2023-11-06 23:26:29'),
(207, 82, 'New member registered', 0, '/admin/users/detail/82', '2023-11-07 00:12:05', '2023-11-07 00:12:05'),
(208, 78, 'New withdraw request from valevera', 0, '/admin/withdraw/details/49', '2023-11-07 00:15:42', '2023-11-07 00:15:42'),
(209, 53, 'New withdraw request from salahseffih', 0, '/admin/withdraw/details/50', '2023-11-07 00:55:22', '2023-11-07 00:55:22'),
(210, 60, 'New withdraw request from csabika', 0, '/admin/withdraw/details/51', '2023-11-07 02:34:06', '2023-11-07 02:34:06'),
(211, 83, 'New member registered', 0, '/admin/users/detail/83', '2023-11-07 04:35:02', '2023-11-07 04:35:02'),
(212, 17, 'Deposit request from myothitoo', 0, '/admin/deposit/details/117', '2023-11-07 05:50:03', '2023-11-07 05:50:03'),
(213, 17, '$15,000.00 invested to Vip10', 0, '#', '2023-11-07 05:50:43', '2023-11-07 05:50:43'),
(214, 17, 'New withdraw request from myothitoo', 0, '/admin/withdraw/details/52', '2023-11-07 05:51:06', '2023-11-07 05:51:06'),
(215, 84, 'New member registered', 0, '/admin/users/detail/84', '2023-11-09 15:38:24', '2023-11-09 15:38:24'),
(216, 85, 'New member registered', 0, '/admin/users/detail/85', '2024-03-12 18:26:15', '2024-03-12 18:26:15'),
(217, 85, 'Deposit request from 7970165730', 0, '/admin/deposit/details/119', '2024-03-12 18:35:29', '2024-03-12 18:35:29'),
(218, 85, 'New withdraw request from 7970165730', 0, '/admin/withdraw/details/53', '2024-03-12 18:38:32', '2024-03-12 18:38:32'),
(219, 85, '₹10.00 invested to Zam Zam Investr No. 1', 0, '#', '2024-03-12 18:46:33', '2024-03-12 18:46:33');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `token` varchar(40) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cron_jobs`
--

CREATE TABLE `cron_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `alias` varchar(40) DEFAULT NULL,
  `action` text DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `cron_schedule_id` int(11) NOT NULL DEFAULT 0,
  `next_run` datetime DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `is_running` tinyint(1) NOT NULL DEFAULT 1,
  `is_default` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cron_jobs`
--

INSERT INTO `cron_jobs` (`id`, `name`, `alias`, `action`, `url`, `cron_schedule_id`, `next_run`, `last_run`, `is_running`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Interest Cron', 'interest_cron', '[\"App\\\\Http\\\\Controllers\\\\CronController\", \"interest\"]', NULL, 1, '2024-03-12 19:23:03', '2024-03-12 19:18:03', 1, 1, '2023-06-21 23:29:14', '2024-03-12 19:18:03'),
(2, 'Rank Cron', 'rank_cron', '[\"App\\\\Http\\\\Controllers\\\\CronController\", \"rank\"]', NULL, 1, '2024-03-12 19:23:03', '2024-03-12 19:18:03', 1, 1, '2023-06-22 06:04:49', '2024-03-12 19:18:03'),
(3, 'Schedule Invest', 'schedule_invest', '[\"App\\\\Http\\\\Controllers\\\\CronController\", \"investSchedule\"]', NULL, 1, '2024-03-12 19:23:03', '2024-03-12 19:18:03', 1, 1, '2023-06-22 06:10:31', '2024-03-12 19:18:03'),
(5, 'Staking Invest', 'staking_invest', '[\"App\\\\Http\\\\Controllers\\\\CronController\", \"staking\"]', NULL, 1, '2024-03-12 19:23:03', '2024-03-12 19:18:03', 1, 1, '2023-06-22 12:10:31', '2024-03-12 19:18:03');

-- --------------------------------------------------------

--
-- Table structure for table `cron_job_logs`
--

CREATE TABLE `cron_job_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cron_job_id` int(11) NOT NULL DEFAULT 0,
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `duration` int(11) NOT NULL DEFAULT 0,
  `error` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cron_job_logs`
--

INSERT INTO `cron_job_logs` (`id`, `cron_job_id`, `start_at`, `end_at`, `duration`, `error`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-11-04 09:20:15', '2023-11-04 09:20:15', 0, NULL, '2023-11-04 13:20:15', '2023-11-04 13:20:15'),
(2, 2, '2023-11-04 09:20:15', '2023-11-04 09:20:15', 0, NULL, '2023-11-04 13:20:15', '2023-11-04 13:20:15'),
(3, 3, '2023-11-04 09:20:15', '2023-11-04 09:20:15', 0, NULL, '2023-11-04 13:20:15', '2023-11-04 13:20:15'),
(4, 5, '2023-11-04 09:20:15', '2023-11-04 09:20:15', 0, NULL, '2023-11-04 13:20:15', '2023-11-04 13:20:15'),
(5, 1, '2023-11-04 09:25:27', '2023-11-04 09:25:27', 0, NULL, '2023-11-04 13:25:27', '2023-11-04 13:25:27'),
(6, 2, '2023-11-04 09:25:27', '2023-11-04 09:25:27', 0, NULL, '2023-11-04 13:25:27', '2023-11-04 13:25:27'),
(7, 3, '2023-11-04 09:25:27', '2023-11-04 09:25:27', 0, NULL, '2023-11-04 13:25:27', '2023-11-04 13:25:27'),
(8, 5, '2023-11-04 09:25:27', '2023-11-04 09:25:27', 0, NULL, '2023-11-04 13:25:27', '2023-11-04 13:25:27'),
(9, 1, '2023-11-04 09:30:36', '2023-11-04 09:30:36', 0, NULL, '2023-11-04 13:30:36', '2023-11-04 13:30:36'),
(10, 2, '2023-11-04 09:30:36', '2023-11-04 09:30:36', 0, NULL, '2023-11-04 13:30:36', '2023-11-04 13:30:36'),
(11, 3, '2023-11-04 09:30:36', '2023-11-04 09:30:36', 0, NULL, '2023-11-04 13:30:36', '2023-11-04 13:30:36'),
(12, 5, '2023-11-04 09:30:36', '2023-11-04 09:30:36', 0, NULL, '2023-11-04 13:30:36', '2023-11-04 13:30:36'),
(13, 1, '2023-11-04 09:40:13', '2023-11-04 09:40:13', 0, NULL, '2023-11-04 13:40:13', '2023-11-04 13:40:13'),
(14, 2, '2023-11-04 09:40:13', '2023-11-04 09:40:13', 0, NULL, '2023-11-04 13:40:13', '2023-11-04 13:40:13'),
(15, 3, '2023-11-04 09:40:13', '2023-11-04 09:40:13', 0, NULL, '2023-11-04 13:40:13', '2023-11-04 13:40:13'),
(16, 5, '2023-11-04 09:40:13', '2023-11-04 09:40:13', 0, NULL, '2023-11-04 13:40:13', '2023-11-04 13:40:13'),
(17, 1, '2023-11-04 09:50:41', '2023-11-04 09:50:41', 0, NULL, '2023-11-04 13:50:41', '2023-11-04 13:50:41'),
(18, 2, '2023-11-04 09:50:41', '2023-11-04 09:50:41', 0, NULL, '2023-11-04 13:50:41', '2023-11-04 13:50:41'),
(19, 3, '2023-11-04 09:50:41', '2023-11-04 09:50:41', 0, NULL, '2023-11-04 13:50:41', '2023-11-04 13:50:41'),
(20, 5, '2023-11-04 09:50:41', '2023-11-04 09:50:41', 0, NULL, '2023-11-04 13:50:41', '2023-11-04 13:50:41'),
(21, 1, '2023-11-04 10:00:29', '2023-11-04 10:00:29', 0, NULL, '2023-11-04 14:00:29', '2023-11-04 14:00:29'),
(22, 2, '2023-11-04 10:00:29', '2023-11-04 10:00:29', 0, NULL, '2023-11-04 14:00:29', '2023-11-04 14:00:29'),
(23, 3, '2023-11-04 10:00:29', '2023-11-04 10:00:29', 0, NULL, '2023-11-04 14:00:29', '2023-11-04 14:00:29'),
(24, 5, '2023-11-04 10:00:29', '2023-11-04 10:00:29', 0, NULL, '2023-11-04 14:00:29', '2023-11-04 14:00:29'),
(25, 1, '2023-11-04 10:10:11', '2023-11-04 10:10:11', 0, NULL, '2023-11-04 14:10:11', '2023-11-04 14:10:11'),
(26, 2, '2023-11-04 10:10:11', '2023-11-04 10:10:11', 0, NULL, '2023-11-04 14:10:11', '2023-11-04 14:10:11'),
(27, 3, '2023-11-04 10:10:11', '2023-11-04 10:10:11', 0, NULL, '2023-11-04 14:10:11', '2023-11-04 14:10:11'),
(28, 5, '2023-11-04 10:10:11', '2023-11-04 10:10:11', 0, NULL, '2023-11-04 14:10:11', '2023-11-04 14:10:11'),
(29, 1, '2023-11-04 10:15:24', '2023-11-04 10:15:24', 0, NULL, '2023-11-04 14:15:24', '2023-11-04 14:15:24'),
(30, 2, '2023-11-04 10:15:24', '2023-11-04 10:15:24', 0, NULL, '2023-11-04 14:15:24', '2023-11-04 14:15:24'),
(31, 3, '2023-11-04 10:15:24', '2023-11-04 10:15:24', 0, NULL, '2023-11-04 14:15:24', '2023-11-04 14:15:24'),
(32, 5, '2023-11-04 10:15:24', '2023-11-04 10:15:24', 0, NULL, '2023-11-04 14:15:24', '2023-11-04 14:15:24'),
(33, 1, '2023-11-04 10:25:13', '2023-11-04 10:25:13', 0, NULL, '2023-11-04 14:25:13', '2023-11-04 14:25:13'),
(34, 2, '2023-11-04 10:25:13', '2023-11-04 10:25:13', 0, NULL, '2023-11-04 14:25:13', '2023-11-04 14:25:13'),
(35, 3, '2023-11-04 10:25:13', '2023-11-04 10:25:13', 0, NULL, '2023-11-04 14:25:13', '2023-11-04 14:25:13'),
(36, 5, '2023-11-04 10:25:13', '2023-11-04 10:25:13', 0, NULL, '2023-11-04 14:25:13', '2023-11-04 14:25:13'),
(37, 1, '2023-11-04 10:30:45', '2023-11-04 10:30:45', 0, NULL, '2023-11-04 14:30:45', '2023-11-04 14:30:45'),
(38, 2, '2023-11-04 10:30:45', '2023-11-04 10:30:45', 0, NULL, '2023-11-04 14:30:45', '2023-11-04 14:30:45'),
(39, 3, '2023-11-04 10:30:45', '2023-11-04 10:30:45', 0, NULL, '2023-11-04 14:30:45', '2023-11-04 14:30:45'),
(40, 5, '2023-11-04 10:30:45', '2023-11-04 10:30:45', 0, NULL, '2023-11-04 14:30:45', '2023-11-04 14:30:45'),
(41, 1, '2023-11-04 10:40:48', '2023-11-04 10:40:48', 0, NULL, '2023-11-04 14:40:48', '2023-11-04 14:40:48'),
(42, 2, '2023-11-04 10:40:48', '2023-11-04 10:40:48', 0, NULL, '2023-11-04 14:40:48', '2023-11-04 14:40:48'),
(43, 3, '2023-11-04 10:40:48', '2023-11-04 10:40:48', 0, NULL, '2023-11-04 14:40:48', '2023-11-04 14:40:48'),
(44, 5, '2023-11-04 10:40:48', '2023-11-04 10:40:48', 0, NULL, '2023-11-04 14:40:48', '2023-11-04 14:40:48'),
(45, 1, '2023-11-04 10:50:13', '2023-11-04 10:50:13', 0, NULL, '2023-11-04 14:50:13', '2023-11-04 14:50:13'),
(46, 2, '2023-11-04 10:50:13', '2023-11-04 10:50:13', 0, NULL, '2023-11-04 14:50:13', '2023-11-04 14:50:13'),
(47, 3, '2023-11-04 10:50:13', '2023-11-04 10:50:13', 0, NULL, '2023-11-04 14:50:13', '2023-11-04 14:50:13'),
(48, 5, '2023-11-04 10:50:13', '2023-11-04 10:50:13', 0, NULL, '2023-11-04 14:50:13', '2023-11-04 14:50:13'),
(49, 1, '2023-11-04 11:00:28', '2023-11-04 11:00:28', 0, NULL, '2023-11-04 15:00:28', '2023-11-04 15:00:28'),
(50, 2, '2023-11-04 11:00:28', '2023-11-04 11:00:28', 0, NULL, '2023-11-04 15:00:28', '2023-11-04 15:00:28'),
(51, 3, '2023-11-04 11:00:28', '2023-11-04 11:00:28', 0, NULL, '2023-11-04 15:00:28', '2023-11-04 15:00:28'),
(52, 5, '2023-11-04 11:00:28', '2023-11-04 11:00:28', 0, NULL, '2023-11-04 15:00:28', '2023-11-04 15:00:28'),
(53, 1, '2023-11-04 11:10:10', '2023-11-04 11:10:10', 0, NULL, '2023-11-04 15:10:10', '2023-11-04 15:10:10'),
(54, 2, '2023-11-04 11:10:10', '2023-11-04 11:10:10', 0, NULL, '2023-11-04 15:10:10', '2023-11-04 15:10:10'),
(55, 3, '2023-11-04 11:10:10', '2023-11-04 11:10:10', 0, NULL, '2023-11-04 15:10:10', '2023-11-04 15:10:10'),
(56, 5, '2023-11-04 11:10:10', '2023-11-04 11:10:10', 0, NULL, '2023-11-04 15:10:10', '2023-11-04 15:10:10'),
(57, 1, '2023-11-04 11:15:11', '2023-11-04 11:15:11', 0, NULL, '2023-11-04 15:15:11', '2023-11-04 15:15:11'),
(58, 2, '2023-11-04 11:15:11', '2023-11-04 11:15:12', 0, NULL, '2023-11-04 15:15:12', '2023-11-04 15:15:12'),
(59, 3, '2023-11-04 11:15:12', '2023-11-04 11:15:12', 0, NULL, '2023-11-04 15:15:12', '2023-11-04 15:15:12'),
(60, 5, '2023-11-04 11:15:12', '2023-11-04 11:15:12', 0, NULL, '2023-11-04 15:15:12', '2023-11-04 15:15:12'),
(61, 1, '2023-11-04 11:20:20', '2023-11-04 11:20:20', 0, NULL, '2023-11-04 15:20:20', '2023-11-04 15:20:20'),
(62, 2, '2023-11-04 11:20:20', '2023-11-04 11:20:20', 0, NULL, '2023-11-04 15:20:20', '2023-11-04 15:20:20'),
(63, 3, '2023-11-04 11:20:20', '2023-11-04 11:20:20', 0, NULL, '2023-11-04 15:20:20', '2023-11-04 15:20:20'),
(64, 5, '2023-11-04 11:20:20', '2023-11-04 11:20:20', 0, NULL, '2023-11-04 15:20:20', '2023-11-04 15:20:20'),
(65, 1, '2023-11-04 11:30:21', '2023-11-04 11:30:21', 0, NULL, '2023-11-04 15:30:21', '2023-11-04 15:30:21'),
(66, 2, '2023-11-04 11:30:21', '2023-11-04 11:30:21', 0, NULL, '2023-11-04 15:30:21', '2023-11-04 15:30:21'),
(67, 3, '2023-11-04 11:30:21', '2023-11-04 11:30:21', 0, NULL, '2023-11-04 15:30:21', '2023-11-04 15:30:21'),
(68, 5, '2023-11-04 11:30:21', '2023-11-04 11:30:21', 0, NULL, '2023-11-04 15:30:21', '2023-11-04 15:30:21'),
(69, 1, '2023-11-04 11:40:31', '2023-11-04 11:40:31', 0, NULL, '2023-11-04 15:40:31', '2023-11-04 15:40:31'),
(70, 2, '2023-11-04 11:40:31', '2023-11-04 11:40:31', 0, NULL, '2023-11-04 15:40:31', '2023-11-04 15:40:31'),
(71, 3, '2023-11-04 11:40:31', '2023-11-04 11:40:31', 0, NULL, '2023-11-04 15:40:31', '2023-11-04 15:40:31'),
(72, 5, '2023-11-04 11:40:31', '2023-11-04 11:40:31', 0, NULL, '2023-11-04 15:40:31', '2023-11-04 15:40:31'),
(73, 1, '2023-11-04 11:50:31', '2023-11-04 11:50:31', 0, NULL, '2023-11-04 15:50:31', '2023-11-04 15:50:31'),
(74, 2, '2023-11-04 11:50:31', '2023-11-04 11:50:31', 0, NULL, '2023-11-04 15:50:31', '2023-11-04 15:50:31'),
(75, 3, '2023-11-04 11:50:31', '2023-11-04 11:50:31', 0, NULL, '2023-11-04 15:50:31', '2023-11-04 15:50:31'),
(76, 5, '2023-11-04 11:50:31', '2023-11-04 11:50:31', 0, NULL, '2023-11-04 15:50:31', '2023-11-04 15:50:31'),
(77, 1, '2023-11-04 11:55:50', '2023-11-04 11:55:50', 0, NULL, '2023-11-04 15:55:50', '2023-11-04 15:55:50'),
(78, 2, '2023-11-04 11:55:50', '2023-11-04 11:55:50', 0, NULL, '2023-11-04 15:55:50', '2023-11-04 15:55:50'),
(79, 3, '2023-11-04 11:55:50', '2023-11-04 11:55:50', 0, NULL, '2023-11-04 15:55:50', '2023-11-04 15:55:50'),
(80, 5, '2023-11-04 11:55:50', '2023-11-04 11:55:50', 0, NULL, '2023-11-04 15:55:50', '2023-11-04 15:55:50'),
(81, 1, '2023-11-04 12:05:39', '2023-11-04 12:05:39', 0, NULL, '2023-11-04 16:05:39', '2023-11-04 16:05:39'),
(82, 2, '2023-11-04 12:05:39', '2023-11-04 12:05:39', 0, NULL, '2023-11-04 16:05:39', '2023-11-04 16:05:39'),
(83, 3, '2023-11-04 12:05:39', '2023-11-04 12:05:39', 0, NULL, '2023-11-04 16:05:39', '2023-11-04 16:05:39'),
(84, 5, '2023-11-04 12:05:39', '2023-11-04 12:05:39', 0, NULL, '2023-11-04 16:05:39', '2023-11-04 16:05:39'),
(85, 1, '2023-11-04 12:15:28', '2023-11-04 12:15:28', 0, NULL, '2023-11-04 16:15:28', '2023-11-04 16:15:28'),
(86, 2, '2023-11-04 12:15:28', '2023-11-04 12:15:28', 0, NULL, '2023-11-04 16:15:28', '2023-11-04 16:15:28'),
(87, 3, '2023-11-04 12:15:28', '2023-11-04 12:15:28', 0, NULL, '2023-11-04 16:15:28', '2023-11-04 16:15:28'),
(88, 5, '2023-11-04 12:15:28', '2023-11-04 12:15:28', 0, NULL, '2023-11-04 16:15:28', '2023-11-04 16:15:28'),
(89, 1, '2023-11-04 12:20:41', '2023-11-04 12:20:41', 0, NULL, '2023-11-04 16:20:41', '2023-11-04 16:20:41'),
(90, 2, '2023-11-04 12:20:41', '2023-11-04 12:20:41', 0, NULL, '2023-11-04 16:20:41', '2023-11-04 16:20:41'),
(91, 3, '2023-11-04 12:20:41', '2023-11-04 12:20:41', 0, NULL, '2023-11-04 16:20:41', '2023-11-04 16:20:41'),
(92, 5, '2023-11-04 12:20:41', '2023-11-04 12:20:41', 0, NULL, '2023-11-04 16:20:41', '2023-11-04 16:20:41'),
(93, 1, '2023-11-04 12:30:13', '2023-11-04 12:30:13', 0, NULL, '2023-11-04 16:30:13', '2023-11-04 16:30:13'),
(94, 2, '2023-11-04 12:30:13', '2023-11-04 12:30:13', 0, NULL, '2023-11-04 16:30:13', '2023-11-04 16:30:13'),
(95, 3, '2023-11-04 12:30:13', '2023-11-04 12:30:13', 0, NULL, '2023-11-04 16:30:13', '2023-11-04 16:30:13'),
(96, 5, '2023-11-04 12:30:13', '2023-11-04 12:30:13', 0, NULL, '2023-11-04 16:30:13', '2023-11-04 16:30:13'),
(97, 1, '2023-11-04 12:35:41', '2023-11-04 12:35:41', 0, NULL, '2023-11-04 16:35:41', '2023-11-04 16:35:41'),
(98, 2, '2023-11-04 12:35:41', '2023-11-04 12:35:41', 0, NULL, '2023-11-04 16:35:41', '2023-11-04 16:35:41'),
(99, 3, '2023-11-04 12:35:41', '2023-11-04 12:35:41', 0, NULL, '2023-11-04 16:35:41', '2023-11-04 16:35:41'),
(100, 5, '2023-11-04 12:35:41', '2023-11-04 12:35:41', 0, NULL, '2023-11-04 16:35:41', '2023-11-04 16:35:41'),
(101, 1, '2023-11-04 12:40:49', '2023-11-04 12:40:49', 0, NULL, '2023-11-04 16:40:49', '2023-11-04 16:40:49'),
(102, 2, '2023-11-04 12:40:49', '2023-11-04 12:40:49', 0, NULL, '2023-11-04 16:40:49', '2023-11-04 16:40:49'),
(103, 3, '2023-11-04 12:40:49', '2023-11-04 12:40:49', 0, NULL, '2023-11-04 16:40:49', '2023-11-04 16:40:49'),
(104, 5, '2023-11-04 12:40:49', '2023-11-04 12:40:49', 0, NULL, '2023-11-04 16:40:49', '2023-11-04 16:40:49'),
(105, 1, '2023-11-04 12:50:44', '2023-11-04 12:50:44', 0, NULL, '2023-11-04 16:50:44', '2023-11-04 16:50:44'),
(106, 2, '2023-11-04 12:50:44', '2023-11-04 12:50:44', 0, NULL, '2023-11-04 16:50:44', '2023-11-04 16:50:44'),
(107, 3, '2023-11-04 12:50:44', '2023-11-04 12:50:44', 0, NULL, '2023-11-04 16:50:44', '2023-11-04 16:50:44'),
(108, 5, '2023-11-04 12:50:44', '2023-11-04 12:50:44', 0, NULL, '2023-11-04 16:50:44', '2023-11-04 16:50:44'),
(109, 1, '2023-11-04 13:00:08', '2023-11-04 13:00:08', 0, NULL, '2023-11-04 17:00:08', '2023-11-04 17:00:08'),
(110, 2, '2023-11-04 13:00:08', '2023-11-04 13:00:08', 0, NULL, '2023-11-04 17:00:08', '2023-11-04 17:00:08'),
(111, 3, '2023-11-04 13:00:08', '2023-11-04 13:00:08', 0, NULL, '2023-11-04 17:00:08', '2023-11-04 17:00:08'),
(112, 5, '2023-11-04 13:00:08', '2023-11-04 13:00:08', 0, NULL, '2023-11-04 17:00:08', '2023-11-04 17:00:08'),
(113, 1, '2023-11-04 13:05:10', '2023-11-04 13:05:10', 0, NULL, '2023-11-04 17:05:10', '2023-11-04 17:05:10'),
(114, 2, '2023-11-04 13:05:10', '2023-11-04 13:05:10', 0, NULL, '2023-11-04 17:05:10', '2023-11-04 17:05:10'),
(115, 3, '2023-11-04 13:05:10', '2023-11-04 13:05:10', 0, NULL, '2023-11-04 17:05:10', '2023-11-04 17:05:10'),
(116, 5, '2023-11-04 13:05:10', '2023-11-04 13:05:10', 0, NULL, '2023-11-04 17:05:10', '2023-11-04 17:05:10'),
(117, 1, '2023-11-04 13:15:03', '2023-11-04 13:15:03', 0, NULL, '2023-11-04 17:15:03', '2023-11-04 17:15:03'),
(118, 2, '2023-11-04 13:15:03', '2023-11-04 13:15:03', 0, NULL, '2023-11-04 17:15:03', '2023-11-04 17:15:03'),
(119, 3, '2023-11-04 13:15:03', '2023-11-04 13:15:03', 0, NULL, '2023-11-04 17:15:03', '2023-11-04 17:15:03'),
(120, 5, '2023-11-04 13:15:03', '2023-11-04 13:15:03', 0, NULL, '2023-11-04 17:15:03', '2023-11-04 17:15:03'),
(121, 1, '2023-11-04 13:20:19', '2023-11-04 13:20:19', 0, NULL, '2023-11-04 17:20:19', '2023-11-04 17:20:19'),
(122, 2, '2023-11-04 13:20:19', '2023-11-04 13:20:19', 0, NULL, '2023-11-04 17:20:19', '2023-11-04 17:20:19'),
(123, 3, '2023-11-04 13:20:19', '2023-11-04 13:20:19', 0, NULL, '2023-11-04 17:20:19', '2023-11-04 17:20:19'),
(124, 5, '2023-11-04 13:20:19', '2023-11-04 13:20:19', 0, NULL, '2023-11-04 17:20:19', '2023-11-04 17:20:19'),
(125, 1, '2023-11-04 13:30:14', '2023-11-04 13:30:14', 0, NULL, '2023-11-04 17:30:14', '2023-11-04 17:30:14'),
(126, 2, '2023-11-04 13:30:14', '2023-11-04 13:30:14', 0, NULL, '2023-11-04 17:30:14', '2023-11-04 17:30:14'),
(127, 3, '2023-11-04 13:30:14', '2023-11-04 13:30:14', 0, NULL, '2023-11-04 17:30:14', '2023-11-04 17:30:14'),
(128, 5, '2023-11-04 13:30:14', '2023-11-04 13:30:14', 0, NULL, '2023-11-04 17:30:14', '2023-11-04 17:30:14'),
(129, 1, '2023-11-04 13:35:36', '2023-11-04 13:35:36', 0, NULL, '2023-11-04 17:35:36', '2023-11-04 17:35:36'),
(130, 2, '2023-11-04 13:35:36', '2023-11-04 13:35:36', 0, NULL, '2023-11-04 17:35:36', '2023-11-04 17:35:36'),
(131, 3, '2023-11-04 13:35:36', '2023-11-04 13:35:36', 0, NULL, '2023-11-04 17:35:36', '2023-11-04 17:35:36'),
(132, 5, '2023-11-04 13:35:36', '2023-11-04 13:35:36', 0, NULL, '2023-11-04 17:35:36', '2023-11-04 17:35:36'),
(133, 1, '2023-11-04 13:45:47', '2023-11-04 13:45:47', 0, NULL, '2023-11-04 17:45:47', '2023-11-04 17:45:47'),
(134, 2, '2023-11-04 13:45:47', '2023-11-04 13:45:47', 0, NULL, '2023-11-04 17:45:47', '2023-11-04 17:45:47'),
(135, 3, '2023-11-04 13:45:47', '2023-11-04 13:45:47', 0, NULL, '2023-11-04 17:45:47', '2023-11-04 17:45:47'),
(136, 5, '2023-11-04 13:45:47', '2023-11-04 13:45:47', 0, NULL, '2023-11-04 17:45:47', '2023-11-04 17:45:47'),
(137, 1, '2023-11-04 13:55:02', '2023-11-04 13:55:02', 0, NULL, '2023-11-04 17:55:02', '2023-11-04 17:55:02'),
(138, 2, '2023-11-04 13:55:02', '2023-11-04 13:55:02', 0, NULL, '2023-11-04 17:55:02', '2023-11-04 17:55:02'),
(139, 3, '2023-11-04 13:55:02', '2023-11-04 13:55:02', 0, NULL, '2023-11-04 17:55:02', '2023-11-04 17:55:02'),
(140, 5, '2023-11-04 13:55:02', '2023-11-04 13:55:02', 0, NULL, '2023-11-04 17:55:02', '2023-11-04 17:55:02'),
(141, 1, '2023-11-04 14:00:28', '2023-11-04 14:00:28', 0, NULL, '2023-11-04 18:00:28', '2023-11-04 18:00:28'),
(142, 2, '2023-11-04 14:00:28', '2023-11-04 14:00:28', 0, NULL, '2023-11-04 18:00:28', '2023-11-04 18:00:28'),
(143, 3, '2023-11-04 14:00:28', '2023-11-04 14:00:28', 0, NULL, '2023-11-04 18:00:28', '2023-11-04 18:00:28'),
(144, 5, '2023-11-04 14:00:28', '2023-11-04 14:00:28', 0, NULL, '2023-11-04 18:00:28', '2023-11-04 18:00:28'),
(145, 1, '2023-11-04 14:10:51', '2023-11-04 14:10:51', 0, NULL, '2023-11-04 18:10:51', '2023-11-04 18:10:51'),
(146, 2, '2023-11-04 14:10:51', '2023-11-04 14:10:51', 0, NULL, '2023-11-04 18:10:51', '2023-11-04 18:10:51'),
(147, 3, '2023-11-04 14:10:51', '2023-11-04 14:10:51', 0, NULL, '2023-11-04 18:10:51', '2023-11-04 18:10:51'),
(148, 5, '2023-11-04 14:10:51', '2023-11-04 14:10:51', 0, NULL, '2023-11-04 18:10:51', '2023-11-04 18:10:51'),
(149, 1, '2023-11-04 14:20:13', '2023-11-04 14:20:13', 0, NULL, '2023-11-04 18:20:13', '2023-11-04 18:20:13'),
(150, 2, '2023-11-04 14:20:13', '2023-11-04 14:20:13', 0, NULL, '2023-11-04 18:20:13', '2023-11-04 18:20:13'),
(151, 3, '2023-11-04 14:20:13', '2023-11-04 14:20:13', 0, NULL, '2023-11-04 18:20:13', '2023-11-04 18:20:13'),
(152, 5, '2023-11-04 14:20:13', '2023-11-04 14:20:13', 0, NULL, '2023-11-04 18:20:13', '2023-11-04 18:20:13'),
(153, 1, '2023-11-04 14:25:35', '2023-11-04 14:25:35', 0, NULL, '2023-11-04 18:25:35', '2023-11-04 18:25:35'),
(154, 2, '2023-11-04 14:25:35', '2023-11-04 14:25:35', 0, NULL, '2023-11-04 18:25:35', '2023-11-04 18:25:35'),
(155, 3, '2023-11-04 14:25:35', '2023-11-04 14:25:35', 0, NULL, '2023-11-04 18:25:35', '2023-11-04 18:25:35'),
(156, 5, '2023-11-04 14:25:35', '2023-11-04 14:25:35', 0, NULL, '2023-11-04 18:25:35', '2023-11-04 18:25:35'),
(157, 1, '2023-11-04 14:35:34', '2023-11-04 14:35:34', 0, NULL, '2023-11-04 18:35:34', '2023-11-04 18:35:34'),
(158, 2, '2023-11-04 14:35:34', '2023-11-04 14:35:34', 0, NULL, '2023-11-04 18:35:34', '2023-11-04 18:35:34'),
(159, 3, '2023-11-04 14:35:34', '2023-11-04 14:35:34', 0, NULL, '2023-11-04 18:35:34', '2023-11-04 18:35:34'),
(160, 5, '2023-11-04 14:35:34', '2023-11-04 14:35:34', 0, NULL, '2023-11-04 18:35:34', '2023-11-04 18:35:34'),
(161, 1, '2023-11-04 14:45:29', '2023-11-04 14:45:29', 0, NULL, '2023-11-04 18:45:29', '2023-11-04 18:45:29'),
(162, 2, '2023-11-04 14:45:29', '2023-11-04 14:45:29', 0, NULL, '2023-11-04 18:45:29', '2023-11-04 18:45:29'),
(163, 3, '2023-11-04 14:45:29', '2023-11-04 14:45:29', 0, NULL, '2023-11-04 18:45:29', '2023-11-04 18:45:29'),
(164, 5, '2023-11-04 14:45:29', '2023-11-04 14:45:29', 0, NULL, '2023-11-04 18:45:29', '2023-11-04 18:45:29'),
(165, 1, '2023-11-04 14:50:47', '2023-11-04 14:50:47', 0, NULL, '2023-11-04 18:50:48', '2023-11-04 18:50:48'),
(166, 2, '2023-11-04 14:50:48', '2023-11-04 14:50:48', 0, NULL, '2023-11-04 18:50:48', '2023-11-04 18:50:48'),
(167, 3, '2023-11-04 14:50:48', '2023-11-04 14:50:48', 0, NULL, '2023-11-04 18:50:48', '2023-11-04 18:50:48'),
(168, 5, '2023-11-04 14:50:48', '2023-11-04 14:50:48', 0, NULL, '2023-11-04 18:50:48', '2023-11-04 18:50:48'),
(169, 1, '2023-11-04 15:00:23', '2023-11-04 15:00:23', 0, NULL, '2023-11-04 19:00:23', '2023-11-04 19:00:23'),
(170, 2, '2023-11-04 15:00:23', '2023-11-04 15:00:23', 0, NULL, '2023-11-04 19:00:23', '2023-11-04 19:00:23'),
(171, 3, '2023-11-04 15:00:23', '2023-11-04 15:00:23', 0, NULL, '2023-11-04 19:00:23', '2023-11-04 19:00:23'),
(172, 5, '2023-11-04 15:00:23', '2023-11-04 15:00:23', 0, NULL, '2023-11-04 19:00:23', '2023-11-04 19:00:23'),
(173, 1, '2023-11-04 15:10:04', '2023-11-04 15:10:04', 0, NULL, '2023-11-04 19:10:04', '2023-11-04 19:10:04'),
(174, 2, '2023-11-04 15:10:04', '2023-11-04 15:10:04', 0, NULL, '2023-11-04 19:10:04', '2023-11-04 19:10:04'),
(175, 3, '2023-11-04 15:10:04', '2023-11-04 15:10:04', 0, NULL, '2023-11-04 19:10:04', '2023-11-04 19:10:04'),
(176, 5, '2023-11-04 15:10:04', '2023-11-04 15:10:04', 0, NULL, '2023-11-04 19:10:04', '2023-11-04 19:10:04'),
(177, 1, '2023-11-04 15:15:15', '2023-11-04 15:15:15', 0, NULL, '2023-11-04 19:15:15', '2023-11-04 19:15:15'),
(178, 2, '2023-11-04 15:15:15', '2023-11-04 15:15:15', 0, NULL, '2023-11-04 19:15:15', '2023-11-04 19:15:15'),
(179, 3, '2023-11-04 15:15:15', '2023-11-04 15:15:15', 0, NULL, '2023-11-04 19:15:15', '2023-11-04 19:15:15'),
(180, 5, '2023-11-04 15:15:15', '2023-11-04 15:15:15', 0, NULL, '2023-11-04 19:15:15', '2023-11-04 19:15:15'),
(181, 1, '2023-11-04 15:20:23', '2023-11-04 15:20:23', 0, NULL, '2023-11-04 19:20:23', '2023-11-04 19:20:23'),
(182, 2, '2023-11-04 15:20:23', '2023-11-04 15:20:23', 0, NULL, '2023-11-04 19:20:23', '2023-11-04 19:20:23'),
(183, 3, '2023-11-04 15:20:23', '2023-11-04 15:20:23', 0, NULL, '2023-11-04 19:20:23', '2023-11-04 19:20:23'),
(184, 5, '2023-11-04 15:20:23', '2023-11-04 15:20:23', 0, NULL, '2023-11-04 19:20:23', '2023-11-04 19:20:23'),
(185, 1, '2023-11-04 15:25:49', '2023-11-04 15:25:50', 0, NULL, '2023-11-04 19:25:50', '2023-11-04 19:25:50'),
(186, 2, '2023-11-04 15:25:50', '2023-11-04 15:25:50', 0, NULL, '2023-11-04 19:25:50', '2023-11-04 19:25:50'),
(187, 3, '2023-11-04 15:25:50', '2023-11-04 15:25:50', 0, NULL, '2023-11-04 19:25:50', '2023-11-04 19:25:50'),
(188, 5, '2023-11-04 15:25:50', '2023-11-04 15:25:50', 0, NULL, '2023-11-04 19:25:50', '2023-11-04 19:25:50'),
(189, 1, '2023-11-04 15:35:33', '2023-11-04 15:35:33', 0, NULL, '2023-11-04 19:35:33', '2023-11-04 19:35:33'),
(190, 2, '2023-11-04 15:35:33', '2023-11-04 15:35:33', 0, NULL, '2023-11-04 19:35:33', '2023-11-04 19:35:33'),
(191, 3, '2023-11-04 15:35:33', '2023-11-04 15:35:33', 0, NULL, '2023-11-04 19:35:33', '2023-11-04 19:35:33'),
(192, 5, '2023-11-04 15:35:33', '2023-11-04 15:35:33', 0, NULL, '2023-11-04 19:35:33', '2023-11-04 19:35:33'),
(193, 1, '2023-11-04 15:45:16', '2023-11-04 15:45:16', 0, NULL, '2023-11-04 19:45:16', '2023-11-04 19:45:16'),
(194, 2, '2023-11-04 15:45:16', '2023-11-04 15:45:16', 0, NULL, '2023-11-04 19:45:16', '2023-11-04 19:45:16'),
(195, 3, '2023-11-04 15:45:16', '2023-11-04 15:45:16', 0, NULL, '2023-11-04 19:45:16', '2023-11-04 19:45:16'),
(196, 5, '2023-11-04 15:45:16', '2023-11-04 15:45:16', 0, NULL, '2023-11-04 19:45:16', '2023-11-04 19:45:16'),
(197, 1, '2023-11-04 15:50:36', '2023-11-04 15:50:36', 0, NULL, '2023-11-04 19:50:36', '2023-11-04 19:50:36'),
(198, 2, '2023-11-04 15:50:36', '2023-11-04 15:50:36', 0, NULL, '2023-11-04 19:50:36', '2023-11-04 19:50:36'),
(199, 3, '2023-11-04 15:50:36', '2023-11-04 15:50:36', 0, NULL, '2023-11-04 19:50:36', '2023-11-04 19:50:36'),
(200, 5, '2023-11-04 15:50:36', '2023-11-04 15:50:36', 0, NULL, '2023-11-04 19:50:36', '2023-11-04 19:50:36'),
(201, 1, '2023-11-04 16:00:02', '2023-11-04 16:00:02', 0, NULL, '2023-11-04 20:00:02', '2023-11-04 20:00:02'),
(202, 2, '2023-11-04 16:00:02', '2023-11-04 16:00:02', 0, NULL, '2023-11-04 20:00:02', '2023-11-04 20:00:02'),
(203, 3, '2023-11-04 16:00:02', '2023-11-04 16:00:02', 0, NULL, '2023-11-04 20:00:02', '2023-11-04 20:00:02'),
(204, 5, '2023-11-04 16:00:02', '2023-11-04 16:00:02', 0, NULL, '2023-11-04 20:00:02', '2023-11-04 20:00:02'),
(205, 1, '2023-11-04 16:05:47', '2023-11-04 16:05:47', 0, NULL, '2023-11-04 20:05:47', '2023-11-04 20:05:47'),
(206, 2, '2023-11-04 16:05:47', '2023-11-04 16:05:47', 0, NULL, '2023-11-04 20:05:47', '2023-11-04 20:05:47'),
(207, 3, '2023-11-04 16:05:47', '2023-11-04 16:05:47', 0, NULL, '2023-11-04 20:05:47', '2023-11-04 20:05:47'),
(208, 5, '2023-11-04 16:05:47', '2023-11-04 16:05:47', 0, NULL, '2023-11-04 20:05:47', '2023-11-04 20:05:47'),
(209, 1, '2023-11-04 16:15:34', '2023-11-04 16:15:34', 0, NULL, '2023-11-04 20:15:34', '2023-11-04 20:15:34'),
(210, 2, '2023-11-04 16:15:34', '2023-11-04 16:15:34', 0, NULL, '2023-11-04 20:15:34', '2023-11-04 20:15:34'),
(211, 3, '2023-11-04 16:15:34', '2023-11-04 16:15:34', 0, NULL, '2023-11-04 20:15:34', '2023-11-04 20:15:34'),
(212, 5, '2023-11-04 16:15:34', '2023-11-04 16:15:34', 0, NULL, '2023-11-04 20:15:34', '2023-11-04 20:15:34'),
(213, 1, '2023-11-04 16:20:48', '2023-11-04 16:20:48', 0, NULL, '2023-11-04 20:20:48', '2023-11-04 20:20:48'),
(214, 2, '2023-11-04 16:20:48', '2023-11-04 16:20:48', 0, NULL, '2023-11-04 20:20:48', '2023-11-04 20:20:48'),
(215, 3, '2023-11-04 16:20:48', '2023-11-04 16:20:48', 0, NULL, '2023-11-04 20:20:48', '2023-11-04 20:20:48'),
(216, 5, '2023-11-04 16:20:48', '2023-11-04 16:20:48', 0, NULL, '2023-11-04 20:20:48', '2023-11-04 20:20:48'),
(217, 1, '2023-11-04 16:30:23', '2023-11-04 16:30:23', 0, NULL, '2023-11-04 20:30:23', '2023-11-04 20:30:23'),
(218, 2, '2023-11-04 16:30:23', '2023-11-04 16:30:23', 0, NULL, '2023-11-04 20:30:23', '2023-11-04 20:30:23'),
(219, 3, '2023-11-04 16:30:23', '2023-11-04 16:30:23', 0, NULL, '2023-11-04 20:30:23', '2023-11-04 20:30:23'),
(220, 5, '2023-11-04 16:30:23', '2023-11-04 16:30:23', 0, NULL, '2023-11-04 20:30:23', '2023-11-04 20:30:23'),
(221, 1, '2023-11-04 16:35:25', '2023-11-04 16:35:25', 0, NULL, '2023-11-04 20:35:25', '2023-11-04 20:35:25'),
(222, 2, '2023-11-04 16:35:25', '2023-11-04 16:35:25', 0, NULL, '2023-11-04 20:35:25', '2023-11-04 20:35:25'),
(223, 3, '2023-11-04 16:35:25', '2023-11-04 16:35:25', 0, NULL, '2023-11-04 20:35:25', '2023-11-04 20:35:25'),
(224, 5, '2023-11-04 16:35:25', '2023-11-04 16:35:25', 0, NULL, '2023-11-04 20:35:25', '2023-11-04 20:35:25'),
(225, 1, '2023-11-04 16:45:39', '2023-11-04 16:45:39', 0, NULL, '2023-11-04 20:45:39', '2023-11-04 20:45:39'),
(226, 2, '2023-11-04 16:45:39', '2023-11-04 16:45:39', 0, NULL, '2023-11-04 20:45:39', '2023-11-04 20:45:39'),
(227, 3, '2023-11-04 16:45:39', '2023-11-04 16:45:39', 0, NULL, '2023-11-04 20:45:39', '2023-11-04 20:45:39'),
(228, 5, '2023-11-04 16:45:39', '2023-11-04 16:45:39', 0, NULL, '2023-11-04 20:45:39', '2023-11-04 20:45:39'),
(229, 1, '2023-11-04 16:55:13', '2023-11-04 16:55:13', 0, NULL, '2023-11-04 20:55:13', '2023-11-04 20:55:13'),
(230, 2, '2023-11-04 16:55:13', '2023-11-04 16:55:13', 0, NULL, '2023-11-04 20:55:13', '2023-11-04 20:55:13'),
(231, 3, '2023-11-04 16:55:13', '2023-11-04 16:55:13', 0, NULL, '2023-11-04 20:55:13', '2023-11-04 20:55:13'),
(232, 5, '2023-11-04 16:55:13', '2023-11-04 16:55:13', 0, NULL, '2023-11-04 20:55:13', '2023-11-04 20:55:13'),
(233, 1, '2023-11-04 17:05:29', '2023-11-04 17:05:29', 0, NULL, '2023-11-04 21:05:29', '2023-11-04 21:05:29'),
(234, 2, '2023-11-04 17:05:29', '2023-11-04 17:05:29', 0, NULL, '2023-11-04 21:05:29', '2023-11-04 21:05:29'),
(235, 3, '2023-11-04 17:05:29', '2023-11-04 17:05:29', 0, NULL, '2023-11-04 21:05:29', '2023-11-04 21:05:29'),
(236, 5, '2023-11-04 17:05:29', '2023-11-04 17:05:29', 0, NULL, '2023-11-04 21:05:29', '2023-11-04 21:05:29'),
(237, 1, '2023-11-04 17:15:36', '2023-11-04 17:15:36', 0, NULL, '2023-11-04 21:15:36', '2023-11-04 21:15:36'),
(238, 2, '2023-11-04 17:15:36', '2023-11-04 17:15:36', 0, NULL, '2023-11-04 21:15:36', '2023-11-04 21:15:36'),
(239, 3, '2023-11-04 17:15:36', '2023-11-04 17:15:36', 0, NULL, '2023-11-04 21:15:36', '2023-11-04 21:15:36'),
(240, 5, '2023-11-04 17:15:36', '2023-11-04 17:15:36', 0, NULL, '2023-11-04 21:15:36', '2023-11-04 21:15:36'),
(241, 1, '2023-11-04 17:25:24', '2023-11-04 17:25:24', 0, NULL, '2023-11-04 21:25:24', '2023-11-04 21:25:24'),
(242, 2, '2023-11-04 17:25:24', '2023-11-04 17:25:24', 0, NULL, '2023-11-04 21:25:24', '2023-11-04 21:25:24'),
(243, 3, '2023-11-04 17:25:24', '2023-11-04 17:25:24', 0, NULL, '2023-11-04 21:25:24', '2023-11-04 21:25:24'),
(244, 5, '2023-11-04 17:25:24', '2023-11-04 17:25:24', 0, NULL, '2023-11-04 21:25:24', '2023-11-04 21:25:24'),
(245, 1, '2023-11-04 17:30:41', '2023-11-04 17:30:41', 0, NULL, '2023-11-04 21:30:41', '2023-11-04 21:30:41'),
(246, 2, '2023-11-04 17:30:41', '2023-11-04 17:30:41', 0, NULL, '2023-11-04 21:30:41', '2023-11-04 21:30:41'),
(247, 3, '2023-11-04 17:30:41', '2023-11-04 17:30:41', 0, NULL, '2023-11-04 21:30:41', '2023-11-04 21:30:41'),
(248, 5, '2023-11-04 17:30:41', '2023-11-04 17:30:41', 0, NULL, '2023-11-04 21:30:41', '2023-11-04 21:30:41'),
(249, 1, '2023-11-04 17:35:45', '2023-11-04 17:35:45', 0, NULL, '2023-11-04 21:35:45', '2023-11-04 21:35:45'),
(250, 2, '2023-11-04 17:35:45', '2023-11-04 17:35:45', 0, NULL, '2023-11-04 21:35:45', '2023-11-04 21:35:45'),
(251, 3, '2023-11-04 17:35:45', '2023-11-04 17:35:45', 0, NULL, '2023-11-04 21:35:45', '2023-11-04 21:35:45'),
(252, 5, '2023-11-04 17:35:45', '2023-11-04 17:35:45', 0, NULL, '2023-11-04 21:35:45', '2023-11-04 21:35:45'),
(253, 1, '2023-11-04 17:40:46', '2023-11-04 17:40:46', 0, NULL, '2023-11-04 21:40:46', '2023-11-04 21:40:46'),
(254, 2, '2023-11-04 17:40:46', '2023-11-04 17:40:46', 0, NULL, '2023-11-04 21:40:46', '2023-11-04 21:40:46'),
(255, 3, '2023-11-04 17:40:46', '2023-11-04 17:40:46', 0, NULL, '2023-11-04 21:40:46', '2023-11-04 21:40:46'),
(256, 5, '2023-11-04 17:40:46', '2023-11-04 17:40:46', 0, NULL, '2023-11-04 21:40:46', '2023-11-04 21:40:46'),
(257, 1, '2023-11-04 17:50:28', '2023-11-04 17:50:28', 0, NULL, '2023-11-04 21:50:28', '2023-11-04 21:50:28'),
(258, 2, '2023-11-04 17:50:28', '2023-11-04 17:50:28', 0, NULL, '2023-11-04 21:50:28', '2023-11-04 21:50:28'),
(259, 3, '2023-11-04 17:50:28', '2023-11-04 17:50:28', 0, NULL, '2023-11-04 21:50:28', '2023-11-04 21:50:28'),
(260, 5, '2023-11-04 17:50:28', '2023-11-04 17:50:28', 0, NULL, '2023-11-04 21:50:28', '2023-11-04 21:50:28'),
(261, 1, '2023-11-04 17:55:47', '2023-11-04 17:55:47', 0, NULL, '2023-11-04 21:55:47', '2023-11-04 21:55:47'),
(262, 2, '2023-11-04 17:55:47', '2023-11-04 17:55:47', 0, NULL, '2023-11-04 21:55:47', '2023-11-04 21:55:47'),
(263, 3, '2023-11-04 17:55:47', '2023-11-04 17:55:47', 0, NULL, '2023-11-04 21:55:47', '2023-11-04 21:55:47'),
(264, 5, '2023-11-04 17:55:47', '2023-11-04 17:55:47', 0, NULL, '2023-11-04 21:55:47', '2023-11-04 21:55:47'),
(265, 1, '2023-11-04 18:05:11', '2023-11-04 18:05:11', 0, NULL, '2023-11-04 22:05:11', '2023-11-04 22:05:11'),
(266, 2, '2023-11-04 18:05:11', '2023-11-04 18:05:11', 0, NULL, '2023-11-04 22:05:11', '2023-11-04 22:05:11'),
(267, 3, '2023-11-04 18:05:11', '2023-11-04 18:05:11', 0, NULL, '2023-11-04 22:05:11', '2023-11-04 22:05:11'),
(268, 5, '2023-11-04 18:05:11', '2023-11-04 18:05:11', 0, NULL, '2023-11-04 22:05:11', '2023-11-04 22:05:11'),
(269, 1, '2023-11-04 18:10:34', '2023-11-04 18:10:34', 0, NULL, '2023-11-04 22:10:34', '2023-11-04 22:10:34'),
(270, 2, '2023-11-04 18:10:34', '2023-11-04 18:10:34', 0, NULL, '2023-11-04 22:10:34', '2023-11-04 22:10:34'),
(271, 3, '2023-11-04 18:10:34', '2023-11-04 18:10:34', 0, NULL, '2023-11-04 22:10:34', '2023-11-04 22:10:34'),
(272, 5, '2023-11-04 18:10:34', '2023-11-04 18:10:34', 0, NULL, '2023-11-04 22:10:34', '2023-11-04 22:10:34'),
(273, 1, '2023-11-04 18:15:44', '2023-11-04 18:15:44', 0, NULL, '2023-11-04 22:15:44', '2023-11-04 22:15:44'),
(274, 2, '2023-11-04 18:15:44', '2023-11-04 18:15:44', 0, NULL, '2023-11-04 22:15:44', '2023-11-04 22:15:44'),
(275, 3, '2023-11-04 18:15:44', '2023-11-04 18:15:44', 0, NULL, '2023-11-04 22:15:44', '2023-11-04 22:15:44'),
(276, 5, '2023-11-04 18:15:44', '2023-11-04 18:15:44', 0, NULL, '2023-11-04 22:15:44', '2023-11-04 22:15:44'),
(277, 1, '2023-11-04 18:25:33', '2023-11-04 18:25:33', 0, NULL, '2023-11-04 22:25:33', '2023-11-04 22:25:33'),
(278, 2, '2023-11-04 18:25:33', '2023-11-04 18:25:33', 0, NULL, '2023-11-04 22:25:33', '2023-11-04 22:25:33'),
(279, 3, '2023-11-04 18:25:33', '2023-11-04 18:25:33', 0, NULL, '2023-11-04 22:25:33', '2023-11-04 22:25:33'),
(280, 5, '2023-11-04 18:25:33', '2023-11-04 18:25:33', 0, NULL, '2023-11-04 22:25:33', '2023-11-04 22:25:33'),
(281, 1, '2023-11-04 18:30:39', '2023-11-04 18:30:39', 0, NULL, '2023-11-04 22:30:39', '2023-11-04 22:30:39'),
(282, 2, '2023-11-04 18:30:39', '2023-11-04 18:30:39', 0, NULL, '2023-11-04 22:30:39', '2023-11-04 22:30:39'),
(283, 3, '2023-11-04 18:30:39', '2023-11-04 18:30:39', 0, NULL, '2023-11-04 22:30:39', '2023-11-04 22:30:39'),
(284, 5, '2023-11-04 18:30:39', '2023-11-04 18:30:39', 0, NULL, '2023-11-04 22:30:39', '2023-11-04 22:30:39'),
(285, 1, '2023-11-04 18:35:43', '2023-11-04 18:35:43', 0, NULL, '2023-11-04 22:35:43', '2023-11-04 22:35:43'),
(286, 2, '2023-11-04 18:35:43', '2023-11-04 18:35:43', 0, NULL, '2023-11-04 22:35:43', '2023-11-04 22:35:43'),
(287, 3, '2023-11-04 18:35:43', '2023-11-04 18:35:43', 0, NULL, '2023-11-04 22:35:43', '2023-11-04 22:35:43'),
(288, 5, '2023-11-04 18:35:43', '2023-11-04 18:35:43', 0, NULL, '2023-11-04 22:35:43', '2023-11-04 22:35:43'),
(289, 1, '2023-11-04 18:40:47', '2023-11-04 18:40:47', 0, NULL, '2023-11-04 22:40:47', '2023-11-04 22:40:47'),
(290, 2, '2023-11-04 18:40:47', '2023-11-04 18:40:47', 0, NULL, '2023-11-04 22:40:47', '2023-11-04 22:40:47'),
(291, 3, '2023-11-04 18:40:47', '2023-11-04 18:40:47', 0, NULL, '2023-11-04 22:40:47', '2023-11-04 22:40:47'),
(292, 5, '2023-11-04 18:40:47', '2023-11-04 18:40:47', 0, NULL, '2023-11-04 22:40:47', '2023-11-04 22:40:47'),
(293, 1, '2023-11-04 18:50:03', '2023-11-04 18:50:03', 0, NULL, '2023-11-04 22:50:03', '2023-11-04 22:50:03'),
(294, 2, '2023-11-04 18:50:03', '2023-11-04 18:50:03', 0, NULL, '2023-11-04 22:50:03', '2023-11-04 22:50:03'),
(295, 3, '2023-11-04 18:50:03', '2023-11-04 18:50:03', 0, NULL, '2023-11-04 22:50:03', '2023-11-04 22:50:03'),
(296, 5, '2023-11-04 18:50:03', '2023-11-04 18:50:03', 0, NULL, '2023-11-04 22:50:03', '2023-11-04 22:50:03'),
(297, 1, '2023-11-04 18:55:30', '2023-11-04 18:55:30', 0, NULL, '2023-11-04 22:55:30', '2023-11-04 22:55:30'),
(298, 2, '2023-11-04 18:55:30', '2023-11-04 18:55:30', 0, NULL, '2023-11-04 22:55:30', '2023-11-04 22:55:30'),
(299, 3, '2023-11-04 18:55:30', '2023-11-04 18:55:30', 0, NULL, '2023-11-04 22:55:30', '2023-11-04 22:55:30'),
(300, 5, '2023-11-04 18:55:30', '2023-11-04 18:55:30', 0, NULL, '2023-11-04 22:55:30', '2023-11-04 22:55:30'),
(301, 1, '2023-11-04 19:00:48', '2023-11-04 19:00:48', 0, NULL, '2023-11-04 23:00:48', '2023-11-04 23:00:48'),
(302, 2, '2023-11-04 19:00:48', '2023-11-04 19:00:48', 0, NULL, '2023-11-04 23:00:48', '2023-11-04 23:00:48'),
(303, 3, '2023-11-04 19:00:48', '2023-11-04 19:00:48', 0, NULL, '2023-11-04 23:00:48', '2023-11-04 23:00:48'),
(304, 5, '2023-11-04 19:00:48', '2023-11-04 19:00:48', 0, NULL, '2023-11-04 23:00:48', '2023-11-04 23:00:48'),
(305, 1, '2023-11-04 19:10:06', '2023-11-04 19:10:06', 0, NULL, '2023-11-04 23:10:06', '2023-11-04 23:10:06'),
(306, 2, '2023-11-04 19:10:06', '2023-11-04 19:10:06', 0, NULL, '2023-11-04 23:10:06', '2023-11-04 23:10:06'),
(307, 3, '2023-11-04 19:10:06', '2023-11-04 19:10:06', 0, NULL, '2023-11-04 23:10:06', '2023-11-04 23:10:06'),
(308, 5, '2023-11-04 19:10:06', '2023-11-04 19:10:06', 0, NULL, '2023-11-04 23:10:06', '2023-11-04 23:10:06'),
(309, 1, '2023-11-04 19:15:34', '2023-11-04 19:15:34', 0, NULL, '2023-11-04 23:15:34', '2023-11-04 23:15:34'),
(310, 2, '2023-11-04 19:15:34', '2023-11-04 19:15:34', 0, NULL, '2023-11-04 23:15:34', '2023-11-04 23:15:34'),
(311, 3, '2023-11-04 19:15:34', '2023-11-04 19:15:34', 0, NULL, '2023-11-04 23:15:34', '2023-11-04 23:15:34'),
(312, 5, '2023-11-04 19:15:34', '2023-11-04 19:15:34', 0, NULL, '2023-11-04 23:15:34', '2023-11-04 23:15:34'),
(313, 1, '2023-11-04 19:25:41', '2023-11-04 19:25:41', 0, NULL, '2023-11-04 23:25:41', '2023-11-04 23:25:41'),
(314, 2, '2023-11-04 19:25:41', '2023-11-04 19:25:41', 0, NULL, '2023-11-04 23:25:41', '2023-11-04 23:25:41'),
(315, 3, '2023-11-04 19:25:41', '2023-11-04 19:25:41', 0, NULL, '2023-11-04 23:25:41', '2023-11-04 23:25:41'),
(316, 5, '2023-11-04 19:25:41', '2023-11-04 19:25:41', 0, NULL, '2023-11-04 23:25:41', '2023-11-04 23:25:41'),
(317, 1, '2023-11-04 19:30:49', '2023-11-04 19:30:49', 0, NULL, '2023-11-04 23:30:49', '2023-11-04 23:30:49'),
(318, 2, '2023-11-04 19:30:49', '2023-11-04 19:30:50', 0, NULL, '2023-11-04 23:30:50', '2023-11-04 23:30:50'),
(319, 3, '2023-11-04 19:30:50', '2023-11-04 19:30:50', 0, NULL, '2023-11-04 23:30:50', '2023-11-04 23:30:50'),
(320, 5, '2023-11-04 19:30:50', '2023-11-04 19:30:50', 0, NULL, '2023-11-04 23:30:50', '2023-11-04 23:30:50'),
(321, 1, '2023-11-04 19:40:33', '2023-11-04 19:40:33', 0, NULL, '2023-11-04 23:40:33', '2023-11-04 23:40:33'),
(322, 2, '2023-11-04 19:40:33', '2023-11-04 19:40:33', 0, NULL, '2023-11-04 23:40:33', '2023-11-04 23:40:33'),
(323, 3, '2023-11-04 19:40:33', '2023-11-04 19:40:33', 0, NULL, '2023-11-04 23:40:33', '2023-11-04 23:40:33'),
(324, 5, '2023-11-04 19:40:33', '2023-11-04 19:40:33', 0, NULL, '2023-11-04 23:40:33', '2023-11-04 23:40:33'),
(325, 1, '2023-11-04 19:50:03', '2023-11-04 19:50:03', 0, NULL, '2023-11-04 23:50:03', '2023-11-04 23:50:03'),
(326, 2, '2023-11-04 19:50:03', '2023-11-04 19:50:03', 0, NULL, '2023-11-04 23:50:03', '2023-11-04 23:50:03'),
(327, 3, '2023-11-04 19:50:03', '2023-11-04 19:50:03', 0, NULL, '2023-11-04 23:50:03', '2023-11-04 23:50:03'),
(328, 5, '2023-11-04 19:50:03', '2023-11-04 19:50:03', 0, NULL, '2023-11-04 23:50:03', '2023-11-04 23:50:03'),
(329, 1, '2023-11-04 19:55:51', '2023-11-04 19:55:51', 0, NULL, '2023-11-04 23:55:51', '2023-11-04 23:55:51'),
(330, 2, '2023-11-04 19:55:51', '2023-11-04 19:55:51', 0, NULL, '2023-11-04 23:55:51', '2023-11-04 23:55:51'),
(331, 3, '2023-11-04 19:55:51', '2023-11-04 19:55:51', 0, NULL, '2023-11-04 23:55:51', '2023-11-04 23:55:51'),
(332, 5, '2023-11-04 19:55:51', '2023-11-04 19:55:51', 0, NULL, '2023-11-04 23:55:51', '2023-11-04 23:55:51'),
(333, 1, '2023-11-04 20:05:27', '2023-11-04 20:05:27', 0, NULL, '2023-11-05 00:05:27', '2023-11-05 00:05:27'),
(334, 2, '2023-11-04 20:05:27', '2023-11-04 20:05:27', 0, NULL, '2023-11-05 00:05:27', '2023-11-05 00:05:27'),
(335, 3, '2023-11-04 20:05:27', '2023-11-04 20:05:27', 0, NULL, '2023-11-05 00:05:27', '2023-11-05 00:05:27'),
(336, 5, '2023-11-04 20:05:27', '2023-11-04 20:05:27', 0, NULL, '2023-11-05 00:05:27', '2023-11-05 00:05:27'),
(337, 1, '2023-11-04 20:10:29', '2023-11-04 20:10:29', 0, NULL, '2023-11-05 00:10:29', '2023-11-05 00:10:29'),
(338, 2, '2023-11-04 20:10:29', '2023-11-04 20:10:29', 0, NULL, '2023-11-05 00:10:29', '2023-11-05 00:10:29'),
(339, 3, '2023-11-04 20:10:29', '2023-11-04 20:10:29', 0, NULL, '2023-11-05 00:10:29', '2023-11-05 00:10:29'),
(340, 5, '2023-11-04 20:10:29', '2023-11-04 20:10:29', 0, NULL, '2023-11-05 00:10:29', '2023-11-05 00:10:29'),
(341, 1, '2023-11-04 20:20:41', '2023-11-04 20:20:41', 0, NULL, '2023-11-05 00:20:41', '2023-11-05 00:20:41'),
(342, 2, '2023-11-04 20:20:41', '2023-11-04 20:20:41', 0, NULL, '2023-11-05 00:20:41', '2023-11-05 00:20:41'),
(343, 3, '2023-11-04 20:20:41', '2023-11-04 20:20:41', 0, NULL, '2023-11-05 00:20:41', '2023-11-05 00:20:41'),
(344, 5, '2023-11-04 20:20:41', '2023-11-04 20:20:41', 0, NULL, '2023-11-05 00:20:41', '2023-11-05 00:20:41'),
(345, 1, '2023-11-04 20:30:21', '2023-11-04 20:30:21', 0, NULL, '2023-11-05 00:30:21', '2023-11-05 00:30:21'),
(346, 2, '2023-11-04 20:30:21', '2023-11-04 20:30:21', 0, NULL, '2023-11-05 00:30:21', '2023-11-05 00:30:21'),
(347, 3, '2023-11-04 20:30:21', '2023-11-04 20:30:21', 0, NULL, '2023-11-05 00:30:21', '2023-11-05 00:30:21'),
(348, 5, '2023-11-04 20:30:21', '2023-11-04 20:30:21', 0, NULL, '2023-11-05 00:30:21', '2023-11-05 00:30:21'),
(349, 1, '2023-11-04 20:35:24', '2023-11-04 20:35:24', 0, NULL, '2023-11-05 00:35:24', '2023-11-05 00:35:24'),
(350, 2, '2023-11-04 20:35:24', '2023-11-04 20:35:24', 0, NULL, '2023-11-05 00:35:24', '2023-11-05 00:35:24'),
(351, 3, '2023-11-04 20:35:24', '2023-11-04 20:35:24', 0, NULL, '2023-11-05 00:35:24', '2023-11-05 00:35:24'),
(352, 5, '2023-11-04 20:35:24', '2023-11-04 20:35:24', 0, NULL, '2023-11-05 00:35:24', '2023-11-05 00:35:24'),
(353, 1, '2023-11-04 20:40:41', '2023-11-04 20:40:41', 0, NULL, '2023-11-05 00:40:41', '2023-11-05 00:40:41'),
(354, 2, '2023-11-04 20:40:41', '2023-11-04 20:40:41', 0, NULL, '2023-11-05 00:40:41', '2023-11-05 00:40:41'),
(355, 3, '2023-11-04 20:40:41', '2023-11-04 20:40:41', 0, NULL, '2023-11-05 00:40:41', '2023-11-05 00:40:41'),
(356, 5, '2023-11-04 20:40:41', '2023-11-04 20:40:41', 0, NULL, '2023-11-05 00:40:41', '2023-11-05 00:40:41'),
(357, 1, '2023-11-04 20:50:27', '2023-11-04 20:50:27', 0, NULL, '2023-11-05 00:50:27', '2023-11-05 00:50:27'),
(358, 2, '2023-11-04 20:50:27', '2023-11-04 20:50:27', 0, NULL, '2023-11-05 00:50:27', '2023-11-05 00:50:27'),
(359, 3, '2023-11-04 20:50:27', '2023-11-04 20:50:27', 0, NULL, '2023-11-05 00:50:27', '2023-11-05 00:50:27'),
(360, 5, '2023-11-04 20:50:27', '2023-11-04 20:50:27', 0, NULL, '2023-11-05 00:50:27', '2023-11-05 00:50:27'),
(361, 1, '2023-11-04 20:55:38', '2023-11-04 20:55:38', 0, NULL, '2023-11-05 00:55:38', '2023-11-05 00:55:38'),
(362, 2, '2023-11-04 20:55:38', '2023-11-04 20:55:38', 0, NULL, '2023-11-05 00:55:38', '2023-11-05 00:55:38'),
(363, 3, '2023-11-04 20:55:38', '2023-11-04 20:55:38', 0, NULL, '2023-11-05 00:55:38', '2023-11-05 00:55:38'),
(364, 5, '2023-11-04 20:55:38', '2023-11-04 20:55:38', 0, NULL, '2023-11-05 00:55:38', '2023-11-05 00:55:38'),
(365, 1, '2023-11-04 21:05:03', '2023-11-04 21:05:03', 0, NULL, '2023-11-05 01:05:03', '2023-11-05 01:05:03'),
(366, 2, '2023-11-04 21:05:03', '2023-11-04 21:05:03', 0, NULL, '2023-11-05 01:05:03', '2023-11-05 01:05:03'),
(367, 3, '2023-11-04 21:05:03', '2023-11-04 21:05:03', 0, NULL, '2023-11-05 01:05:03', '2023-11-05 01:05:03'),
(368, 5, '2023-11-04 21:05:03', '2023-11-04 21:05:03', 0, NULL, '2023-11-05 01:05:03', '2023-11-05 01:05:03'),
(369, 1, '2023-11-04 21:10:34', '2023-11-04 21:10:34', 0, NULL, '2023-11-05 01:10:34', '2023-11-05 01:10:34'),
(370, 2, '2023-11-04 21:10:34', '2023-11-04 21:10:34', 0, NULL, '2023-11-05 01:10:34', '2023-11-05 01:10:34'),
(371, 3, '2023-11-04 21:10:34', '2023-11-04 21:10:34', 0, NULL, '2023-11-05 01:10:34', '2023-11-05 01:10:34'),
(372, 5, '2023-11-04 21:10:34', '2023-11-04 21:10:34', 0, NULL, '2023-11-05 01:10:34', '2023-11-05 01:10:34'),
(373, 1, '2023-11-04 21:15:48', '2023-11-04 21:15:48', 0, NULL, '2023-11-05 01:15:48', '2023-11-05 01:15:48'),
(374, 2, '2023-11-04 21:15:48', '2023-11-04 21:15:48', 0, NULL, '2023-11-05 01:15:48', '2023-11-05 01:15:48'),
(375, 3, '2023-11-04 21:15:48', '2023-11-04 21:15:48', 0, NULL, '2023-11-05 01:15:48', '2023-11-05 01:15:48'),
(376, 5, '2023-11-04 21:15:48', '2023-11-04 21:15:48', 0, NULL, '2023-11-05 01:15:48', '2023-11-05 01:15:48'),
(377, 1, '2023-11-04 21:25:48', '2023-11-04 21:25:48', 0, NULL, '2023-11-05 01:25:48', '2023-11-05 01:25:48'),
(378, 2, '2023-11-04 21:25:48', '2023-11-04 21:25:48', 0, NULL, '2023-11-05 01:25:48', '2023-11-05 01:25:48'),
(379, 3, '2023-11-04 21:25:48', '2023-11-04 21:25:48', 0, NULL, '2023-11-05 01:25:48', '2023-11-05 01:25:48'),
(380, 5, '2023-11-04 21:25:48', '2023-11-04 21:25:48', 0, NULL, '2023-11-05 01:25:48', '2023-11-05 01:25:48'),
(381, 1, '2023-11-04 21:35:33', '2023-11-04 21:35:33', 0, NULL, '2023-11-05 01:35:33', '2023-11-05 01:35:33'),
(382, 2, '2023-11-04 21:35:33', '2023-11-04 21:35:33', 0, NULL, '2023-11-05 01:35:33', '2023-11-05 01:35:33'),
(383, 3, '2023-11-04 21:35:33', '2023-11-04 21:35:33', 0, NULL, '2023-11-05 01:35:33', '2023-11-05 01:35:33'),
(384, 5, '2023-11-04 21:35:33', '2023-11-04 21:35:33', 0, NULL, '2023-11-05 01:35:33', '2023-11-05 01:35:33'),
(385, 1, '2023-11-04 21:45:27', '2023-11-04 21:45:27', 0, NULL, '2023-11-05 01:45:27', '2023-11-05 01:45:27'),
(386, 2, '2023-11-04 21:45:27', '2023-11-04 21:45:27', 0, NULL, '2023-11-05 01:45:27', '2023-11-05 01:45:27'),
(387, 3, '2023-11-04 21:45:27', '2023-11-04 21:45:27', 0, NULL, '2023-11-05 01:45:27', '2023-11-05 01:45:27'),
(388, 5, '2023-11-04 21:45:27', '2023-11-04 21:45:27', 0, NULL, '2023-11-05 01:45:27', '2023-11-05 01:45:27'),
(389, 1, '2023-11-04 21:55:11', '2023-11-04 21:55:11', 0, NULL, '2023-11-05 01:55:11', '2023-11-05 01:55:11'),
(390, 2, '2023-11-04 21:55:11', '2023-11-04 21:55:11', 0, NULL, '2023-11-05 01:55:11', '2023-11-05 01:55:11'),
(391, 3, '2023-11-04 21:55:11', '2023-11-04 21:55:11', 0, NULL, '2023-11-05 01:55:11', '2023-11-05 01:55:11'),
(392, 5, '2023-11-04 21:55:11', '2023-11-04 21:55:11', 0, NULL, '2023-11-05 01:55:11', '2023-11-05 01:55:11'),
(393, 1, '2023-11-04 22:05:40', '2023-11-04 22:05:40', 0, NULL, '2023-11-05 02:05:40', '2023-11-05 02:05:40'),
(394, 2, '2023-11-04 22:05:40', '2023-11-04 22:05:40', 0, NULL, '2023-11-05 02:05:40', '2023-11-05 02:05:40'),
(395, 3, '2023-11-04 22:05:40', '2023-11-04 22:05:40', 0, NULL, '2023-11-05 02:05:40', '2023-11-05 02:05:40'),
(396, 5, '2023-11-04 22:05:40', '2023-11-04 22:05:40', 0, NULL, '2023-11-05 02:05:40', '2023-11-05 02:05:40'),
(397, 1, '2023-11-04 22:15:11', '2023-11-04 22:15:11', 0, NULL, '2023-11-05 02:15:11', '2023-11-05 02:15:11'),
(398, 2, '2023-11-04 22:15:11', '2023-11-04 22:15:11', 0, NULL, '2023-11-05 02:15:11', '2023-11-05 02:15:11'),
(399, 3, '2023-11-04 22:15:11', '2023-11-04 22:15:11', 0, NULL, '2023-11-05 02:15:11', '2023-11-05 02:15:11'),
(400, 5, '2023-11-04 22:15:11', '2023-11-04 22:15:11', 0, NULL, '2023-11-05 02:15:11', '2023-11-05 02:15:11'),
(401, 1, '2023-11-04 22:20:45', '2023-11-04 22:20:45', 0, NULL, '2023-11-05 02:20:45', '2023-11-05 02:20:45'),
(402, 2, '2023-11-04 22:20:45', '2023-11-04 22:20:45', 0, NULL, '2023-11-05 02:20:45', '2023-11-05 02:20:45'),
(403, 3, '2023-11-04 22:20:45', '2023-11-04 22:20:45', 0, NULL, '2023-11-05 02:20:45', '2023-11-05 02:20:45'),
(404, 5, '2023-11-04 22:20:45', '2023-11-04 22:20:45', 0, NULL, '2023-11-05 02:20:45', '2023-11-05 02:20:45'),
(405, 1, '2023-11-04 22:30:19', '2023-11-04 22:30:19', 0, NULL, '2023-11-05 02:30:19', '2023-11-05 02:30:19'),
(406, 2, '2023-11-04 22:30:19', '2023-11-04 22:30:19', 0, NULL, '2023-11-05 02:30:19', '2023-11-05 02:30:19'),
(407, 3, '2023-11-04 22:30:19', '2023-11-04 22:30:19', 0, NULL, '2023-11-05 02:30:19', '2023-11-05 02:30:19'),
(408, 5, '2023-11-04 22:30:19', '2023-11-04 22:30:19', 0, NULL, '2023-11-05 02:30:19', '2023-11-05 02:30:19'),
(409, 1, '2023-11-04 22:35:25', '2023-11-04 22:35:25', 0, NULL, '2023-11-05 02:35:25', '2023-11-05 02:35:25'),
(410, 2, '2023-11-04 22:35:25', '2023-11-04 22:35:25', 0, NULL, '2023-11-05 02:35:25', '2023-11-05 02:35:25'),
(411, 3, '2023-11-04 22:35:25', '2023-11-04 22:35:25', 0, NULL, '2023-11-05 02:35:25', '2023-11-05 02:35:25'),
(412, 5, '2023-11-04 22:35:25', '2023-11-04 22:35:25', 0, NULL, '2023-11-05 02:35:25', '2023-11-05 02:35:25'),
(413, 1, '2023-11-06 00:10:42', '2023-11-06 00:10:42', 0, NULL, '2023-11-06 05:10:42', '2023-11-06 05:10:42'),
(414, 2, '2023-11-06 00:10:42', '2023-11-06 00:10:42', 0, NULL, '2023-11-06 05:10:42', '2023-11-06 05:10:42'),
(415, 3, '2023-11-06 00:10:42', '2023-11-06 00:10:42', 0, NULL, '2023-11-06 05:10:42', '2023-11-06 05:10:42'),
(416, 5, '2023-11-06 00:10:42', '2023-11-06 00:10:42', 0, NULL, '2023-11-06 05:10:42', '2023-11-06 05:10:42'),
(417, 1, '2023-11-06 00:20:50', '2023-11-06 00:20:50', 0, NULL, '2023-11-06 05:20:50', '2023-11-06 05:20:50'),
(418, 2, '2023-11-06 00:20:50', '2023-11-06 00:20:50', 0, NULL, '2023-11-06 05:20:50', '2023-11-06 05:20:50'),
(419, 3, '2023-11-06 00:20:50', '2023-11-06 00:20:50', 0, NULL, '2023-11-06 05:20:50', '2023-11-06 05:20:50'),
(420, 5, '2023-11-06 00:20:50', '2023-11-06 00:20:50', 0, NULL, '2023-11-06 05:20:50', '2023-11-06 05:20:50'),
(421, 1, '2023-11-06 00:30:30', '2023-11-06 00:30:30', 0, NULL, '2023-11-06 05:30:30', '2023-11-06 05:30:30'),
(422, 2, '2023-11-06 00:30:30', '2023-11-06 00:30:30', 0, NULL, '2023-11-06 05:30:30', '2023-11-06 05:30:30'),
(423, 3, '2023-11-06 00:30:30', '2023-11-06 00:30:30', 0, NULL, '2023-11-06 05:30:30', '2023-11-06 05:30:30'),
(424, 5, '2023-11-06 00:30:30', '2023-11-06 00:30:30', 0, NULL, '2023-11-06 05:30:30', '2023-11-06 05:30:30'),
(425, 1, '2023-11-06 00:40:17', '2023-11-06 00:40:17', 0, NULL, '2023-11-06 05:40:17', '2023-11-06 05:40:17'),
(426, 2, '2023-11-06 00:40:17', '2023-11-06 00:40:18', 0, NULL, '2023-11-06 05:40:18', '2023-11-06 05:40:18'),
(427, 3, '2023-11-06 00:40:18', '2023-11-06 00:40:18', 0, NULL, '2023-11-06 05:40:18', '2023-11-06 05:40:18'),
(428, 5, '2023-11-06 00:40:18', '2023-11-06 00:40:18', 0, NULL, '2023-11-06 05:40:18', '2023-11-06 05:40:18'),
(429, 1, '2023-11-06 00:45:40', '2023-11-06 00:45:40', 0, NULL, '2023-11-06 05:45:40', '2023-11-06 05:45:40'),
(430, 2, '2023-11-06 00:45:40', '2023-11-06 00:45:40', 0, NULL, '2023-11-06 05:45:40', '2023-11-06 05:45:40'),
(431, 3, '2023-11-06 00:45:40', '2023-11-06 00:45:40', 0, NULL, '2023-11-06 05:45:40', '2023-11-06 05:45:40'),
(432, 5, '2023-11-06 00:45:40', '2023-11-06 00:45:40', 0, NULL, '2023-11-06 05:45:40', '2023-11-06 05:45:40'),
(433, 1, '2023-11-06 00:55:20', '2023-11-06 00:55:20', 0, NULL, '2023-11-06 05:55:20', '2023-11-06 05:55:20'),
(434, 2, '2023-11-06 00:55:20', '2023-11-06 00:55:20', 0, NULL, '2023-11-06 05:55:20', '2023-11-06 05:55:20'),
(435, 3, '2023-11-06 00:55:20', '2023-11-06 00:55:20', 0, NULL, '2023-11-06 05:55:20', '2023-11-06 05:55:20'),
(436, 5, '2023-11-06 00:55:20', '2023-11-06 00:55:20', 0, NULL, '2023-11-06 05:55:20', '2023-11-06 05:55:20'),
(437, 1, '2023-11-06 01:00:41', '2023-11-06 01:00:41', 0, NULL, '2023-11-06 06:00:41', '2023-11-06 06:00:41'),
(438, 2, '2023-11-06 01:00:41', '2023-11-06 01:00:42', 0, NULL, '2023-11-06 06:00:42', '2023-11-06 06:00:42'),
(439, 3, '2023-11-06 01:00:42', '2023-11-06 01:00:42', 0, NULL, '2023-11-06 06:00:42', '2023-11-06 06:00:42'),
(440, 5, '2023-11-06 01:00:42', '2023-11-06 01:00:42', 0, NULL, '2023-11-06 06:00:42', '2023-11-06 06:00:42'),
(441, 1, '2023-11-06 01:10:49', '2023-11-06 01:10:49', 0, NULL, '2023-11-06 06:10:49', '2023-11-06 06:10:49'),
(442, 2, '2023-11-06 01:10:49', '2023-11-06 01:10:49', 0, NULL, '2023-11-06 06:10:49', '2023-11-06 06:10:49'),
(443, 3, '2023-11-06 01:10:49', '2023-11-06 01:10:49', 0, NULL, '2023-11-06 06:10:49', '2023-11-06 06:10:49'),
(444, 5, '2023-11-06 01:10:49', '2023-11-06 01:10:49', 0, NULL, '2023-11-06 06:10:49', '2023-11-06 06:10:49'),
(445, 1, '2023-11-06 01:20:04', '2023-11-06 01:20:04', 0, NULL, '2023-11-06 06:20:04', '2023-11-06 06:20:04'),
(446, 2, '2023-11-06 01:20:04', '2023-11-06 01:20:04', 0, NULL, '2023-11-06 06:20:04', '2023-11-06 06:20:04'),
(447, 3, '2023-11-06 01:20:04', '2023-11-06 01:20:04', 0, NULL, '2023-11-06 06:20:04', '2023-11-06 06:20:04'),
(448, 5, '2023-11-06 01:20:04', '2023-11-06 01:20:04', 0, NULL, '2023-11-06 06:20:04', '2023-11-06 06:20:04'),
(449, 1, '2023-11-06 01:25:33', '2023-11-06 01:25:33', 0, NULL, '2023-11-06 06:25:33', '2023-11-06 06:25:33'),
(450, 2, '2023-11-06 01:25:33', '2023-11-06 01:25:33', 0, NULL, '2023-11-06 06:25:33', '2023-11-06 06:25:33'),
(451, 3, '2023-11-06 01:25:33', '2023-11-06 01:25:33', 0, NULL, '2023-11-06 06:25:33', '2023-11-06 06:25:33'),
(452, 5, '2023-11-06 01:25:33', '2023-11-06 01:25:33', 0, NULL, '2023-11-06 06:25:33', '2023-11-06 06:25:33'),
(453, 1, '2023-11-06 01:35:31', '2023-11-06 01:35:31', 0, NULL, '2023-11-06 06:35:31', '2023-11-06 06:35:31'),
(454, 2, '2023-11-06 01:35:31', '2023-11-06 01:35:31', 0, NULL, '2023-11-06 06:35:31', '2023-11-06 06:35:31'),
(455, 3, '2023-11-06 01:35:31', '2023-11-06 01:35:31', 0, NULL, '2023-11-06 06:35:31', '2023-11-06 06:35:31'),
(456, 5, '2023-11-06 01:35:31', '2023-11-06 01:35:31', 0, NULL, '2023-11-06 06:35:31', '2023-11-06 06:35:31'),
(457, 1, '2023-11-06 01:40:47', '2023-11-06 01:40:47', 0, NULL, '2023-11-06 06:40:47', '2023-11-06 06:40:47'),
(458, 2, '2023-11-06 01:40:47', '2023-11-06 01:40:47', 0, NULL, '2023-11-06 06:40:47', '2023-11-06 06:40:47');
INSERT INTO `cron_job_logs` (`id`, `cron_job_id`, `start_at`, `end_at`, `duration`, `error`, `created_at`, `updated_at`) VALUES
(459, 3, '2023-11-06 01:40:47', '2023-11-06 01:40:47', 0, NULL, '2023-11-06 06:40:47', '2023-11-06 06:40:47'),
(460, 5, '2023-11-06 01:40:47', '2023-11-06 01:40:47', 0, NULL, '2023-11-06 06:40:47', '2023-11-06 06:40:47'),
(461, 1, '2023-11-06 01:50:19', '2023-11-06 01:50:19', 0, NULL, '2023-11-06 06:50:19', '2023-11-06 06:50:19'),
(462, 2, '2023-11-06 01:50:19', '2023-11-06 01:50:20', 0, NULL, '2023-11-06 06:50:20', '2023-11-06 06:50:20'),
(463, 3, '2023-11-06 01:50:20', '2023-11-06 01:50:20', 0, NULL, '2023-11-06 06:50:20', '2023-11-06 06:50:20'),
(464, 5, '2023-11-06 01:50:20', '2023-11-06 01:50:20', 0, NULL, '2023-11-06 06:50:20', '2023-11-06 06:50:20'),
(465, 1, '2023-11-06 02:00:37', '2023-11-06 02:00:37', 0, NULL, '2023-11-06 07:00:37', '2023-11-06 07:00:37'),
(466, 2, '2023-11-06 02:00:37', '2023-11-06 02:00:37', 0, NULL, '2023-11-06 07:00:37', '2023-11-06 07:00:37'),
(467, 3, '2023-11-06 02:00:37', '2023-11-06 02:00:37', 0, NULL, '2023-11-06 07:00:37', '2023-11-06 07:00:37'),
(468, 5, '2023-11-06 02:00:37', '2023-11-06 02:00:37', 0, NULL, '2023-11-06 07:00:37', '2023-11-06 07:00:37'),
(469, 1, '2023-11-06 02:10:15', '2023-11-06 02:10:15', 0, NULL, '2023-11-06 07:10:15', '2023-11-06 07:10:15'),
(470, 2, '2023-11-06 02:10:15', '2023-11-06 02:10:15', 0, NULL, '2023-11-06 07:10:15', '2023-11-06 07:10:15'),
(471, 3, '2023-11-06 02:10:15', '2023-11-06 02:10:15', 0, NULL, '2023-11-06 07:10:15', '2023-11-06 07:10:15'),
(472, 5, '2023-11-06 02:10:15', '2023-11-06 02:10:15', 0, NULL, '2023-11-06 07:10:15', '2023-11-06 07:10:15'),
(473, 1, '2023-11-06 02:15:32', '2023-11-06 02:15:32', 0, NULL, '2023-11-06 07:15:32', '2023-11-06 07:15:32'),
(474, 2, '2023-11-06 02:15:32', '2023-11-06 02:15:32', 0, NULL, '2023-11-06 07:15:33', '2023-11-06 07:15:33'),
(475, 3, '2023-11-06 02:15:33', '2023-11-06 02:15:33', 0, NULL, '2023-11-06 07:15:33', '2023-11-06 07:15:33'),
(476, 5, '2023-11-06 02:15:33', '2023-11-06 02:15:33', 0, NULL, '2023-11-06 07:15:33', '2023-11-06 07:15:33'),
(477, 1, '2023-11-06 02:20:35', '2023-11-06 02:20:35', 0, NULL, '2023-11-06 07:20:35', '2023-11-06 07:20:35'),
(478, 2, '2023-11-06 02:20:35', '2023-11-06 02:20:35', 0, NULL, '2023-11-06 07:20:35', '2023-11-06 07:20:35'),
(479, 3, '2023-11-06 02:20:35', '2023-11-06 02:20:35', 0, NULL, '2023-11-06 07:20:35', '2023-11-06 07:20:35'),
(480, 5, '2023-11-06 02:20:35', '2023-11-06 02:20:35', 0, NULL, '2023-11-06 07:20:35', '2023-11-06 07:20:35'),
(481, 1, '2023-11-06 02:25:41', '2023-11-06 02:25:41', 0, NULL, '2023-11-06 07:25:41', '2023-11-06 07:25:41'),
(482, 2, '2023-11-06 02:25:41', '2023-11-06 02:25:42', 0, NULL, '2023-11-06 07:25:42', '2023-11-06 07:25:42'),
(483, 3, '2023-11-06 02:25:42', '2023-11-06 02:25:42', 0, NULL, '2023-11-06 07:25:42', '2023-11-06 07:25:42'),
(484, 5, '2023-11-06 02:25:42', '2023-11-06 02:25:42', 0, NULL, '2023-11-06 07:25:42', '2023-11-06 07:25:42'),
(485, 1, '2023-11-06 02:35:01', '2023-11-06 02:35:01', 0, NULL, '2023-11-06 07:35:01', '2023-11-06 07:35:01'),
(486, 2, '2023-11-06 02:35:01', '2023-11-06 02:35:02', 0, NULL, '2023-11-06 07:35:02', '2023-11-06 07:35:02'),
(487, 3, '2023-11-06 02:35:02', '2023-11-06 02:35:02', 0, NULL, '2023-11-06 07:35:02', '2023-11-06 07:35:02'),
(488, 5, '2023-11-06 02:35:02', '2023-11-06 02:35:02', 0, NULL, '2023-11-06 07:35:02', '2023-11-06 07:35:02'),
(489, 1, '2023-11-06 02:40:08', '2023-11-06 02:40:08', 0, NULL, '2023-11-06 07:40:08', '2023-11-06 07:40:08'),
(490, 2, '2023-11-06 02:40:08', '2023-11-06 02:40:08', 0, NULL, '2023-11-06 07:40:08', '2023-11-06 07:40:08'),
(491, 3, '2023-11-06 02:40:08', '2023-11-06 02:40:08', 0, NULL, '2023-11-06 07:40:08', '2023-11-06 07:40:08'),
(492, 5, '2023-11-06 02:40:08', '2023-11-06 02:40:08', 0, NULL, '2023-11-06 07:40:08', '2023-11-06 07:40:08'),
(493, 1, '2023-11-06 02:45:29', '2023-11-06 02:45:29', 0, NULL, '2023-11-06 07:45:29', '2023-11-06 07:45:29'),
(494, 2, '2023-11-06 02:45:29', '2023-11-06 02:45:29', 0, NULL, '2023-11-06 07:45:29', '2023-11-06 07:45:29'),
(495, 3, '2023-11-06 02:45:29', '2023-11-06 02:45:29', 0, NULL, '2023-11-06 07:45:29', '2023-11-06 07:45:29'),
(496, 5, '2023-11-06 02:45:29', '2023-11-06 02:45:29', 0, NULL, '2023-11-06 07:45:29', '2023-11-06 07:45:29'),
(497, 1, '2023-11-06 02:50:39', '2023-11-06 02:50:39', 0, NULL, '2023-11-06 07:50:39', '2023-11-06 07:50:39'),
(498, 2, '2023-11-06 02:50:39', '2023-11-06 02:50:39', 0, NULL, '2023-11-06 07:50:39', '2023-11-06 07:50:39'),
(499, 3, '2023-11-06 02:50:39', '2023-11-06 02:50:39', 0, NULL, '2023-11-06 07:50:39', '2023-11-06 07:50:39'),
(500, 5, '2023-11-06 02:50:39', '2023-11-06 02:50:39', 0, NULL, '2023-11-06 07:50:39', '2023-11-06 07:50:39'),
(501, 1, '2023-11-06 03:00:09', '2023-11-06 03:00:09', 0, NULL, '2023-11-06 08:00:09', '2023-11-06 08:00:09'),
(502, 2, '2023-11-06 03:00:09', '2023-11-06 03:00:09', 0, NULL, '2023-11-06 08:00:09', '2023-11-06 08:00:09'),
(503, 3, '2023-11-06 03:00:09', '2023-11-06 03:00:09', 0, NULL, '2023-11-06 08:00:09', '2023-11-06 08:00:09'),
(504, 5, '2023-11-06 03:00:09', '2023-11-06 03:00:09', 0, NULL, '2023-11-06 08:00:09', '2023-11-06 08:00:09'),
(505, 1, '2023-11-06 03:05:40', '2023-11-06 03:05:40', 0, NULL, '2023-11-06 08:05:40', '2023-11-06 08:05:40'),
(506, 2, '2023-11-06 03:05:40', '2023-11-06 03:05:41', 0, NULL, '2023-11-06 08:05:41', '2023-11-06 08:05:41'),
(507, 3, '2023-11-06 03:05:41', '2023-11-06 03:05:41', 0, NULL, '2023-11-06 08:05:41', '2023-11-06 08:05:41'),
(508, 5, '2023-11-06 03:05:41', '2023-11-06 03:05:41', 0, NULL, '2023-11-06 08:05:41', '2023-11-06 08:05:41'),
(509, 1, '2023-11-06 03:15:40', '2023-11-06 03:15:40', 0, NULL, '2023-11-06 08:15:40', '2023-11-06 08:15:40'),
(510, 2, '2023-11-06 03:15:40', '2023-11-06 03:15:41', 0, NULL, '2023-11-06 08:15:41', '2023-11-06 08:15:41'),
(511, 3, '2023-11-06 03:15:41', '2023-11-06 03:15:41', 0, NULL, '2023-11-06 08:15:41', '2023-11-06 08:15:41'),
(512, 5, '2023-11-06 03:15:41', '2023-11-06 03:15:41', 0, NULL, '2023-11-06 08:15:41', '2023-11-06 08:15:41'),
(513, 1, '2023-11-06 03:25:22', '2023-11-06 03:25:22', 0, NULL, '2023-11-06 08:25:22', '2023-11-06 08:25:22'),
(514, 2, '2023-11-06 03:25:22', '2023-11-06 03:25:23', 0, NULL, '2023-11-06 08:25:23', '2023-11-06 08:25:23'),
(515, 3, '2023-11-06 03:25:23', '2023-11-06 03:25:23', 0, NULL, '2023-11-06 08:25:23', '2023-11-06 08:25:23'),
(516, 5, '2023-11-06 03:25:23', '2023-11-06 03:25:23', 0, NULL, '2023-11-06 08:25:23', '2023-11-06 08:25:23'),
(517, 1, '2023-11-06 03:35:29', '2023-11-06 03:35:29', 0, NULL, '2023-11-06 08:35:29', '2023-11-06 08:35:29'),
(518, 2, '2023-11-06 03:35:29', '2023-11-06 03:35:30', 0, NULL, '2023-11-06 08:35:30', '2023-11-06 08:35:30'),
(519, 3, '2023-11-06 03:35:30', '2023-11-06 03:35:30', 0, NULL, '2023-11-06 08:35:30', '2023-11-06 08:35:30'),
(520, 5, '2023-11-06 03:35:30', '2023-11-06 03:35:30', 0, NULL, '2023-11-06 08:35:30', '2023-11-06 08:35:30'),
(521, 1, '2023-11-06 03:45:34', '2023-11-06 03:45:34', 0, NULL, '2023-11-06 08:45:34', '2023-11-06 08:45:34'),
(522, 2, '2023-11-06 03:45:34', '2023-11-06 03:45:34', 0, NULL, '2023-11-06 08:45:34', '2023-11-06 08:45:34'),
(523, 3, '2023-11-06 03:45:34', '2023-11-06 03:45:34', 0, NULL, '2023-11-06 08:45:34', '2023-11-06 08:45:34'),
(524, 5, '2023-11-06 03:45:34', '2023-11-06 03:45:34', 0, NULL, '2023-11-06 08:45:34', '2023-11-06 08:45:34'),
(525, 1, '2023-11-06 03:50:35', '2023-11-06 03:50:35', 0, NULL, '2023-11-06 08:50:35', '2023-11-06 08:50:35'),
(526, 2, '2023-11-06 03:50:35', '2023-11-06 03:50:35', 0, NULL, '2023-11-06 08:50:35', '2023-11-06 08:50:35'),
(527, 3, '2023-11-06 03:50:35', '2023-11-06 03:50:35', 0, NULL, '2023-11-06 08:50:35', '2023-11-06 08:50:35'),
(528, 5, '2023-11-06 03:50:35', '2023-11-06 03:50:35', 0, NULL, '2023-11-06 08:50:35', '2023-11-06 08:50:35'),
(529, 1, '2023-11-06 03:55:37', '2023-11-06 03:55:37', 0, NULL, '2023-11-06 08:55:37', '2023-11-06 08:55:37'),
(530, 2, '2023-11-06 03:55:37', '2023-11-06 03:55:38', 0, NULL, '2023-11-06 08:55:38', '2023-11-06 08:55:38'),
(531, 3, '2023-11-06 03:55:38', '2023-11-06 03:55:38', 0, NULL, '2023-11-06 08:55:38', '2023-11-06 08:55:38'),
(532, 5, '2023-11-06 03:55:38', '2023-11-06 03:55:38', 0, NULL, '2023-11-06 08:55:38', '2023-11-06 08:55:38'),
(533, 1, '2023-11-06 04:00:49', '2023-11-06 04:00:49', 0, NULL, '2023-11-06 09:00:49', '2023-11-06 09:00:49'),
(534, 2, '2023-11-06 04:00:49', '2023-11-06 04:00:49', 0, NULL, '2023-11-06 09:00:49', '2023-11-06 09:00:49'),
(535, 3, '2023-11-06 04:00:49', '2023-11-06 04:00:49', 0, NULL, '2023-11-06 09:00:49', '2023-11-06 09:00:49'),
(536, 5, '2023-11-06 04:00:49', '2023-11-06 04:00:49', 0, NULL, '2023-11-06 09:00:49', '2023-11-06 09:00:49'),
(537, 1, '2023-11-06 04:10:10', '2023-11-06 04:10:10', 0, NULL, '2023-11-06 09:10:10', '2023-11-06 09:10:10'),
(538, 2, '2023-11-06 04:10:10', '2023-11-06 04:10:10', 0, NULL, '2023-11-06 09:10:10', '2023-11-06 09:10:10'),
(539, 3, '2023-11-06 04:10:10', '2023-11-06 04:10:10', 0, NULL, '2023-11-06 09:10:10', '2023-11-06 09:10:10'),
(540, 5, '2023-11-06 04:10:10', '2023-11-06 04:10:10', 0, NULL, '2023-11-06 09:10:10', '2023-11-06 09:10:10'),
(541, 1, '2023-11-06 04:20:49', '2023-11-06 04:20:49', 0, NULL, '2023-11-06 09:20:49', '2023-11-06 09:20:49'),
(542, 2, '2023-11-06 04:20:49', '2023-11-06 04:20:49', 0, NULL, '2023-11-06 09:20:49', '2023-11-06 09:20:49'),
(543, 3, '2023-11-06 04:20:49', '2023-11-06 04:20:49', 0, NULL, '2023-11-06 09:20:49', '2023-11-06 09:20:49'),
(544, 5, '2023-11-06 04:20:49', '2023-11-06 04:20:49', 0, NULL, '2023-11-06 09:20:49', '2023-11-06 09:20:49'),
(545, 1, '2023-11-06 04:30:41', '2023-11-06 04:30:41', 0, NULL, '2023-11-06 09:30:41', '2023-11-06 09:30:41'),
(546, 2, '2023-11-06 04:30:41', '2023-11-06 04:30:41', 0, NULL, '2023-11-06 09:30:41', '2023-11-06 09:30:41'),
(547, 3, '2023-11-06 04:30:41', '2023-11-06 04:30:41', 0, NULL, '2023-11-06 09:30:41', '2023-11-06 09:30:41'),
(548, 5, '2023-11-06 04:30:41', '2023-11-06 04:30:41', 0, NULL, '2023-11-06 09:30:41', '2023-11-06 09:30:41'),
(549, 1, '2023-11-06 04:40:38', '2023-11-06 04:40:38', 0, NULL, '2023-11-06 09:40:38', '2023-11-06 09:40:38'),
(550, 2, '2023-11-06 04:40:38', '2023-11-06 04:40:38', 0, NULL, '2023-11-06 09:40:38', '2023-11-06 09:40:38'),
(551, 3, '2023-11-06 04:40:38', '2023-11-06 04:40:38', 0, NULL, '2023-11-06 09:40:38', '2023-11-06 09:40:38'),
(552, 5, '2023-11-06 04:40:38', '2023-11-06 04:40:38', 0, NULL, '2023-11-06 09:40:38', '2023-11-06 09:40:38'),
(553, 1, '2023-11-06 04:50:44', '2023-11-06 04:50:44', 0, NULL, '2023-11-06 09:50:44', '2023-11-06 09:50:44'),
(554, 2, '2023-11-06 04:50:44', '2023-11-06 04:50:45', 0, NULL, '2023-11-06 09:50:45', '2023-11-06 09:50:45'),
(555, 3, '2023-11-06 04:50:45', '2023-11-06 04:50:45', 0, NULL, '2023-11-06 09:50:45', '2023-11-06 09:50:45'),
(556, 5, '2023-11-06 04:50:45', '2023-11-06 04:50:45', 0, NULL, '2023-11-06 09:50:45', '2023-11-06 09:50:45'),
(557, 1, '2023-11-06 05:00:34', '2023-11-06 05:00:34', 0, NULL, '2023-11-06 10:00:34', '2023-11-06 10:00:34'),
(558, 2, '2023-11-06 05:00:34', '2023-11-06 05:00:34', 0, NULL, '2023-11-06 10:00:34', '2023-11-06 10:00:34'),
(559, 3, '2023-11-06 05:00:34', '2023-11-06 05:00:34', 0, NULL, '2023-11-06 10:00:34', '2023-11-06 10:00:34'),
(560, 5, '2023-11-06 05:00:34', '2023-11-06 05:00:34', 0, NULL, '2023-11-06 10:00:34', '2023-11-06 10:00:34'),
(561, 1, '2023-11-06 05:10:46', '2023-11-06 05:10:46', 0, NULL, '2023-11-06 10:10:46', '2023-11-06 10:10:46'),
(562, 2, '2023-11-06 05:10:46', '2023-11-06 05:10:46', 0, NULL, '2023-11-06 10:10:46', '2023-11-06 10:10:46'),
(563, 3, '2023-11-06 05:10:46', '2023-11-06 05:10:46', 0, NULL, '2023-11-06 10:10:46', '2023-11-06 10:10:46'),
(564, 5, '2023-11-06 05:10:46', '2023-11-06 05:10:46', 0, NULL, '2023-11-06 10:10:46', '2023-11-06 10:10:46'),
(565, 1, '2023-11-06 05:20:34', '2023-11-06 05:20:34', 0, NULL, '2023-11-06 10:20:34', '2023-11-06 10:20:34'),
(566, 2, '2023-11-06 05:20:34', '2023-11-06 05:20:34', 0, NULL, '2023-11-06 10:20:34', '2023-11-06 10:20:34'),
(567, 3, '2023-11-06 05:20:34', '2023-11-06 05:20:34', 0, NULL, '2023-11-06 10:20:34', '2023-11-06 10:20:34'),
(568, 5, '2023-11-06 05:20:34', '2023-11-06 05:20:34', 0, NULL, '2023-11-06 10:20:34', '2023-11-06 10:20:34'),
(569, 1, '2023-11-06 05:25:46', '2023-11-06 05:25:46', 0, NULL, '2023-11-06 10:25:46', '2023-11-06 10:25:46'),
(570, 2, '2023-11-06 05:25:46', '2023-11-06 05:25:47', 0, NULL, '2023-11-06 10:25:47', '2023-11-06 10:25:47'),
(571, 3, '2023-11-06 05:25:47', '2023-11-06 05:25:47', 0, NULL, '2023-11-06 10:25:47', '2023-11-06 10:25:47'),
(572, 5, '2023-11-06 05:25:47', '2023-11-06 05:25:47', 0, NULL, '2023-11-06 10:25:47', '2023-11-06 10:25:47'),
(573, 1, '2023-11-06 05:35:02', '2023-11-06 05:35:02', 0, NULL, '2023-11-06 10:35:02', '2023-11-06 10:35:02'),
(574, 2, '2023-11-06 05:35:02', '2023-11-06 05:35:03', 0, NULL, '2023-11-06 10:35:03', '2023-11-06 10:35:03'),
(575, 3, '2023-11-06 05:35:03', '2023-11-06 05:35:03', 0, NULL, '2023-11-06 10:35:03', '2023-11-06 10:35:03'),
(576, 5, '2023-11-06 05:35:03', '2023-11-06 05:35:03', 0, NULL, '2023-11-06 10:35:03', '2023-11-06 10:35:03'),
(577, 1, '2023-11-06 05:40:26', '2023-11-06 05:40:26', 0, NULL, '2023-11-06 10:40:26', '2023-11-06 10:40:26'),
(578, 2, '2023-11-06 05:40:26', '2023-11-06 05:40:26', 0, NULL, '2023-11-06 10:40:26', '2023-11-06 10:40:26'),
(579, 3, '2023-11-06 05:40:26', '2023-11-06 05:40:26', 0, NULL, '2023-11-06 10:40:26', '2023-11-06 10:40:26'),
(580, 5, '2023-11-06 05:40:26', '2023-11-06 05:40:26', 0, NULL, '2023-11-06 10:40:26', '2023-11-06 10:40:26'),
(581, 1, '2023-11-06 05:50:47', '2023-11-06 05:50:47', 0, NULL, '2023-11-06 10:50:47', '2023-11-06 10:50:47'),
(582, 2, '2023-11-06 05:50:47', '2023-11-06 05:50:48', 0, NULL, '2023-11-06 10:50:48', '2023-11-06 10:50:48'),
(583, 3, '2023-11-06 05:50:48', '2023-11-06 05:50:48', 0, NULL, '2023-11-06 10:50:48', '2023-11-06 10:50:48'),
(584, 5, '2023-11-06 05:50:48', '2023-11-06 05:50:48', 0, NULL, '2023-11-06 10:50:48', '2023-11-06 10:50:48'),
(585, 1, '2023-11-06 06:00:24', '2023-11-06 06:00:24', 0, NULL, '2023-11-06 11:00:24', '2023-11-06 11:00:24'),
(586, 2, '2023-11-06 06:00:24', '2023-11-06 06:00:24', 0, NULL, '2023-11-06 11:00:24', '2023-11-06 11:00:24'),
(587, 3, '2023-11-06 06:00:24', '2023-11-06 06:00:24', 0, NULL, '2023-11-06 11:00:24', '2023-11-06 11:00:24'),
(588, 5, '2023-11-06 06:00:24', '2023-11-06 06:00:24', 0, NULL, '2023-11-06 11:00:24', '2023-11-06 11:00:24'),
(589, 1, '2023-11-06 06:10:11', '2023-11-06 06:10:11', 0, NULL, '2023-11-06 11:10:11', '2023-11-06 11:10:11'),
(590, 2, '2023-11-06 06:10:11', '2023-11-06 06:10:11', 0, NULL, '2023-11-06 11:10:11', '2023-11-06 11:10:11'),
(591, 3, '2023-11-06 06:10:11', '2023-11-06 06:10:11', 0, NULL, '2023-11-06 11:10:11', '2023-11-06 11:10:11'),
(592, 5, '2023-11-06 06:10:11', '2023-11-06 06:10:11', 0, NULL, '2023-11-06 11:10:11', '2023-11-06 11:10:11'),
(593, 1, '2023-11-06 06:20:01', '2023-11-06 06:20:01', 0, NULL, '2023-11-06 11:20:01', '2023-11-06 11:20:01'),
(594, 2, '2023-11-06 06:20:01', '2023-11-06 06:20:02', 0, NULL, '2023-11-06 11:20:02', '2023-11-06 11:20:02'),
(595, 3, '2023-11-06 06:20:02', '2023-11-06 06:20:02', 0, NULL, '2023-11-06 11:20:02', '2023-11-06 11:20:02'),
(596, 5, '2023-11-06 06:20:02', '2023-11-06 06:20:02', 0, NULL, '2023-11-06 11:20:02', '2023-11-06 11:20:02'),
(597, 1, '2023-11-06 06:25:37', '2023-11-06 06:25:37', 0, NULL, '2023-11-06 11:25:37', '2023-11-06 11:25:37'),
(598, 2, '2023-11-06 06:25:37', '2023-11-06 06:25:37', 0, NULL, '2023-11-06 11:25:37', '2023-11-06 11:25:37'),
(599, 3, '2023-11-06 06:25:37', '2023-11-06 06:25:37', 0, NULL, '2023-11-06 11:25:37', '2023-11-06 11:25:37'),
(600, 5, '2023-11-06 06:25:37', '2023-11-06 06:25:37', 0, NULL, '2023-11-06 11:25:37', '2023-11-06 11:25:37'),
(601, 1, '2023-11-06 06:35:09', '2023-11-06 06:35:09', 0, NULL, '2023-11-06 11:35:09', '2023-11-06 11:35:09'),
(602, 2, '2023-11-06 06:35:09', '2023-11-06 06:35:09', 0, NULL, '2023-11-06 11:35:09', '2023-11-06 11:35:09'),
(603, 3, '2023-11-06 06:35:09', '2023-11-06 06:35:09', 0, NULL, '2023-11-06 11:35:09', '2023-11-06 11:35:09'),
(604, 5, '2023-11-06 06:35:09', '2023-11-06 06:35:09', 0, NULL, '2023-11-06 11:35:09', '2023-11-06 11:35:09'),
(605, 1, '2023-11-06 06:40:27', '2023-11-06 06:40:27', 0, NULL, '2023-11-06 11:40:27', '2023-11-06 11:40:27'),
(606, 2, '2023-11-06 06:40:27', '2023-11-06 06:40:27', 0, NULL, '2023-11-06 11:40:27', '2023-11-06 11:40:27'),
(607, 3, '2023-11-06 06:40:27', '2023-11-06 06:40:27', 0, NULL, '2023-11-06 11:40:27', '2023-11-06 11:40:27'),
(608, 5, '2023-11-06 06:40:27', '2023-11-06 06:40:27', 0, NULL, '2023-11-06 11:40:27', '2023-11-06 11:40:27'),
(609, 1, '2023-11-06 06:45:46', '2023-11-06 06:45:46', 0, NULL, '2023-11-06 11:45:46', '2023-11-06 11:45:46'),
(610, 2, '2023-11-06 06:45:46', '2023-11-06 06:45:47', 0, NULL, '2023-11-06 11:45:47', '2023-11-06 11:45:47'),
(611, 3, '2023-11-06 06:45:47', '2023-11-06 06:45:47', 0, NULL, '2023-11-06 11:45:47', '2023-11-06 11:45:47'),
(612, 5, '2023-11-06 06:45:47', '2023-11-06 06:45:47', 0, NULL, '2023-11-06 11:45:47', '2023-11-06 11:45:47'),
(613, 1, '2023-11-06 06:55:31', '2023-11-06 06:55:31', 0, NULL, '2023-11-06 11:55:31', '2023-11-06 11:55:31'),
(614, 2, '2023-11-06 06:55:31', '2023-11-06 06:55:31', 0, NULL, '2023-11-06 11:55:31', '2023-11-06 11:55:31'),
(615, 3, '2023-11-06 06:55:31', '2023-11-06 06:55:31', 0, NULL, '2023-11-06 11:55:31', '2023-11-06 11:55:31'),
(616, 5, '2023-11-06 06:55:31', '2023-11-06 06:55:31', 0, NULL, '2023-11-06 11:55:31', '2023-11-06 11:55:31'),
(617, 1, '2023-11-06 07:05:23', '2023-11-06 07:05:23', 0, NULL, '2023-11-06 12:05:23', '2023-11-06 12:05:23'),
(618, 2, '2023-11-06 07:05:23', '2023-11-06 07:05:23', 0, NULL, '2023-11-06 12:05:23', '2023-11-06 12:05:23'),
(619, 3, '2023-11-06 07:05:23', '2023-11-06 07:05:23', 0, NULL, '2023-11-06 12:05:23', '2023-11-06 12:05:23'),
(620, 5, '2023-11-06 07:05:23', '2023-11-06 07:05:23', 0, NULL, '2023-11-06 12:05:23', '2023-11-06 12:05:23'),
(621, 1, '2023-11-06 07:10:42', '2023-11-06 07:10:42', 0, NULL, '2023-11-06 12:10:42', '2023-11-06 12:10:42'),
(622, 2, '2023-11-06 07:10:42', '2023-11-06 07:10:42', 0, NULL, '2023-11-06 12:10:42', '2023-11-06 12:10:42'),
(623, 3, '2023-11-06 07:10:42', '2023-11-06 07:10:42', 0, NULL, '2023-11-06 12:10:42', '2023-11-06 12:10:42'),
(624, 5, '2023-11-06 07:10:42', '2023-11-06 07:10:42', 0, NULL, '2023-11-06 12:10:42', '2023-11-06 12:10:42'),
(625, 1, '2023-11-06 07:15:50', '2023-11-06 07:15:50', 0, NULL, '2023-11-06 12:15:50', '2023-11-06 12:15:50'),
(626, 2, '2023-11-06 07:15:50', '2023-11-06 07:15:51', 0, NULL, '2023-11-06 12:15:51', '2023-11-06 12:15:51'),
(627, 3, '2023-11-06 07:15:51', '2023-11-06 07:15:51', 0, NULL, '2023-11-06 12:15:51', '2023-11-06 12:15:51'),
(628, 5, '2023-11-06 07:15:51', '2023-11-06 07:15:51', 0, NULL, '2023-11-06 12:15:51', '2023-11-06 12:15:51'),
(629, 1, '2023-11-06 07:25:35', '2023-11-06 07:25:35', 0, NULL, '2023-11-06 12:25:35', '2023-11-06 12:25:35'),
(630, 2, '2023-11-06 07:25:35', '2023-11-06 07:25:35', 0, NULL, '2023-11-06 12:25:35', '2023-11-06 12:25:35'),
(631, 3, '2023-11-06 07:25:35', '2023-11-06 07:25:35', 0, NULL, '2023-11-06 12:25:35', '2023-11-06 12:25:35'),
(632, 5, '2023-11-06 07:25:35', '2023-11-06 07:25:35', 0, NULL, '2023-11-06 12:25:35', '2023-11-06 12:25:35'),
(633, 1, '2023-11-06 07:35:24', '2023-11-06 07:35:24', 0, NULL, '2023-11-06 12:35:24', '2023-11-06 12:35:24'),
(634, 2, '2023-11-06 07:35:24', '2023-11-06 07:35:24', 0, NULL, '2023-11-06 12:35:24', '2023-11-06 12:35:24'),
(635, 3, '2023-11-06 07:35:24', '2023-11-06 07:35:24', 0, NULL, '2023-11-06 12:35:24', '2023-11-06 12:35:24'),
(636, 5, '2023-11-06 07:35:24', '2023-11-06 07:35:24', 0, NULL, '2023-11-06 12:35:24', '2023-11-06 12:35:24'),
(637, 1, '2023-11-06 07:45:46', '2023-11-06 07:45:46', 0, NULL, '2023-11-06 12:45:46', '2023-11-06 12:45:46'),
(638, 2, '2023-11-06 07:45:46', '2023-11-06 07:45:47', 0, NULL, '2023-11-06 12:45:47', '2023-11-06 12:45:47'),
(639, 3, '2023-11-06 07:45:47', '2023-11-06 07:45:47', 0, NULL, '2023-11-06 12:45:47', '2023-11-06 12:45:47'),
(640, 5, '2023-11-06 07:45:47', '2023-11-06 07:45:47', 0, NULL, '2023-11-06 12:45:47', '2023-11-06 12:45:47'),
(641, 1, '2023-11-06 07:55:37', '2023-11-06 07:55:37', 0, NULL, '2023-11-06 12:55:37', '2023-11-06 12:55:37'),
(642, 2, '2023-11-06 07:55:37', '2023-11-06 07:55:37', 0, NULL, '2023-11-06 12:55:37', '2023-11-06 12:55:37'),
(643, 3, '2023-11-06 07:55:37', '2023-11-06 07:55:37', 0, NULL, '2023-11-06 12:55:37', '2023-11-06 12:55:37'),
(644, 5, '2023-11-06 07:55:37', '2023-11-06 07:55:37', 0, NULL, '2023-11-06 12:55:37', '2023-11-06 12:55:37'),
(645, 1, '2023-11-06 08:00:40', '2023-11-06 08:00:40', 0, NULL, '2023-11-06 13:00:40', '2023-11-06 13:00:40'),
(646, 2, '2023-11-06 08:00:40', '2023-11-06 08:00:41', 0, NULL, '2023-11-06 13:00:41', '2023-11-06 13:00:41'),
(647, 3, '2023-11-06 08:00:41', '2023-11-06 08:00:41', 0, NULL, '2023-11-06 13:00:41', '2023-11-06 13:00:41'),
(648, 5, '2023-11-06 08:00:41', '2023-11-06 08:00:41', 0, NULL, '2023-11-06 13:00:41', '2023-11-06 13:00:41'),
(649, 1, '2023-11-06 08:10:14', '2023-11-06 08:10:14', 0, NULL, '2023-11-06 13:10:14', '2023-11-06 13:10:14'),
(650, 2, '2023-11-06 08:10:14', '2023-11-06 08:10:14', 0, NULL, '2023-11-06 13:10:14', '2023-11-06 13:10:14'),
(651, 3, '2023-11-06 08:10:14', '2023-11-06 08:10:14', 0, NULL, '2023-11-06 13:10:14', '2023-11-06 13:10:14'),
(652, 5, '2023-11-06 08:10:14', '2023-11-06 08:10:14', 0, NULL, '2023-11-06 13:10:14', '2023-11-06 13:10:14'),
(653, 1, '2023-11-06 08:20:31', '2023-11-06 08:20:31', 0, NULL, '2023-11-06 13:20:31', '2023-11-06 13:20:31'),
(654, 2, '2023-11-06 08:20:31', '2023-11-06 08:20:31', 0, NULL, '2023-11-06 13:20:31', '2023-11-06 13:20:31'),
(655, 3, '2023-11-06 08:20:31', '2023-11-06 08:20:31', 0, NULL, '2023-11-06 13:20:31', '2023-11-06 13:20:31'),
(656, 5, '2023-11-06 08:20:31', '2023-11-06 08:20:31', 0, NULL, '2023-11-06 13:20:31', '2023-11-06 13:20:31'),
(657, 1, '2023-11-06 08:30:25', '2023-11-06 08:30:25', 0, NULL, '2023-11-06 13:30:25', '2023-11-06 13:30:25'),
(658, 2, '2023-11-06 08:30:25', '2023-11-06 08:30:25', 0, NULL, '2023-11-06 13:30:25', '2023-11-06 13:30:25'),
(659, 3, '2023-11-06 08:30:25', '2023-11-06 08:30:25', 0, NULL, '2023-11-06 13:30:25', '2023-11-06 13:30:25'),
(660, 5, '2023-11-06 08:30:25', '2023-11-06 08:30:25', 0, NULL, '2023-11-06 13:30:25', '2023-11-06 13:30:25'),
(661, 1, '2023-11-06 08:40:26', '2023-11-06 08:40:26', 0, NULL, '2023-11-06 13:40:26', '2023-11-06 13:40:26'),
(662, 2, '2023-11-06 08:40:26', '2023-11-06 08:40:26', 0, NULL, '2023-11-06 13:40:26', '2023-11-06 13:40:26'),
(663, 3, '2023-11-06 08:40:26', '2023-11-06 08:40:26', 0, NULL, '2023-11-06 13:40:26', '2023-11-06 13:40:26'),
(664, 5, '2023-11-06 08:40:26', '2023-11-06 08:40:26', 0, NULL, '2023-11-06 13:40:26', '2023-11-06 13:40:26'),
(665, 1, '2023-11-06 08:50:39', '2023-11-06 08:50:39', 0, NULL, '2023-11-06 13:50:39', '2023-11-06 13:50:39'),
(666, 2, '2023-11-06 08:50:39', '2023-11-06 08:50:40', 0, NULL, '2023-11-06 13:50:40', '2023-11-06 13:50:40'),
(667, 3, '2023-11-06 08:50:40', '2023-11-06 08:50:40', 0, NULL, '2023-11-06 13:50:40', '2023-11-06 13:50:40'),
(668, 5, '2023-11-06 08:50:40', '2023-11-06 08:50:40', 0, NULL, '2023-11-06 13:50:40', '2023-11-06 13:50:40'),
(669, 1, '2023-11-06 09:00:47', '2023-11-06 09:00:47', 0, NULL, '2023-11-06 14:00:47', '2023-11-06 14:00:47'),
(670, 2, '2023-11-06 09:00:47', '2023-11-06 09:00:47', 0, NULL, '2023-11-06 14:00:47', '2023-11-06 14:00:47'),
(671, 3, '2023-11-06 09:00:47', '2023-11-06 09:00:47', 0, NULL, '2023-11-06 14:00:47', '2023-11-06 14:00:47'),
(672, 5, '2023-11-06 09:00:47', '2023-11-06 09:00:47', 0, NULL, '2023-11-06 14:00:47', '2023-11-06 14:00:47'),
(673, 1, '2023-11-06 09:10:04', '2023-11-06 09:10:04', 0, NULL, '2023-11-06 14:10:04', '2023-11-06 14:10:04'),
(674, 2, '2023-11-06 09:10:04', '2023-11-06 09:10:04', 0, NULL, '2023-11-06 14:10:04', '2023-11-06 14:10:04'),
(675, 3, '2023-11-06 09:10:04', '2023-11-06 09:10:04', 0, NULL, '2023-11-06 14:10:04', '2023-11-06 14:10:04'),
(676, 5, '2023-11-06 09:10:04', '2023-11-06 09:10:04', 0, NULL, '2023-11-06 14:10:04', '2023-11-06 14:10:04'),
(677, 1, '2023-11-06 09:15:26', '2023-11-06 09:15:26', 0, NULL, '2023-11-06 14:15:26', '2023-11-06 14:15:26'),
(678, 2, '2023-11-06 09:15:26', '2023-11-06 09:15:26', 0, NULL, '2023-11-06 14:15:26', '2023-11-06 14:15:26'),
(679, 3, '2023-11-06 09:15:26', '2023-11-06 09:15:26', 0, NULL, '2023-11-06 14:15:26', '2023-11-06 14:15:26'),
(680, 5, '2023-11-06 09:15:26', '2023-11-06 09:15:26', 0, NULL, '2023-11-06 14:15:26', '2023-11-06 14:15:26'),
(681, 1, '2023-11-06 09:20:46', '2023-11-06 09:20:46', 0, NULL, '2023-11-06 14:20:46', '2023-11-06 14:20:46'),
(682, 2, '2023-11-06 09:20:46', '2023-11-06 09:20:46', 0, NULL, '2023-11-06 14:20:46', '2023-11-06 14:20:46'),
(683, 3, '2023-11-06 09:20:46', '2023-11-06 09:20:46', 0, NULL, '2023-11-06 14:20:46', '2023-11-06 14:20:46'),
(684, 5, '2023-11-06 09:20:46', '2023-11-06 09:20:46', 0, NULL, '2023-11-06 14:20:46', '2023-11-06 14:20:46'),
(685, 1, '2023-11-06 09:30:10', '2023-11-06 09:30:10', 0, NULL, '2023-11-06 14:30:10', '2023-11-06 14:30:10'),
(686, 2, '2023-11-06 09:30:10', '2023-11-06 09:30:11', 0, NULL, '2023-11-06 14:30:11', '2023-11-06 14:30:11'),
(687, 3, '2023-11-06 09:30:11', '2023-11-06 09:30:11', 0, NULL, '2023-11-06 14:30:11', '2023-11-06 14:30:11'),
(688, 5, '2023-11-06 09:30:11', '2023-11-06 09:30:11', 0, NULL, '2023-11-06 14:30:11', '2023-11-06 14:30:11'),
(689, 1, '2023-11-06 09:35:28', '2023-11-06 09:35:28', 0, NULL, '2023-11-06 14:35:28', '2023-11-06 14:35:28'),
(690, 2, '2023-11-06 09:35:28', '2023-11-06 09:35:28', 0, NULL, '2023-11-06 14:35:28', '2023-11-06 14:35:28'),
(691, 3, '2023-11-06 09:35:28', '2023-11-06 09:35:28', 0, NULL, '2023-11-06 14:35:28', '2023-11-06 14:35:28'),
(692, 5, '2023-11-06 09:35:28', '2023-11-06 09:35:28', 0, NULL, '2023-11-06 14:35:28', '2023-11-06 14:35:28'),
(693, 1, '2023-11-06 09:40:34', '2023-11-06 09:40:34', 0, NULL, '2023-11-06 14:40:34', '2023-11-06 14:40:34'),
(694, 2, '2023-11-06 09:40:34', '2023-11-06 09:40:34', 0, NULL, '2023-11-06 14:40:34', '2023-11-06 14:40:34'),
(695, 3, '2023-11-06 09:40:34', '2023-11-06 09:40:34', 0, NULL, '2023-11-06 14:40:34', '2023-11-06 14:40:34'),
(696, 5, '2023-11-06 09:40:34', '2023-11-06 09:40:34', 0, NULL, '2023-11-06 14:40:34', '2023-11-06 14:40:34'),
(697, 1, '2023-11-06 09:50:18', '2023-11-06 09:50:18', 0, NULL, '2023-11-06 14:50:18', '2023-11-06 14:50:18'),
(698, 2, '2023-11-06 09:50:18', '2023-11-06 09:50:18', 0, NULL, '2023-11-06 14:50:18', '2023-11-06 14:50:18'),
(699, 3, '2023-11-06 09:50:18', '2023-11-06 09:50:18', 0, NULL, '2023-11-06 14:50:18', '2023-11-06 14:50:18'),
(700, 5, '2023-11-06 09:50:18', '2023-11-06 09:50:18', 0, NULL, '2023-11-06 14:50:18', '2023-11-06 14:50:18'),
(701, 1, '2023-11-06 10:00:39', '2023-11-06 10:00:39', 0, NULL, '2023-11-06 15:00:39', '2023-11-06 15:00:39'),
(702, 2, '2023-11-06 10:00:39', '2023-11-06 10:00:39', 0, NULL, '2023-11-06 15:00:39', '2023-11-06 15:00:39'),
(703, 3, '2023-11-06 10:00:39', '2023-11-06 10:00:39', 0, NULL, '2023-11-06 15:00:39', '2023-11-06 15:00:39'),
(704, 5, '2023-11-06 10:00:39', '2023-11-06 10:00:39', 0, NULL, '2023-11-06 15:00:39', '2023-11-06 15:00:39'),
(705, 1, '2023-11-06 10:10:22', '2023-11-06 10:10:22', 0, NULL, '2023-11-06 15:10:22', '2023-11-06 15:10:22'),
(706, 2, '2023-11-06 10:10:22', '2023-11-06 10:10:22', 0, NULL, '2023-11-06 15:10:22', '2023-11-06 15:10:22'),
(707, 3, '2023-11-06 10:10:22', '2023-11-06 10:10:22', 0, NULL, '2023-11-06 15:10:22', '2023-11-06 15:10:22'),
(708, 5, '2023-11-06 10:10:22', '2023-11-06 10:10:22', 0, NULL, '2023-11-06 15:10:22', '2023-11-06 15:10:22'),
(709, 1, '2023-11-06 10:20:28', '2023-11-06 10:20:28', 0, NULL, '2023-11-06 15:20:28', '2023-11-06 15:20:28'),
(710, 2, '2023-11-06 10:20:28', '2023-11-06 10:20:28', 0, NULL, '2023-11-06 15:20:28', '2023-11-06 15:20:28'),
(711, 3, '2023-11-06 10:20:28', '2023-11-06 10:20:28', 0, NULL, '2023-11-06 15:20:28', '2023-11-06 15:20:28'),
(712, 5, '2023-11-06 10:20:28', '2023-11-06 10:20:28', 0, NULL, '2023-11-06 15:20:28', '2023-11-06 15:20:28'),
(713, 1, '2023-11-06 10:25:50', '2023-11-06 10:25:50', 0, NULL, '2023-11-06 15:25:50', '2023-11-06 15:25:50'),
(714, 2, '2023-11-06 10:25:50', '2023-11-06 10:25:50', 0, NULL, '2023-11-06 15:25:50', '2023-11-06 15:25:50'),
(715, 3, '2023-11-06 10:25:50', '2023-11-06 10:25:50', 0, NULL, '2023-11-06 15:25:50', '2023-11-06 15:25:50'),
(716, 5, '2023-11-06 10:25:50', '2023-11-06 10:25:50', 0, NULL, '2023-11-06 15:25:50', '2023-11-06 15:25:50'),
(717, 1, '2023-11-06 10:35:46', '2023-11-06 10:35:46', 0, NULL, '2023-11-06 15:35:47', '2023-11-06 15:35:47'),
(718, 2, '2023-11-06 10:35:47', '2023-11-06 10:35:47', 0, NULL, '2023-11-06 15:35:47', '2023-11-06 15:35:47'),
(719, 3, '2023-11-06 10:35:47', '2023-11-06 10:35:47', 0, NULL, '2023-11-06 15:35:47', '2023-11-06 15:35:47'),
(720, 5, '2023-11-06 10:35:47', '2023-11-06 10:35:47', 0, NULL, '2023-11-06 15:35:47', '2023-11-06 15:35:47'),
(721, 1, '2023-11-06 10:45:25', '2023-11-06 10:45:25', 0, NULL, '2023-11-06 15:45:25', '2023-11-06 15:45:25'),
(722, 2, '2023-11-06 10:45:25', '2023-11-06 10:45:25', 0, NULL, '2023-11-06 15:45:25', '2023-11-06 15:45:25'),
(723, 3, '2023-11-06 10:45:25', '2023-11-06 10:45:25', 0, NULL, '2023-11-06 15:45:25', '2023-11-06 15:45:25'),
(724, 5, '2023-11-06 10:45:25', '2023-11-06 10:45:25', 0, NULL, '2023-11-06 15:45:25', '2023-11-06 15:45:25'),
(725, 1, '2023-11-06 10:55:12', '2023-11-06 10:55:12', 0, NULL, '2023-11-06 15:55:12', '2023-11-06 15:55:12'),
(726, 2, '2023-11-06 10:55:12', '2023-11-06 10:55:12', 0, NULL, '2023-11-06 15:55:12', '2023-11-06 15:55:12'),
(727, 3, '2023-11-06 10:55:12', '2023-11-06 10:55:12', 0, NULL, '2023-11-06 15:55:12', '2023-11-06 15:55:12'),
(728, 5, '2023-11-06 10:55:12', '2023-11-06 10:55:12', 0, NULL, '2023-11-06 15:55:12', '2023-11-06 15:55:12'),
(729, 1, '2023-11-06 11:00:37', '2023-11-06 11:00:37', 0, NULL, '2023-11-06 16:00:37', '2023-11-06 16:00:37'),
(730, 2, '2023-11-06 11:00:37', '2023-11-06 11:00:37', 0, NULL, '2023-11-06 16:00:37', '2023-11-06 16:00:37'),
(731, 3, '2023-11-06 11:00:37', '2023-11-06 11:00:37', 0, NULL, '2023-11-06 16:00:37', '2023-11-06 16:00:37'),
(732, 5, '2023-11-06 11:00:37', '2023-11-06 11:00:37', 0, NULL, '2023-11-06 16:00:37', '2023-11-06 16:00:37'),
(733, 1, '2023-11-06 11:10:37', '2023-11-06 11:10:37', 0, NULL, '2023-11-06 16:10:37', '2023-11-06 16:10:37'),
(734, 2, '2023-11-06 11:10:37', '2023-11-06 11:10:37', 0, NULL, '2023-11-06 16:10:37', '2023-11-06 16:10:37'),
(735, 3, '2023-11-06 11:10:37', '2023-11-06 11:10:37', 0, NULL, '2023-11-06 16:10:37', '2023-11-06 16:10:37'),
(736, 5, '2023-11-06 11:10:37', '2023-11-06 11:10:37', 0, NULL, '2023-11-06 16:10:37', '2023-11-06 16:10:37'),
(737, 1, '2023-11-06 11:20:18', '2023-11-06 11:20:18', 0, NULL, '2023-11-06 16:20:18', '2023-11-06 16:20:18'),
(738, 2, '2023-11-06 11:20:18', '2023-11-06 11:20:18', 0, NULL, '2023-11-06 16:20:18', '2023-11-06 16:20:18'),
(739, 3, '2023-11-06 11:20:18', '2023-11-06 11:20:18', 0, NULL, '2023-11-06 16:20:18', '2023-11-06 16:20:18'),
(740, 5, '2023-11-06 11:20:18', '2023-11-06 11:20:18', 0, NULL, '2023-11-06 16:20:18', '2023-11-06 16:20:18'),
(741, 1, '2023-11-06 11:30:35', '2023-11-06 11:30:35', 0, NULL, '2023-11-06 16:30:35', '2023-11-06 16:30:35'),
(742, 2, '2023-11-06 11:30:35', '2023-11-06 11:30:35', 0, NULL, '2023-11-06 16:30:35', '2023-11-06 16:30:35'),
(743, 3, '2023-11-06 11:30:35', '2023-11-06 11:30:35', 0, NULL, '2023-11-06 16:30:35', '2023-11-06 16:30:35'),
(744, 5, '2023-11-06 11:30:35', '2023-11-06 11:30:35', 0, NULL, '2023-11-06 16:30:35', '2023-11-06 16:30:35'),
(745, 1, '2023-11-06 11:40:08', '2023-11-06 11:40:08', 0, NULL, '2023-11-06 16:40:08', '2023-11-06 16:40:08'),
(746, 2, '2023-11-06 11:40:08', '2023-11-06 11:40:08', 0, NULL, '2023-11-06 16:40:08', '2023-11-06 16:40:08'),
(747, 3, '2023-11-06 11:40:08', '2023-11-06 11:40:08', 0, NULL, '2023-11-06 16:40:08', '2023-11-06 16:40:08'),
(748, 5, '2023-11-06 11:40:08', '2023-11-06 11:40:08', 0, NULL, '2023-11-06 16:40:08', '2023-11-06 16:40:08'),
(749, 1, '2023-11-06 11:45:25', '2023-11-06 11:45:25', 0, NULL, '2023-11-06 16:45:25', '2023-11-06 16:45:25'),
(750, 2, '2023-11-06 11:45:25', '2023-11-06 11:45:26', 0, NULL, '2023-11-06 16:45:26', '2023-11-06 16:45:26'),
(751, 3, '2023-11-06 11:45:26', '2023-11-06 11:45:26', 0, NULL, '2023-11-06 16:45:26', '2023-11-06 16:45:26'),
(752, 5, '2023-11-06 11:45:26', '2023-11-06 11:45:26', 0, NULL, '2023-11-06 16:45:26', '2023-11-06 16:45:26'),
(753, 1, '2023-11-06 11:50:45', '2023-11-06 11:50:45', 0, NULL, '2023-11-06 16:50:45', '2023-11-06 16:50:45'),
(754, 2, '2023-11-06 11:50:45', '2023-11-06 11:50:45', 0, NULL, '2023-11-06 16:50:45', '2023-11-06 16:50:45'),
(755, 3, '2023-11-06 11:50:45', '2023-11-06 11:50:45', 0, NULL, '2023-11-06 16:50:45', '2023-11-06 16:50:45'),
(756, 5, '2023-11-06 11:50:45', '2023-11-06 11:50:45', 0, NULL, '2023-11-06 16:50:45', '2023-11-06 16:50:45'),
(757, 1, '2023-11-06 12:00:20', '2023-11-06 12:00:20', 0, NULL, '2023-11-06 17:00:20', '2023-11-06 17:00:20'),
(758, 2, '2023-11-06 12:00:20', '2023-11-06 12:00:20', 0, NULL, '2023-11-06 17:00:20', '2023-11-06 17:00:20'),
(759, 3, '2023-11-06 12:00:20', '2023-11-06 12:00:20', 0, NULL, '2023-11-06 17:00:20', '2023-11-06 17:00:20'),
(760, 5, '2023-11-06 12:00:20', '2023-11-06 12:00:20', 0, NULL, '2023-11-06 17:00:20', '2023-11-06 17:00:20'),
(761, 1, '2023-11-06 12:10:16', '2023-11-06 12:10:16', 0, NULL, '2023-11-06 17:10:16', '2023-11-06 17:10:16'),
(762, 2, '2023-11-06 12:10:16', '2023-11-06 12:10:16', 0, NULL, '2023-11-06 17:10:16', '2023-11-06 17:10:16'),
(763, 3, '2023-11-06 12:10:16', '2023-11-06 12:10:16', 0, NULL, '2023-11-06 17:10:16', '2023-11-06 17:10:16'),
(764, 5, '2023-11-06 12:10:16', '2023-11-06 12:10:16', 0, NULL, '2023-11-06 17:10:16', '2023-11-06 17:10:16'),
(765, 1, '2023-11-06 12:15:41', '2023-11-06 12:15:41', 0, NULL, '2023-11-06 17:15:41', '2023-11-06 17:15:41'),
(766, 2, '2023-11-06 12:15:41', '2023-11-06 12:15:41', 0, NULL, '2023-11-06 17:15:41', '2023-11-06 17:15:41'),
(767, 3, '2023-11-06 12:15:41', '2023-11-06 12:15:41', 0, NULL, '2023-11-06 17:15:41', '2023-11-06 17:15:41'),
(768, 5, '2023-11-06 12:15:41', '2023-11-06 12:15:41', 0, NULL, '2023-11-06 17:15:41', '2023-11-06 17:15:41'),
(769, 1, '2023-11-06 12:25:34', '2023-11-06 12:25:34', 0, NULL, '2023-11-06 17:25:34', '2023-11-06 17:25:34'),
(770, 2, '2023-11-06 12:25:34', '2023-11-06 12:25:34', 0, NULL, '2023-11-06 17:25:34', '2023-11-06 17:25:34'),
(771, 3, '2023-11-06 12:25:34', '2023-11-06 12:25:34', 0, NULL, '2023-11-06 17:25:34', '2023-11-06 17:25:34'),
(772, 5, '2023-11-06 12:25:34', '2023-11-06 12:25:34', 0, NULL, '2023-11-06 17:25:34', '2023-11-06 17:25:34'),
(773, 1, '2023-11-06 12:35:32', '2023-11-06 12:35:32', 0, NULL, '2023-11-06 17:35:32', '2023-11-06 17:35:32'),
(774, 2, '2023-11-06 12:35:32', '2023-11-06 12:35:32', 0, NULL, '2023-11-06 17:35:32', '2023-11-06 17:35:32'),
(775, 3, '2023-11-06 12:35:32', '2023-11-06 12:35:32', 0, NULL, '2023-11-06 17:35:32', '2023-11-06 17:35:32'),
(776, 5, '2023-11-06 12:35:32', '2023-11-06 12:35:32', 0, NULL, '2023-11-06 17:35:32', '2023-11-06 17:35:32'),
(777, 1, '2023-11-06 12:45:26', '2023-11-06 12:45:26', 0, NULL, '2023-11-06 17:45:26', '2023-11-06 17:45:26'),
(778, 2, '2023-11-06 12:45:26', '2023-11-06 12:45:27', 0, NULL, '2023-11-06 17:45:27', '2023-11-06 17:45:27'),
(779, 3, '2023-11-06 12:45:27', '2023-11-06 12:45:27', 0, NULL, '2023-11-06 17:45:27', '2023-11-06 17:45:27'),
(780, 5, '2023-11-06 12:45:27', '2023-11-06 12:45:27', 0, NULL, '2023-11-06 17:45:27', '2023-11-06 17:45:27'),
(781, 1, '2023-11-06 12:55:43', '2023-11-06 12:55:43', 0, NULL, '2023-11-06 17:55:43', '2023-11-06 17:55:43'),
(782, 2, '2023-11-06 12:55:43', '2023-11-06 12:55:44', 0, NULL, '2023-11-06 17:55:44', '2023-11-06 17:55:44'),
(783, 3, '2023-11-06 12:55:44', '2023-11-06 12:55:44', 0, NULL, '2023-11-06 17:55:44', '2023-11-06 17:55:44'),
(784, 5, '2023-11-06 12:55:44', '2023-11-06 12:55:44', 0, NULL, '2023-11-06 17:55:44', '2023-11-06 17:55:44'),
(785, 1, '2023-11-06 13:05:17', '2023-11-06 13:05:17', 0, NULL, '2023-11-06 18:05:17', '2023-11-06 18:05:17'),
(786, 2, '2023-11-06 13:05:17', '2023-11-06 13:05:17', 0, NULL, '2023-11-06 18:05:17', '2023-11-06 18:05:17'),
(787, 3, '2023-11-06 13:05:17', '2023-11-06 13:05:17', 0, NULL, '2023-11-06 18:05:17', '2023-11-06 18:05:17'),
(788, 5, '2023-11-06 13:05:17', '2023-11-06 13:05:17', 0, NULL, '2023-11-06 18:05:17', '2023-11-06 18:05:17'),
(789, 1, '2023-11-06 13:15:45', '2023-11-06 13:15:45', 0, NULL, '2023-11-06 18:15:45', '2023-11-06 18:15:45'),
(790, 2, '2023-11-06 13:15:45', '2023-11-06 13:15:45', 0, NULL, '2023-11-06 18:15:45', '2023-11-06 18:15:45'),
(791, 3, '2023-11-06 13:15:45', '2023-11-06 13:15:45', 0, NULL, '2023-11-06 18:15:45', '2023-11-06 18:15:45'),
(792, 5, '2023-11-06 13:15:45', '2023-11-06 13:15:45', 0, NULL, '2023-11-06 18:15:45', '2023-11-06 18:15:45'),
(793, 1, '2023-11-06 13:25:20', '2023-11-06 13:25:20', 0, NULL, '2023-11-06 18:25:20', '2023-11-06 18:25:20'),
(794, 2, '2023-11-06 13:25:20', '2023-11-06 13:25:20', 0, NULL, '2023-11-06 18:25:20', '2023-11-06 18:25:20'),
(795, 3, '2023-11-06 13:25:20', '2023-11-06 13:25:21', 0, NULL, '2023-11-06 18:25:21', '2023-11-06 18:25:21'),
(796, 5, '2023-11-06 13:25:21', '2023-11-06 13:25:21', 0, NULL, '2023-11-06 18:25:21', '2023-11-06 18:25:21'),
(797, 1, '2023-11-06 13:30:43', '2023-11-06 13:30:43', 0, NULL, '2023-11-06 18:30:43', '2023-11-06 18:30:43'),
(798, 2, '2023-11-06 13:30:43', '2023-11-06 13:30:44', 0, NULL, '2023-11-06 18:30:44', '2023-11-06 18:30:44'),
(799, 3, '2023-11-06 13:30:44', '2023-11-06 13:30:44', 0, NULL, '2023-11-06 18:30:44', '2023-11-06 18:30:44'),
(800, 5, '2023-11-06 13:30:44', '2023-11-06 13:30:44', 0, NULL, '2023-11-06 18:30:44', '2023-11-06 18:30:44'),
(801, 1, '2023-11-06 13:35:50', '2023-11-06 13:35:50', 0, NULL, '2023-11-06 18:35:50', '2023-11-06 18:35:50'),
(802, 2, '2023-11-06 13:35:50', '2023-11-06 13:35:50', 0, NULL, '2023-11-06 18:35:50', '2023-11-06 18:35:50'),
(803, 3, '2023-11-06 13:35:50', '2023-11-06 13:35:50', 0, NULL, '2023-11-06 18:35:50', '2023-11-06 18:35:50'),
(804, 5, '2023-11-06 13:35:50', '2023-11-06 13:35:50', 0, NULL, '2023-11-06 18:35:50', '2023-11-06 18:35:50'),
(805, 1, '2023-11-06 13:45:42', '2023-11-06 13:45:42', 0, NULL, '2023-11-06 18:45:42', '2023-11-06 18:45:42'),
(806, 2, '2023-11-06 13:45:42', '2023-11-06 13:45:42', 0, NULL, '2023-11-06 18:45:42', '2023-11-06 18:45:42'),
(807, 3, '2023-11-06 13:45:42', '2023-11-06 13:45:42', 0, NULL, '2023-11-06 18:45:42', '2023-11-06 18:45:42'),
(808, 5, '2023-11-06 13:45:42', '2023-11-06 13:45:42', 0, NULL, '2023-11-06 18:45:42', '2023-11-06 18:45:42'),
(809, 1, '2023-11-06 13:55:08', '2023-11-06 13:55:08', 0, NULL, '2023-11-06 18:55:08', '2023-11-06 18:55:08'),
(810, 2, '2023-11-06 13:55:08', '2023-11-06 13:55:09', 0, NULL, '2023-11-06 18:55:09', '2023-11-06 18:55:09'),
(811, 3, '2023-11-06 13:55:09', '2023-11-06 13:55:09', 0, NULL, '2023-11-06 18:55:09', '2023-11-06 18:55:09'),
(812, 5, '2023-11-06 13:55:09', '2023-11-06 13:55:09', 0, NULL, '2023-11-06 18:55:09', '2023-11-06 18:55:09'),
(813, 1, '2023-11-06 14:00:38', '2023-11-06 14:00:38', 0, NULL, '2023-11-06 19:00:38', '2023-11-06 19:00:38'),
(814, 2, '2023-11-06 14:00:38', '2023-11-06 14:00:39', 0, NULL, '2023-11-06 19:00:39', '2023-11-06 19:00:39'),
(815, 3, '2023-11-06 14:00:39', '2023-11-06 14:00:39', 0, NULL, '2023-11-06 19:00:39', '2023-11-06 19:00:39'),
(816, 5, '2023-11-06 14:00:39', '2023-11-06 14:00:39', 0, NULL, '2023-11-06 19:00:39', '2023-11-06 19:00:39'),
(817, 1, '2023-11-06 14:10:29', '2023-11-06 14:10:29', 0, NULL, '2023-11-06 19:10:29', '2023-11-06 19:10:29'),
(818, 2, '2023-11-06 14:10:29', '2023-11-06 14:10:29', 0, NULL, '2023-11-06 19:10:29', '2023-11-06 19:10:29'),
(819, 3, '2023-11-06 14:10:29', '2023-11-06 14:10:29', 0, NULL, '2023-11-06 19:10:29', '2023-11-06 19:10:29'),
(820, 5, '2023-11-06 14:10:29', '2023-11-06 14:10:29', 0, NULL, '2023-11-06 19:10:29', '2023-11-06 19:10:29'),
(821, 1, '2023-11-06 14:15:50', '2023-11-06 14:15:50', 0, NULL, '2023-11-06 19:15:50', '2023-11-06 19:15:50'),
(822, 2, '2023-11-06 14:15:50', '2023-11-06 14:15:50', 0, NULL, '2023-11-06 19:15:50', '2023-11-06 19:15:50'),
(823, 3, '2023-11-06 14:15:50', '2023-11-06 14:15:50', 0, NULL, '2023-11-06 19:15:50', '2023-11-06 19:15:50'),
(824, 5, '2023-11-06 14:15:50', '2023-11-06 14:15:50', 0, NULL, '2023-11-06 19:15:50', '2023-11-06 19:15:50'),
(825, 1, '2023-11-06 14:25:43', '2023-11-06 14:25:43', 0, NULL, '2023-11-06 19:25:43', '2023-11-06 19:25:43'),
(826, 2, '2023-11-06 14:25:43', '2023-11-06 14:25:43', 0, NULL, '2023-11-06 19:25:43', '2023-11-06 19:25:43'),
(827, 3, '2023-11-06 14:25:43', '2023-11-06 14:25:43', 0, NULL, '2023-11-06 19:25:43', '2023-11-06 19:25:43'),
(828, 5, '2023-11-06 14:25:43', '2023-11-06 14:25:43', 0, NULL, '2023-11-06 19:25:43', '2023-11-06 19:25:43'),
(829, 1, '2023-11-06 14:35:02', '2023-11-06 14:35:02', 0, NULL, '2023-11-06 19:35:02', '2023-11-06 19:35:02'),
(830, 2, '2023-11-06 14:35:02', '2023-11-06 14:35:02', 0, NULL, '2023-11-06 19:35:02', '2023-11-06 19:35:02'),
(831, 3, '2023-11-06 14:35:02', '2023-11-06 14:35:02', 0, NULL, '2023-11-06 19:35:02', '2023-11-06 19:35:02'),
(832, 5, '2023-11-06 14:35:02', '2023-11-06 14:35:02', 0, NULL, '2023-11-06 19:35:02', '2023-11-06 19:35:02'),
(833, 1, '2023-11-06 14:40:23', '2023-11-06 14:40:23', 0, NULL, '2023-11-06 19:40:23', '2023-11-06 19:40:23'),
(834, 2, '2023-11-06 14:40:23', '2023-11-06 14:40:24', 0, NULL, '2023-11-06 19:40:24', '2023-11-06 19:40:24'),
(835, 3, '2023-11-06 14:40:24', '2023-11-06 14:40:24', 0, NULL, '2023-11-06 19:40:24', '2023-11-06 19:40:24'),
(836, 5, '2023-11-06 14:40:24', '2023-11-06 14:40:24', 0, NULL, '2023-11-06 19:40:24', '2023-11-06 19:40:24'),
(837, 1, '2023-11-06 14:45:37', '2023-11-06 14:45:37', 0, NULL, '2023-11-06 19:45:37', '2023-11-06 19:45:37'),
(838, 2, '2023-11-06 14:45:37', '2023-11-06 14:45:37', 0, NULL, '2023-11-06 19:45:37', '2023-11-06 19:45:37'),
(839, 3, '2023-11-06 14:45:37', '2023-11-06 14:45:37', 0, NULL, '2023-11-06 19:45:37', '2023-11-06 19:45:37'),
(840, 5, '2023-11-06 14:45:37', '2023-11-06 14:45:37', 0, NULL, '2023-11-06 19:45:37', '2023-11-06 19:45:37'),
(841, 1, '2023-11-06 14:55:38', '2023-11-06 14:55:38', 0, NULL, '2023-11-06 19:55:38', '2023-11-06 19:55:38'),
(842, 2, '2023-11-06 14:55:38', '2023-11-06 14:55:38', 0, NULL, '2023-11-06 19:55:38', '2023-11-06 19:55:38'),
(843, 3, '2023-11-06 14:55:38', '2023-11-06 14:55:38', 0, NULL, '2023-11-06 19:55:38', '2023-11-06 19:55:38'),
(844, 5, '2023-11-06 14:55:38', '2023-11-06 14:55:38', 0, NULL, '2023-11-06 19:55:38', '2023-11-06 19:55:38'),
(845, 1, '2023-11-06 15:00:45', '2023-11-06 15:00:45', 0, NULL, '2023-11-06 20:00:45', '2023-11-06 20:00:45'),
(846, 2, '2023-11-06 15:00:45', '2023-11-06 15:00:45', 0, NULL, '2023-11-06 20:00:45', '2023-11-06 20:00:45'),
(847, 3, '2023-11-06 15:00:45', '2023-11-06 15:00:45', 0, NULL, '2023-11-06 20:00:45', '2023-11-06 20:00:45'),
(848, 5, '2023-11-06 15:00:45', '2023-11-06 15:00:45', 0, NULL, '2023-11-06 20:00:45', '2023-11-06 20:00:45'),
(849, 1, '2023-11-06 15:10:10', '2023-11-06 15:10:10', 0, NULL, '2023-11-06 20:10:10', '2023-11-06 20:10:10'),
(850, 2, '2023-11-06 15:10:10', '2023-11-06 15:10:10', 0, NULL, '2023-11-06 20:10:10', '2023-11-06 20:10:10'),
(851, 3, '2023-11-06 15:10:10', '2023-11-06 15:10:10', 0, NULL, '2023-11-06 20:10:10', '2023-11-06 20:10:10'),
(852, 5, '2023-11-06 15:10:10', '2023-11-06 15:10:10', 0, NULL, '2023-11-06 20:10:10', '2023-11-06 20:10:10'),
(853, 1, '2023-11-06 15:15:35', '2023-11-06 15:15:35', 0, NULL, '2023-11-06 20:15:35', '2023-11-06 20:15:35'),
(854, 2, '2023-11-06 15:15:35', '2023-11-06 15:15:36', 0, NULL, '2023-11-06 20:15:36', '2023-11-06 20:15:36'),
(855, 3, '2023-11-06 15:15:36', '2023-11-06 15:15:36', 0, NULL, '2023-11-06 20:15:36', '2023-11-06 20:15:36'),
(856, 5, '2023-11-06 15:15:36', '2023-11-06 15:15:36', 0, NULL, '2023-11-06 20:15:36', '2023-11-06 20:15:36'),
(857, 1, '2023-11-06 15:25:36', '2023-11-06 15:25:36', 0, NULL, '2023-11-06 20:25:36', '2023-11-06 20:25:36'),
(858, 2, '2023-11-06 15:25:36', '2023-11-06 15:25:37', 0, NULL, '2023-11-06 20:25:37', '2023-11-06 20:25:37'),
(859, 3, '2023-11-06 15:25:37', '2023-11-06 15:25:37', 0, NULL, '2023-11-06 20:25:37', '2023-11-06 20:25:37'),
(860, 5, '2023-11-06 15:25:37', '2023-11-06 15:25:37', 0, NULL, '2023-11-06 20:25:37', '2023-11-06 20:25:37'),
(861, 1, '2023-11-06 15:35:39', '2023-11-06 15:35:39', 0, NULL, '2023-11-06 20:35:39', '2023-11-06 20:35:39'),
(862, 2, '2023-11-06 15:35:39', '2023-11-06 15:35:39', 0, NULL, '2023-11-06 20:35:39', '2023-11-06 20:35:39'),
(863, 3, '2023-11-06 15:35:39', '2023-11-06 15:35:39', 0, NULL, '2023-11-06 20:35:39', '2023-11-06 20:35:39'),
(864, 5, '2023-11-06 15:35:39', '2023-11-06 15:35:39', 0, NULL, '2023-11-06 20:35:39', '2023-11-06 20:35:39'),
(865, 1, '2023-11-06 15:40:42', '2023-11-06 15:40:42', 0, NULL, '2023-11-06 20:40:42', '2023-11-06 20:40:42'),
(866, 2, '2023-11-06 15:40:42', '2023-11-06 15:40:43', 0, NULL, '2023-11-06 20:40:43', '2023-11-06 20:40:43'),
(867, 3, '2023-11-06 15:40:43', '2023-11-06 15:40:43', 0, NULL, '2023-11-06 20:40:43', '2023-11-06 20:40:43'),
(868, 5, '2023-11-06 15:40:43', '2023-11-06 15:40:43', 0, NULL, '2023-11-06 20:40:43', '2023-11-06 20:40:43'),
(869, 1, '2023-11-06 15:50:03', '2023-11-06 15:50:03', 0, NULL, '2023-11-06 20:50:03', '2023-11-06 20:50:03'),
(870, 2, '2023-11-06 15:50:03', '2023-11-06 15:50:03', 0, NULL, '2023-11-06 20:50:03', '2023-11-06 20:50:03'),
(871, 3, '2023-11-06 15:50:03', '2023-11-06 15:50:03', 0, NULL, '2023-11-06 20:50:03', '2023-11-06 20:50:03'),
(872, 5, '2023-11-06 15:50:03', '2023-11-06 15:50:03', 0, NULL, '2023-11-06 20:50:03', '2023-11-06 20:50:03'),
(873, 1, '2023-11-06 15:55:24', '2023-11-06 15:55:24', 0, NULL, '2023-11-06 20:55:24', '2023-11-06 20:55:24'),
(874, 2, '2023-11-06 15:55:24', '2023-11-06 15:55:24', 0, NULL, '2023-11-06 20:55:24', '2023-11-06 20:55:24'),
(875, 3, '2023-11-06 15:55:24', '2023-11-06 15:55:24', 0, NULL, '2023-11-06 20:55:24', '2023-11-06 20:55:24'),
(876, 5, '2023-11-06 15:55:24', '2023-11-06 15:55:24', 0, NULL, '2023-11-06 20:55:24', '2023-11-06 20:55:24'),
(877, 1, '2023-11-06 16:00:43', '2023-11-06 16:00:43', 0, NULL, '2023-11-06 21:00:43', '2023-11-06 21:00:43'),
(878, 2, '2023-11-06 16:00:43', '2023-11-06 16:00:43', 0, NULL, '2023-11-06 21:00:43', '2023-11-06 21:00:43'),
(879, 3, '2023-11-06 16:00:43', '2023-11-06 16:00:43', 0, NULL, '2023-11-06 21:00:43', '2023-11-06 21:00:43'),
(880, 5, '2023-11-06 16:00:43', '2023-11-06 16:00:43', 0, NULL, '2023-11-06 21:00:43', '2023-11-06 21:00:43'),
(881, 1, '2023-11-06 16:10:09', '2023-11-06 16:10:09', 0, NULL, '2023-11-06 21:10:09', '2023-11-06 21:10:09'),
(882, 2, '2023-11-06 16:10:09', '2023-11-06 16:10:09', 0, NULL, '2023-11-06 21:10:09', '2023-11-06 21:10:09'),
(883, 3, '2023-11-06 16:10:09', '2023-11-06 16:10:09', 0, NULL, '2023-11-06 21:10:09', '2023-11-06 21:10:09'),
(884, 5, '2023-11-06 16:10:09', '2023-11-06 16:10:09', 0, NULL, '2023-11-06 21:10:09', '2023-11-06 21:10:09'),
(885, 1, '2023-11-06 16:15:18', '2023-11-06 16:15:18', 0, NULL, '2023-11-06 21:15:18', '2023-11-06 21:15:18'),
(886, 2, '2023-11-06 16:15:18', '2023-11-06 16:15:18', 0, NULL, '2023-11-06 21:15:18', '2023-11-06 21:15:18'),
(887, 3, '2023-11-06 16:15:18', '2023-11-06 16:15:18', 0, NULL, '2023-11-06 21:15:18', '2023-11-06 21:15:18'),
(888, 5, '2023-11-06 16:15:18', '2023-11-06 16:15:18', 0, NULL, '2023-11-06 21:15:18', '2023-11-06 21:15:18'),
(889, 1, '2023-11-06 16:20:39', '2023-11-06 16:20:39', 0, NULL, '2023-11-06 21:20:39', '2023-11-06 21:20:39'),
(890, 2, '2023-11-06 16:20:39', '2023-11-06 16:20:39', 0, NULL, '2023-11-06 21:20:39', '2023-11-06 21:20:39'),
(891, 3, '2023-11-06 16:20:39', '2023-11-06 16:20:39', 0, NULL, '2023-11-06 21:20:39', '2023-11-06 21:20:39'),
(892, 5, '2023-11-06 16:20:39', '2023-11-06 16:20:39', 0, NULL, '2023-11-06 21:20:39', '2023-11-06 21:20:39'),
(893, 1, '2023-11-06 16:30:11', '2023-11-06 16:30:11', 0, NULL, '2023-11-06 21:30:11', '2023-11-06 21:30:11'),
(894, 2, '2023-11-06 16:30:11', '2023-11-06 16:30:12', 0, NULL, '2023-11-06 21:30:12', '2023-11-06 21:30:12'),
(895, 3, '2023-11-06 16:30:12', '2023-11-06 16:30:12', 0, NULL, '2023-11-06 21:30:12', '2023-11-06 21:30:12'),
(896, 5, '2023-11-06 16:30:12', '2023-11-06 16:30:12', 0, NULL, '2023-11-06 21:30:12', '2023-11-06 21:30:12'),
(897, 1, '2023-11-06 16:35:36', '2023-11-06 16:35:36', 0, NULL, '2023-11-06 21:35:36', '2023-11-06 21:35:36'),
(898, 2, '2023-11-06 16:35:36', '2023-11-06 16:35:36', 0, NULL, '2023-11-06 21:35:36', '2023-11-06 21:35:36'),
(899, 3, '2023-11-06 16:35:36', '2023-11-06 16:35:36', 0, NULL, '2023-11-06 21:35:36', '2023-11-06 21:35:36'),
(900, 5, '2023-11-06 16:35:36', '2023-11-06 16:35:36', 0, NULL, '2023-11-06 21:35:36', '2023-11-06 21:35:36'),
(901, 1, '2023-11-06 16:45:31', '2023-11-06 16:45:31', 0, NULL, '2023-11-06 21:45:31', '2023-11-06 21:45:31'),
(902, 2, '2023-11-06 16:45:31', '2023-11-06 16:45:32', 0, NULL, '2023-11-06 21:45:32', '2023-11-06 21:45:32'),
(903, 3, '2023-11-06 16:45:32', '2023-11-06 16:45:32', 0, NULL, '2023-11-06 21:45:32', '2023-11-06 21:45:32'),
(904, 5, '2023-11-06 16:45:32', '2023-11-06 16:45:32', 0, NULL, '2023-11-06 21:45:32', '2023-11-06 21:45:32'),
(905, 1, '2023-11-06 16:55:26', '2023-11-06 16:55:26', 0, NULL, '2023-11-06 21:55:26', '2023-11-06 21:55:26'),
(906, 2, '2023-11-06 16:55:26', '2023-11-06 16:55:26', 0, NULL, '2023-11-06 21:55:26', '2023-11-06 21:55:26'),
(907, 3, '2023-11-06 16:55:26', '2023-11-06 16:55:26', 0, NULL, '2023-11-06 21:55:26', '2023-11-06 21:55:26'),
(908, 5, '2023-11-06 16:55:26', '2023-11-06 16:55:26', 0, NULL, '2023-11-06 21:55:26', '2023-11-06 21:55:26'),
(909, 1, '2023-11-06 17:00:45', '2023-11-06 17:00:45', 0, NULL, '2023-11-06 22:00:45', '2023-11-06 22:00:45'),
(910, 2, '2023-11-06 17:00:45', '2023-11-06 17:00:45', 0, NULL, '2023-11-06 22:00:45', '2023-11-06 22:00:45'),
(911, 3, '2023-11-06 17:00:45', '2023-11-06 17:00:45', 0, NULL, '2023-11-06 22:00:45', '2023-11-06 22:00:45'),
(912, 5, '2023-11-06 17:00:45', '2023-11-06 17:00:45', 0, NULL, '2023-11-06 22:00:45', '2023-11-06 22:00:45'),
(913, 1, '2023-11-06 17:10:20', '2023-11-06 17:10:20', 0, NULL, '2023-11-06 22:10:20', '2023-11-06 22:10:20'),
(914, 2, '2023-11-06 17:10:20', '2023-11-06 17:10:21', 0, NULL, '2023-11-06 22:10:21', '2023-11-06 22:10:21'),
(915, 3, '2023-11-06 17:10:21', '2023-11-06 17:10:21', 0, NULL, '2023-11-06 22:10:21', '2023-11-06 22:10:21');
INSERT INTO `cron_job_logs` (`id`, `cron_job_id`, `start_at`, `end_at`, `duration`, `error`, `created_at`, `updated_at`) VALUES
(916, 5, '2023-11-06 17:10:21', '2023-11-06 17:10:21', 0, NULL, '2023-11-06 22:10:21', '2023-11-06 22:10:21'),
(917, 1, '2023-11-06 17:20:05', '2023-11-06 17:20:05', 0, NULL, '2023-11-06 22:20:05', '2023-11-06 22:20:05'),
(918, 2, '2023-11-06 17:20:05', '2023-11-06 17:20:05', 0, NULL, '2023-11-06 22:20:05', '2023-11-06 22:20:05'),
(919, 3, '2023-11-06 17:20:05', '2023-11-06 17:20:05', 0, NULL, '2023-11-06 22:20:05', '2023-11-06 22:20:05'),
(920, 5, '2023-11-06 17:20:05', '2023-11-06 17:20:05', 0, NULL, '2023-11-06 22:20:05', '2023-11-06 22:20:05'),
(921, 1, '2023-11-06 17:25:08', '2023-11-06 17:25:08', 0, NULL, '2023-11-06 22:25:08', '2023-11-06 22:25:08'),
(922, 2, '2023-11-06 17:25:08', '2023-11-06 17:25:08', 0, NULL, '2023-11-06 22:25:08', '2023-11-06 22:25:08'),
(923, 3, '2023-11-06 17:25:08', '2023-11-06 17:25:08', 0, NULL, '2023-11-06 22:25:08', '2023-11-06 22:25:08'),
(924, 5, '2023-11-06 17:25:08', '2023-11-06 17:25:08', 0, NULL, '2023-11-06 22:25:08', '2023-11-06 22:25:08'),
(925, 1, '2023-11-06 17:30:45', '2023-11-06 17:30:45', 0, NULL, '2023-11-06 22:30:45', '2023-11-06 22:30:45'),
(926, 2, '2023-11-06 17:30:45', '2023-11-06 17:30:45', 0, NULL, '2023-11-06 22:30:45', '2023-11-06 22:30:45'),
(927, 3, '2023-11-06 17:30:45', '2023-11-06 17:30:45', 0, NULL, '2023-11-06 22:30:45', '2023-11-06 22:30:45'),
(928, 5, '2023-11-06 17:30:45', '2023-11-06 17:30:45', 0, NULL, '2023-11-06 22:30:45', '2023-11-06 22:30:45'),
(929, 1, '2023-11-06 17:40:26', '2023-11-06 17:40:26', 0, NULL, '2023-11-06 22:40:26', '2023-11-06 22:40:26'),
(930, 2, '2023-11-06 17:40:26', '2023-11-06 17:40:27', 0, NULL, '2023-11-06 22:40:27', '2023-11-06 22:40:27'),
(931, 3, '2023-11-06 17:40:27', '2023-11-06 17:40:27', 0, NULL, '2023-11-06 22:40:27', '2023-11-06 22:40:27'),
(932, 5, '2023-11-06 17:40:27', '2023-11-06 17:40:27', 0, NULL, '2023-11-06 22:40:27', '2023-11-06 22:40:27'),
(933, 1, '2023-11-06 17:45:44', '2023-11-06 17:45:44', 0, NULL, '2023-11-06 22:45:44', '2023-11-06 22:45:44'),
(934, 2, '2023-11-06 17:45:44', '2023-11-06 17:45:44', 0, NULL, '2023-11-06 22:45:44', '2023-11-06 22:45:44'),
(935, 3, '2023-11-06 17:45:44', '2023-11-06 17:45:44', 0, NULL, '2023-11-06 22:45:44', '2023-11-06 22:45:44'),
(936, 5, '2023-11-06 17:45:44', '2023-11-06 17:45:44', 0, NULL, '2023-11-06 22:45:44', '2023-11-06 22:45:44'),
(937, 1, '2023-11-06 17:55:34', '2023-11-06 17:55:34', 0, NULL, '2023-11-06 22:55:34', '2023-11-06 22:55:34'),
(938, 2, '2023-11-06 17:55:34', '2023-11-06 17:55:34', 0, NULL, '2023-11-06 22:55:34', '2023-11-06 22:55:34'),
(939, 3, '2023-11-06 17:55:34', '2023-11-06 17:55:34', 0, NULL, '2023-11-06 22:55:34', '2023-11-06 22:55:34'),
(940, 5, '2023-11-06 17:55:34', '2023-11-06 17:55:34', 0, NULL, '2023-11-06 22:55:34', '2023-11-06 22:55:34'),
(941, 1, '2023-11-06 18:00:37', '2023-11-06 18:00:37', 0, NULL, '2023-11-06 23:00:37', '2023-11-06 23:00:37'),
(942, 2, '2023-11-06 18:00:37', '2023-11-06 18:00:37', 0, NULL, '2023-11-06 23:00:37', '2023-11-06 23:00:37'),
(943, 3, '2023-11-06 18:00:37', '2023-11-06 18:00:37', 0, NULL, '2023-11-06 23:00:37', '2023-11-06 23:00:37'),
(944, 5, '2023-11-06 18:00:37', '2023-11-06 18:00:37', 0, NULL, '2023-11-06 23:00:37', '2023-11-06 23:00:37'),
(945, 1, '2023-11-06 18:10:19', '2023-11-06 18:10:19', 0, NULL, '2023-11-06 23:10:19', '2023-11-06 23:10:19'),
(946, 2, '2023-11-06 18:10:19', '2023-11-06 18:10:19', 0, NULL, '2023-11-06 23:10:19', '2023-11-06 23:10:19'),
(947, 3, '2023-11-06 18:10:19', '2023-11-06 18:10:19', 0, NULL, '2023-11-06 23:10:19', '2023-11-06 23:10:19'),
(948, 5, '2023-11-06 18:10:19', '2023-11-06 18:10:19', 0, NULL, '2023-11-06 23:10:19', '2023-11-06 23:10:19'),
(949, 1, '2023-11-06 18:15:21', '2023-11-06 18:15:21', 0, NULL, '2023-11-06 23:15:21', '2023-11-06 23:15:21'),
(950, 2, '2023-11-06 18:15:21', '2023-11-06 18:15:21', 0, NULL, '2023-11-06 23:15:21', '2023-11-06 23:15:21'),
(951, 3, '2023-11-06 18:15:21', '2023-11-06 18:15:21', 0, NULL, '2023-11-06 23:15:21', '2023-11-06 23:15:21'),
(952, 5, '2023-11-06 18:15:21', '2023-11-06 18:15:21', 0, NULL, '2023-11-06 23:15:21', '2023-11-06 23:15:21'),
(953, 1, '2023-11-06 18:25:42', '2023-11-06 18:25:42', 0, NULL, '2023-11-06 23:25:42', '2023-11-06 23:25:42'),
(954, 2, '2023-11-06 18:25:42', '2023-11-06 18:25:42', 0, NULL, '2023-11-06 23:25:42', '2023-11-06 23:25:42'),
(955, 3, '2023-11-06 18:25:42', '2023-11-06 18:25:42', 0, NULL, '2023-11-06 23:25:42', '2023-11-06 23:25:42'),
(956, 5, '2023-11-06 18:25:42', '2023-11-06 18:25:42', 0, NULL, '2023-11-06 23:25:42', '2023-11-06 23:25:42'),
(957, 1, '2023-11-06 18:35:40', '2023-11-06 18:35:40', 0, NULL, '2023-11-06 23:35:40', '2023-11-06 23:35:40'),
(958, 2, '2023-11-06 18:35:40', '2023-11-06 18:35:40', 0, NULL, '2023-11-06 23:35:40', '2023-11-06 23:35:40'),
(959, 3, '2023-11-06 18:35:40', '2023-11-06 18:35:40', 0, NULL, '2023-11-06 23:35:40', '2023-11-06 23:35:40'),
(960, 5, '2023-11-06 18:35:40', '2023-11-06 18:35:40', 0, NULL, '2023-11-06 23:35:40', '2023-11-06 23:35:40'),
(961, 1, '2023-11-06 18:45:23', '2023-11-06 18:45:23', 0, NULL, '2023-11-06 23:45:23', '2023-11-06 23:45:23'),
(962, 2, '2023-11-06 18:45:23', '2023-11-06 18:45:23', 0, NULL, '2023-11-06 23:45:23', '2023-11-06 23:45:23'),
(963, 3, '2023-11-06 18:45:23', '2023-11-06 18:45:23', 0, NULL, '2023-11-06 23:45:23', '2023-11-06 23:45:23'),
(964, 5, '2023-11-06 18:45:23', '2023-11-06 18:45:23', 0, NULL, '2023-11-06 23:45:23', '2023-11-06 23:45:23'),
(965, 1, '2023-11-06 18:55:13', '2023-11-06 18:55:13', 0, NULL, '2023-11-06 23:55:13', '2023-11-06 23:55:13'),
(966, 2, '2023-11-06 18:55:13', '2023-11-06 18:55:13', 0, NULL, '2023-11-06 23:55:13', '2023-11-06 23:55:13'),
(967, 3, '2023-11-06 18:55:13', '2023-11-06 18:55:13', 0, NULL, '2023-11-06 23:55:13', '2023-11-06 23:55:13'),
(968, 5, '2023-11-06 18:55:13', '2023-11-06 18:55:13', 0, NULL, '2023-11-06 23:55:13', '2023-11-06 23:55:13'),
(969, 1, '2023-11-06 19:00:30', '2023-11-06 19:00:30', 0, NULL, '2023-11-07 00:00:30', '2023-11-07 00:00:30'),
(970, 2, '2023-11-06 19:00:30', '2023-11-06 19:00:31', 1, NULL, '2023-11-07 00:00:31', '2023-11-07 00:00:31'),
(971, 3, '2023-11-06 19:00:31', '2023-11-06 19:00:31', 0, NULL, '2023-11-07 00:00:31', '2023-11-07 00:00:31'),
(972, 5, '2023-11-06 19:00:31', '2023-11-06 19:00:31', 0, NULL, '2023-11-07 00:00:31', '2023-11-07 00:00:31'),
(973, 1, '2023-11-06 19:10:43', '2023-11-06 19:10:43', 0, NULL, '2023-11-07 00:10:43', '2023-11-07 00:10:43'),
(974, 2, '2023-11-06 19:10:43', '2023-11-06 19:10:43', 0, NULL, '2023-11-07 00:10:43', '2023-11-07 00:10:43'),
(975, 3, '2023-11-06 19:10:43', '2023-11-06 19:10:43', 0, NULL, '2023-11-07 00:10:43', '2023-11-07 00:10:43'),
(976, 5, '2023-11-06 19:10:43', '2023-11-06 19:10:43', 0, NULL, '2023-11-07 00:10:43', '2023-11-07 00:10:43'),
(977, 1, '2023-11-06 19:20:32', '2023-11-06 19:20:32', 0, NULL, '2023-11-07 00:20:32', '2023-11-07 00:20:32'),
(978, 2, '2023-11-06 19:20:32', '2023-11-06 19:20:33', 0, NULL, '2023-11-07 00:20:33', '2023-11-07 00:20:33'),
(979, 3, '2023-11-06 19:20:33', '2023-11-06 19:20:33', 0, NULL, '2023-11-07 00:20:33', '2023-11-07 00:20:33'),
(980, 5, '2023-11-06 19:20:33', '2023-11-06 19:20:33', 0, NULL, '2023-11-07 00:20:33', '2023-11-07 00:20:33'),
(981, 1, '2023-11-06 19:30:06', '2023-11-06 19:30:06', 0, NULL, '2023-11-07 00:30:06', '2023-11-07 00:30:06'),
(982, 2, '2023-11-06 19:30:06', '2023-11-06 19:30:07', 0, NULL, '2023-11-07 00:30:07', '2023-11-07 00:30:07'),
(983, 3, '2023-11-06 19:30:07', '2023-11-06 19:30:07', 0, NULL, '2023-11-07 00:30:07', '2023-11-07 00:30:07'),
(984, 5, '2023-11-06 19:30:07', '2023-11-06 19:30:07', 0, NULL, '2023-11-07 00:30:07', '2023-11-07 00:30:07'),
(985, 1, '2023-11-06 19:35:24', '2023-11-06 19:35:24', 0, NULL, '2023-11-07 00:35:24', '2023-11-07 00:35:24'),
(986, 2, '2023-11-06 19:35:24', '2023-11-06 19:35:24', 0, NULL, '2023-11-07 00:35:24', '2023-11-07 00:35:24'),
(987, 3, '2023-11-06 19:35:24', '2023-11-06 19:35:24', 0, NULL, '2023-11-07 00:35:24', '2023-11-07 00:35:24'),
(988, 5, '2023-11-06 19:35:24', '2023-11-06 19:35:24', 0, NULL, '2023-11-07 00:35:24', '2023-11-07 00:35:24'),
(989, 1, '2023-11-06 19:40:26', '2023-11-06 19:40:26', 0, NULL, '2023-11-07 00:40:26', '2023-11-07 00:40:26'),
(990, 2, '2023-11-06 19:40:26', '2023-11-06 19:40:26', 0, NULL, '2023-11-07 00:40:26', '2023-11-07 00:40:26'),
(991, 3, '2023-11-06 19:40:26', '2023-11-06 19:40:26', 0, NULL, '2023-11-07 00:40:26', '2023-11-07 00:40:26'),
(992, 5, '2023-11-06 19:40:26', '2023-11-06 19:40:26', 0, NULL, '2023-11-07 00:40:26', '2023-11-07 00:40:26'),
(993, 1, '2023-11-06 19:50:11', '2023-11-06 19:50:11', 0, NULL, '2023-11-07 00:50:11', '2023-11-07 00:50:11'),
(994, 2, '2023-11-06 19:50:11', '2023-11-06 19:50:11', 0, NULL, '2023-11-07 00:50:11', '2023-11-07 00:50:11'),
(995, 3, '2023-11-06 19:50:11', '2023-11-06 19:50:11', 0, NULL, '2023-11-07 00:50:11', '2023-11-07 00:50:11'),
(996, 5, '2023-11-06 19:50:11', '2023-11-06 19:50:11', 0, NULL, '2023-11-07 00:50:11', '2023-11-07 00:50:11'),
(997, 1, '2023-11-06 19:55:43', '2023-11-06 19:55:43', 0, NULL, '2023-11-07 00:55:43', '2023-11-07 00:55:43'),
(998, 2, '2023-11-06 19:55:43', '2023-11-06 19:55:43', 0, NULL, '2023-11-07 00:55:43', '2023-11-07 00:55:43'),
(999, 3, '2023-11-06 19:55:43', '2023-11-06 19:55:43', 0, NULL, '2023-11-07 00:55:43', '2023-11-07 00:55:43'),
(1000, 5, '2023-11-06 19:55:43', '2023-11-06 19:55:43', 0, NULL, '2023-11-07 00:55:43', '2023-11-07 00:55:43'),
(1001, 1, '2023-11-06 20:05:20', '2023-11-06 20:05:20', 0, NULL, '2023-11-07 01:05:20', '2023-11-07 01:05:20'),
(1002, 2, '2023-11-06 20:05:20', '2023-11-06 20:05:20', 0, NULL, '2023-11-07 01:05:20', '2023-11-07 01:05:20'),
(1003, 3, '2023-11-06 20:05:20', '2023-11-06 20:05:20', 0, NULL, '2023-11-07 01:05:20', '2023-11-07 01:05:20'),
(1004, 5, '2023-11-06 20:05:20', '2023-11-06 20:05:20', 0, NULL, '2023-11-07 01:05:20', '2023-11-07 01:05:20'),
(1005, 1, '2023-11-06 20:15:09', '2023-11-06 20:15:09', 0, NULL, '2023-11-07 01:15:09', '2023-11-07 01:15:09'),
(1006, 2, '2023-11-06 20:15:09', '2023-11-06 20:15:09', 0, NULL, '2023-11-07 01:15:09', '2023-11-07 01:15:09'),
(1007, 3, '2023-11-06 20:15:09', '2023-11-06 20:15:09', 0, NULL, '2023-11-07 01:15:09', '2023-11-07 01:15:09'),
(1008, 5, '2023-11-06 20:15:09', '2023-11-06 20:15:09', 0, NULL, '2023-11-07 01:15:09', '2023-11-07 01:15:09'),
(1009, 1, '2023-11-06 20:20:41', '2023-11-06 20:20:41', 0, NULL, '2023-11-07 01:20:41', '2023-11-07 01:20:41'),
(1010, 2, '2023-11-06 20:20:41', '2023-11-06 20:20:41', 0, NULL, '2023-11-07 01:20:41', '2023-11-07 01:20:41'),
(1011, 3, '2023-11-06 20:20:41', '2023-11-06 20:20:41', 0, NULL, '2023-11-07 01:20:41', '2023-11-07 01:20:41'),
(1012, 5, '2023-11-06 20:20:41', '2023-11-06 20:20:41', 0, NULL, '2023-11-07 01:20:41', '2023-11-07 01:20:41'),
(1013, 1, '2023-11-06 20:30:04', '2023-11-06 20:30:04', 0, NULL, '2023-11-07 01:30:04', '2023-11-07 01:30:04'),
(1014, 2, '2023-11-06 20:30:04', '2023-11-06 20:30:04', 0, NULL, '2023-11-07 01:30:04', '2023-11-07 01:30:04'),
(1015, 3, '2023-11-06 20:30:04', '2023-11-06 20:30:04', 0, NULL, '2023-11-07 01:30:04', '2023-11-07 01:30:04'),
(1016, 5, '2023-11-06 20:30:04', '2023-11-06 20:30:04', 0, NULL, '2023-11-07 01:30:04', '2023-11-07 01:30:04'),
(1017, 1, '2023-11-06 20:40:08', '2023-11-06 20:40:08', 0, NULL, '2023-11-07 01:40:08', '2023-11-07 01:40:08'),
(1018, 2, '2023-11-06 20:40:08', '2023-11-06 20:40:08', 0, NULL, '2023-11-07 01:40:08', '2023-11-07 01:40:08'),
(1019, 3, '2023-11-06 20:40:08', '2023-11-06 20:40:08', 0, NULL, '2023-11-07 01:40:08', '2023-11-07 01:40:08'),
(1020, 5, '2023-11-06 20:40:08', '2023-11-06 20:40:08', 0, NULL, '2023-11-07 01:40:08', '2023-11-07 01:40:08'),
(1021, 1, '2023-11-06 20:45:20', '2023-11-06 20:45:20', 0, NULL, '2023-11-07 01:45:20', '2023-11-07 01:45:20'),
(1022, 2, '2023-11-06 20:45:20', '2023-11-06 20:45:20', 0, NULL, '2023-11-07 01:45:20', '2023-11-07 01:45:20'),
(1023, 3, '2023-11-06 20:45:20', '2023-11-06 20:45:20', 0, NULL, '2023-11-07 01:45:20', '2023-11-07 01:45:20'),
(1024, 5, '2023-11-06 20:45:20', '2023-11-06 20:45:20', 0, NULL, '2023-11-07 01:45:20', '2023-11-07 01:45:20'),
(1025, 1, '2023-11-06 20:50:49', '2023-11-06 20:50:49', 0, NULL, '2023-11-07 01:50:49', '2023-11-07 01:50:49'),
(1026, 2, '2023-11-06 20:50:49', '2023-11-06 20:50:49', 0, NULL, '2023-11-07 01:50:49', '2023-11-07 01:50:49'),
(1027, 3, '2023-11-06 20:50:49', '2023-11-06 20:50:49', 0, NULL, '2023-11-07 01:50:49', '2023-11-07 01:50:49'),
(1028, 5, '2023-11-06 20:50:49', '2023-11-06 20:50:49', 0, NULL, '2023-11-07 01:50:49', '2023-11-07 01:50:49'),
(1029, 1, '2023-11-06 21:00:35', '2023-11-06 21:00:35', 0, NULL, '2023-11-07 02:00:35', '2023-11-07 02:00:35'),
(1030, 2, '2023-11-06 21:00:35', '2023-11-06 21:00:35', 0, NULL, '2023-11-07 02:00:35', '2023-11-07 02:00:35'),
(1031, 3, '2023-11-06 21:00:35', '2023-11-06 21:00:35', 0, NULL, '2023-11-07 02:00:35', '2023-11-07 02:00:35'),
(1032, 5, '2023-11-06 21:00:35', '2023-11-06 21:00:35', 0, NULL, '2023-11-07 02:00:35', '2023-11-07 02:00:35'),
(1033, 1, '2023-11-06 21:05:38', '2023-11-06 21:05:38', 0, NULL, '2023-11-07 02:05:38', '2023-11-07 02:05:38'),
(1034, 2, '2023-11-06 21:05:38', '2023-11-06 21:05:38', 0, NULL, '2023-11-07 02:05:38', '2023-11-07 02:05:38'),
(1035, 3, '2023-11-06 21:05:38', '2023-11-06 21:05:38', 0, NULL, '2023-11-07 02:05:38', '2023-11-07 02:05:38'),
(1036, 5, '2023-11-06 21:05:38', '2023-11-06 21:05:38', 0, NULL, '2023-11-07 02:05:38', '2023-11-07 02:05:38'),
(1037, 1, '2023-11-06 21:15:29', '2023-11-06 21:15:29', 0, NULL, '2023-11-07 02:15:29', '2023-11-07 02:15:29'),
(1038, 2, '2023-11-06 21:15:29', '2023-11-06 21:15:29', 0, NULL, '2023-11-07 02:15:29', '2023-11-07 02:15:29'),
(1039, 3, '2023-11-06 21:15:29', '2023-11-06 21:15:29', 0, NULL, '2023-11-07 02:15:29', '2023-11-07 02:15:29'),
(1040, 5, '2023-11-06 21:15:29', '2023-11-06 21:15:29', 0, NULL, '2023-11-07 02:15:29', '2023-11-07 02:15:29'),
(1041, 1, '2023-11-06 21:25:09', '2023-11-06 21:25:09', 0, NULL, '2023-11-07 02:25:09', '2023-11-07 02:25:09'),
(1042, 2, '2023-11-06 21:25:09', '2023-11-06 21:25:09', 0, NULL, '2023-11-07 02:25:09', '2023-11-07 02:25:09'),
(1043, 3, '2023-11-06 21:25:09', '2023-11-06 21:25:09', 0, NULL, '2023-11-07 02:25:09', '2023-11-07 02:25:09'),
(1044, 5, '2023-11-06 21:25:09', '2023-11-06 21:25:09', 0, NULL, '2023-11-07 02:25:09', '2023-11-07 02:25:09'),
(1045, 1, '2023-11-06 21:30:12', '2023-11-06 21:30:12', 0, NULL, '2023-11-07 02:30:12', '2023-11-07 02:30:12'),
(1046, 2, '2023-11-06 21:30:12', '2023-11-06 21:30:12', 0, NULL, '2023-11-07 02:30:12', '2023-11-07 02:30:12'),
(1047, 3, '2023-11-06 21:30:12', '2023-11-06 21:30:12', 0, NULL, '2023-11-07 02:30:12', '2023-11-07 02:30:12'),
(1048, 5, '2023-11-06 21:30:12', '2023-11-06 21:30:12', 0, NULL, '2023-11-07 02:30:12', '2023-11-07 02:30:12'),
(1049, 1, '2023-11-06 21:35:17', '2023-11-06 21:35:17', 0, NULL, '2023-11-07 02:35:17', '2023-11-07 02:35:17'),
(1050, 2, '2023-11-06 21:35:17', '2023-11-06 21:35:17', 0, NULL, '2023-11-07 02:35:17', '2023-11-07 02:35:17'),
(1051, 3, '2023-11-06 21:35:17', '2023-11-06 21:35:17', 0, NULL, '2023-11-07 02:35:17', '2023-11-07 02:35:17'),
(1052, 5, '2023-11-06 21:35:17', '2023-11-06 21:35:17', 0, NULL, '2023-11-07 02:35:17', '2023-11-07 02:35:17'),
(1053, 1, '2023-11-06 21:40:34', '2023-11-06 21:40:34', 0, NULL, '2023-11-07 02:40:34', '2023-11-07 02:40:34'),
(1054, 2, '2023-11-06 21:40:34', '2023-11-06 21:40:34', 0, NULL, '2023-11-07 02:40:34', '2023-11-07 02:40:34'),
(1055, 3, '2023-11-06 21:40:34', '2023-11-06 21:40:34', 0, NULL, '2023-11-07 02:40:34', '2023-11-07 02:40:34'),
(1056, 5, '2023-11-06 21:40:34', '2023-11-06 21:40:34', 0, NULL, '2023-11-07 02:40:34', '2023-11-07 02:40:34'),
(1057, 1, '2023-11-06 21:50:43', '2023-11-06 21:50:43', 0, NULL, '2023-11-07 02:50:43', '2023-11-07 02:50:43'),
(1058, 2, '2023-11-06 21:50:43', '2023-11-06 21:50:44', 0, NULL, '2023-11-07 02:50:44', '2023-11-07 02:50:44'),
(1059, 3, '2023-11-06 21:50:44', '2023-11-06 21:50:44', 0, NULL, '2023-11-07 02:50:44', '2023-11-07 02:50:44'),
(1060, 5, '2023-11-06 21:50:44', '2023-11-06 21:50:44', 0, NULL, '2023-11-07 02:50:44', '2023-11-07 02:50:44'),
(1061, 1, '2023-11-06 22:00:38', '2023-11-06 22:00:38', 0, NULL, '2023-11-07 03:00:38', '2023-11-07 03:00:38'),
(1062, 2, '2023-11-06 22:00:38', '2023-11-06 22:00:38', 0, NULL, '2023-11-07 03:00:38', '2023-11-07 03:00:38'),
(1063, 3, '2023-11-06 22:00:38', '2023-11-06 22:00:38', 0, NULL, '2023-11-07 03:00:38', '2023-11-07 03:00:38'),
(1064, 5, '2023-11-06 22:00:38', '2023-11-06 22:00:38', 0, NULL, '2023-11-07 03:00:38', '2023-11-07 03:00:38'),
(1065, 1, '2023-11-06 22:10:04', '2023-11-06 22:10:04', 0, NULL, '2023-11-07 03:10:04', '2023-11-07 03:10:04'),
(1066, 2, '2023-11-06 22:10:04', '2023-11-06 22:10:04', 0, NULL, '2023-11-07 03:10:04', '2023-11-07 03:10:04'),
(1067, 3, '2023-11-06 22:10:04', '2023-11-06 22:10:04', 0, NULL, '2023-11-07 03:10:04', '2023-11-07 03:10:04'),
(1068, 5, '2023-11-06 22:10:04', '2023-11-06 22:10:04', 0, NULL, '2023-11-07 03:10:04', '2023-11-07 03:10:04'),
(1069, 1, '2023-11-06 22:15:18', '2023-11-06 22:15:18', 0, NULL, '2023-11-07 03:15:18', '2023-11-07 03:15:18'),
(1070, 2, '2023-11-06 22:15:18', '2023-11-06 22:15:18', 0, NULL, '2023-11-07 03:15:18', '2023-11-07 03:15:18'),
(1071, 3, '2023-11-06 22:15:18', '2023-11-06 22:15:18', 0, NULL, '2023-11-07 03:15:18', '2023-11-07 03:15:18'),
(1072, 5, '2023-11-06 22:15:18', '2023-11-06 22:15:18', 0, NULL, '2023-11-07 03:15:18', '2023-11-07 03:15:18'),
(1073, 1, '2023-11-06 22:25:50', '2023-11-06 22:25:50', 0, NULL, '2023-11-07 03:25:50', '2023-11-07 03:25:50'),
(1074, 2, '2023-11-06 22:25:50', '2023-11-06 22:25:50', 0, NULL, '2023-11-07 03:25:50', '2023-11-07 03:25:50'),
(1075, 3, '2023-11-06 22:25:50', '2023-11-06 22:25:50', 0, NULL, '2023-11-07 03:25:50', '2023-11-07 03:25:50'),
(1076, 5, '2023-11-06 22:25:50', '2023-11-06 22:25:50', 0, NULL, '2023-11-07 03:25:50', '2023-11-07 03:25:50'),
(1077, 1, '2023-11-06 22:35:47', '2023-11-06 22:35:47', 0, NULL, '2023-11-07 03:35:47', '2023-11-07 03:35:47'),
(1078, 2, '2023-11-06 22:35:47', '2023-11-06 22:35:48', 0, NULL, '2023-11-07 03:35:48', '2023-11-07 03:35:48'),
(1079, 3, '2023-11-06 22:35:48', '2023-11-06 22:35:48', 0, NULL, '2023-11-07 03:35:48', '2023-11-07 03:35:48'),
(1080, 5, '2023-11-06 22:35:48', '2023-11-06 22:35:48', 0, NULL, '2023-11-07 03:35:48', '2023-11-07 03:35:48'),
(1081, 1, '2023-11-06 22:45:32', '2023-11-06 22:45:32', 0, NULL, '2023-11-07 03:45:32', '2023-11-07 03:45:32'),
(1082, 2, '2023-11-06 22:45:32', '2023-11-06 22:45:32', 0, NULL, '2023-11-07 03:45:32', '2023-11-07 03:45:32'),
(1083, 3, '2023-11-06 22:45:32', '2023-11-06 22:45:32', 0, NULL, '2023-11-07 03:45:32', '2023-11-07 03:45:32'),
(1084, 5, '2023-11-06 22:45:32', '2023-11-06 22:45:32', 0, NULL, '2023-11-07 03:45:32', '2023-11-07 03:45:32'),
(1085, 1, '2023-11-06 22:55:45', '2023-11-06 22:55:45', 0, NULL, '2023-11-07 03:55:45', '2023-11-07 03:55:45'),
(1086, 2, '2023-11-06 22:55:45', '2023-11-06 22:55:45', 0, NULL, '2023-11-07 03:55:45', '2023-11-07 03:55:45'),
(1087, 3, '2023-11-06 22:55:45', '2023-11-06 22:55:45', 0, NULL, '2023-11-07 03:55:45', '2023-11-07 03:55:45'),
(1088, 5, '2023-11-06 22:55:45', '2023-11-06 22:55:45', 0, NULL, '2023-11-07 03:55:45', '2023-11-07 03:55:45'),
(1089, 1, '2023-11-06 23:05:39', '2023-11-06 23:05:39', 0, NULL, '2023-11-07 04:05:39', '2023-11-07 04:05:39'),
(1090, 2, '2023-11-06 23:05:39', '2023-11-06 23:05:39', 0, NULL, '2023-11-07 04:05:39', '2023-11-07 04:05:39'),
(1091, 3, '2023-11-06 23:05:39', '2023-11-06 23:05:39', 0, NULL, '2023-11-07 04:05:39', '2023-11-07 04:05:39'),
(1092, 5, '2023-11-06 23:05:39', '2023-11-06 23:05:39', 0, NULL, '2023-11-07 04:05:39', '2023-11-07 04:05:39'),
(1093, 1, '2023-11-06 23:15:27', '2023-11-06 23:15:27', 0, NULL, '2023-11-07 04:15:27', '2023-11-07 04:15:27'),
(1094, 2, '2023-11-06 23:15:27', '2023-11-06 23:15:27', 0, NULL, '2023-11-07 04:15:27', '2023-11-07 04:15:27'),
(1095, 3, '2023-11-06 23:15:27', '2023-11-06 23:15:27', 0, NULL, '2023-11-07 04:15:27', '2023-11-07 04:15:27'),
(1096, 5, '2023-11-06 23:15:27', '2023-11-06 23:15:27', 0, NULL, '2023-11-07 04:15:27', '2023-11-07 04:15:27'),
(1097, 1, '2023-11-06 23:20:41', '2023-11-06 23:20:41', 0, NULL, '2023-11-07 04:20:41', '2023-11-07 04:20:41'),
(1098, 2, '2023-11-06 23:20:41', '2023-11-06 23:20:41', 0, NULL, '2023-11-07 04:20:41', '2023-11-07 04:20:41'),
(1099, 3, '2023-11-06 23:20:41', '2023-11-06 23:20:41', 0, NULL, '2023-11-07 04:20:41', '2023-11-07 04:20:41'),
(1100, 5, '2023-11-06 23:20:41', '2023-11-06 23:20:41', 0, NULL, '2023-11-07 04:20:41', '2023-11-07 04:20:41'),
(1101, 1, '2023-11-06 23:25:46', '2023-11-06 23:25:46', 0, NULL, '2023-11-07 04:25:46', '2023-11-07 04:25:46'),
(1102, 2, '2023-11-06 23:25:46', '2023-11-06 23:25:46', 0, NULL, '2023-11-07 04:25:46', '2023-11-07 04:25:46'),
(1103, 3, '2023-11-06 23:25:46', '2023-11-06 23:25:46', 0, NULL, '2023-11-07 04:25:46', '2023-11-07 04:25:46'),
(1104, 5, '2023-11-06 23:25:46', '2023-11-06 23:25:46', 0, NULL, '2023-11-07 04:25:46', '2023-11-07 04:25:46'),
(1105, 1, '2023-11-06 23:35:09', '2023-11-06 23:35:09', 0, NULL, '2023-11-07 04:35:09', '2023-11-07 04:35:09'),
(1106, 2, '2023-11-06 23:35:09', '2023-11-06 23:35:09', 0, NULL, '2023-11-07 04:35:09', '2023-11-07 04:35:09'),
(1107, 3, '2023-11-06 23:35:09', '2023-11-06 23:35:09', 0, NULL, '2023-11-07 04:35:09', '2023-11-07 04:35:09'),
(1108, 5, '2023-11-06 23:35:09', '2023-11-06 23:35:09', 0, NULL, '2023-11-07 04:35:09', '2023-11-07 04:35:09'),
(1109, 1, '2023-11-06 23:40:24', '2023-11-06 23:40:24', 0, NULL, '2023-11-07 04:40:24', '2023-11-07 04:40:24'),
(1110, 2, '2023-11-06 23:40:24', '2023-11-06 23:40:24', 0, NULL, '2023-11-07 04:40:24', '2023-11-07 04:40:24'),
(1111, 3, '2023-11-06 23:40:24', '2023-11-06 23:40:24', 0, NULL, '2023-11-07 04:40:24', '2023-11-07 04:40:24'),
(1112, 5, '2023-11-06 23:40:24', '2023-11-06 23:40:24', 0, NULL, '2023-11-07 04:40:24', '2023-11-07 04:40:24'),
(1113, 1, '2023-11-06 23:50:36', '2023-11-06 23:50:36', 0, NULL, '2023-11-07 04:50:36', '2023-11-07 04:50:36'),
(1114, 2, '2023-11-06 23:50:36', '2023-11-06 23:50:36', 0, NULL, '2023-11-07 04:50:36', '2023-11-07 04:50:36'),
(1115, 3, '2023-11-06 23:50:36', '2023-11-06 23:50:36', 0, NULL, '2023-11-07 04:50:36', '2023-11-07 04:50:36'),
(1116, 5, '2023-11-06 23:50:36', '2023-11-06 23:50:36', 0, NULL, '2023-11-07 04:50:36', '2023-11-07 04:50:36'),
(1117, 1, '2023-11-07 00:00:44', '2023-11-07 00:00:44', 0, NULL, '2023-11-07 05:00:44', '2023-11-07 05:00:44'),
(1118, 2, '2023-11-07 00:00:44', '2023-11-07 00:00:44', 0, NULL, '2023-11-07 05:00:44', '2023-11-07 05:00:44'),
(1119, 3, '2023-11-07 00:00:44', '2023-11-07 00:00:44', 0, NULL, '2023-11-07 05:00:44', '2023-11-07 05:00:44'),
(1120, 5, '2023-11-07 00:00:44', '2023-11-07 00:00:44', 0, NULL, '2023-11-07 05:00:44', '2023-11-07 05:00:44'),
(1121, 1, '2023-11-07 00:10:27', '2023-11-07 00:10:27', 0, NULL, '2023-11-07 05:10:27', '2023-11-07 05:10:27'),
(1122, 2, '2023-11-07 00:10:27', '2023-11-07 00:10:27', 0, NULL, '2023-11-07 05:10:27', '2023-11-07 05:10:27'),
(1123, 3, '2023-11-07 00:10:27', '2023-11-07 00:10:27', 0, NULL, '2023-11-07 05:10:27', '2023-11-07 05:10:27'),
(1124, 5, '2023-11-07 00:10:27', '2023-11-07 00:10:27', 0, NULL, '2023-11-07 05:10:27', '2023-11-07 05:10:27'),
(1125, 1, '2023-11-07 00:15:33', '2023-11-07 00:15:33', 0, NULL, '2023-11-07 05:15:33', '2023-11-07 05:15:33'),
(1126, 2, '2023-11-07 00:15:33', '2023-11-07 00:15:34', 0, NULL, '2023-11-07 05:15:34', '2023-11-07 05:15:34'),
(1127, 3, '2023-11-07 00:15:34', '2023-11-07 00:15:34', 0, NULL, '2023-11-07 05:15:34', '2023-11-07 05:15:34'),
(1128, 5, '2023-11-07 00:15:34', '2023-11-07 00:15:34', 0, NULL, '2023-11-07 05:15:34', '2023-11-07 05:15:34'),
(1129, 1, '2023-11-07 00:25:08', '2023-11-07 00:25:08', 0, NULL, '2023-11-07 05:25:08', '2023-11-07 05:25:08'),
(1130, 2, '2023-11-07 00:25:08', '2023-11-07 00:25:08', 0, NULL, '2023-11-07 05:25:08', '2023-11-07 05:25:08'),
(1131, 3, '2023-11-07 00:25:08', '2023-11-07 00:25:08', 0, NULL, '2023-11-07 05:25:08', '2023-11-07 05:25:08'),
(1132, 5, '2023-11-07 00:25:08', '2023-11-07 00:25:08', 0, NULL, '2023-11-07 05:25:08', '2023-11-07 05:25:08'),
(1133, 1, '2023-11-07 00:30:31', '2023-11-07 00:30:31', 0, NULL, '2023-11-07 05:30:31', '2023-11-07 05:30:31'),
(1134, 2, '2023-11-07 00:30:31', '2023-11-07 00:30:32', 0, NULL, '2023-11-07 05:30:32', '2023-11-07 05:30:32'),
(1135, 3, '2023-11-07 00:30:32', '2023-11-07 00:30:32', 0, NULL, '2023-11-07 05:30:32', '2023-11-07 05:30:32'),
(1136, 5, '2023-11-07 00:30:32', '2023-11-07 00:30:32', 0, NULL, '2023-11-07 05:30:32', '2023-11-07 05:30:32'),
(1137, 1, '2023-11-07 00:35:33', '2023-11-07 00:35:33', 0, NULL, '2023-11-07 05:35:33', '2023-11-07 05:35:33'),
(1138, 2, '2023-11-07 00:35:33', '2023-11-07 00:35:33', 0, NULL, '2023-11-07 05:35:33', '2023-11-07 05:35:33'),
(1139, 3, '2023-11-07 00:35:33', '2023-11-07 00:35:33', 0, NULL, '2023-11-07 05:35:33', '2023-11-07 05:35:33'),
(1140, 5, '2023-11-07 00:35:33', '2023-11-07 00:35:33', 0, NULL, '2023-11-07 05:35:33', '2023-11-07 05:35:33'),
(1141, 1, '2023-11-07 00:45:32', '2023-11-07 00:45:32', 0, NULL, '2023-11-07 05:45:32', '2023-11-07 05:45:32'),
(1142, 2, '2023-11-07 00:45:32', '2023-11-07 00:45:33', 0, NULL, '2023-11-07 05:45:33', '2023-11-07 05:45:33'),
(1143, 3, '2023-11-07 00:45:33', '2023-11-07 00:45:33', 0, NULL, '2023-11-07 05:45:33', '2023-11-07 05:45:33'),
(1144, 5, '2023-11-07 00:45:33', '2023-11-07 00:45:33', 0, NULL, '2023-11-07 05:45:33', '2023-11-07 05:45:33'),
(1145, 1, '2023-11-07 00:55:18', '2023-11-07 00:55:18', 0, NULL, '2023-11-07 05:55:18', '2023-11-07 05:55:18'),
(1146, 2, '2023-11-07 00:55:18', '2023-11-07 00:55:18', 0, NULL, '2023-11-07 05:55:18', '2023-11-07 05:55:18'),
(1147, 3, '2023-11-07 00:55:18', '2023-11-07 00:55:18', 0, NULL, '2023-11-07 05:55:18', '2023-11-07 05:55:18'),
(1148, 5, '2023-11-07 00:55:18', '2023-11-07 00:55:18', 0, NULL, '2023-11-07 05:55:18', '2023-11-07 05:55:18'),
(1149, 1, '2023-11-07 01:05:12', '2023-11-07 01:05:12', 0, NULL, '2023-11-07 06:05:12', '2023-11-07 06:05:12'),
(1150, 2, '2023-11-07 01:05:12', '2023-11-07 01:05:12', 0, NULL, '2023-11-07 06:05:12', '2023-11-07 06:05:12'),
(1151, 3, '2023-11-07 01:05:12', '2023-11-07 01:05:12', 0, NULL, '2023-11-07 06:05:12', '2023-11-07 06:05:12'),
(1152, 5, '2023-11-07 01:05:12', '2023-11-07 01:05:12', 0, NULL, '2023-11-07 06:05:12', '2023-11-07 06:05:12'),
(1153, 1, '2023-11-07 01:10:27', '2023-11-07 01:10:27', 0, NULL, '2023-11-07 06:10:27', '2023-11-07 06:10:27'),
(1154, 2, '2023-11-07 01:10:27', '2023-11-07 01:10:27', 0, NULL, '2023-11-07 06:10:27', '2023-11-07 06:10:27'),
(1155, 3, '2023-11-07 01:10:27', '2023-11-07 01:10:27', 0, NULL, '2023-11-07 06:10:27', '2023-11-07 06:10:27'),
(1156, 5, '2023-11-07 01:10:27', '2023-11-07 01:10:27', 0, NULL, '2023-11-07 06:10:27', '2023-11-07 06:10:27'),
(1157, 1, '2023-11-07 01:20:24', '2023-11-07 01:20:24', 0, NULL, '2023-11-07 06:20:24', '2023-11-07 06:20:24'),
(1158, 2, '2023-11-07 01:20:24', '2023-11-07 01:20:24', 0, NULL, '2023-11-07 06:20:24', '2023-11-07 06:20:24'),
(1159, 3, '2023-11-07 01:20:24', '2023-11-07 01:20:24', 0, NULL, '2023-11-07 06:20:24', '2023-11-07 06:20:24'),
(1160, 5, '2023-11-07 01:20:24', '2023-11-07 01:20:24', 0, NULL, '2023-11-07 06:20:24', '2023-11-07 06:20:24'),
(1161, 1, '2023-11-09 15:25:05', '2023-11-09 15:25:06', 0, NULL, '2023-11-09 15:25:06', '2023-11-09 15:25:06'),
(1162, 2, '2023-11-09 15:25:06', '2023-11-09 15:25:07', 0, NULL, '2023-11-09 15:25:07', '2023-11-09 15:25:07'),
(1163, 3, '2023-11-09 15:25:07', '2023-11-09 15:25:07', 0, NULL, '2023-11-09 15:25:07', '2023-11-09 15:25:07'),
(1164, 5, '2023-11-09 15:25:07', '2023-11-09 15:25:07', 0, NULL, '2023-11-09 15:25:07', '2023-11-09 15:25:07'),
(1165, 1, '2023-11-09 15:30:08', '2023-11-09 15:30:08', 0, NULL, '2023-11-09 15:30:08', '2023-11-09 15:30:08'),
(1166, 2, '2023-11-09 15:30:08', '2023-11-09 15:30:08', 0, NULL, '2023-11-09 15:30:08', '2023-11-09 15:30:08'),
(1167, 3, '2023-11-09 15:30:08', '2023-11-09 15:30:08', 0, NULL, '2023-11-09 15:30:08', '2023-11-09 15:30:08'),
(1168, 5, '2023-11-09 15:30:08', '2023-11-09 15:30:08', 0, NULL, '2023-11-09 15:30:08', '2023-11-09 15:30:08'),
(1169, 1, '2023-11-09 15:40:06', '2023-11-09 15:40:06', 0, NULL, '2023-11-09 15:40:06', '2023-11-09 15:40:06'),
(1170, 2, '2023-11-09 15:40:06', '2023-11-09 15:40:06', 0, NULL, '2023-11-09 15:40:06', '2023-11-09 15:40:06'),
(1171, 3, '2023-11-09 15:40:06', '2023-11-09 15:40:06', 0, NULL, '2023-11-09 15:40:06', '2023-11-09 15:40:06'),
(1172, 5, '2023-11-09 15:40:06', '2023-11-09 15:40:06', 0, NULL, '2023-11-09 15:40:06', '2023-11-09 15:40:06'),
(1173, 1, '2023-11-09 15:50:07', '2023-11-09 15:50:07', 0, NULL, '2023-11-09 15:50:07', '2023-11-09 15:50:07'),
(1174, 2, '2023-11-09 15:50:07', '2023-11-09 15:50:07', 0, NULL, '2023-11-09 15:50:07', '2023-11-09 15:50:07'),
(1175, 3, '2023-11-09 15:50:07', '2023-11-09 15:50:07', 0, NULL, '2023-11-09 15:50:07', '2023-11-09 15:50:07'),
(1176, 5, '2023-11-09 15:50:07', '2023-11-09 15:50:07', 0, NULL, '2023-11-09 15:50:07', '2023-11-09 15:50:07'),
(1177, 1, '2024-03-12 18:29:54', '2024-03-12 18:29:54', 0, NULL, '2024-03-12 18:29:54', '2024-03-12 18:29:54'),
(1178, 2, '2024-03-12 18:29:54', '2024-03-12 18:29:54', 0, NULL, '2024-03-12 18:29:54', '2024-03-12 18:29:54'),
(1179, 3, '2024-03-12 18:29:54', '2024-03-12 18:29:54', 0, NULL, '2024-03-12 18:29:54', '2024-03-12 18:29:54'),
(1180, 5, '2024-03-12 18:29:54', '2024-03-12 18:29:54', 0, NULL, '2024-03-12 18:29:54', '2024-03-12 18:29:54'),
(1181, 1, '2024-03-12 18:36:03', '2024-03-12 18:36:03', 0, NULL, '2024-03-12 18:36:03', '2024-03-12 18:36:03'),
(1182, 2, '2024-03-12 18:36:03', '2024-03-12 18:36:03', 0, NULL, '2024-03-12 18:36:03', '2024-03-12 18:36:03'),
(1183, 3, '2024-03-12 18:36:03', '2024-03-12 18:36:03', 0, NULL, '2024-03-12 18:36:03', '2024-03-12 18:36:03'),
(1184, 5, '2024-03-12 18:36:03', '2024-03-12 18:36:03', 0, NULL, '2024-03-12 18:36:03', '2024-03-12 18:36:03'),
(1185, 1, '2024-03-12 18:42:03', '2024-03-12 18:42:03', 0, NULL, '2024-03-12 18:42:03', '2024-03-12 18:42:03'),
(1186, 2, '2024-03-12 18:42:03', '2024-03-12 18:42:03', 0, NULL, '2024-03-12 18:42:03', '2024-03-12 18:42:03'),
(1187, 3, '2024-03-12 18:42:03', '2024-03-12 18:42:03', 0, NULL, '2024-03-12 18:42:03', '2024-03-12 18:42:03'),
(1188, 5, '2024-03-12 18:42:03', '2024-03-12 18:42:03', 0, NULL, '2024-03-12 18:42:03', '2024-03-12 18:42:03'),
(1189, 1, '2024-03-12 18:48:03', '2024-03-12 18:48:03', 0, NULL, '2024-03-12 18:48:03', '2024-03-12 18:48:03'),
(1190, 2, '2024-03-12 18:48:03', '2024-03-12 18:48:03', 0, NULL, '2024-03-12 18:48:03', '2024-03-12 18:48:03'),
(1191, 3, '2024-03-12 18:48:03', '2024-03-12 18:48:03', 0, NULL, '2024-03-12 18:48:03', '2024-03-12 18:48:03'),
(1192, 5, '2024-03-12 18:48:03', '2024-03-12 18:48:03', 0, NULL, '2024-03-12 18:48:03', '2024-03-12 18:48:03'),
(1193, 1, '2024-03-12 18:54:04', '2024-03-12 18:54:04', 0, NULL, '2024-03-12 18:54:04', '2024-03-12 18:54:04'),
(1194, 2, '2024-03-12 18:54:04', '2024-03-12 18:54:04', 0, NULL, '2024-03-12 18:54:04', '2024-03-12 18:54:04'),
(1195, 3, '2024-03-12 18:54:04', '2024-03-12 18:54:04', 0, NULL, '2024-03-12 18:54:04', '2024-03-12 18:54:04'),
(1196, 5, '2024-03-12 18:54:04', '2024-03-12 18:54:04', 0, NULL, '2024-03-12 18:54:04', '2024-03-12 18:54:04'),
(1197, 1, '2024-03-12 19:00:06', '2024-03-12 19:00:06', 0, NULL, '2024-03-12 19:00:06', '2024-03-12 19:00:06'),
(1198, 2, '2024-03-12 19:00:06', '2024-03-12 19:00:06', 0, NULL, '2024-03-12 19:00:06', '2024-03-12 19:00:06'),
(1199, 3, '2024-03-12 19:00:06', '2024-03-12 19:00:06', 0, NULL, '2024-03-12 19:00:06', '2024-03-12 19:00:06'),
(1200, 5, '2024-03-12 19:00:06', '2024-03-12 19:00:06', 0, NULL, '2024-03-12 19:00:06', '2024-03-12 19:00:06'),
(1201, 1, '2024-03-12 19:06:02', '2024-03-12 19:06:02', 0, NULL, '2024-03-12 19:06:02', '2024-03-12 19:06:02'),
(1202, 2, '2024-03-12 19:06:02', '2024-03-12 19:06:02', 0, NULL, '2024-03-12 19:06:02', '2024-03-12 19:06:02'),
(1203, 3, '2024-03-12 19:06:02', '2024-03-12 19:06:02', 0, NULL, '2024-03-12 19:06:02', '2024-03-12 19:06:02'),
(1204, 5, '2024-03-12 19:06:02', '2024-03-12 19:06:02', 0, NULL, '2024-03-12 19:06:02', '2024-03-12 19:06:02'),
(1205, 1, '2024-03-12 19:12:03', '2024-03-12 19:12:03', 0, NULL, '2024-03-12 19:12:03', '2024-03-12 19:12:03'),
(1206, 2, '2024-03-12 19:12:03', '2024-03-12 19:12:03', 0, NULL, '2024-03-12 19:12:03', '2024-03-12 19:12:03'),
(1207, 3, '2024-03-12 19:12:03', '2024-03-12 19:12:03', 0, NULL, '2024-03-12 19:12:03', '2024-03-12 19:12:03'),
(1208, 5, '2024-03-12 19:12:03', '2024-03-12 19:12:03', 0, NULL, '2024-03-12 19:12:03', '2024-03-12 19:12:03'),
(1209, 1, '2024-03-12 19:18:03', '2024-03-12 19:18:03', 0, NULL, '2024-03-12 19:18:03', '2024-03-12 19:18:03'),
(1210, 2, '2024-03-12 19:18:03', '2024-03-12 19:18:03', 0, NULL, '2024-03-12 19:18:03', '2024-03-12 19:18:03'),
(1211, 3, '2024-03-12 19:18:03', '2024-03-12 19:18:03', 0, NULL, '2024-03-12 19:18:03', '2024-03-12 19:18:03'),
(1212, 5, '2024-03-12 19:18:03', '2024-03-12 19:18:03', 0, NULL, '2024-03-12 19:18:03', '2024-03-12 19:18:03');

-- --------------------------------------------------------

--
-- Table structure for table `cron_schedules`
--

CREATE TABLE `cron_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `interval` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cron_schedules`
--

INSERT INTO `cron_schedules` (`id`, `name`, `interval`, `status`, `created_at`, `updated_at`) VALUES
(1, '5 Minutes', 300, 1, '2023-06-21 08:14:52', '2023-06-21 08:14:52'),
(2, '10 Minutes', 600, 1, '2023-06-21 23:28:22', '2023-06-21 23:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `plan_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `method_code` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `method_currency` varchar(40) DEFAULT NULL,
  `charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `final_amo` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `detail` text DEFAULT NULL,
  `btc_amo` varchar(255) DEFAULT NULL,
  `btc_wallet` varchar(255) DEFAULT NULL,
  `trx` varchar(40) DEFAULT NULL,
  `compound_times` int(11) NOT NULL DEFAULT 0,
  `payment_try` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=>success, 2=>pending, 3=>cancel',
  `from_api` tinyint(1) NOT NULL DEFAULT 0,
  `admin_feedback` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `plan_id`, `method_code`, `amount`, `method_currency`, `charge`, `rate`, `final_amo`, `detail`, `btc_amo`, `btc_wallet`, `trx`, `compound_times`, `payment_try`, `status`, `from_api`, `admin_feedback`, `created_at`, `updated_at`) VALUES
(118, 85, 0, 1001, 200.00000000, 'INR', 0.00000000, 1.00000000, 200.00000000, NULL, '0', '', 'NZEQXBEJASA8', 0, 0, 0, 0, NULL, '2024-03-12 18:33:02', '2024-03-12 18:33:02'),
(119, 85, 0, 1001, 200.00000000, 'INR', 0.00000000, 1.00000000, 200.00000000, '[{\"name\":\"Transaction ID(UTR NO)\",\"type\":\"text\",\"value\":\"5434543534\"}]', '0', '', 'MJFDAJXGREH5', 0, 0, 2, 0, NULL, '2024-03-12 18:35:14', '2024-03-12 18:35:29');

-- --------------------------------------------------------

--
-- Table structure for table `device_tokens`
--

CREATE TABLE `device_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_app` tinyint(1) NOT NULL DEFAULT 0,
  `token` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `extensions`
--

CREATE TABLE `extensions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `act` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `script` text DEFAULT NULL,
  `shortcode` text DEFAULT NULL COMMENT 'object',
  `support` text DEFAULT NULL COMMENT 'help section',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=>enable, 2=>disable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extensions`
--

INSERT INTO `extensions` (`id`, `act`, `name`, `description`, `image`, `script`, `shortcode`, `support`, `status`, `created_at`, `updated_at`) VALUES
(1, 'tawk-chat', 'Tawk.to', 'Key location is shown bellow', 'tawky_big.png', '<script>\r\n                        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n                        (function(){\r\n                        var s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\n                        s1.async=true;\r\n                        s1.src=\"https://embed.tawk.to/{{app_key}}\";\r\n                        s1.charset=\"UTF-8\";\r\n                        s1.setAttribute(\"crossorigin\",\"*\");\r\n                        s0.parentNode.insertBefore(s1,s0);\r\n                        })();\r\n                    </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"------\"}}', 'twak.png', 0, '2019-10-18 23:16:05', '2022-09-25 00:58:09'),
(2, 'google-recaptcha2', 'Google Recaptcha 2', 'Key location is shown bellow', 'recaptcha3.png', '\n<script src=\"https://www.google.com/recaptcha/api.js\"></script>\n<div class=\"g-recaptcha\" data-sitekey=\"{{site_key}}\" data-callback=\"verifyCaptcha\"></div>\n<div id=\"g-recaptcha-error\"></div>', '{\"site_key\":{\"title\":\"Site Key\",\"value\":\"6LdPC88fAAAAADQlUf_DV6Hrvgm-pZuLJFSLDOWV\"},\"secret_key\":{\"title\":\"Secret Key\",\"value\":\"6LdPC88fAAAAAG5SVaRYDnV2NpCrptLg2XLYKRKB\"}}', 'recaptcha.png', 0, '2019-10-18 23:16:05', '2022-10-06 03:02:22'),
(3, 'custom-captcha', 'Custom Captcha', 'Just put any random string', 'customcaptcha.png', NULL, '{\"random_key\":{\"title\":\"Random String\",\"value\":\"SecureString\"}}', 'na', 0, '2019-10-18 23:16:05', '2022-10-06 03:02:25'),
(4, 'google-analytics', 'Google Analytics', 'Key location is shown bellow', 'google_analytics.png', '<script async src=\"https://www.googletagmanager.com/gtag/js?id={{app_key}}\"></script>\r\n                <script>\r\n                  window.dataLayer = window.dataLayer || [];\r\n                  function gtag(){dataLayer.push(arguments);}\r\n                  gtag(\"js\", new Date());\r\n                \r\n                  gtag(\"config\", \"{{app_key}}\");\r\n                </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"------\"}}', 'ganalytics.png', 0, NULL, '2021-05-04 10:19:12'),
(5, 'fb-comment', 'Facebook Comment ', 'Key location is shown bellow', 'Facebook.png', '<div id=\"fb-root\"></div><script async defer crossorigin=\"anonymous\" src=\"https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v4.0&appId={{app_key}}&autoLogAppEvents=1\"></script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"----\"}}', 'fb_com.PNG', 0, NULL, '2022-09-25 01:22:33');

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `act` varchar(40) DEFAULT NULL,
  `form_data` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `act`, `form_data`, `created_at`, `updated_at`) VALUES
(1, 'manual_deposit', '{\"transaction_id\":{\"name\":\"Transaction ID\",\"label\":\"transaction_id\",\"is_required\":\"required\",\"extensions\":null,\"options\":[],\"type\":\"text\"}}', '2023-11-02 16:24:40', '2023-11-06 08:05:21'),
(2, 'withdraw_method', '{\"usdt_trc20_address\":{\"name\":\"USDT TRC20 ADDRESS\",\"label\":\"usdt_trc20_address\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[],\"type\":\"text\"}}', '2023-11-02 16:25:23', '2023-11-06 08:08:10'),
(3, 'manual_deposit', '{\"transaction_id(utr_no)\":{\"name\":\"Transaction ID(UTR NO)\",\"label\":\"transaction_id(utr_no)\",\"is_required\":\"required\",\"extensions\":null,\"options\":[],\"type\":\"text\"}}', '2024-03-12 18:32:49', '2024-03-12 18:34:40'),
(4, 'withdraw_method', '{\"bank_name\":{\"name\":\"Bank Name\",\"label\":\"bank_name\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[],\"type\":\"text\"},\"account_no\":{\"name\":\"Account no\",\"label\":\"account_no\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[],\"type\":\"text\"},\"ifsc_code\":{\"name\":\"IFSC Code\",\"label\":\"ifsc_code\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[],\"type\":\"text\"},\"a\\/c_holder_name\":{\"name\":\"A\\/C Holder Name\",\"label\":\"a\\/c_holder_name\",\"is_required\":\"required\",\"extensions\":\"\",\"options\":[],\"type\":\"text\"}}', '2024-03-12 18:37:46', '2024-03-12 18:37:46');

-- --------------------------------------------------------

--
-- Table structure for table `frontends`
--

CREATE TABLE `frontends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data_keys` varchar(40) DEFAULT NULL,
  `data_values` longtext DEFAULT NULL,
  `template_name` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontends`
--

INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `template_name`, `created_at`, `updated_at`) VALUES
(1, 'seo.data', '{\"seo_image\":\"1\",\"keywords\":[\"bmss\"],\"description\":\"Z\",\"social_title\":\"B\",\"social_description\":\"Z\",\"image\":\"633eef9a9b3161665068954.jpg\"}', 'global', '2020-07-04 23:42:52', '2023-11-04 19:26:08'),
(41, 'cookie.data', '{\"short_desc\":\"We may use cookies or any other tracking technologies when you visit our website, including any other media form, mobile website, or mobile application related or connected to help customize the Site and improve your experience.\",\"description\":\"<div class=\\\"mb-5\\\">\\r\\n    <h3 class=\\\"mb-3\\\">\\r\\n        What information do we collect?<\\/h3>\\r\\n    <p class=\\\"font-18\\\">We gather data from you\\r\\n        when you register on our site, submit a request, buy any services, react to an overview, or round out a\\r\\n        structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be\\r\\n        approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site\\r\\n        anonymously.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"mb-5\\\">\\r\\n    <h3 class=\\\"mb-3\\\">\\r\\n        How do we protect your information?<\\/h3>\\r\\n    <p class=\\\"font-18\\\">All provided\\r\\n        delicate\\/credit data is sent through Stripe.<br>After an exchange, your private data (credit cards, social\\r\\n        security numbers, financials, and so on) won\'t be put away on our workers.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"mb-5\\\">\\r\\n    <h3 class=\\\"mb-3\\\">\\r\\n        Do we disclose any information to outside parties?<\\/h3>\\r\\n    <p class=\\\"font-18\\\">We don\'t sell, exchange,\\r\\n        or in any case move to outside gatherings by and by recognizable data. This does exclude confided in outsiders\\r\\n        who help us in working our site, leading our business, or adjusting you, since those gatherings consent to keep\\r\\n        this data private. We may likewise deliver your data when we accept discharge is suitable to follow the law,\\r\\n        implement our site strategies, or ensure our own or others\' rights, property, or wellbeing.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"mb-5\\\">\\r\\n    <h3 class=\\\"mb-3\\\">\\r\\n        Children\'s Online Privacy Protection Act Compliance<\\/h3>\\r\\n    <p class=\\\"font-18\\\">We are consistent with\\r\\n        the prerequisites of COPPA (Children\'s Online Privacy Protection Act), we don\'t gather any data from anybody\\r\\n        under 13 years old. Our site, items, and administrations are completely coordinated to individuals who are in\\r\\n        any event 13 years of age or more established.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"mb-5\\\">\\r\\n    <h3 class=\\\"mb-3\\\">\\r\\n        Changes to our Privacy Policy<\\/h3>\\r\\n    <p class=\\\"font-18\\\">If we decide to change\\r\\n        our privacy policy, we will post those changes on this page.<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"mb-5\\\">\\r\\n    <h3 class=\\\"mb-3\\\">\\r\\n        How long we retain your information?<\\/h3>\\r\\n    <p class=\\\"font-18\\\">At the point when you\\r\\n        register for our site, we cycle and keep your information we have about you however long you don\'t erase the\\r\\n        record or withdraw yourself (subject to laws and guidelines).<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"mb-5\\\">\\r\\n    <h3 class=\\\"mb-3\\\">\\r\\n        What we don\\u2019t do with your data<\\/h3>\\r\\n    <p class=\\\"font-18\\\">We don\'t and will never\\r\\n        share, unveil, sell, or in any case give your information to different organizations for the promoting of their\\r\\n        items or administrations.<\\/p>\\r\\n<\\/div>\",\"status\":0}', 'global', '2020-07-04 23:42:52', '2023-11-03 13:35:09'),
(44, 'maintenance.data', '{\"description\":\"<div class=\\\"text-center\\\"><h3 class=\\\"mb-3\\\">What information do we collect?<\\/h3>\\r\\n<p class=\\\"font-18\\\">We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/p><\\/div>\"}', 'global', '2020-07-04 23:42:52', '2022-09-20 06:32:48'),
(206, 'about.content', '{\"has_image\":\"1\",\"heading_w\":\"About\",\"heading_c\":\"Us\",\"button_name\":\"More Info\",\"button_link\":\"about\",\"content\":\"We are an international financial company engaged in investment activities, which are related to trading on financial markets and cryptocurrency exchanges performed by qualified professional traders.\\r\\n\\r\\nOur goal is to provide our investors with a reliable source of high income, while minimizing any possible risks and offering a high-quality service, allowing us to automate and simplify the relations between the investors and the trustees. We work towards increasing your profit margin by profitable investment. We look forward to you being part of our community.\",\"image\":\"631d85749f9311662879092.jpg\"}', 'bit_gold', '2022-09-10 12:26:58', '2022-10-06 09:09:33'),
(207, 'banner.content', '{\"has_image\":\"1\",\"heading_w\":\"Invest for Future in Stable Platform\",\"heading_c\":\"and Make Fast Money\",\"sub_heading\":\"Invest in an Industry Leader, Professional, and Reliable Company. We provide you with the most necessary features that will make your experience better. Not only we guarantee the fastest and the most exciting returns on your investments, but we also guarantee the security of your investment.\",\"button_name\":\"Sign Up\",\"button_link\":\"user\\/register\",\"image\":\"631c9810cbce71662818320.jpg\"}', 'bit_gold', '2022-09-10 12:28:40', '2022-09-22 04:48:35'),
(208, 'blog.content', '{\"heading\":\"Our Latest News\",\"sub_heading\":\"you will get each update about our system and the world market in this area. Keep checking our Latest News to be in touch.\"}', 'bit_gold', '2022-09-10 12:28:58', '2022-09-10 12:28:58'),
(210, 'blog.content', '{\"heading\":\"Our Latest News\",\"sub_heading\":\"you will get each update about our system and the world market in this area. Keep checking our Latest News to be in touch.\"}', 'neo_dark', '2022-09-10 12:30:04', '2022-09-10 12:32:20'),
(216, 'about.content', '{\"has_image\":\"1\",\"heading\":\"About Us\",\"content\":\"We are an international financial company engaged in investment activities, which are related to trading on financial markets and cryptocurrency exchanges performed by qualified professional traders.\\r\\n\\r\\nOur goal is to provide our investors with a reliable source of high income, while minimizing any possible risks and offering a high-quality service, allowing us to automate and simplify the relations between the investors and the trustees. We work towards increasing your profit margin by profitable investment. We look forward to you being part of our community.\",\"image\":\"631d8591816a01662879121.png\"}', 'neo_dark', '2022-09-10 12:41:00', '2022-09-11 05:22:01'),
(217, 'banner.content', '{\"has_image\":\"1\",\"heading\":\"Invest for Future in Stable Platform and Make Fast Money\",\"button_name\":\"Sign Up\",\"button_link\":\"user\\/register\",\"button_two_name\":\"Sign In\",\"button_two_link\":\"user\\/login\",\"sub_heading\":\"Invest in an Industry Leader, Professional, and Reliable Company. We provide you with the most necessary features that will make your experience better. Not only we guarantee the fastest and the most exciting returns on your investments, but we also guarantee the security of your investment.\",\"image\":\"631d8664f2ab11662879332.png\"}', 'neo_dark', '2022-09-10 12:52:54', '2022-09-14 09:13:01'),
(218, 'calculation.content', '{\"heading_w\":\"Profit\",\"heading_c\":\"Calculator\",\"sub_heading\":\"You must know the calculation before investing in any plan, so you never make mistakes. Check the calculation and you will get as our calculator says.\"}', 'bit_gold', '2022-09-10 12:54:00', '2022-09-10 12:54:00'),
(219, 'calculation.content', '{\"has_image\":\"1\",\"heading\":\"Profit Calculator\",\"sub_heading\":\"You must know the calculation before investing in any plan, so you never make mistakes. Check the calculation and you will get as our calculator says.\",\"image\":\"633ef22566efe1665069605.png\"}', 'neo_dark', '2022-09-10 12:54:11', '2022-10-06 09:20:05'),
(220, 'contact.content', '{\"has_image\":\"1\",\"heading\":\"Contact With Us\",\"sub_heading\":\"If you have any questions or queries that are not answered on our website, please feel free to contact us. We will try to respond to you as soon as possible. Thank you so much.\",\"image\":\"631c9e4f1666c1662819919.jpg\"}', 'bit_gold', '2022-09-10 12:55:19', '2022-09-10 12:55:19'),
(221, 'contact.element', '{\"icon\":\"<i class=\\\"las la-phone\\\"><\\/i>\",\"title\":\"Phone Number\",\"content\":\"+01234 5678 9000\"}', 'bit_gold', '2022-09-10 12:55:45', '2022-09-10 12:55:46'),
(222, 'contact.element', '{\"icon\":\"<i class=\\\"far fa-envelope-open\\\"><\\/i>\",\"title\":\"Email Address\",\"content\":\"demo@example.com\"}', 'bit_gold', '2022-09-10 12:56:00', '2022-09-10 12:56:01'),
(223, 'contact.element', '{\"icon\":\"<i class=\\\"las la-map-marker\\\"><\\/i>\",\"title\":\"Office Address\",\"content\":\"3015 Suit pagla road, Singapore\"}', 'bit_gold', '2022-09-10 12:56:30', '2022-09-10 12:56:30'),
(224, 'contact.content', '{\"title\":null,\"subtitle\":null}', 'invester', '2022-09-10 12:57:59', '2022-09-10 12:57:59'),
(225, 'contact.element', '{\"icon\":\"<i class=\\\"las la-phone\\\"><\\/i>\",\"title\":\"Phone Number\",\"content\":\"+01234 5678 9000\"}', 'invester', '2022-09-10 12:57:59', '2022-09-10 12:57:59'),
(226, 'contact.element', '{\"icon\":\"<i class=\\\"far fa-envelope-open\\\"><\\/i>\",\"title\":\"Email Address\",\"content\":\"demo@example.com\"}', 'invester', '2022-09-10 12:57:59', '2022-09-10 12:57:59'),
(227, 'contact.element', '{\"icon\":\"<i class=\\\"las la-map-marker\\\"><\\/i>\",\"title\":\"Office Address\",\"content\":\"3015 Suit pagla road, Singapore\"}', 'invester', '2022-09-10 12:57:59', '2022-09-10 12:57:59'),
(228, 'cta.content', '{\"has_image\":\"1\",\"heading\":\"Get Started Today With Us\",\"sub_heading\":\"This is a Revolutionary Money Making Platform! Invest for Future in Stable Platform and Make Fast Money. Not only we guarantee the fastest and the most exciting returns on your investments, but we also guarantee the security of your investment.\",\"button_name\":\"Join Us\",\"button_url\":\"user\\/register\",\"image\":\"631c9f3d446e11662820157.jpg\"}', 'bit_gold', '2022-09-10 12:59:17', '2022-10-05 05:35:38'),
(229, 'faq.content', '{\"heading_w\":\"Frequently Asked\",\"heading_c\":\"Questions\",\"sub_heading\":\"We answer some of your Frequently Asked Questions regarding our platform. If you have a query that is not answered here, Please contact us.\"}', 'bit_gold', '2022-09-10 13:00:01', '2022-09-10 13:00:01'),
(230, 'faq.element', '{\"question\":\"When can I deposit\\/withdraw from my Investment account?\",\"answer\":\"Deposit and withdrawal are available for at any time. Be sure, that your funds are not used in any ongoing trade before the withdrawal. The available amount is shown in your dashboard on the main page of Investing platform.\\r\\n\\r\\n                                Deposit and withdrawal are available for at any time. Be sure, that your funds are not used in any ongoing trade before the withdrawal. The available amount is shown in your dashboard on the main page of Investing platform.\"}', 'bit_gold', '2022-09-10 13:00:23', '2022-09-10 13:00:23'),
(231, 'faq.element', '{\"question\":\"How do I check my account balance?\",\"answer\":\"You can see this anytime on your accounts dashboard. You can see this anytime on your accounts dashboard.\"}', 'bit_gold', '2022-09-10 13:00:39', '2022-09-10 13:00:39'),
(232, 'faq.element', '{\"question\":\"I forgot my password, what should I do?\",\"answer\":\"Visit the password reset page, type in your email address and click the `Reset` button. Visit the password reset page, type in your email address and click the `Reset` button.\"}', 'bit_gold', '2022-09-10 13:00:54', '2022-09-10 13:00:54'),
(233, 'faq.element', '{\"question\":\"How will I know that the withdrawal has been successful?\",\"answer\":\"You will get an automatic notification once we send the funds and you can always check your transactions or account balance. Your chosen payment system dictates how long it will take for the funds to reach you. You will get an automatic notification once we send the funds and you can always check your transactions or account balance. Your chosen payment system dictates how long it will take for the funds to reach you.\"}', 'bit_gold', '2022-09-10 13:01:07', '2022-09-10 13:01:07'),
(234, 'faq.element', '{\"question\":\"How much can I withdraw?\",\"answer\":\"You can withdraw the full amount of your account balance minus the funds that are used currently for supporting opened positions. You can withdraw the full amount of your account balance minus the funds that are used currently for supporting opened positions.\"}', 'bit_gold', '2022-09-10 13:01:21', '2022-09-10 13:01:22'),
(235, 'faq.content', '{\"heading\":\"Frequently Asked Questions\",\"sub_heading\":\"We answer some of your Frequently Asked Questions regarding our platform. If you have a query that is not answered here, Please contact us.\"}', 'neo_dark', '2022-09-10 13:01:37', '2022-09-11 05:33:28'),
(236, 'faq.element', '{\"question\":\"When can I deposit\\/withdraw from my Investment account?\",\"answer\":\"Deposit and withdrawal are available for at any time. Be sure, that your funds are not used in any ongoing trade before the withdrawal. The available amount is shown in your dashboard on the main page of Investing platform.\\r\\n\\r\\n                                Deposit and withdrawal are available for at any time. Be sure, that your funds are not used in any ongoing trade before the withdrawal. The available amount is shown in your dashboard on the main page of Investing platform.\"}', 'neo_dark', '2022-09-10 13:01:37', '2022-09-10 13:01:37'),
(237, 'faq.element', '{\"question\":\"How do I check my account balance?\",\"answer\":\"You can see this anytime on your accounts dashboard. You can see this anytime on your accounts dashboard.\"}', 'neo_dark', '2022-09-10 13:01:37', '2022-09-10 13:01:37'),
(238, 'faq.element', '{\"question\":\"I forgot my password, what should I do?\",\"answer\":\"Visit the password reset page, type in your email address and click the `Reset` button. Visit the password reset page, type in your email address and click the `Reset` button.\"}', 'neo_dark', '2022-09-10 13:01:37', '2022-09-10 13:01:37'),
(239, 'faq.element', '{\"question\":\"How will I know that the withdrawal has been successful?\",\"answer\":\"You will get an automatic notification once we send the funds and you can always check your transactions or account balance. Your chosen payment system dictates how long it will take for the funds to reach you. You will get an automatic notification once we send the funds and you can always check your transactions or account balance. Your chosen payment system dictates how long it will take for the funds to reach you.\"}', 'neo_dark', '2022-09-10 13:01:37', '2022-09-10 13:01:37'),
(240, 'faq.element', '{\"question\":\"How much can I withdraw?\",\"answer\":\"You can withdraw the full amount of your account balance minus the funds that are used currently for supporting opened positions.\"}', 'neo_dark', '2022-09-10 13:01:37', '2022-09-12 06:09:13'),
(241, 'faq.content', '{\"title\":null}', 'invester', '2022-09-10 13:01:55', '2022-09-10 13:01:55'),
(242, 'faq.element', '{\"question\":\"When can I deposit\\/withdraw from my Investment account?\",\"answer\":\"Deposit and withdrawal are available for at any time. Be sure, that your funds are not used in any ongoing trade before the withdrawal. The available amount is shown in your dashboard on the main page of Investing platform.\\r\\n\\r\\n                                Deposit and withdrawal are available for at any time. Be sure, that your funds are not used in any ongoing trade before the withdrawal. The available amount is shown in your dashboard on the main page of Investing platform.\"}', 'invester', '2022-09-10 13:01:55', '2022-09-10 13:01:55'),
(243, 'faq.element', '{\"question\":\"How do I check my account balance?\",\"answer\":\"You can see this anytime on your accounts dashboard. You can see this anytime on your accounts dashboard.\"}', 'invester', '2022-09-10 13:01:55', '2022-09-10 13:01:55'),
(244, 'faq.element', '{\"question\":\"I forgot my password, what should I do?\",\"answer\":\"Visit the password reset page, type in your email address and click the `Reset` button. Visit the password reset page, type in your email address and click the `Reset` button.\"}', 'invester', '2022-09-10 13:01:55', '2022-09-10 13:01:55'),
(245, 'faq.element', '{\"question\":\"How will I know that the withdrawal has been successful?\",\"answer\":\"You will get an automatic notification once we send the funds and you can always check your transactions or account balance. Your chosen payment system dictates how long it will take for the funds to reach you. You will get an automatic notification once we send the funds and you can always check your transactions or account balance. Your chosen payment system dictates how long it will take for the funds to reach you.\"}', 'invester', '2022-09-10 13:01:55', '2022-09-10 13:01:55'),
(246, 'faq.element', '{\"question\":\"How much can I withdraw?\",\"answer\":\"You can withdraw the full amount of your account balance minus the funds that are used currently for supporting opened positions. You can withdraw the full amount of your account balance minus the funds that are used currently for supporting opened positions.\"}', 'invester', '2022-09-10 13:01:55', '2022-09-10 13:01:55'),
(247, 'footer.content', '{\"has_image\":\"1\",\"image\":\"631ca001534431662820353.jpg\"}', 'bit_gold', '2022-09-10 13:02:33', '2022-09-10 13:02:33'),
(248, 'how_work.content', '{\"has_image\":\"1\",\"heading_w_1\":\"How\",\"heading_c\":\"Hyiplab\",\"heading_w_2\":\"Works\",\"sub_heading\":\"Get involved in our tremendous platform and Invest. We will utilize your money and give you profit in your wallet automatically.\",\"image\":\"631ca042137ab1662820418.jpg\"}', 'bit_gold', '2022-09-10 13:03:38', '2022-09-10 13:03:38'),
(249, 'how_work.element', '{\"title\":\"Create Account\",\"icon\":\"<i class=\\\"lar la-user\\\"><\\/i>\"}', 'bit_gold', '2022-09-10 13:03:57', '2022-09-10 13:03:57'),
(250, 'how_work.element', '{\"title\":\"Invest To Plan\",\"icon\":\"<i class=\\\"las la-clipboard-list\\\"><\\/i>\"}', 'bit_gold', '2022-09-10 13:04:20', '2022-09-10 13:04:20'),
(251, 'how_work.element', '{\"title\":\"Get Profit\",\"icon\":\"<i class=\\\"las la-wallet\\\"><\\/i>\"}', 'bit_gold', '2022-09-10 13:04:30', '2022-09-10 13:04:31'),
(252, 'how_work.content', '{\"heading\":\"How it Works\",\"sub_heading\":\"Get involved in our tremendous platform and Invest. We will utilize your money and give you profit in your wallet automatically.\"}', 'neo_dark', '2022-09-10 13:04:48', '2022-09-11 06:28:04'),
(253, 'how_work.element', '{\"icon\":\"<i class=\\\"lar la-user\\\"><\\/i>\",\"title\":\"Create Account\"}', 'neo_dark', '2022-09-10 13:04:48', '2022-09-10 13:04:48'),
(254, 'how_work.element', '{\"icon\":\"<i class=\\\"las la-clipboard-list\\\"><\\/i>\",\"title\":\"Invest To Plan\"}', 'neo_dark', '2022-09-10 13:04:48', '2022-09-10 13:04:48'),
(255, 'how_work.element', '{\"icon\":\"<i class=\\\"las la-wallet\\\"><\\/i>\",\"title\":\"Get Profit\"}', 'neo_dark', '2022-09-10 13:04:48', '2022-09-10 13:04:48'),
(256, 'login.content', '{\"has_image\":\"1\",\"heading_w\":\"Welcome To\",\"heading_c\":\"Hyiplab\",\"sub_heading\":\"Lorem ipsum dolor, sit amet consectetur adipisicing elit. Minus distinctio deserunt impedit similique debitis voluptatum enim.\",\"section_bg\":\"631ca0dc080a31662820572.jpg\",\"card_bg\":\"631ca0dc2ed1a1662820572.jpg\"}', 'bit_gold', '2022-09-10 13:06:11', '2022-09-10 13:06:12'),
(257, 'login.content', '{\"has_image\":\"1\",\"image\":\"631d951c9ede11662883100.png\"}', 'neo_dark', '2022-09-10 13:06:47', '2022-09-11 06:28:20'),
(258, 'plan.content', '{\"heading_w\":\"Investment\",\"heading_c\":\"Plans\",\"sub_heading\":\"To make a solid investment, you have to know where you are investing. Find a plan which is best for you.\"}', 'bit_gold', '2022-09-10 13:07:18', '2022-09-10 13:07:18'),
(259, 'plan.content', '{\"heading\":\"Investment Plans\",\"sub_heading\":\"To make a solid investment, you have to know where you are investing. Find a plan which is best for you.\"}', 'neo_dark', '2022-09-10 13:07:51', '2022-09-11 06:28:53'),
(260, 'policy_pages.element', '{\"title\":\"Privacy Policy\",\"details\":\"<h2 style=\\\"margin-bottom:10px;font-weight:600;line-height:24px;font-size:24px;font-family:DauphinPlain;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;\\\"><font color=\\\"#ffffff\\\">What is Lorem Ipsum?<\\/font><\\/h2><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><span style=\\\"font-weight:bolder;margin-top:0px;margin-right:0px;margin-left:0px;padding:0px;\\\">Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><br \\/><\\/font><\\/p><h2 style=\\\"margin-bottom:10px;font-weight:600;line-height:24px;font-size:24px;font-family:DauphinPlain;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;\\\"><font color=\\\"#ffffff\\\">What is Lorem Ipsum?<\\/font><\\/h2><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><span style=\\\"font-weight:bolder;margin-top:0px;margin-right:0px;margin-left:0px;padding:0px;\\\">Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><br \\/><\\/font><\\/p><h2 style=\\\"margin-bottom:10px;font-weight:600;line-height:24px;font-size:24px;font-family:DauphinPlain;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;\\\"><font color=\\\"#ffffff\\\">What is Lorem Ipsum?<\\/font><\\/h2><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><span style=\\\"font-weight:bolder;margin-top:0px;margin-right:0px;margin-left:0px;padding:0px;\\\">Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><br \\/><\\/font><\\/p><h2 style=\\\"margin-bottom:10px;font-weight:600;line-height:24px;font-size:24px;font-family:DauphinPlain;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;\\\"><font color=\\\"#ffffff\\\">What is Lorem Ipsum?<\\/font><\\/h2><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><span style=\\\"font-weight:bolder;margin-top:0px;margin-right:0px;margin-left:0px;padding:0px;\\\">Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><br \\/><\\/font><\\/p><h2 style=\\\"margin-bottom:10px;font-weight:600;line-height:24px;font-size:24px;font-family:DauphinPlain;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;\\\"><font color=\\\"#ffffff\\\">What is Lorem Ipsum?<\\/font><\\/h2><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><span style=\\\"font-weight:bolder;margin-top:0px;margin-right:0px;margin-left:0px;padding:0px;\\\">Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><br \\/><\\/font><\\/p><h2 style=\\\"margin-bottom:10px;font-weight:600;line-height:24px;font-size:24px;font-family:DauphinPlain;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;\\\"><font color=\\\"#ffffff\\\">What is Lorem Ipsum?<\\/font><\\/h2><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><span style=\\\"font-weight:bolder;margin-top:0px;margin-right:0px;margin-left:0px;padding:0px;\\\">Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><br \\/><\\/font><\\/p><h2 style=\\\"margin-bottom:10px;font-weight:600;line-height:24px;font-size:24px;font-family:DauphinPlain;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;\\\"><font color=\\\"#ffffff\\\">What is Lorem Ipsum?<\\/font><\\/h2><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><span style=\\\"font-weight:bolder;margin-top:0px;margin-right:0px;margin-left:0px;padding:0px;\\\">Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><br \\/><\\/font><\\/p><h2 style=\\\"margin-bottom:10px;font-weight:600;line-height:24px;font-size:24px;font-family:DauphinPlain;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;\\\"><font color=\\\"#ffffff\\\">What is Lorem Ipsum?<\\/font><\\/h2><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><span style=\\\"font-weight:bolder;margin-top:0px;margin-right:0px;margin-left:0px;padding:0px;\\\">Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/font><\\/p>\"}', 'bit_gold', '2022-09-10 13:08:33', '2022-09-10 13:08:33'),
(261, 'policy_pages.element', '{\"title\":\"Terms and Service\",\"details\":\"<h2 style=\\\"margin-bottom:10px;font-weight:600;line-height:24px;font-size:24px;font-family:DauphinPlain;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;\\\"><font color=\\\"#ffffff\\\">What is Lorem Ipsum?<\\/font><\\/h2><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><span style=\\\"font-weight:bolder;margin-top:0px;margin-right:0px;margin-left:0px;padding:0px;\\\">Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><br \\/><\\/font><\\/p><h2 style=\\\"margin-bottom:10px;font-weight:600;line-height:24px;font-size:24px;font-family:DauphinPlain;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;\\\"><font color=\\\"#ffffff\\\">What is Lorem Ipsum?<\\/font><\\/h2><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><span style=\\\"font-weight:bolder;margin-top:0px;margin-right:0px;margin-left:0px;padding:0px;\\\">Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><br \\/><\\/font><\\/p><h2 style=\\\"margin-bottom:10px;font-weight:600;line-height:24px;font-size:24px;font-family:DauphinPlain;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;\\\"><font color=\\\"#ffffff\\\">What is Lorem Ipsum?<\\/font><\\/h2><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><span style=\\\"font-weight:bolder;margin-top:0px;margin-right:0px;margin-left:0px;padding:0px;\\\">Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><br \\/><\\/font><\\/p><h2 style=\\\"margin-bottom:10px;font-weight:600;line-height:24px;font-size:24px;font-family:DauphinPlain;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;\\\"><font color=\\\"#ffffff\\\">What is Lorem Ipsum?<\\/font><\\/h2><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><span style=\\\"font-weight:bolder;margin-top:0px;margin-right:0px;margin-left:0px;padding:0px;\\\">Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><br \\/><\\/font><\\/p><h2 style=\\\"margin-bottom:10px;font-weight:600;line-height:24px;font-size:24px;font-family:DauphinPlain;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;\\\"><font color=\\\"#ffffff\\\">What is Lorem Ipsum?<\\/font><\\/h2><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><span style=\\\"font-weight:bolder;margin-top:0px;margin-right:0px;margin-left:0px;padding:0px;\\\">Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><br \\/><\\/font><\\/p><h2 style=\\\"margin-bottom:10px;font-weight:600;line-height:24px;font-size:24px;font-family:DauphinPlain;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;\\\"><font color=\\\"#ffffff\\\">What is Lorem Ipsum?<\\/font><\\/h2><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><span style=\\\"font-weight:bolder;margin-top:0px;margin-right:0px;margin-left:0px;padding:0px;\\\">Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><br \\/><\\/font><\\/p><h2 style=\\\"margin-bottom:10px;font-weight:600;line-height:24px;font-size:24px;font-family:DauphinPlain;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;\\\"><font color=\\\"#ffffff\\\">What is Lorem Ipsum?<\\/font><\\/h2><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><span style=\\\"font-weight:bolder;margin-top:0px;margin-right:0px;margin-left:0px;padding:0px;\\\">Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><br \\/><\\/font><\\/p><h2 style=\\\"margin-bottom:10px;font-weight:600;line-height:24px;font-size:24px;font-family:DauphinPlain;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;\\\"><font color=\\\"#ffffff\\\">What is Lorem Ipsum?<\\/font><\\/h2><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;color:rgb(255,255,255);background-color:rgb(16,17,19);padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;\\\"><font color=\\\"#ffffff\\\"><span style=\\\"font-weight:bolder;margin-top:0px;margin-right:0px;margin-left:0px;padding:0px;\\\">Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/font><\\/p>\"}', 'bit_gold', '2022-09-10 13:08:46', '2022-09-10 13:08:46');
INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `template_name`, `created_at`, `updated_at`) VALUES
(262, 'policy_pages.element', '{\"title\":\"Privacy Policy\",\"details\":\"<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\"}', 'neo_dark', '2022-09-10 13:08:56', '2022-09-25 00:51:34'),
(263, 'policy_pages.element', '{\"title\":\"Terms and Service\",\"details\":\"<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\"}', 'neo_dark', '2022-09-10 13:08:56', '2022-10-06 02:59:37'),
(266, 'register.content', '{\"has_image\":\"1\",\"heading_w\":\"Welcome To\",\"heading_c\":\"Hyiplab\",\"sub_heading\":\"Lorem ipsum dolor, sit amet consectetur adipisicing elit. Minus distinctio deserunt impedit similique debitis voluptatum enim.\",\"section_bg\":\"631ca1b63bca31662820790.jpg\",\"card_bg\":\"631ca1b664ebf1662820790.jpg\"}', 'bit_gold', '2022-09-10 13:09:50', '2022-09-10 13:09:50'),
(267, 'social_icon.element', '{\"icon\":\"<i class=\\\"lab la-facebook-f\\\"><\\/i>\",\"url\":\"https:\\/\\/facebook.com\"}', 'bit_gold', '2022-09-10 13:10:11', '2022-10-05 05:37:49'),
(268, 'social_icon.element', '{\"icon\":\"<i class=\\\"lab la-twitter\\\"><\\/i>\",\"url\":\"https:\\/\\/twitter.com\"}', 'bit_gold', '2022-09-10 13:10:21', '2022-10-05 05:37:56'),
(269, 'social_icon.element', '{\"icon\":\"<i class=\\\"fab fa-pinterest-p\\\"><\\/i>\",\"url\":\"https:\\/\\/www.pinterest.com\"}', 'bit_gold', '2022-09-10 13:10:44', '2022-10-05 05:38:23'),
(270, 'social_icon.element', '{\"icon\":\"<i class=\\\"lab la-linkedin-in\\\"><\\/i>\",\"url\":\"https:\\/\\/www.linkedin.com\"}', 'bit_gold', '2022-09-10 13:11:07', '2022-10-05 05:38:40'),
(271, 'subscribe.content', '{\"has_image\":\"1\",\"heading\":\"Subscribe Our Newsletter\",\"image\":\"631ca2753add11662820981.jpg\"}', 'bit_gold', '2022-09-10 13:13:01', '2022-09-10 13:13:01'),
(272, 'subscribe.content', '{\"heading\":\"Subscribe Our Newsletter\",\"sub_heading\":\"once you subscribe to our newsletter, we will send our promo offers and news to your email. No worry, we will not send spam.\"}', 'neo_dark', '2022-09-10 13:13:14', '2022-09-11 06:29:18'),
(273, 'team.content', '{\"has_image\":\"1\",\"heading_w\":\"Our Expert\",\"heading_c\":\"Team Members\",\"sub_heading\":\"We have a great team including developers, designers, and Traders. The Team always working hard to give you the maximum profit.\",\"image\":\"631d7cee5a6e31662876910.jpg\"}', 'bit_gold', '2022-09-11 04:45:10', '2022-09-11 04:45:10'),
(274, 'team.element', '{\"has_image\":\"1\",\"name\":\"Callie Mcdowell\",\"designation\":\"CEO\",\"image\":\"631d7d27b87b91662876967.jpg\"}', 'bit_gold', '2022-09-11 04:46:07', '2022-09-11 04:46:07'),
(275, 'team.element', '{\"has_image\":\"1\",\"name\":\"Marcia Weeks\",\"designation\":\"CTO\",\"image\":\"631d7d3659a841662876982.jpg\"}', 'bit_gold', '2022-09-11 04:46:22', '2022-09-11 04:46:22'),
(276, 'team.element', '{\"has_image\":\"1\",\"name\":\"Sage Bray\",\"designation\":\"Marketing Head\",\"image\":\"631d7d451b43e1662876997.jpg\"}', 'bit_gold', '2022-09-11 04:46:37', '2022-09-11 04:46:37'),
(277, 'team.element', '{\"has_image\":\"1\",\"name\":\"Cyrus Briggs\",\"designation\":\"Developer\",\"image\":\"631d7d59199b41662877017.jpg\"}', 'bit_gold', '2022-09-11 04:46:56', '2022-09-11 04:46:57'),
(278, 'team.element', '{\"has_image\":\"1\",\"name\":\"Colette Mccarty\",\"designation\":\"UX Expert\",\"image\":\"631d7d67880c71662877031.jpg\"}', 'bit_gold', '2022-09-11 04:47:11', '2022-09-11 04:47:11'),
(279, 'team.element', '{\"has_image\":\"1\",\"name\":\"Alden Odom\",\"designation\":\"SEO Expert\",\"image\":\"631d7d89303111662877065.jpg\"}', 'bit_gold', '2022-09-11 04:47:45', '2022-09-11 04:47:45'),
(280, 'team.element', '{\"has_image\":\"1\",\"name\":\"Tanek Gilmore\",\"designation\":\"SEO Expert\",\"image\":\"631d7da2f198c1662877090.jpg\"}', 'bit_gold', '2022-09-11 04:48:10', '2022-09-11 04:48:11'),
(281, 'team.element', '{\"has_image\":\"1\",\"name\":\"Upton Blair\",\"designation\":\"Manager\",\"image\":\"631d7db766b581662877111.jpg\"}', 'bit_gold', '2022-09-11 04:48:31', '2022-09-11 04:48:31'),
(282, 'testimonial.content', '{\"has_image\":\"1\",\"heading_w\":\"What Users Say\",\"heading_c\":\"About Us\",\"sub_heading\":\"We are doing really good at this market and here are the words we loved to get from a few of our users.\",\"image\":\"631d7ddd2fe6c1662877149.jpg\"}', 'bit_gold', '2022-09-11 04:49:09', '2022-09-11 04:49:09'),
(283, 'testimonial.element', '{\"has_image\":\"1\",\"name\":\"Melodie Ferguson\",\"designation\":\"User from India\",\"quote\":\"I have invested with this platform and gotten my money in my account. This is legit and safe. Great doing business with them.\",\"image\":\"631d7e336da8c1662877235.jpg\"}', 'bit_gold', '2022-09-11 04:50:35', '2022-09-11 04:50:35'),
(284, 'testimonial.element', '{\"has_image\":\"1\",\"name\":\"Samantha Levy\",\"designation\":\"User From USA\",\"quote\":\"Legit....and legit. Although the payment was processed manually, I have received my first payment within a very short time., I think nice for invest at this site.\",\"image\":\"631d7e52d2dcf1662877266.jpg\"}', 'bit_gold', '2022-09-11 04:51:06', '2022-09-11 04:51:06'),
(285, 'testimonial.element', '{\"has_image\":\"1\",\"name\":\"Geoffrey Crawford\",\"designation\":\"User From Nigeria\",\"quote\":\"I have invested with this platform and gotten my money in my account. This is legit and safe. Great doing business with them.\",\"image\":\"631d7e6f11faf1662877295.jpg\"}', 'bit_gold', '2022-09-11 04:51:35', '2022-09-11 04:51:35'),
(286, 'top_investor.content', '{\"heading_w\":\"Our Top\",\"heading_c\":\"Investors\",\"sub_heading\":\"Here are the investor leaders who have made the maximum investment with our system.\"}', 'bit_gold', '2022-09-11 04:52:12', '2022-09-11 04:52:12'),
(287, 'transaction.content', '{\"heading_w\":\"Our Latest\",\"heading_c\":\"Transaction\",\"sub_heading\":\"Here is the log of the most recent transactions including withdraw and deposit made by our users.\"}', 'bit_gold', '2022-09-11 04:52:30', '2022-09-26 05:24:24'),
(288, 'we_accept.content', '{\"heading_w\":\"Payment We\",\"heading_c\":\"Accept\",\"sub_heading\":\"We accept all major cryptocurrencies and fiat payment methods to make your investment process easier with our platform.\"}', 'bit_gold', '2022-09-11 04:52:48', '2022-09-11 04:52:48'),
(289, 'why_choose.content', '{\"has_image\":\"1\",\"heading_w\":\"Why Choose\",\"heading_c\":\"Hyiplab\",\"sub_heading\":\"Our goal is to provide our investors with a reliable source of high income, while minimizing any possible risks and offering a high-quality service.\",\"image\":\"631d7ee5c26801662877413.jpg\"}', 'bit_gold', '2022-09-11 04:53:20', '2022-09-11 04:53:34'),
(290, 'why_choose.element', '{\"title\":\"Legal Company\",\"icon\":\"<i class=\\\"las la-copy\\\"><\\/i>\",\"content\":\"Our company conducts absolutely legal activities in the legal field. We are certified to operate investment business, we are legal and safe.\"}', 'bit_gold', '2022-09-11 04:53:56', '2022-09-11 04:53:56'),
(291, 'why_choose.element', '{\"title\":\"High reliability\",\"icon\":\"<i class=\\\"las la-lock\\\"><\\/i>\",\"content\":\"We are trusted by a huge number of people. We are working hard constantly to improve the level of our security system and minimize possible risks.\"}', 'bit_gold', '2022-09-11 04:54:12', '2022-09-11 04:54:12'),
(292, 'why_choose.element', '{\"title\":\"Anonymity\",\"icon\":\"<i class=\\\"las la-user-lock\\\"><\\/i>\",\"content\":\"Anonymity and using cryptocurrency as a payment instrument. In the era of electronic money \\u2013 this is one of the most convenient ways of cooperation.\"}', 'bit_gold', '2022-09-11 04:54:29', '2022-09-11 04:54:29'),
(293, 'why_choose.element', '{\"title\":\"Quick Withdrawal\",\"icon\":\"<i class=\\\"las la-shipping-fast\\\"><\\/i>\",\"content\":\"Our all retreats are treated spontaneously once requested. There are high maximum limits. The minimum withdrawal amount is only $10 .\"}', 'bit_gold', '2022-09-11 04:55:10', '2022-09-11 04:55:10'),
(294, 'why_choose.element', '{\"title\":\"Referral Program\",\"icon\":\"<i class=\\\"las la-link\\\"><\\/i>\",\"content\":\"We are offering a certain level of referral income through our referral program. you can increase your income by simply refer a few people.\"}', 'bit_gold', '2022-09-11 04:55:26', '2022-09-11 04:55:26'),
(295, 'why_choose.element', '{\"title\":\"24\\/7 Support\",\"icon\":\"<i class=\\\"las la-headset\\\"><\\/i>\",\"content\":\"We provide 24\\/7 customer support through e-mail and telegram. Our support representatives are periodically available to elucidate any difficulty.\"}', 'bit_gold', '2022-09-11 04:57:21', '2022-09-11 04:57:21'),
(296, 'why_choose.element', '{\"title\":\"Dedicated Server\",\"icon\":\"<i class=\\\"las la-server\\\"><\\/i>\",\"content\":\"We are using a dedicated server for the website which allows us exclusive use of the resources of the entire server.\"}', 'bit_gold', '2022-09-11 04:57:39', '2022-09-11 04:57:39'),
(297, 'why_choose.element', '{\"title\":\"SSL Secured\",\"icon\":\"<i class=\\\"lab la-expeditedssl\\\"><\\/i>\",\"content\":\"Comodo Essential-SSL Security encryption confirms that the presented content is genuine and legitimate.\"}', 'bit_gold', '2022-09-11 04:57:57', '2022-09-11 04:58:20'),
(298, 'why_choose.element', '{\"title\":\"DDOS Protection\",\"icon\":\"<i class=\\\"las la-shield-alt\\\"><\\/i>\",\"content\":\"We are using one of the most experienced, professional, and trusted DDoS Protection and mitigation provider.\"}', 'bit_gold', '2022-09-11 04:58:40', '2022-09-11 04:58:40'),
(299, 'breadcrumb.content', '{\"has_image\":\"1\",\"image\":\"631d82f525a611662878453.jpg\"}', 'bit_gold', '2022-09-11 05:10:53', '2022-09-11 05:10:53'),
(300, 'contact.content', '{\"heading\":\"Contact With Us\",\"sub_heading\":\"If you have any questions or queries that are not answered on our website, please feel free to contact us. We will try to respond to you as soon as possible. Thank you so much.\",\"map_api_key\":\"AIzaSyCo_pcAdFNbTDCAvMwAD19oRTuEmb9M50c\",\"latitude\":\"19.1368977\",\"longitude\":\"72.893736\",\"title\":\"Hello With Us\"}', 'neo_dark', '2022-09-11 05:28:18', '2022-09-15 06:15:05'),
(301, 'contact.element', '{\"icon\":\"<i class=\\\"las la-phone\\\"><\\/i>\",\"title\":\"Phone Number\",\"content\":\"+01234 5678 9000\"}', 'neo_dark', '2022-09-11 05:28:18', '2022-09-11 05:28:18'),
(302, 'contact.element', '{\"icon\":\"<i class=\\\"far fa-envelope-open\\\"><\\/i>\",\"title\":\"Email Address\",\"content\":\"demo@example.com\"}', 'neo_dark', '2022-09-11 05:28:18', '2022-09-11 05:28:18'),
(303, 'contact.element', '{\"icon\":\"<i class=\\\"las la-map-marker\\\"><\\/i>\",\"title\":\"Office Address\",\"content\":\"3015 Suit pagla road, Singapore\"}', 'neo_dark', '2022-09-11 05:28:18', '2022-09-11 05:28:18'),
(304, 'counter.element', '{\"title\":\"Investment\",\"counter_digit\":\"4k+\"}', 'neo_dark', '2022-09-11 05:32:24', '2022-09-11 05:32:24'),
(305, 'counter.element', '{\"title\":\"Withdraw\",\"counter_digit\":\"$160k+\"}', 'neo_dark', '2022-09-11 05:32:38', '2022-09-11 05:32:38'),
(306, 'counter.element', '{\"title\":\"Deposit\",\"counter_digit\":\"$250K+\"}', 'neo_dark', '2022-09-11 05:32:47', '2022-09-11 05:32:47'),
(307, 'counter.element', '{\"title\":\"Users\",\"counter_digit\":\"5K+\"}', 'neo_dark', '2022-09-11 05:32:55', '2022-09-11 05:32:55'),
(308, 'why_choose.content', '{\"heading\":\"Features - Why Choose Us\",\"sub_heading\":\"Our goal is to provide our investors with a reliable source of high income, while minimizing any possible risks and offering a high-quality service.\"}', 'neo_dark', '2022-09-11 05:35:34', '2022-09-11 05:35:41'),
(309, 'why_choose.element', '{\"title\":\"Legal Company\",\"icon\":\"<i class=\\\"las la-copy\\\"><\\/i>\",\"content\":\"Our company conducts absolutely legal activities in the legal field. We are certified to operate investment business, we are legal and safe.\"}', 'neo_dark', '2022-09-11 05:35:34', '2022-09-11 05:35:34'),
(310, 'why_choose.element', '{\"title\":\"High reliability\",\"icon\":\"<i class=\\\"las la-lock\\\"><\\/i>\",\"content\":\"We are trusted by a huge number of people. We are working hard constantly to improve the level of our security system and minimize possible risks.\"}', 'neo_dark', '2022-09-11 05:35:34', '2022-09-11 05:35:34'),
(311, 'why_choose.element', '{\"title\":\"Anonymity\",\"icon\":\"<i class=\\\"las la-user-lock\\\"><\\/i>\",\"content\":\"Anonymity and using cryptocurrency as a payment instrument. In the era of electronic money \\u2013 this is one of the most convenient ways of cooperation.\"}', 'neo_dark', '2022-09-11 05:35:34', '2022-09-11 05:35:34'),
(312, 'why_choose.element', '{\"title\":\"Quick Withdrawal\",\"icon\":\"<i class=\\\"las la-shipping-fast\\\"><\\/i>\",\"content\":\"Our all retreats are treated spontaneously once requested. There are high maximum limits. The minimum withdrawal amount is only $10 .\"}', 'neo_dark', '2022-09-11 05:35:34', '2022-09-11 05:35:34'),
(313, 'why_choose.element', '{\"title\":\"Referral Program\",\"icon\":\"<i class=\\\"las la-link\\\"><\\/i>\",\"content\":\"We are offering a certain level of referral income through our referral program. you can increase your income by simply refer a few people.\"}', 'neo_dark', '2022-09-11 05:35:34', '2022-09-11 05:35:34'),
(314, 'why_choose.element', '{\"title\":\"24\\/7 Support\",\"icon\":\"<i class=\\\"las la-headset\\\"><\\/i>\",\"content\":\"We provide 24\\/7 customer support through e-mail and telegram. Our support representatives are periodically available to elucidate any difficulty.\"}', 'neo_dark', '2022-09-11 05:35:34', '2022-09-11 05:35:34'),
(315, 'why_choose.element', '{\"title\":\"Dedicated Server\",\"icon\":\"<i class=\\\"las la-server\\\"><\\/i>\",\"content\":\"We are using a dedicated server for the website which allows us exclusive use of the resources of the entire server.\"}', 'neo_dark', '2022-09-11 05:35:34', '2022-09-11 05:35:34'),
(316, 'why_choose.element', '{\"title\":\"SSL Secured\",\"icon\":\"<i class=\\\"lab la-expeditedssl\\\"><\\/i>\",\"content\":\"Comodo Essential-SSL Security encryption confirms that the presented content is genuine and legitimate.\"}', 'neo_dark', '2022-09-11 05:35:34', '2022-09-11 05:35:34'),
(317, 'why_choose.element', '{\"title\":\"DDOS Protection\",\"icon\":\"<i class=\\\"las la-shield-alt\\\"><\\/i>\",\"content\":\"We are using one of the most experienced, professional, and trusted DDoS Protection and mitigation provider.\"}', 'neo_dark', '2022-09-11 05:35:34', '2022-09-11 05:35:34'),
(318, 'footer.content', '{\"content\":\"This is a Revolutionary Money Making Platform! Invest for Future in Stable Platform and Make Fast Money. Not only we guarantee the fastest and the most exciting returns on your investments, but we also guarantee the security of your investment.\"}', 'neo_dark', '2022-09-11 06:27:44', '2022-09-11 06:27:44'),
(319, 'register.content', '{\"has_image\":\"1\",\"image\":\"631d95465ec641662883142.png\"}', 'neo_dark', '2022-09-11 06:29:02', '2022-09-11 06:29:02'),
(320, 'team.content', '{\"heading\":\"Our Expert Team\",\"sub_heading\":\"We have a great team including developers, designers, and Traders. The Team always working hard to give you the maximum profit.\"}', 'neo_dark', '2022-09-11 06:29:34', '2022-09-11 06:30:08'),
(321, 'team.element', '{\"has_image\":\"1\",\"name\":\"Callie Mcdowell\",\"designation\":\"CEO\",\"image\":\"631d958f6449f1662883215.jpg\"}', 'neo_dark', '2022-09-11 06:29:34', '2022-09-11 06:30:15'),
(322, 'team.element', '{\"has_image\":\"1\",\"name\":\"Marcia Weeks\",\"designation\":\"CTO\",\"image\":\"631d9596177f91662883222.jpg\"}', 'neo_dark', '2022-09-11 06:29:34', '2022-09-11 06:30:22'),
(323, 'team.element', '{\"has_image\":\"1\",\"name\":\"Sage Bray\",\"designation\":\"Marketing Head\",\"image\":\"631d959daf20c1662883229.jpg\"}', 'neo_dark', '2022-09-11 06:29:35', '2022-09-11 06:30:29'),
(324, 'team.element', '{\"has_image\":\"1\",\"name\":\"Cyrus Briggs\",\"designation\":\"Developer\",\"image\":\"631d95a8c1e0e1662883240.jpg\"}', 'neo_dark', '2022-09-11 06:29:35', '2022-09-11 06:30:40'),
(325, 'team.element', '{\"has_image\":\"1\",\"name\":\"Colette Mccarty\",\"designation\":\"UX Expert\",\"image\":\"631d95b194e561662883249.jpg\"}', 'neo_dark', '2022-09-11 06:29:35', '2022-09-11 06:30:49'),
(326, 'team.element', '{\"has_image\":\"1\",\"name\":\"Alden Odom\",\"designation\":\"SEO Expert\",\"image\":\"631d95ba2bec21662883258.jpg\"}', 'neo_dark', '2022-09-11 06:29:35', '2022-09-11 06:30:58'),
(327, 'team.element', '{\"has_image\":\"1\",\"name\":\"Tanek Gilmore\",\"designation\":\"SEO Expert\",\"image\":\"631d95c577a5f1662883269.jpg\"}', 'neo_dark', '2022-09-11 06:29:35', '2022-09-11 06:31:09'),
(328, 'team.element', '{\"has_image\":\"1\",\"name\":\"Upton Blair\",\"designation\":\"Manager\",\"image\":\"631d95df9760a1662883295.jpg\"}', 'neo_dark', '2022-09-11 06:29:35', '2022-09-11 06:31:35'),
(329, 'testimonial.content', '{\"heading\":\"What Users Say\",\"sub_heading\":\"We are doing really good at this market and here are the words we loved to get from a few of our users.\"}', 'neo_dark', '2022-09-11 06:31:52', '2022-09-11 07:27:07'),
(330, 'testimonial.element', '{\"has_image\":\"1\",\"author\":\"John Doe\",\"designation\":\"User from India\",\"quote\":\"I have invested with this platform and gotten my money in my account. This is legit and safe. Great doing business with them.\",\"image\":\"6331b2d8be93f1664201432.jpg\"}', 'neo_dark', '2022-09-11 06:31:52', '2022-09-26 08:10:32'),
(331, 'testimonial.element', '{\"has_image\":\"1\",\"author\":\"Rodduka Bruch\",\"designation\":\"User From USA\",\"quote\":\"Legit....and legit. Although the payment was processed manually, I have received my first payment within a very short time., I think nice for invest at this site.\",\"image\":\"6331b2eae90971664201450.jpg\"}', 'neo_dark', '2022-09-11 06:31:52', '2022-09-26 08:10:50'),
(332, 'testimonial.element', '{\"has_image\":\"1\",\"author\":\"Putran Datta\",\"designation\":\"User From Nigeria\",\"quote\":\"I have invested with this platform and gotten my money in my account. This is legit and safe. Great doing business with them.\",\"image\":\"6331b301ac8011664201473.jpg\"}', 'neo_dark', '2022-09-11 06:31:52', '2022-09-26 08:11:13'),
(333, 'top_investor.content', '{\"heading\":\"Our Top Investors\",\"sub_heading\":\"Here are the investor leaders who have made the maximum investment with our system.\"}', 'neo_dark', '2022-09-11 07:27:12', '2022-09-11 07:27:33'),
(334, 'transaction.content', '{\"heading\":\"Our Latest Transaction\",\"sub_heading\":\"Here is the log of the most recent transactions including withdraw and deposit made by our users.\"}', 'neo_dark', '2022-09-11 07:27:56', '2022-09-11 07:28:38'),
(335, 'we_accept.content', '{\"heading\":\"Payment We Accept\",\"sub_heading\":\"We accept all major cryptocurrencies and fiat payment methods to make your investment process easier with our platform.\"}', 'neo_dark', '2022-09-11 07:28:45', '2022-09-26 08:17:06'),
(337, 'footer.content', '{\"content\":\"Lorem, ipsum dolor sit amet consectetur adipisicing elit. A ut aspernatur nesciunt dolores dolorem corrupti explicabo voluptate placeat impedit eveniet. Placeat soluta modi, dolor dolores iure eaque blanditiis labore temporibus cum magni rem accusantium eveniet? Quis suscipit\"}', 'invester', '2022-09-18 13:22:57', '2022-09-18 13:41:21'),
(338, 'authentication.content', '{\"register_title\":\"Create an Account\",\"register_subtitle\":\"You can create account using email or username and the registration is fully free\",\"login_title\":\"Login to your account\",\"login_subtitle\":\"You can sign in to your account using email or username\"}', 'invester', '2022-09-19 12:04:09', '2022-09-20 06:54:45'),
(340, 'preloader.content', '{\"has_image\":\"1\",\"image_one\":\"632ebf9b581241664008091.png\",\"image_two\":\"632ebf9b5e2681664008091.png\"}', 'bit_gold', '2022-09-24 01:30:47', '2022-09-24 02:28:11'),
(341, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"63319095f3d411664192661.jpg\"}', 'bit_gold', '2022-09-25 00:18:19', '2022-09-26 05:44:22'),
(343, 'transaction.element', '{\"trx_type\":\"withdraw\",\"name\":\"Benjamin Santos\",\"date\":\"2022-09-21\",\"amount\":\"120\",\"gateway\":\"Bank Wire\"}', 'bit_gold', '2022-09-26 05:24:52', '2022-09-26 05:26:42'),
(344, 'transaction.element', '{\"trx_type\":\"withdraw\",\"name\":\"Hilda Baird\",\"date\":\"2022-09-21\",\"amount\":\"365\",\"gateway\":\"Mobile Banking\"}', 'bit_gold', '2022-09-26 05:25:31', '2022-09-26 05:25:31'),
(345, 'transaction.element', '{\"trx_type\":\"withdraw\",\"name\":\"Glenna Mcdowell\",\"date\":\"2022-09-21\",\"amount\":\"325\",\"gateway\":\"Coin Transfer\"}', 'bit_gold', '2022-09-26 05:26:10', '2022-09-26 05:26:26'),
(346, 'transaction.element', '{\"trx_type\":\"withdraw\",\"name\":\"Ruth Herman\",\"date\":\"2022-09-21\",\"amount\":\"412\",\"gateway\":\"Bank Transfer\"}', 'bit_gold', '2022-09-26 05:27:05', '2022-09-26 05:27:05'),
(347, 'transaction.element', '{\"trx_type\":\"withdraw\",\"name\":\"Eve Hawkins\",\"date\":\"2022-09-21\",\"amount\":\"245\",\"gateway\":\"Mobile Banking\"}', 'bit_gold', '2022-09-26 05:27:47', '2022-09-26 05:27:47'),
(348, 'transaction.element', '{\"trx_type\":\"withdraw\",\"name\":\"Raphael Rush\",\"date\":\"2022-09-21\",\"amount\":\"365\",\"gateway\":\"Bank Wire\"}', 'bit_gold', '2022-09-26 05:28:23', '2022-09-26 05:28:23'),
(349, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"6331909d64be71664192669.jpg\"}', 'bit_gold', '2022-09-26 05:44:29', '2022-09-26 05:44:29'),
(350, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"633190a588df71664192677.jpg\"}', 'bit_gold', '2022-09-26 05:44:37', '2022-09-26 05:44:37'),
(351, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"633190ad89c261664192685.jpg\"}', 'bit_gold', '2022-09-26 05:44:45', '2022-09-26 05:44:45'),
(352, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"633190b56702e1664192693.jpg\"}', 'bit_gold', '2022-09-26 05:44:53', '2022-09-26 05:44:53'),
(353, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"633190beae8061664192702.jpg\"}', 'bit_gold', '2022-09-26 05:45:02', '2022-09-26 05:45:02'),
(354, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"633190c81d2361664192712.jpg\"}', 'bit_gold', '2022-09-26 05:45:12', '2022-09-26 05:45:12'),
(355, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"633190d1715f71664192721.jpg\"}', 'bit_gold', '2022-09-26 05:45:21', '2022-09-26 05:45:21'),
(356, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"633190dadd0f81664192730.jpg\"}', 'bit_gold', '2022-09-26 05:45:30', '2022-09-26 05:45:30'),
(357, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"633190e5aa7371664192741.jpg\"}', 'bit_gold', '2022-09-26 05:45:41', '2022-09-26 05:45:41'),
(358, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"633190f8ef6061664192760.jpg\"}', 'bit_gold', '2022-09-26 05:46:00', '2022-09-26 05:46:01'),
(359, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"63319103114611664192771.jpg\"}', 'bit_gold', '2022-09-26 05:46:11', '2022-09-26 05:46:11'),
(360, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"6331910d5ef4e1664192781.jpg\"}', 'bit_gold', '2022-09-26 05:46:21', '2022-09-26 05:46:21'),
(361, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"633191199cfcb1664192793.jpg\"}', 'bit_gold', '2022-09-26 05:46:33', '2022-09-26 05:46:33'),
(362, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"633191261ce231664192806.jpg\"}', 'bit_gold', '2022-09-26 05:46:46', '2022-09-26 05:46:46'),
(363, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"6331912f34a631664192815.jpg\"}', 'bit_gold', '2022-09-26 05:46:55', '2022-09-26 05:46:55'),
(364, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Voluptatum est expedita officia established  fact\",\"description\":\"<span>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\\u00a0It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/span><br \\/>\",\"image\":\"63319192e33ed1664192914.jpg\"}', 'bit_gold', '2022-09-26 05:48:34', '2022-09-26 05:48:35'),
(365, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"amet quisquam ut vitae debitis iste.\",\"description\":\"<span>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\\u00a0It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/span><br \\/>\",\"image\":\"633191bed49ca1664192958.jpg\"}', 'bit_gold', '2022-09-26 05:49:18', '2022-09-26 05:49:19'),
(366, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"It is a long established fact that a reade\",\"description\":\"<span>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\\u00a0It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/span><br \\/>\",\"image\":\"633191d9715801664192985.jpg\"}', 'bit_gold', '2022-09-26 05:49:45', '2022-09-26 05:49:45'),
(367, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Voluptatum est expedita officia, eos\",\"description\":\"<span>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\\u00a0It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/span><br \\/>\",\"image\":\"6331b1d007fc91664201168.jpg\"}', 'bit_gold', '2022-09-26 08:06:07', '2022-09-26 08:06:08'),
(368, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Voluptatum est expedita officia, eos\",\"description\":\"<span>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\\u00a0It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/span><br \\/>\",\"image\":\"6331b1e8db6511664201192.jpg\"}', 'bit_gold', '2022-09-26 08:06:32', '2022-09-26 08:06:33'),
(369, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Voluptatum est expedita officia, eos\",\"description\":\"<span>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\\u00a0It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/span><br \\/>\",\"image\":\"6331b1fab41151664201210.jpg\"}', 'bit_gold', '2022-09-26 08:06:50', '2022-09-26 08:06:50'),
(370, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Voluptatum est expedita officia established  fact\",\"description\":\"<span>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\\u00a0It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/span><br \\/>\",\"image\":\"6331b37472d271664201588.jpg\"}', 'neo_dark', '2022-09-26 08:12:59', '2022-09-26 08:13:08'),
(371, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"amet quisquam ut vitae debitis iste.\",\"description\":\"<span>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\\u00a0It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/span><br \\/>\",\"image\":\"6331b37c360dc1664201596.jpg\"}', 'neo_dark', '2022-09-26 08:12:59', '2022-09-26 08:13:16'),
(372, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"It is a long established fact that a reade\",\"description\":\"<span>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\\u00a0It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/span><br \\/>\",\"image\":\"6331b383af2971664201603.jpg\"}', 'neo_dark', '2022-09-26 08:12:59', '2022-09-26 08:13:23');
INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `template_name`, `created_at`, `updated_at`) VALUES
(373, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Voluptatum est expedita officia, eos\",\"description\":\"<span>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\\u00a0It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/span><br \\/>\",\"image\":\"6331b38b413b41664201611.jpg\"}', 'neo_dark', '2022-09-26 08:12:59', '2022-09-26 08:13:31'),
(374, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Voluptatum est expedita officia, eos\",\"description\":\"<span>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\\u00a0It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/span><br \\/>\",\"image\":\"6331b39334ed01664201619.jpg\"}', 'neo_dark', '2022-09-26 08:12:59', '2022-09-26 08:13:39'),
(375, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Voluptatum est expedita officia, eos\",\"description\":\"<span>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\\u00a0It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/span><br \\/>\",\"image\":\"6331b39b5cdf91664201627.jpg\"}', 'neo_dark', '2022-09-26 08:12:59', '2022-09-26 08:13:47'),
(376, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"6331b469adf241664201833.jpg\"}', 'neo_dark', '2022-09-26 08:16:59', '2022-09-26 08:17:13'),
(377, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"6331b478b064e1664201848.jpg\"}', 'neo_dark', '2022-09-26 08:16:59', '2022-09-26 08:17:28'),
(378, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"6331b48013ebe1664201856.jpg\"}', 'neo_dark', '2022-09-26 08:16:59', '2022-09-26 08:17:36'),
(379, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"6331b48911ad11664201865.jpg\"}', 'neo_dark', '2022-09-26 08:16:59', '2022-09-26 08:17:45'),
(380, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"6331b4911a65a1664201873.jpg\"}', 'neo_dark', '2022-09-26 08:16:59', '2022-09-26 08:17:53'),
(381, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"6331b49a692c51664201882.jpg\"}', 'neo_dark', '2022-09-26 08:16:59', '2022-09-26 08:18:02'),
(382, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"6331b4a689e2d1664201894.jpg\"}', 'neo_dark', '2022-09-26 08:17:00', '2022-09-26 08:18:14'),
(383, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"6331b4b7930091664201911.jpg\"}', 'neo_dark', '2022-09-26 08:17:00', '2022-09-26 08:18:31'),
(384, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"6331b4d1812581664201937.jpg\"}', 'neo_dark', '2022-09-26 08:17:00', '2022-09-26 08:18:57'),
(385, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"6331b4d8316831664201944.jpg\"}', 'neo_dark', '2022-09-26 08:17:00', '2022-09-26 08:19:04'),
(386, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"6331b4e1215b71664201953.jpg\"}', 'neo_dark', '2022-09-26 08:17:00', '2022-09-26 08:19:13'),
(387, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"6331b4e9889851664201961.jpg\"}', 'neo_dark', '2022-09-26 08:17:00', '2022-09-26 08:19:21'),
(388, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"6331b501a44a51664201985.jpg\"}', 'neo_dark', '2022-09-26 08:17:00', '2022-09-26 08:19:45'),
(389, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"6331b50c0cff01664201996.jpg\"}', 'neo_dark', '2022-09-26 08:17:00', '2022-09-26 08:19:56'),
(390, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"6331b51535bce1664202005.jpg\"}', 'neo_dark', '2022-09-26 08:17:00', '2022-09-26 08:20:05'),
(391, 'we_accept.element', '{\"has_image\":\"1\",\"image\":\"6331b5235e83d1664202019.jpg\"}', 'neo_dark', '2022-09-26 08:17:00', '2022-09-26 08:20:19'),
(394, 'policy_pages.element', '{\"title\":\"Privacy Policy\",\"details\":\"<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\"}', 'invester', '2022-09-26 08:22:15', '2022-09-26 08:22:15'),
(395, 'policy_pages.element', '{\"title\":\"Terms and Service\",\"details\":\"<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\\r\\n<p><br \\/>\\r\\n<\\/p>\\r\\n<h2>What is Lorem Ipsum?\\r\\n<\\/h2>\\r\\n<p><span>Lorem Ipsum<\\/span>\\u00a0is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the\\r\\n        industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\\r\\n        it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic\\r\\n        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset\\r\\n        sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker\\r\\n        including versions of Lorem Ipsum.\\r\\n<\\/p>\"}', 'invester', '2022-09-26 08:22:15', '2022-10-06 02:58:09'),
(396, 'how_it_work.content', '{\"title\":\"How HYIPLab Work\",\"subtitle\":\"To start with <span class=\\\"fw-bold\\\"><i>HYIPLab<\\/i><\\/span> you should know that how the system works. Please follow the below process to know that how the system works.\"}', 'invester', '2022-09-27 00:50:50', '2022-09-27 00:50:50'),
(397, 'how_it_work.element', '{\"has_image\":\"1\",\"title\":\"Create Account\",\"content\":\"Create an account providing your valid information\",\"image\":\"63329f02251e21664261890.png\"}', 'invester', '2022-09-27 00:58:10', '2022-09-27 00:58:10'),
(398, 'how_it_work.element', '{\"has_image\":\"1\",\"title\":\"Add Fund\",\"content\":\"Make deposit using our supported payment gateway\",\"image\":\"63329f26c36421664261926.png\"}', 'invester', '2022-09-27 00:58:46', '2022-09-27 00:58:46'),
(399, 'how_it_work.element', '{\"has_image\":\"1\",\"title\":\"Invest to Plan\",\"content\":\"Make investment to get profit from our system\",\"image\":\"63329f4740b7e1664261959.png\"}', 'invester', '2022-09-27 00:59:19', '2022-09-27 00:59:19'),
(400, 'how_it_work.element', '{\"has_image\":\"1\",\"title\":\"Withdraw Profit\",\"content\":\"Withdraw your profit which you\'ve got from the investment\",\"image\":\"63329f7b3bf561664262011.png\"}', 'invester', '2022-09-27 01:00:11', '2022-09-27 01:00:11'),
(401, 'testimonial.element', '{\"has_image\":\"1\",\"name\":\"David Doe\",\"designation\":\"User from England\",\"quote\":\"Legit....and legit. Although the payment was processed manually, I have received my first payment within a very short time., I think nice for invest at this site.\",\"image\":\"633edd66c19231665064294.jpg\"}', 'bit_gold', '2022-10-06 07:50:53', '2022-10-06 07:51:34'),
(411, 'preloader.content', '{\"has_image\":\"1\",\"image_one\":\"633efa583f0551665071704.png\",\"image_two\":\"633efa584317d1665071704.png\"}', 'neo_dark', '2022-10-06 09:55:04', '2022-10-06 09:55:04'),
(412, 'user_ranking.content', '{\"heading_w\":\"User Ranking\",\"heading_c\":\"Bonus\",\"sub_heading\":\"You can get bonus for investing or Interest.\"}', 'bit_gold', '2023-02-06 07:48:56', '2023-02-06 07:48:56'),
(413, 'user_ranking.content', '{\"heading\":\"User Ranking Bonus\",\"sub_heading\":\"You can get bonus for investing or Interest.\"}', 'neo_dark', '2023-02-06 23:51:09', '2023-02-06 23:51:35'),
(414, 'user_ranking.content', '{\"title\":\"User Ranking Bonus\",\"subtitle\":\"You can get bonus for investing or Interest.\"}', 'invester', '2023-02-07 00:15:49', '2023-02-07 00:15:49'),
(415, 'ranking.content', '{\"heading_w\":\"User\",\"heading_c\":\"Ranking\",\"sub_heading\":\"You can get a bonus to fulfill the requirement.\"}', 'bit_gold', '2023-03-11 01:25:36', '2023-03-11 02:56:24'),
(416, 'ranking.content', '{\"heading\":\"User Ranking\",\"sub_heading\":\"You can get a bonus to fulfill the requirement.\"}', 'invester', '2023-03-11 02:47:58', '2023-03-11 02:52:08'),
(417, 'ranking.content', '{\"heading\":\"User Ranking\",\"sub_heading\":\"You can get a bonus to fulfill the requirement.\"}', 'neo_dark', '2023-03-11 02:55:55', '2023-03-11 02:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `code` int(11) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `alias` varchar(40) NOT NULL DEFAULT 'NULL',
  `qr_code_link` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=>enable, 2=>disable',
  `gateway_parameters` text DEFAULT NULL,
  `supported_currencies` text DEFAULT NULL,
  `crypto` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: fiat currency, 1: crypto currency',
  `extra` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `form_id`, `code`, `name`, `alias`, `qr_code_link`, `status`, `gateway_parameters`, `supported_currencies`, `crypto`, `extra`, `description`, `created_at`, `updated_at`) VALUES
(1, 0, 101, 'Paypal', 'Paypal', NULL, 1, '{\"paypal_email\":{\"title\":\"PayPal Email\",\"global\":true,\"value\":\"sb-owud61543012@business.example.com\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 00:04:38'),
(2, 0, 102, 'Perfect Money', 'PerfectMoney', NULL, 1, '{\"passphrase\":{\"title\":\"ALTERNATE PASSPHRASE\",\"global\":true,\"value\":\"hR26aw02Q1eEeUPSIfuwNypXX\"},\"wallet_id\":{\"title\":\"PM Wallet\",\"global\":false,\"value\":\"\"}}', '{\"USD\":\"$\",\"EUR\":\"\\u20ac\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 01:35:33'),
(3, 0, 103, 'Stripe Hosted', 'Stripe', NULL, 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51I6GGiCGv1sRiQlEi5v1or9eR0HVbuzdMd2rW4n3DxC8UKfz66R4X6n4yYkzvI2LeAIuRU9H99ZpY7XCNFC9xMs500vBjZGkKG\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51I6GGiCGv1sRiQlEOisPKrjBqQqqcFsw8mXNaZ2H2baN6R01NulFS7dKFji1NRRxuchoUTEDdB7ujKcyKYSVc0z500eth7otOM\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 00:48:36'),
(4, 0, 104, 'Skrill', 'Skrill', NULL, 1, '{\"pay_to_email\":{\"title\":\"Skrill Email\",\"global\":true,\"value\":\"merchant@skrill.com\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"---\"}}', '{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JOD\":\"JOD\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"KWD\":\"KWD\",\"MAD\":\"MAD\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"OMR\":\"OMR\",\"PLN\":\"PLN\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"SAR\":\"SAR\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TND\":\"TND\",\"TRY\":\"TRY\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\",\"COP\":\"COP\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 01:30:16'),
(5, 0, 105, 'PayTM', 'Paytm', NULL, 1, '{\"MID\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"DIY12386817555501617\"},\"merchant_key\":{\"title\":\"Merchant Key\",\"global\":true,\"value\":\"bKMfNxPPf_QdZppa\"},\"WEBSITE\":{\"title\":\"Paytm Website\",\"global\":true,\"value\":\"DIYtestingweb\"},\"INDUSTRY_TYPE_ID\":{\"title\":\"Industry Type\",\"global\":true,\"value\":\"Retail\"},\"CHANNEL_ID\":{\"title\":\"CHANNEL ID\",\"global\":true,\"value\":\"WEB\"},\"transaction_url\":{\"title\":\"Transaction URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/oltp-web\\/processTransaction\"},\"transaction_status_url\":{\"title\":\"Transaction STATUS URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/paytmchecksum\\/paytmCallback.jsp\"}}', '{\"AUD\":\"AUD\",\"ARS\":\"ARS\",\"BDT\":\"BDT\",\"BRL\":\"BRL\",\"BGN\":\"BGN\",\"CAD\":\"CAD\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"HRK\":\"HRK\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EGP\":\"EGP\",\"EUR\":\"EUR\",\"GEL\":\"GEL\",\"GHS\":\"GHS\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"MAD\":\"MAD\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"NGN\":\"NGN\",\"NOK\":\"NOK\",\"PKR\":\"PKR\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"ZAR\":\"ZAR\",\"KRW\":\"KRW\",\"LKR\":\"LKR\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"TRY\":\"TRY\",\"UGX\":\"UGX\",\"UAH\":\"UAH\",\"AED\":\"AED\",\"GBP\":\"GBP\",\"USD\":\"USD\",\"VND\":\"VND\",\"XOF\":\"XOF\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 03:00:44'),
(6, 0, 106, 'Payeer', 'Payeer', NULL, 0, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"866989763\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"7575\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"RUB\":\"RUB\"}', 0, '{\"status\":{\"title\": \"Status URL\",\"value\":\"ipn.Payeer\"}}', NULL, '2019-09-14 13:14:22', '2020-12-28 01:26:58'),
(7, 0, 107, 'PayStack', 'Paystack', NULL, 1, '{\"public_key\":{\"title\":\"Public key\",\"global\":true,\"value\":\"pk_test_cd330608eb47970889bca397ced55c1dd5ad3783\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"sk_test_8a0b1f199362d7acc9c390bff72c4e81f74e2ac3\"}}', '{\"USD\":\"USD\",\"NGN\":\"NGN\"}', 0, '{\"callback\":{\"title\": \"Callback URL\",\"value\":\"ipn.Paystack\"},\"webhook\":{\"title\": \"Webhook URL\",\"value\":\"ipn.Paystack\"}}\r\n', NULL, '2019-09-14 13:14:22', '2021-05-21 01:49:51'),
(8, 0, 108, 'VoguePay', 'Voguepay', NULL, 1, '{\"merchant_id\":{\"title\":\"MERCHANT ID\",\"global\":true,\"value\":\"demo\"}}', '{\"USD\":\"USD\",\"GBP\":\"GBP\",\"EUR\":\"EUR\",\"GHS\":\"GHS\",\"NGN\":\"NGN\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 01:22:38'),
(9, 0, 109, 'Flutterwave', 'Flutterwave', NULL, 1, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"----------------\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"-----------------------\"},\"encryption_key\":{\"title\":\"Encryption Key\",\"global\":true,\"value\":\"------------------\"}}', '{\"BIF\":\"BIF\",\"CAD\":\"CAD\",\"CDF\":\"CDF\",\"CVE\":\"CVE\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"GHS\":\"GHS\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"KES\":\"KES\",\"LRD\":\"LRD\",\"MWK\":\"MWK\",\"MZN\":\"MZN\",\"NGN\":\"NGN\",\"RWF\":\"RWF\",\"SLL\":\"SLL\",\"STD\":\"STD\",\"TZS\":\"TZS\",\"UGX\":\"UGX\",\"USD\":\"USD\",\"XAF\":\"XAF\",\"XOF\":\"XOF\",\"ZMK\":\"ZMK\",\"ZMW\":\"ZMW\",\"ZWD\":\"ZWD\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-06-05 11:37:45'),
(10, 0, 110, 'RazorPay', 'Razorpay', NULL, 1, '{\"key_id\":{\"title\":\"Key Id\",\"global\":true,\"value\":\"rzp_test_kiOtejPbRZU90E\"},\"key_secret\":{\"title\":\"Key Secret \",\"global\":true,\"value\":\"osRDebzEqbsE1kbyQJ4y0re7\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:51:32'),
(11, 0, 111, 'Stripe Storefront', 'StripeJs', NULL, 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51I6GGiCGv1sRiQlEi5v1or9eR0HVbuzdMd2rW4n3DxC8UKfz66R4X6n4yYkzvI2LeAIuRU9H99ZpY7XCNFC9xMs500vBjZGkKG\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51I6GGiCGv1sRiQlEOisPKrjBqQqqcFsw8mXNaZ2H2baN6R01NulFS7dKFji1NRRxuchoUTEDdB7ujKcyKYSVc0z500eth7otOM\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 00:53:10'),
(12, 0, 112, 'Instamojo', 'Instamojo', NULL, 1, '{\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"test_2241633c3bc44a3de84a3b33969\"},\"auth_token\":{\"title\":\"Auth Token\",\"global\":true,\"value\":\"test_279f083f7bebefd35217feef22d\"},\"salt\":{\"title\":\"Salt\",\"global\":true,\"value\":\"19d38908eeff4f58b2ddda2c6d86ca25\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:56:20'),
(13, 0, 501, 'Blockchain', 'Blockchain', NULL, 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"55529946-05ca-48ff-8710-f279d86b1cc5\"},\"xpub_code\":{\"title\":\"XPUB CODE\",\"global\":true,\"value\":\"xpub6CKQ3xxWyBoFAF83izZCSFUorptEU9AF8TezhtWeMU5oefjX3sFSBw62Lr9iHXPkXmDQJJiHZeTRtD9Vzt8grAYRhvbz4nEvBu3QKELVzFK\"}}', '{\"BTC\":\"BTC\"}', 1, NULL, NULL, '2019-09-14 13:14:22', '2022-03-21 07:41:56'),
(15, 0, 503, 'CoinPayments', 'Coinpayments', NULL, 1, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"---------------\"},\"private_key\":{\"title\":\"Private Key\",\"global\":true,\"value\":\"------------\"},\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"93a1e014c4ad60a7980b4a7239673cb4\"}}', '{\"BTC\":\"Bitcoin\",\"BTC.LN\":\"Bitcoin (Lightning Network)\",\"LTC\":\"Litecoin\",\"CPS\":\"CPS Coin\",\"VLX\":\"Velas\",\"APL\":\"Apollo\",\"AYA\":\"Aryacoin\",\"BAD\":\"Badcoin\",\"BCD\":\"Bitcoin Diamond\",\"BCH\":\"Bitcoin Cash\",\"BCN\":\"Bytecoin\",\"BEAM\":\"BEAM\",\"BITB\":\"Bean Cash\",\"BLK\":\"BlackCoin\",\"BSV\":\"Bitcoin SV\",\"BTAD\":\"Bitcoin Adult\",\"BTG\":\"Bitcoin Gold\",\"BTT\":\"BitTorrent\",\"CLOAK\":\"CloakCoin\",\"CLUB\":\"ClubCoin\",\"CRW\":\"Crown\",\"CRYP\":\"CrypticCoin\",\"CRYT\":\"CryTrExCoin\",\"CURE\":\"CureCoin\",\"DASH\":\"DASH\",\"DCR\":\"Decred\",\"DEV\":\"DeviantCoin\",\"DGB\":\"DigiByte\",\"DOGE\":\"Dogecoin\",\"EBST\":\"eBoost\",\"EOS\":\"EOS\",\"ETC\":\"Ether Classic\",\"ETH\":\"Ethereum\",\"ETN\":\"Electroneum\",\"EUNO\":\"EUNO\",\"EXP\":\"EXP\",\"Expanse\":\"Expanse\",\"FLASH\":\"FLASH\",\"GAME\":\"GameCredits\",\"GLC\":\"Goldcoin\",\"GRS\":\"Groestlcoin\",\"KMD\":\"Komodo\",\"LOKI\":\"LOKI\",\"LSK\":\"LSK\",\"MAID\":\"MaidSafeCoin\",\"MUE\":\"MonetaryUnit\",\"NAV\":\"NAV Coin\",\"NEO\":\"NEO\",\"NMC\":\"Namecoin\",\"NVST\":\"NVO Token\",\"NXT\":\"NXT\",\"OMNI\":\"OMNI\",\"PINK\":\"PinkCoin\",\"PIVX\":\"PIVX\",\"POT\":\"PotCoin\",\"PPC\":\"Peercoin\",\"PROC\":\"ProCurrency\",\"PURA\":\"PURA\",\"QTUM\":\"QTUM\",\"RES\":\"Resistance\",\"RVN\":\"Ravencoin\",\"RVR\":\"RevolutionVR\",\"SBD\":\"Steem Dollars\",\"SMART\":\"SmartCash\",\"SOXAX\":\"SOXAX\",\"STEEM\":\"STEEM\",\"STRAT\":\"STRAT\",\"SYS\":\"Syscoin\",\"TPAY\":\"TokenPay\",\"TRIGGERS\":\"Triggers\",\"TRX\":\" TRON\",\"UBQ\":\"Ubiq\",\"UNIT\":\"UniversalCurrency\",\"USDT\":\"Tether USD (Omni Layer)\",\"USDT.BEP20\":\"Tether USD (BSC Chain)\",\"USDT.ERC20\":\"Tether USD (ERC20)\",\"USDT.TRC20\":\"Tether USD (Tron/TRC20)\",\"VTC\":\"Vertcoin\",\"WAVES\":\"Waves\",\"XCP\":\"Counterparty\",\"XEM\":\"NEM\",\"XMR\":\"Monero\",\"XSN\":\"Stakenet\",\"XSR\":\"SucreCoin\",\"XVG\":\"VERGE\",\"XZC\":\"ZCoin\",\"ZEC\":\"ZCash\",\"ZEN\":\"Horizen\"}', 1, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:07:14'),
(16, 0, 504, 'CoinPayments Fiat', 'CoinpaymentsFiat', NULL, 1, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"6515561\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:07:44'),
(17, 0, 505, 'Coingate', 'Coingate', NULL, 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"6354mwVCEw5kHzRJ6thbGo-N\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2022-03-30 09:24:57'),
(18, 0, 506, 'Coinbase Commerce', 'CoinbaseCommerce', NULL, 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"c47cd7df-d8e8-424b-a20a\"},\"secret\":{\"title\":\"Webhook Shared Secret\",\"global\":true,\"value\":\"55871878-2c32-4f64-ab66\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"JPY\":\"JPY\",\"GBP\":\"GBP\",\"AUD\":\"AUD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CNY\":\"CNY\",\"SEK\":\"SEK\",\"NZD\":\"NZD\",\"MXN\":\"MXN\",\"SGD\":\"SGD\",\"HKD\":\"HKD\",\"NOK\":\"NOK\",\"KRW\":\"KRW\",\"TRY\":\"TRY\",\"RUB\":\"RUB\",\"INR\":\"INR\",\"BRL\":\"BRL\",\"ZAR\":\"ZAR\",\"AED\":\"AED\",\"AFN\":\"AFN\",\"ALL\":\"ALL\",\"AMD\":\"AMD\",\"ANG\":\"ANG\",\"AOA\":\"AOA\",\"ARS\":\"ARS\",\"AWG\":\"AWG\",\"AZN\":\"AZN\",\"BAM\":\"BAM\",\"BBD\":\"BBD\",\"BDT\":\"BDT\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"BIF\":\"BIF\",\"BMD\":\"BMD\",\"BND\":\"BND\",\"BOB\":\"BOB\",\"BSD\":\"BSD\",\"BTN\":\"BTN\",\"BWP\":\"BWP\",\"BYN\":\"BYN\",\"BZD\":\"BZD\",\"CDF\":\"CDF\",\"CLF\":\"CLF\",\"CLP\":\"CLP\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUC\":\"CUC\",\"CUP\":\"CUP\",\"CVE\":\"CVE\",\"CZK\":\"CZK\",\"DJF\":\"DJF\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"DZD\":\"DZD\",\"EGP\":\"EGP\",\"ERN\":\"ERN\",\"ETB\":\"ETB\",\"FJD\":\"FJD\",\"FKP\":\"FKP\",\"GEL\":\"GEL\",\"GGP\":\"GGP\",\"GHS\":\"GHS\",\"GIP\":\"GIP\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"GTQ\":\"GTQ\",\"GYD\":\"GYD\",\"HNL\":\"HNL\",\"HRK\":\"HRK\",\"HTG\":\"HTG\",\"HUF\":\"HUF\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"IMP\":\"IMP\",\"IQD\":\"IQD\",\"IRR\":\"IRR\",\"ISK\":\"ISK\",\"JEP\":\"JEP\",\"JMD\":\"JMD\",\"JOD\":\"JOD\",\"KES\":\"KES\",\"KGS\":\"KGS\",\"KHR\":\"KHR\",\"KMF\":\"KMF\",\"KPW\":\"KPW\",\"KWD\":\"KWD\",\"KYD\":\"KYD\",\"KZT\":\"KZT\",\"LAK\":\"LAK\",\"LBP\":\"LBP\",\"LKR\":\"LKR\",\"LRD\":\"LRD\",\"LSL\":\"LSL\",\"LYD\":\"LYD\",\"MAD\":\"MAD\",\"MDL\":\"MDL\",\"MGA\":\"MGA\",\"MKD\":\"MKD\",\"MMK\":\"MMK\",\"MNT\":\"MNT\",\"MOP\":\"MOP\",\"MRO\":\"MRO\",\"MUR\":\"MUR\",\"MVR\":\"MVR\",\"MWK\":\"MWK\",\"MYR\":\"MYR\",\"MZN\":\"MZN\",\"NAD\":\"NAD\",\"NGN\":\"NGN\",\"NIO\":\"NIO\",\"NPR\":\"NPR\",\"OMR\":\"OMR\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PGK\":\"PGK\",\"PHP\":\"PHP\",\"PKR\":\"PKR\",\"PLN\":\"PLN\",\"PYG\":\"PYG\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"RWF\":\"RWF\",\"SAR\":\"SAR\",\"SBD\":\"SBD\",\"SCR\":\"SCR\",\"SDG\":\"SDG\",\"SHP\":\"SHP\",\"SLL\":\"SLL\",\"SOS\":\"SOS\",\"SRD\":\"SRD\",\"SSP\":\"SSP\",\"STD\":\"STD\",\"SVC\":\"SVC\",\"SYP\":\"SYP\",\"SZL\":\"SZL\",\"THB\":\"THB\",\"TJS\":\"TJS\",\"TMT\":\"TMT\",\"TND\":\"TND\",\"TOP\":\"TOP\",\"TTD\":\"TTD\",\"TWD\":\"TWD\",\"TZS\":\"TZS\",\"UAH\":\"UAH\",\"UGX\":\"UGX\",\"UYU\":\"UYU\",\"UZS\":\"UZS\",\"VEF\":\"VEF\",\"VND\":\"VND\",\"VUV\":\"VUV\",\"WST\":\"WST\",\"XAF\":\"XAF\",\"XAG\":\"XAG\",\"XAU\":\"XAU\",\"XCD\":\"XCD\",\"XDR\":\"XDR\",\"XOF\":\"XOF\",\"XPD\":\"XPD\",\"XPF\":\"XPF\",\"XPT\":\"XPT\",\"YER\":\"YER\",\"ZMW\":\"ZMW\",\"ZWL\":\"ZWL\"}\r\n\r\n', 0, '{\"endpoint\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.CoinbaseCommerce\"}}', NULL, '2019-09-14 13:14:22', '2021-05-21 02:02:47'),
(24, 0, 113, 'Paypal Express', 'PaypalSdk', NULL, 1, '{\"clientId\":{\"title\":\"Paypal Client ID\",\"global\":true,\"value\":\"Ae0-tixtSV7DvLwIh3Bmu7JvHrjh5EfGdXr_cEklKAVjjezRZ747BxKILiBdzlKKyp-W8W_T7CKH1Ken\"},\"clientSecret\":{\"title\":\"Client Secret\",\"global\":true,\"value\":\"EOhbvHZgFNO21soQJT1L9Q00M3rK6PIEsdiTgXRBt2gtGtxwRer5JvKnVUGNU5oE63fFnjnYY7hq3HBA\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-20 23:01:08'),
(25, 0, 114, 'Stripe Checkout', 'StripeV3', NULL, 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51I6GGiCGv1sRiQlEi5v1or9eR0HVbuzdMd2rW4n3DxC8UKfz66R4X6n4yYkzvI2LeAIuRU9H99ZpY7XCNFC9xMs500vBjZGkKG\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51I6GGiCGv1sRiQlEOisPKrjBqQqqcFsw8mXNaZ2H2baN6R01NulFS7dKFji1NRRxuchoUTEDdB7ujKcyKYSVc0z500eth7otOM\"},\"end_point\":{\"title\":\"End Point Secret\",\"global\":true,\"value\":\"whsec_lUmit1gtxwKTveLnSe88xCSDdnPOt8g5\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, '{\"webhook\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.StripeV3\"}}', NULL, '2019-09-14 13:14:22', '2021-05-21 00:58:38'),
(27, 0, 115, 'Mollie', 'Mollie', NULL, 1, '{\"mollie_email\":{\"title\":\"Mollie Email \",\"global\":true,\"value\":\"vi@gmail.com\"},\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"test_cucfwKTWfft9s337qsVfn5CC4vNkrn\"}}', '{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:44:45'),
(30, 0, 116, 'Cashmaal', 'Cashmaal', NULL, 1, '{\"web_id\":{\"title\":\"Web Id\",\"global\":true,\"value\":\"3748\"},\"ipn_key\":{\"title\":\"IPN Key\",\"global\":true,\"value\":\"546254628759524554647987\"}}', '{\"PKR\":\"PKR\",\"USD\":\"USD\"}', 0, '{\"webhook\":{\"title\": \"IPN URL\",\"value\":\"ipn.Cashmaal\"}}', NULL, NULL, '2021-06-22 08:05:04'),
(36, 0, 119, 'Mercado Pago', 'MercadoPago', NULL, 1, '{\"access_token\":{\"title\":\"Access Token\",\"global\":true,\"value\":\"3Vee5S2F\"}}', '{\"USD\":\"USD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"NOK\":\"NOK\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"AUD\":\"AUD\",\"NZD\":\"NZD\"}', 0, NULL, NULL, NULL, '2021-07-17 09:44:29'),
(44, 0, 120, 'Authorize.net', 'Authorize', NULL, 1, '{\"login_id\":{\"title\":\"Login ID\",\"global\":true,\"value\":\"3Vee5S2F\"},\"transaction_key\":{\"title\":\"Transaction Key\",\"global\":true,\"value\":\"3Vee5S2F\"}}', '{\"USD\":\"USD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"NOK\":\"NOK\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"AUD\":\"AUD\",\"NZD\":\"NZD\"}', 0, NULL, NULL, NULL, '2022-09-15 09:27:31'),
(46, 0, 121, 'NMI', 'NMI', NULL, 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"2F822Rw39fx762MaV7Yy86jXGTC7sCDy\"}}', '{\"AED\":\"AED\",\"ARS\":\"ARS\",\"AUD\":\"AUD\",\"BOB\":\"BOB\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"PYG\":\"PYG\",\"RUB\":\"RUB\",\"SEC\":\"SEC\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TRY\":\"TRY\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, NULL, '2022-09-10 05:30:15'),
(49, 0, 122, 'BTCPay', 'BTCPay', NULL, 1, '{\"store_id\":{\"title\":\"Store Id\",\"global\":true,\"value\":\"-------\"},\"api_key\":{\"title\":\"Api Key\",\"global\":true,\"value\":\"------\"},\"server_name\":{\"title\":\"Server Name\",\"global\":true,\"value\":\"https:\\/\\/yourbtcpaserver.lndyn.com\"},\"secret_code\":{\"title\":\"Secret Code\",\"global\":true,\"value\":\"----------\"}}', '{\"BTC\":\"Bitcoin\",\"LTC\":\"Litecoin\"}', 1, '{\"webhook\":{\"title\": \"IPN URL\",\"value\":\"ipn.BTCPay\"}}', NULL, NULL, NULL),
(50, 0, 123, 'Now payments hosted', 'NowPaymentsHosted', NULL, 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"-------------------\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"--------------\"}}', '{\"BTG\":\"BTG\",\"ETH\":\"ETH\",\"XMR\":\"XMR\",\"ZEC\":\"ZEC\",\"XVG\":\"XVG\",\"ADA\":\"ADA\",\"LTC\":\"LTC\",\"BCH\":\"BCH\",\"QTUM\":\"QTUM\",\"DASH\":\"DASH\",\"XLM\":\"XLM\",\"XRP\":\"XRP\",\"XEM\":\"XEM\",\"DGB\":\"DGB\",\"LSK\":\"LSK\",\"DOGE\":\"DOGE\",\"TRX\":\"TRX\",\"KMD\":\"KMD\",\"REP\":\"REP\",\"BAT\":\"BAT\",\"ARK\":\"ARK\",\"WAVES\":\"WAVES\",\"BNB\":\"BNB\",\"XZC\":\"XZC\",\"NANO\":\"NANO\",\"TUSD\":\"TUSD\",\"VET\":\"VET\",\"ZEN\":\"ZEN\",\"GRS\":\"GRS\",\"FUN\":\"FUN\",\"NEO\":\"NEO\",\"GAS\":\"GAS\",\"PAX\":\"PAX\",\"USDC\":\"USDC\",\"ONT\":\"ONT\",\"XTZ\":\"XTZ\",\"LINK\":\"LINK\",\"RVN\":\"RVN\",\"BNBMAINNET\":\"BNBMAINNET\",\"ZIL\":\"ZIL\",\"BCD\":\"BCD\",\"USDT\":\"USDT\",\"USDTERC20\":\"USDTERC20\",\"CRO\":\"CRO\",\"DAI\":\"DAI\",\"HT\":\"HT\",\"WABI\":\"WABI\",\"BUSD\":\"BUSD\",\"ALGO\":\"ALGO\",\"USDTTRC20\":\"USDTTRC20\",\"GT\":\"GT\",\"STPT\":\"STPT\",\"AVA\":\"AVA\",\"SXP\":\"SXP\",\"UNI\":\"UNI\",\"OKB\":\"OKB\",\"BTC\":\"BTC\"}', 1, '', NULL, NULL, '2023-02-14 10:42:09'),
(51, 0, 509, 'Now payments checkout', 'NowPaymentsCheckout', NULL, 1, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"-------------------\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"--------------\"}}', '{\"BTG\":\"BTG\",\"ETH\":\"ETH\",\"XMR\":\"XMR\",\"ZEC\":\"ZEC\",\"XVG\":\"XVG\",\"ADA\":\"ADA\",\"LTC\":\"LTC\",\"BCH\":\"BCH\",\"QTUM\":\"QTUM\",\"DASH\":\"DASH\",\"XLM\":\"XLM\",\"XRP\":\"XRP\",\"XEM\":\"XEM\",\"DGB\":\"DGB\",\"LSK\":\"LSK\",\"DOGE\":\"DOGE\",\"TRX\":\"TRX\",\"KMD\":\"KMD\",\"REP\":\"REP\",\"BAT\":\"BAT\",\"ARK\":\"ARK\",\"WAVES\":\"WAVES\",\"BNB\":\"BNB\",\"XZC\":\"XZC\",\"NANO\":\"NANO\",\"TUSD\":\"TUSD\",\"VET\":\"VET\",\"ZEN\":\"ZEN\",\"GRS\":\"GRS\",\"FUN\":\"FUN\",\"NEO\":\"NEO\",\"GAS\":\"GAS\",\"PAX\":\"PAX\",\"USDC\":\"USDC\",\"ONT\":\"ONT\",\"XTZ\":\"XTZ\",\"LINK\":\"LINK\",\"RVN\":\"RVN\",\"BNBMAINNET\":\"BNBMAINNET\",\"ZIL\":\"ZIL\",\"BCD\":\"BCD\",\"USDT\":\"USDT\",\"USDTERC20\":\"USDTERC20\",\"CRO\":\"CRO\",\"DAI\":\"DAI\",\"HT\":\"HT\",\"WABI\":\"WABI\",\"BUSD\":\"BUSD\",\"ALGO\":\"ALGO\",\"USDTTRC20\":\"USDTTRC20\",\"GT\":\"GT\",\"STPT\":\"STPT\",\"AVA\":\"AVA\",\"SXP\":\"SXP\",\"UNI\":\"UNI\",\"OKB\":\"OKB\",\"BTC\":\"BTC\"}', 1, '', NULL, NULL, '2023-02-14 10:42:09'),
(56, 0, 124, '2Checkout', 'TwoCheckout', NULL, 1, '{\"merchant_code\":{\"title\":\"Merchant Code\",\"global\":true,\"value\":\"253248016872\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"eQM)ID@&vG84u!O*g[p+\"}}', '{\"AFN\": \"AFN\",\"ALL\": \"ALL\",\"DZD\": \"DZD\",\"ARS\": \"ARS\",\"AUD\": \"AUD\",\"AZN\": \"AZN\",\"BSD\": \"BSD\",\"BDT\": \"BDT\",\"BBD\": \"BBD\",\"BZD\": \"BZD\",\"BMD\": \"BMD\",\"BOB\": \"BOB\",\"BWP\": \"BWP\",\"BRL\": \"BRL\",\"GBP\": \"GBP\",\"BND\": \"BND\",\"BGN\": \"BGN\",\"CAD\": \"CAD\",\"CLP\": \"CLP\",\"CNY\": \"CNY\",\"COP\": \"COP\",\"CRC\": \"CRC\",\"HRK\": \"HRK\",\"CZK\": \"CZK\",\"DKK\": \"DKK\",\"DOP\": \"DOP\",\"XCD\": \"XCD\",\"EGP\": \"EGP\",\"EUR\": \"EUR\",\"FJD\": \"FJD\",\"GTQ\": \"GTQ\",\"HKD\": \"HKD\",\"HNL\": \"HNL\",\"HUF\": \"HUF\",\"INR\": \"INR\",\"IDR\": \"IDR\",\"ILS\": \"ILS\",\"JMD\": \"JMD\",\"JPY\": \"JPY\",\"KZT\": \"KZT\",\"KES\": \"KES\",\"LAK\": \"LAK\",\"MMK\": \"MMK\",\"LBP\": \"LBP\",\"LRD\": \"LRD\",\"MOP\": \"MOP\",\"MYR\": \"MYR\",\"MVR\": \"MVR\",\"MRO\": \"MRO\",\"MUR\": \"MUR\",\"MXN\": \"MXN\",\"MAD\": \"MAD\",\"NPR\": \"NPR\",\"TWD\": \"TWD\",\"NZD\": \"NZD\",\"NIO\": \"NIO\",\"NOK\": \"NOK\",\"PKR\": \"PKR\",\"PGK\": \"PGK\",\"PEN\": \"PEN\",\"PHP\": \"PHP\",\"PLN\": \"PLN\",\"QAR\": \"QAR\",\"RON\": \"RON\",\"RUB\": \"RUB\",\"WST\": \"WST\",\"SAR\": \"SAR\",\"SCR\": \"SCR\",\"SGD\": \"SGD\",\"SBD\": \"SBD\",\"ZAR\": \"ZAR\",\"KRW\": \"KRW\",\"LKR\": \"LKR\",\"SEK\": \"SEK\",\"CHF\": \"CHF\",\"SYP\": \"SYP\",\"THB\": \"THB\",\"TOP\": \"TOP\",\"TTD\": \"TTD\",\"TRY\": \"TRY\",\"UAH\": \"UAH\",\"AED\": \"AED\",\"USD\": \"USD\",\"VUV\": \"VUV\",\"VND\": \"VND\",\"XOF\": \"XOF\",\"YER\": \"YER\"}', 1, '{\"approved_url\":{\"title\": \"Approved URL\",\"value\":\"ipn.TwoCheckout\"}}', NULL, NULL, '2023-04-29 03:21:58'),
(57, 0, 125, 'Checkout', 'Checkout', NULL, 1, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"------\"},\"public_key\":{\"title\":\"PUBLIC KEY\",\"global\":true,\"value\":\"------\"},\"processing_channel_id\":{\"title\":\"PROCESSING CHANNEL\",\"global\":true,\"value\":\"------\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"AUD\":\"AUD\",\"CAN\":\"CAN\",\"CHF\":\"CHF\",\"SGD\":\"SGD\",\"JPY\":\"JPY\",\"NZD\":\"NZD\"}', 0, NULL, NULL, NULL, '2023-05-06 01:43:01'),
(59, 1, 1000, 'USDT', 'usdt', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAWMAAAFjCAIAAABnoP22AAAABmJLR0QA/wD/AP+gvaeTAAAK/ElEQVR4nO3dwY4jKwwF0NdP8/+/3LNnwRUCG5I5Z9tJVXUSXSHL4J/f39//AKb+v/0AwAeQFEAmKYBMUgCZpAAySQFkkgLIJAWQSQogkxRAJimATFIAmaQAMkkBZJICyCQFkEkKIJMUQCYpgExSAJmkADJJAWSSAsgkBZBJCiCTFEAmKYBMUgCZpAAySQFkkgLIJAWQSQogkxRA9qftTj8/Pz03+v39ndx3+Otg/pDzK9e9uO2Z6zzyDy49xtKlBrd+7XWsKYBMUgCZpAAySQFkfRXNwcFKzFL1aOnFO+XApWrZUoVvSV1ZbqdIuaOthnewGHzr136QNQWQSQogkxRAJimA7FpFc7BTaFyy06XXVuCcv3du58M5WJXc6cIcXrz0pezUaNuKhW1f6EHWFEAmKYBMUgCZpACyVyqabXZqWgcLnEsO3ujgdu9B25bttp3jS0/19awpgExSAJmkADJJAWTfX9H8xBLXwZpl3Y0OdqzuXHnpK7u1U/4LWFMAmaQAMkkBZJICyF6paNYVk3bOs5w7uMG5brf7wRre0tmfbeXeWwcF7PjE0qk1BZBJCiCTFEAmKYDsWkXzzT28B0/ZXLryjlt70m+dSHrrvoO6/ftvsqYAMkkBZJICyCQFkPVVNG/1pbX1Dh68707r5MGxSUv3Xbpy3TO3lTCXnuoLWFMAmaQAMkkBZJICyPoqmnWjYpYuteRWZXHnmMm23sG2YuHOrPODc4MObtg/+NG1lU6tKYBMUgCZpAAySQFkP9/XTHarTDW/0fy9t8amz9VtjV/SVg5880t5ZHyRNQWQSQogkxRAJimA7JXJQHXVwbrHaDsac3Dw5Mi2nsW2kUttJ2Ue3HT/SM1yzpoCyCQFkEkKIJMUQNbXo/kRO3x3Xrz0VHMHH+ORkTw76gqcj4wvWnKr/GlNAWSSAsgkBZBJCiB7dNf5rZMF286VrKvRPtKyuaPukxzUdY62fb9trCmATFIAmaQAMkkBZNd2ne/UaW4dUfnISJ65nX+/7UzKOgfPDbhV332zwGlNAWSSAsgkBZBJCiB7ZdZ53aTswU7z3MGa5a1Ou1vT25fU1Q4P1tHnv435e+dPNf+rHk3gXZICyCQFkEkKIOuraB6sxNwaUL5z5brHOLgbum7r9M6L6zopD2r7rG6xpgAySQFkkgLIJAWQfcas80HdCY4H73vrxY90YR4scLb14C69+OB5pUtPZdc58C5JAWSSAsgkBZC9UtGsmys9f/GSW91yB1sYl6588EzK+XuXdnAP2oY5ze97a2x6G2sKIJMUQCYpgExSANkr52jO1Z1Y+YlHNu68t65Xsq4cuOTNj27JI6OABtYUQCYpgExSAJmkALKfWwWSuik7BwucbbN/6sZb3zoac3BrI3nb1z33yBe6w5oCyCQFkEkKIJMUQHatojn4xDJk3WPMPdJKuHTlur3SdUeQHvysPrGEObCmADJJAWSSAsgkBZC90qO55NaYmbay6857D44Cr+ukHLSdSbmkbbbTnIom8DEkBZBJCiCTFEDWV9Gs63gb1E27XrrRwRJm3X3bapZL920rjs7v27bpvm201Q5rCiCTFEAmKYBMUgDZZ/Rovjmg/BObBesKq3VVujfrf1+wkXyJNQWQSQogkxRAJimA7JUezTe39Lb9dXBr2/XBymLdMaKDR35Ig7ZmUJOBgIdICiCTFEAmKYDsz60bHyzMtPVKzq/8EQW/pRvtPMbO97v0hS495E5teKf8+QUdnNYUQCYpgExSAJmkALK+iua8elRXaqpzsJL6yEbytupgWzPo3MFfzsEPtu7/3WFNAWSSAsgkBZBJCiDrq2i29R0u3ffWVvH5ewdttdKdS/l+58956r23WFMAmaQAMkkBZJICyK7tOq9rcFyqHbZtJJ9feXDwX1hSV2mrGwT1Zu9v3dGYztEE3iUpgExSAJmkALJrFc2D6oo6deXPpRu1HTJ6sJR4sOv0kVMFBm1ThR7p4LSmADJJAWSSAsgkBZBdO0dzxyODc3a6A9vcOoJ0/u/X7bKvG31e90l+xA/JmgLIJAWQSQogkxRA9vNIB9iStrnhbVPU24573HmquYOjgOre+0gf7SNFyiXWFEAmKYBMUgCZpACyb9h13rZH+1Zl8WAF9+A++iUHh33PX7xz5Z2vrG22+9KVD7KmADJJAWSSAsgkBZA9WtHc2bM8qNtZ3FbgrGsVXaq01U33ufVp1BU4d+678+I61hRAJimATFIAmaQAsr6K5sGq1cG/zh/yYGvdUlG2rvHu1mc1f+/Bv9ZVUpd83xZ1awogkxRAJimATFIA2SuTgW4dYVh3o537zh0sQx7cdX6rc/Rghe9WN+RSeftWgdOaAsgkBZBJCiCTFEDWNxnoYJ/l3K092nOP7Fmu09bvuPQYdV22dXvwB498v9YUQCYpgExSAJmkALJrPZoHT6xs2+F76wjDHXVFu1t9pY8UOAd1pxk8wpoCyCQFkEkKIJMUQHatR3Pu1kbytk7KtqNAD3qzhXFwq1X0C07KnLOmADJJAWSSAsgkBZD1VTTHG5dV+G7VLOfaRnLP7/vIpzG4VZM++Mx1j/FIvdOaAsgkBZBJCiCTFEB2bdb5zib0pSsP6tofdypP86c6uBv6YGF1cLDwVle0O7iRvO5bqPuZ7bCmADJJAWSSAsgkBZC9Mut8/uK24SjzctEjG6uXHDz9sW3oztKlltR1rN46obONNQWQSQogkxRAJimA7JVZ5wevPDjYS1c3ZKiutNZ2fOmtOTpLHvlCD/7M2lhTAJmkADJJAWSSAsheOUdzUFce27nR3MGBPZ84C/uRuuPSleceOXP0kXqnNQWQSQogkxRAJimA7NFZ53N1Z2G2DRm/tc/6oDeP81zyZt+wHk3gU0kKIJMUQCYpgOxaj+bgC4bfvDmCfK7tTMqDc+HbGlgPVp2down8EyQFkEkKIJMUQPbKOZpvdkMe3KRc15b3EePLd678SJGybcf6mx2c1hRAJimATFIAmaQAsm/Ydb7zGG2l07mPaNn8gmE/t8amf8TYpDlrCiCTFEAmKYBMUgDZn7Y71ZVeHmmeazs68eAO7p0X150M0Fb/O7jde36pN4c5LbGmADJJAWSSAsgkBZD1VTTrLNW06sYIzT1yUOj8ynNLFdxb6iqL/3j505oCyCQFkEkKIJMUQNZX0by1dbquo/Hge+ssVUOXyr07TbdtQ3d2XrzjYA+uczSBjyEpgExSAJmkALJrPZp1Jyku/bWuaDe/1FLLZltN682jQA9u5z84velgy2bbj3CHNQWQSQogkxRAJimA7JVd520zeJaufLAaWndE5cFjJg9qG42z9Bh1HinZ1rGmADJJAWSSAsgkBZC9UtGsc3Bz9E7r5MEDOx/Z3n6wtFY3cb6uF7auVPzm121NAWSSAsgkBZBJCiD7/orm3CN7ped/3Tkq8pF62GDnH7w1NX6ubvKTXefAx5AUQCYpgExSANkrFc22GS3z+9bthq6bhb0zCemgg0W7uuMt69o9D3qkhDmwpgAySQFkkgLIJAWQXato3uodrCuPLe1o3nFwfs8j920rQy69d26n7LrDOZrAuyQFkEkKIJMUQPbzZkMY8BRrCiCTFEAmKYBMUgCZpAAySQFkkgLIJAWQSQogkxRAJimATFIAmaQAMkkBZJICyCQFkEkKIJMUQCYpgExSAJmkADJJAWSSAsgkBZBJCiCTFEAmKYBMUgCZpAAySQFkkgLIJAWQSQogkxRA9hdJ9/SsnSmpjgAAAABJRU5ErkJggg==', 0, '[]', '[]', 0, NULL, 'TDWSbt9HLZ6UNZLyUNMv3BgXXenY5XU46N', '2023-11-02 16:24:40', '2024-03-12 18:32:11'),
(60, 3, 1001, 'UPI Payment', 'upi_payment', 'https://i.imgur.com/4Fw1bln_d.webp', 1, '[]', '[]', 0, NULL, 'YourUPI@upi', '2024-03-12 18:32:49', '2024-03-12 18:34:40');

-- --------------------------------------------------------

--
-- Table structure for table `gateway_currencies`
--

CREATE TABLE `gateway_currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `currency` varchar(40) DEFAULT NULL,
  `symbol` varchar(40) DEFAULT NULL,
  `method_code` int(11) DEFAULT NULL,
  `gateway_alias` varchar(40) DEFAULT NULL,
  `qr_code_link` text DEFAULT NULL,
  `min_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `max_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `percent_charge` decimal(5,2) NOT NULL DEFAULT 0.00,
  `fixed_charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `image` varchar(255) DEFAULT NULL,
  `gateway_parameter` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateway_currencies`
--

INSERT INTO `gateway_currencies` (`id`, `name`, `currency`, `symbol`, `method_code`, `gateway_alias`, `qr_code_link`, `min_amount`, `max_amount`, `percent_charge`, `fixed_charge`, `rate`, `image`, `gateway_parameter`, `created_at`, `updated_at`) VALUES
(1, 'USDT', 'USDT', '', 1000, 'usdt', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAWMAAAFjCAIAAABnoP22AAAABmJLR0QA/wD/AP+gvaeTAAAK/ElEQVR4nO3dwY4jKwwF0NdP8/+/3LNnwRUCG5I5Z9tJVXUSXSHL4J/f39//AKb+v/0AwAeQFEAmKYBMUgCZpAAySQFkkgLIJAWQSQogkxRAJimATFIAmaQAMkkBZJICyCQFkEkKIJMUQCYpgExSAJmkADJJAWSSAsgkBZBJCiCTFEAmKYBMUgCZpAAySQFkkgLIJAWQSQogkxRA9qftTj8/Pz03+v39ndx3+Otg/pDzK9e9uO2Z6zzyDy49xtKlBrd+7XWsKYBMUgCZpAAySQFkfRXNwcFKzFL1aOnFO+XApWrZUoVvSV1ZbqdIuaOthnewGHzr136QNQWQSQogkxRAJimA7FpFc7BTaFyy06XXVuCcv3du58M5WJXc6cIcXrz0pezUaNuKhW1f6EHWFEAmKYBMUgCZpACyVyqabXZqWgcLnEsO3ujgdu9B25bttp3jS0/19awpgExSAJmkADJJAWTfX9H8xBLXwZpl3Y0OdqzuXHnpK7u1U/4LWFMAmaQAMkkBZJICyF6paNYVk3bOs5w7uMG5brf7wRre0tmfbeXeWwcF7PjE0qk1BZBJCiCTFEAmKYDsWkXzzT28B0/ZXLryjlt70m+dSHrrvoO6/ftvsqYAMkkBZJICyCQFkPVVNG/1pbX1Dh68707r5MGxSUv3Xbpy3TO3lTCXnuoLWFMAmaQAMkkBZJICyPoqmnWjYpYuteRWZXHnmMm23sG2YuHOrPODc4MObtg/+NG1lU6tKYBMUgCZpAAySQFkP9/XTHarTDW/0fy9t8amz9VtjV/SVg5880t5ZHyRNQWQSQogkxRAJimA7JXJQHXVwbrHaDsac3Dw5Mi2nsW2kUttJ2Ue3HT/SM1yzpoCyCQFkEkKIJMUQNbXo/kRO3x3Xrz0VHMHH+ORkTw76gqcj4wvWnKr/GlNAWSSAsgkBZBJCiB7dNf5rZMF286VrKvRPtKyuaPukxzUdY62fb9trCmATFIAmaQAMkkBZNd2ne/UaW4dUfnISJ65nX+/7UzKOgfPDbhV332zwGlNAWSSAsgkBZBJCiB7ZdZ53aTswU7z3MGa5a1Ou1vT25fU1Q4P1tHnv435e+dPNf+rHk3gXZICyCQFkEkKIOuraB6sxNwaUL5z5brHOLgbum7r9M6L6zopD2r7rG6xpgAySQFkkgLIJAWQfcas80HdCY4H73vrxY90YR4scLb14C69+OB5pUtPZdc58C5JAWSSAsgkBZC9UtGsmys9f/GSW91yB1sYl6588EzK+XuXdnAP2oY5ze97a2x6G2sKIJMUQCYpgExSANkr52jO1Z1Y+YlHNu68t65Xsq4cuOTNj27JI6OABtYUQCYpgExSAJmkALKfWwWSuik7BwucbbN/6sZb3zoac3BrI3nb1z33yBe6w5oCyCQFkEkKIJMUQHatojn4xDJk3WPMPdJKuHTlur3SdUeQHvysPrGEObCmADJJAWSSAsgkBZC90qO55NaYmbay6857D44Cr+ukHLSdSbmkbbbTnIom8DEkBZBJCiCTFEDWV9Gs63gb1E27XrrRwRJm3X3bapZL920rjs7v27bpvm201Q5rCiCTFEAmKYBMUgDZZ/Rovjmg/BObBesKq3VVujfrf1+wkXyJNQWQSQogkxRAJimA7JUezTe39Lb9dXBr2/XBymLdMaKDR35Ig7ZmUJOBgIdICiCTFEAmKYDsz60bHyzMtPVKzq/8EQW/pRvtPMbO97v0hS495E5teKf8+QUdnNYUQCYpgExSAJmkALK+iua8elRXaqpzsJL6yEbytupgWzPo3MFfzsEPtu7/3WFNAWSSAsgkBZBJCiDrq2i29R0u3ffWVvH5ewdttdKdS/l+58956r23WFMAmaQAMkkBZJICyK7tOq9rcFyqHbZtJJ9feXDwX1hSV2mrGwT1Zu9v3dGYztEE3iUpgExSAJmkALJrFc2D6oo6deXPpRu1HTJ6sJR4sOv0kVMFBm1ThR7p4LSmADJJAWSSAsgkBZBdO0dzxyODc3a6A9vcOoJ0/u/X7bKvG31e90l+xA/JmgLIJAWQSQogkxRA9vNIB9iStrnhbVPU24573HmquYOjgOre+0gf7SNFyiXWFEAmKYBMUgCZpACyb9h13rZH+1Zl8WAF9+A++iUHh33PX7xz5Z2vrG22+9KVD7KmADJJAWSSAsgkBZA9WtHc2bM8qNtZ3FbgrGsVXaq01U33ufVp1BU4d+678+I61hRAJimATFIAmaQAsr6K5sGq1cG/zh/yYGvdUlG2rvHu1mc1f+/Bv9ZVUpd83xZ1awogkxRAJimATFIA2SuTgW4dYVh3o537zh0sQx7cdX6rc/Rghe9WN+RSeftWgdOaAsgkBZBJCiCTFEDWNxnoYJ/l3K092nOP7Fmu09bvuPQYdV22dXvwB498v9YUQCYpgExSAJmkALJrPZoHT6xs2+F76wjDHXVFu1t9pY8UOAd1pxk8wpoCyCQFkEkKIJMUQHatR3Pu1kbytk7KtqNAD3qzhXFwq1X0C07KnLOmADJJAWSSAsgkBZD1VTTHG5dV+G7VLOfaRnLP7/vIpzG4VZM++Mx1j/FIvdOaAsgkBZBJCiCTFEB2bdb5zib0pSsP6tofdypP86c6uBv6YGF1cLDwVle0O7iRvO5bqPuZ7bCmADJJAWSSAsgkBZC9Mut8/uK24SjzctEjG6uXHDz9sW3oztKlltR1rN46obONNQWQSQogkxRAJimA7JVZ5wevPDjYS1c3ZKiutNZ2fOmtOTpLHvlCD/7M2lhTAJmkADJJAWSSAsheOUdzUFce27nR3MGBPZ84C/uRuuPSleceOXP0kXqnNQWQSQogkxRAJimA7NFZ53N1Z2G2DRm/tc/6oDeP81zyZt+wHk3gU0kKIJMUQCYpgOxaj+bgC4bfvDmCfK7tTMqDc+HbGlgPVp2down8EyQFkEkKIJMUQPbKOZpvdkMe3KRc15b3EePLd678SJGybcf6mx2c1hRAJimATFIAmaQAsm/Ydb7zGG2l07mPaNn8gmE/t8amf8TYpDlrCiCTFEAmKYBMUgDZn7Y71ZVeHmmeazs68eAO7p0X150M0Fb/O7jde36pN4c5LbGmADJJAWSSAsgkBZD1VTTrLNW06sYIzT1yUOj8ynNLFdxb6iqL/3j505oCyCQFkEkKIJMUQNZX0by1dbquo/Hge+ssVUOXyr07TbdtQ3d2XrzjYA+uczSBjyEpgExSAJmkALJrPZp1Jyku/bWuaDe/1FLLZltN682jQA9u5z84velgy2bbj3CHNQWQSQogkxRAJimA7JVd520zeJaufLAaWndE5cFjJg9qG42z9Bh1HinZ1rGmADJJAWSSAsgkBZC9UtGsc3Bz9E7r5MEDOx/Z3n6wtFY3cb6uF7auVPzm121NAWSSAsgkBZBJCiD7/orm3CN7ped/3Tkq8pF62GDnH7w1NX6ubvKTXefAx5AUQCYpgExSANkrFc22GS3z+9bthq6bhb0zCemgg0W7uuMt69o9D3qkhDmwpgAySQFkkgLIJAWQXato3uodrCuPLe1o3nFwfs8j920rQy69d26n7LrDOZrAuyQFkEkKIJMUQPbzZkMY8BRrCiCTFEAmKYBMUgCZpAAySQFkkgLIJAWQSQogkxRAJimATFIAmaQAMkkBZJICyCQFkEkKIJMUQCYpgExSAJmkADJJAWSSAsgkBZBJCiCTFEAmKYBMUgCZpAAySQFkkgLIJAWQSQogkxRA9hdJ9/SsnSmpjgAAAABJRU5ErkJggg==', 10.00000000, 20000.00000000, 0.00, 0.00000000, 1.00000000, NULL, NULL, '2023-11-02 16:24:40', '2023-11-06 08:05:21'),
(2, 'UPI Payment', 'INR', '', 1001, 'upi_payment', 'https://i.imgur.com/4Fw1bln_d.webp', 100.00000000, 10000.00000000, 0.00, 0.00000000, 1.00000000, NULL, NULL, '2024-03-12 18:32:49', '2024-03-12 18:34:53');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(40) DEFAULT NULL,
  `cur_text` varchar(40) DEFAULT NULL COMMENT 'currency text',
  `cur_sym` varchar(40) DEFAULT NULL COMMENT 'currency symbol',
  `email_from` varchar(40) DEFAULT NULL,
  `email_template` text DEFAULT NULL,
  `sms_body` varchar(255) DEFAULT NULL,
  `sms_from` varchar(255) DEFAULT NULL,
  `base_color` varchar(40) DEFAULT NULL,
  `secondary_color` varchar(40) DEFAULT NULL,
  `mail_config` text DEFAULT NULL COMMENT 'email configuration',
  `sms_config` text DEFAULT NULL,
  `global_shortcodes` text DEFAULT NULL,
  `kv` tinyint(1) NOT NULL DEFAULT 0,
  `ev` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'email verification, 0 - dont check, 1 - check',
  `en` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'email notification, 0 - dont send, 1 - send',
  `sv` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'mobile verication, 0 - dont check, 1 - check',
  `sn` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'sms notification, 0 - dont send, 1 - send',
  `force_ssl` tinyint(1) NOT NULL DEFAULT 0,
  `maintenance_mode` tinyint(1) NOT NULL DEFAULT 0,
  `secure_password` tinyint(1) NOT NULL DEFAULT 0,
  `agree` tinyint(1) NOT NULL DEFAULT 0,
  `registration` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: Off	, 1: On',
  `active_template` varchar(40) DEFAULT NULL,
  `system_info` text DEFAULT NULL,
  `system_customized` tinyint(1) NOT NULL DEFAULT 0,
  `deposit_commission` tinyint(1) NOT NULL DEFAULT 1,
  `invest_commission` tinyint(1) NOT NULL DEFAULT 1,
  `invest_return_commission` tinyint(1) NOT NULL DEFAULT 1,
  `signup_bonus_amount` decimal(11,2) DEFAULT 0.00,
  `signup_bonus_control` tinyint(1) NOT NULL DEFAULT 0,
  `promotional_tool` tinyint(1) NOT NULL DEFAULT 0,
  `firebase_config` text DEFAULT NULL,
  `firebase_template` text DEFAULT NULL,
  `push_notify` tinyint(1) NOT NULL DEFAULT 0,
  `off_day` text DEFAULT NULL,
  `last_cron` datetime DEFAULT NULL,
  `b_transfer` int(11) NOT NULL DEFAULT 0 COMMENT 'Balance Transfer Status',
  `f_charge` decimal(28,8) NOT NULL DEFAULT 0.00000000 COMMENT 'Fixed Charge',
  `p_charge` decimal(5,2) NOT NULL DEFAULT 0.00 COMMENT 'Percent Charge',
  `user_ranking` tinyint(1) NOT NULL DEFAULT 0,
  `schedule_invest` tinyint(1) NOT NULL DEFAULT 0,
  `holiday_withdraw` tinyint(1) NOT NULL DEFAULT 0,
  `staking_option` tinyint(1) NOT NULL DEFAULT 0,
  `staking_min_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `staking_max_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `pool_option` tinyint(1) NOT NULL DEFAULT 0,
  `language_switch` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_name`, `cur_text`, `cur_sym`, `email_from`, `email_template`, `sms_body`, `sms_from`, `base_color`, `secondary_color`, `mail_config`, `sms_config`, `global_shortcodes`, `kv`, `ev`, `en`, `sv`, `sn`, `force_ssl`, `maintenance_mode`, `secure_password`, `agree`, `registration`, `active_template`, `system_info`, `system_customized`, `deposit_commission`, `invest_commission`, `invest_return_commission`, `signup_bonus_amount`, `signup_bonus_control`, `promotional_tool`, `firebase_config`, `firebase_template`, `push_notify`, `off_day`, `last_cron`, `b_transfer`, `f_charge`, `p_charge`, `user_ranking`, `schedule_invest`, `holiday_withdraw`, `staking_option`, `staking_min_amount`, `staking_max_amount`, `pool_option`, `language_switch`, `created_at`, `updated_at`) VALUES
(1, 'EVR', 'INR', '₹', 'info@viserlab.com', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello {{fullname}} ({{username}})</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\">{{message}}</td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">{{site_name}}</a>&nbsp;. All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'hi {{fullname}} ({{username}}), {{message}}', 'ViserAdmin', '02f400', '', '{\"name\":\"php\"}', '{\"name\":\"nexmo\",\"clickatell\":{\"api_key\":\"----------------\"},\"infobip\":{\"username\":\"------------8888888\",\"password\":\"-----------------\"},\"message_bird\":{\"api_key\":\"-------------------\"},\"nexmo\":{\"api_key\":\"----------------------\",\"api_secret\":\"----------------------\"},\"sms_broadcast\":{\"username\":\"----------------------\",\"password\":\"-----------------------------\"},\"twilio\":{\"account_sid\":\"-----------------------\",\"auth_token\":\"---------------------------\",\"from\":\"----------------------\"},\"text_magic\":{\"username\":\"-----------------------\",\"apiv2_key\":\"-------------------------------\"},\"custom\":{\"method\":\"get\",\"url\":\"https:\\/\\/hostname\\/demo-api-v1\",\"headers\":{\"name\":[\"api_key\"],\"value\":[\"test_api 555\"]},\"body\":{\"name\":[\"from_number\"],\"value\":[\"5657545757\"]}}}', '{\n    \"site_name\":\"Name of your site\",\n    \"site_currency\":\"Currency of your site\",\n    \"currency_symbol\":\"Symbol of currency\"\n}', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'invester', '[]', 0, 1, 0, 0, 5.00, 0, 1, NULL, NULL, 0, NULL, '2024-03-12 19:20:03', 1, 5.00000000, 1.00, 1, 1, 0, 0, 0.00000000, 0.00000000, 0, 1, NULL, '2024-03-12 19:20:03');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(40) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invests`
--

CREATE TABLE `invests` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT 0,
  `plan_id` int(10) UNSIGNED DEFAULT 0,
  `amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `initial_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `interest` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `initial_interest` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `net_interest` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `should_pay` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `paid` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `period` int(11) DEFAULT 0,
  `hours` varchar(40) NOT NULL,
  `time_name` varchar(40) NOT NULL,
  `return_rec_time` int(11) NOT NULL DEFAULT 0,
  `next_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_time` timestamp NULL DEFAULT NULL,
  `compound_times` int(11) NOT NULL DEFAULT 0,
  `rem_compound_times` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: Closed\r\n1: Running\r\n2: Canceled',
  `capital_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 = YES & 0 = NO',
  `capital_back` tinyint(1) NOT NULL DEFAULT 0,
  `hold_capital` tinyint(1) NOT NULL DEFAULT 0,
  `trx` varchar(40) DEFAULT NULL,
  `wallet_type` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invests`
--

INSERT INTO `invests` (`id`, `user_id`, `plan_id`, `amount`, `initial_amount`, `interest`, `initial_interest`, `net_interest`, `should_pay`, `paid`, `period`, `hours`, `time_name`, `return_rec_time`, `next_time`, `last_time`, `compound_times`, `rem_compound_times`, `status`, `capital_status`, `capital_back`, `hold_capital`, `trx`, `wallet_type`, `created_at`, `updated_at`) VALUES
(44, 85, 16, 10.00000000, 10.00000000, 0.50000000, 0.50000000, 0.50000000, 14.50000000, 0.50000000, 30, '24', 'Day', 1, '2024-03-13 18:46:33', '2024-03-12 18:46:33', 0, 0, 1, 0, 0, 0, 'XCVYAPBGU2HG', 'deposit_wallet', '2024-03-12 18:46:33', '2024-03-12 18:46:33');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `code` varchar(40) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: not default language, 1: default language',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 1, '2020-07-06 03:47:55', '2022-04-09 03:47:04');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_logs`
--

CREATE TABLE `notification_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sender` varchar(40) DEFAULT NULL,
  `sent_from` varchar(40) DEFAULT NULL,
  `sent_to` varchar(40) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `notification_type` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_templates`
--

CREATE TABLE `notification_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `act` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `subj` varchar(255) DEFAULT NULL,
  `email_body` text DEFAULT NULL,
  `sms_body` text DEFAULT NULL,
  `shortcodes` text DEFAULT NULL,
  `email_status` tinyint(1) NOT NULL DEFAULT 1,
  `sms_status` tinyint(1) NOT NULL DEFAULT 1,
  `firebase_status` tinyint(1) NOT NULL DEFAULT 0,
  `firebase_body` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_templates`
--

INSERT INTO `notification_templates` (`id`, `act`, `name`, `subj`, `email_body`, `sms_body`, `shortcodes`, `email_status`, `sms_status`, `firebase_status`, `firebase_body`, `created_at`, `updated_at`) VALUES
(1, 'BAL_ADD', 'Balance - Added', 'Your Account has been Credited', '<div><div style=\"font-family: Montserrat, sans-serif;\">{{amount}} {{site_currency}} has been added to your account .</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Transaction Number : {{trx}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><span style=\"color: rgb(33, 37, 41); font-family: Montserrat, sans-serif;\">Your Current Balance is :&nbsp;</span><font style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\">{{post_balance}}&nbsp; {{site_currency}}&nbsp;</span></font><br></div><div><font style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></font></div><div>Admin note:&nbsp;<span style=\"color: rgb(33, 37, 41); font-size: 12px; font-weight: 600; white-space: nowrap; text-align: var(--bs-body-text-align);\">{{remark}}</span></div>', '{{amount}} {{site_currency}} credited in your account. Your Current Balance {{post_balance}} {{site_currency}} . Transaction: #{{trx}}. Admin note is \"{{remark}}\"', '{\"trx\":\"Transaction number for the action\",\"amount\":\"Amount inserted by the admin\",\"remark\":\"Remark inserted by the admin\",\"post_balance\":\"Balance of the user after this transaction\"}', 1, 0, 0, NULL, '2021-11-03 12:00:00', '2022-04-03 02:18:28'),
(2, 'BAL_SUB', 'Balance - Subtracted', 'Your Account has been Debited', '<div style=\"font-family: Montserrat, sans-serif;\">{{amount}} {{site_currency}} has been subtracted from your account .</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Transaction Number : {{trx}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><span style=\"color: rgb(33, 37, 41); font-family: Montserrat, sans-serif;\">Your Current Balance is :&nbsp;</span><font style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\">{{post_balance}}&nbsp; {{site_currency}}</span></font><br><div><font style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></font></div><div>Admin Note: {{remark}}</div>', '{{amount}} {{site_currency}} debited from your account. Your Current Balance {{post_balance}} {{site_currency}} . Transaction: #{{trx}}. Admin Note is {{remark}}', '{\"trx\":\"Transaction number for the action\",\"amount\":\"Amount inserted by the admin\",\"remark\":\"Remark inserted by the admin\",\"post_balance\":\"Balance of the user after this transaction\"}', 1, 1, 0, NULL, '2021-11-03 12:00:00', '2022-04-03 02:24:11'),
(3, 'DEPOSIT_COMPLETE', 'Deposit - Automated - Successful', 'Deposit Completed Successfully', '<div>Your deposit of&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp;is via&nbsp;&nbsp;<span style=\"font-weight: bolder;\">{{method_name}}&nbsp;</span>has been completed Successfully.<span style=\"font-weight: bolder;\"><br></span></div><div><span style=\"font-weight: bolder;\"><br></span></div><div><span style=\"font-weight: bolder;\">Details of your Deposit :<br></span></div><div><br></div><div>Amount : {{amount}} {{site_currency}}</div><div>Charge:&nbsp;<font color=\"#000000\">{{charge}} {{site_currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div>Received : {{method_amount}} {{method_currency}}<br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"5\"><span style=\"font-weight: bolder;\"><br></span></font></div><div><font size=\"5\">Your current Balance is&nbsp;<span style=\"font-weight: bolder;\">{{post_balance}} {{site_currency}}</span></font></div><div><br style=\"font-family: Montserrat, sans-serif;\"></div>', '{{amount}} {{site_currency}} Deposit successfully by {{method_name}}', '{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"post_balance\":\"Balance of the user after this transaction\"}', 1, 1, 0, NULL, '2021-11-03 12:00:00', '2022-04-03 02:25:43'),
(4, 'DEPOSIT_APPROVE', 'Deposit - Manual - Approved', 'Your Deposit is Approved', '<div style=\"font-family: Montserrat, sans-serif;\">Your deposit request of&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp;is via&nbsp;&nbsp;<span style=\"font-weight: bolder;\">{{method_name}}&nbsp;</span>is Approved .<span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\">Details of your Deposit :<br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Amount : {{amount}} {{site_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">Charge:&nbsp;<font color=\"#FF0000\">{{charge}} {{site_currency}}</font></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Conversion Rate : 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">Received : {{method_amount}} {{method_currency}}<br></div><div style=\"font-family: Montserrat, sans-serif;\">Paid via :&nbsp; {{method_name}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Transaction Number : {{trx}}</div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"5\"><span style=\"font-weight: bolder;\"><br></span></font></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"5\">Your current Balance is&nbsp;<span style=\"font-weight: bolder;\">{{post_balance}} {{site_currency}}</span></font></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div>', 'Admin Approve Your {{amount}} {{site_currency}} payment request by {{method_name}} transaction : {{trx}}', '{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"post_balance\":\"Balance of the user after this transaction\"}', 1, 1, 0, NULL, '2021-11-03 12:00:00', '2022-04-03 02:26:07'),
(5, 'DEPOSIT_REJECT', 'Deposit - Manual - Rejected', 'Your Deposit Request is Rejected', '<div style=\"font-family: Montserrat, sans-serif;\">Your deposit request of&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp;is via&nbsp;&nbsp;<span style=\"font-weight: bolder;\">{{method_name}} has been rejected</span>.<span style=\"font-weight: bolder;\"><br></span></div><div><br></div><div><br></div><div style=\"font-family: Montserrat, sans-serif;\">Conversion Rate : 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">Received : {{method_amount}} {{method_currency}}<br></div><div style=\"font-family: Montserrat, sans-serif;\">Paid via :&nbsp; {{method_name}}</div><div style=\"font-family: Montserrat, sans-serif;\">Charge: {{charge}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Transaction Number was : {{trx}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">if you have any queries, feel free to contact us.<br></div><br style=\"font-family: Montserrat, sans-serif;\"><div style=\"font-family: Montserrat, sans-serif;\"><br><br></div><span style=\"color: rgb(33, 37, 41); font-family: Montserrat, sans-serif;\">{{rejection_message}}</span><br>', 'Admin Rejected Your {{amount}} {{site_currency}} payment request by {{method_name}}\r\n\r\n{{rejection_message}}', '{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"rejection_message\":\"Rejection message by the admin\"}', 1, 1, 0, NULL, '2021-11-03 12:00:00', '2022-04-05 03:45:27'),
(6, 'DEPOSIT_REQUEST', 'Deposit - Manual - Requested', 'Deposit Request Submitted Successfully', '<div>Your deposit request of&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp;is via&nbsp;&nbsp;<span style=\"font-weight: bolder;\">{{method_name}}&nbsp;</span>submitted successfully<span style=\"font-weight: bolder;\">&nbsp;.<br></span></div><div><span style=\"font-weight: bolder;\"><br></span></div><div><span style=\"font-weight: bolder;\">Details of your Deposit :<br></span></div><div><br></div><div>Amount : {{amount}} {{site_currency}}</div><div>Charge:&nbsp;<font color=\"#FF0000\">{{charge}} {{site_currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}}<br></div><div>Pay via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><br style=\"font-family: Montserrat, sans-serif;\"></div>', '{{amount}} {{site_currency}} Deposit requested by {{method_name}}. Charge: {{charge}} . Trx: {{trx}}', '{\"trx\":\"Transaction number for the deposit\",\"amount\":\"Amount inserted by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the deposit method\",\"method_currency\":\"Currency of the deposit method\",\"method_amount\":\"Amount after conversion between base currency and method currency\"}', 1, 1, 0, NULL, '2021-11-03 12:00:00', '2022-04-03 02:29:19'),
(7, 'PASS_RESET_CODE', 'Password - Reset - Code', 'Password Reset', '<div style=\"font-family: Montserrat, sans-serif;\">We have received a request to reset the password for your account on&nbsp;<span style=\"font-weight: bolder;\">{{time}} .<br></span></div><div style=\"font-family: Montserrat, sans-serif;\">Requested From IP:&nbsp;<span style=\"font-weight: bolder;\">{{ip}}</span>&nbsp;using&nbsp;<span style=\"font-weight: bolder;\">{{browser}}</span>&nbsp;on&nbsp;<span style=\"font-weight: bolder;\">{{operating_system}}&nbsp;</span>.</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><br style=\"font-family: Montserrat, sans-serif;\"><div style=\"font-family: Montserrat, sans-serif;\"><div>Your account recovery code is:&nbsp;&nbsp;&nbsp;<font size=\"6\"><span style=\"font-weight: bolder;\">{{code}}</span></font></div><div><br></div></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><div><font size=\"4\" color=\"#CC0000\"><br></font></div>', 'Your account recovery code is: {{code}}', '{\"code\":\"Verification code for password reset\",\"ip\":\"IP address of the user\",\"browser\":\"Browser of the user\",\"operating_system\":\"Operating system of the user\",\"time\":\"Time of the request\"}', 1, 0, 0, NULL, '2021-11-03 12:00:00', '2022-03-20 20:47:05'),
(8, 'PASS_RESET_DONE', 'Password - Reset - Confirmation', 'You have reset your password', '<p style=\"font-family: Montserrat, sans-serif;\">You have successfully reset your password.</p><p style=\"font-family: Montserrat, sans-serif;\">You changed from&nbsp; IP:&nbsp;<span style=\"font-weight: bolder;\">{{ip}}</span>&nbsp;using&nbsp;<span style=\"font-weight: bolder;\">{{browser}}</span>&nbsp;on&nbsp;<span style=\"font-weight: bolder;\">{{operating_system}}&nbsp;</span>&nbsp;on&nbsp;<span style=\"font-weight: bolder;\">{{time}}</span></p><p style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></p><p style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><font color=\"#ff0000\">If you did not change that, please contact us as soon as possible.</font></span></p>', 'Your password has been changed successfully', '{\"ip\":\"IP address of the user\",\"browser\":\"Browser of the user\",\"operating_system\":\"Operating system of the user\",\"time\":\"Time of the request\"}', 1, 1, 0, NULL, '2021-11-03 12:00:00', '2022-04-05 03:46:35'),
(9, 'ADMIN_SUPPORT_REPLY', 'Support - Reply', 'Reply Support Ticket', '<div><p><span data-mce-style=\"font-size: 11pt;\" style=\"font-size: 11pt;\"><span style=\"font-weight: bolder;\">A member from our support team has replied to the following ticket:</span></span></p><p><span style=\"font-weight: bolder;\"><span data-mce-style=\"font-size: 11pt;\" style=\"font-size: 11pt;\"><span style=\"font-weight: bolder;\"><br></span></span></span></p><p><span style=\"font-weight: bolder;\">[Ticket#{{ticket_id}}] {{ticket_subject}}<br><br>Click here to reply:&nbsp; {{link}}</span></p><p>----------------------------------------------</p><p>Here is the reply :<br></p><p>{{reply}}<br></p></div><div><br style=\"font-family: Montserrat, sans-serif;\"></div>', 'Your Ticket#{{ticket_id}} :  {{ticket_subject}} has been replied.', '{\"ticket_id\":\"ID of the support ticket\",\"ticket_subject\":\"Subject  of the support ticket\",\"reply\":\"Reply made by the admin\",\"link\":\"URL to view the support ticket\"}', 1, 1, 0, NULL, '2021-11-03 12:00:00', '2022-03-20 20:47:51'),
(10, 'EVER_CODE', 'Verification - Email', 'Please verify your email address', '<br><div><div style=\"font-family: Montserrat, sans-serif;\">Thanks For joining us.<br></div><div style=\"font-family: Montserrat, sans-serif;\">Please use the below code to verify your email address.<br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Your email verification code is:<font size=\"6\"><span style=\"font-weight: bolder;\">&nbsp;{{code}}</span></font></div></div>', '---', '{\"code\":\"Email verification code\"}', 1, 0, 0, NULL, '2021-11-03 12:00:00', '2022-04-03 02:32:07'),
(11, 'SVER_CODE', 'Verification - SMS', 'Verify Your Mobile Number', '---', 'Your phone verification code is: {{code}}', '{\"code\":\"SMS Verification Code\"}', 0, 1, 0, NULL, '2021-11-03 12:00:00', '2022-03-20 19:24:37'),
(12, 'WITHDRAW_APPROVE', 'Withdraw - Approved', 'Withdraw Request has been Processed and your money is sent', '<div style=\"font-family: Montserrat, sans-serif;\">Your withdraw request of&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp; via&nbsp;&nbsp;<span style=\"font-weight: bolder;\">{{method_name}}&nbsp;</span>has been Processed Successfully.<span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\">Details of your withdraw:<br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Amount : {{amount}} {{site_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">Charge:&nbsp;<font color=\"#FF0000\">{{charge}} {{site_currency}}</font></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Conversion Rate : 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">You will get: {{method_amount}} {{method_currency}}<br></div><div style=\"font-family: Montserrat, sans-serif;\">Via :&nbsp; {{method_name}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Transaction Number : {{trx}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">-----</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"4\">Details of Processed Payment :</font></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"4\"><span style=\"font-weight: bolder;\">{{admin_details}}</span></font></div>', 'Admin Approve Your {{amount}} {{site_currency}} withdraw request by {{method_name}}. Transaction {{trx}}', '{\"trx\":\"Transaction number for the withdraw\",\"amount\":\"Amount requested by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the withdraw method\",\"method_currency\":\"Currency of the withdraw method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"admin_details\":\"Details provided by the admin\"}', 1, 1, 0, NULL, '2021-11-03 12:00:00', '2022-03-20 20:50:16'),
(13, 'WITHDRAW_REJECT', 'Withdraw - Rejected', 'Withdraw Request has been Rejected and your money is refunded to your account', '<div style=\"font-family: Montserrat, sans-serif;\">Your withdraw request of&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp; via&nbsp;&nbsp;<span style=\"font-weight: bolder;\">{{method_name}}&nbsp;</span>has been Rejected.<span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\">Details of your withdraw:<br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Amount : {{amount}} {{site_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">Charge:&nbsp;<font color=\"#FF0000\">{{charge}} {{site_currency}}</font></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Conversion Rate : 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">You should get: {{method_amount}} {{method_currency}}<br></div><div style=\"font-family: Montserrat, sans-serif;\">Via :&nbsp; {{method_name}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Transaction Number : {{trx}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">----</div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"3\"><br></font></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"3\">{{amount}} {{currency}} has been&nbsp;<span style=\"font-weight: bolder;\">refunded&nbsp;</span>to your account and your current Balance is&nbsp;<span style=\"font-weight: bolder;\">{{post_balance}}</span><span style=\"font-weight: bolder;\">&nbsp;{{site_currency}}</span></font></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">-----</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"4\">Details of Rejection :</font></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"4\"><span style=\"font-weight: bolder;\">{{admin_details}}</span></font></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><br><br><br><br><br></div><div></div><div></div>', 'Admin Rejected Your {{amount}} {{site_currency}} withdraw request. Your Main Balance {{post_balance}}  {{method_name}} , Transaction {{trx}}', '{\"trx\":\"Transaction number for the withdraw\",\"amount\":\"Amount requested by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the withdraw method\",\"method_currency\":\"Currency of the withdraw method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"post_balance\":\"Balance of the user after fter this action\",\"admin_details\":\"Rejection message by the admin\"}', 1, 1, 0, NULL, '2021-11-03 12:00:00', '2022-03-20 20:57:46'),
(14, 'WITHDRAW_REQUEST', 'Withdraw - Requested', 'Withdraw Request Submitted Successfully', '<div style=\"font-family: Montserrat, sans-serif;\">Your withdraw request of&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp; via&nbsp;&nbsp;<span style=\"font-weight: bolder;\">{{method_name}}&nbsp;</span>has been submitted Successfully.<span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\">Details of your withdraw:<br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Amount : {{amount}} {{site_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">Charge:&nbsp;<font color=\"#FF0000\">{{charge}} {{site_currency}}</font></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Conversion Rate : 1 {{site_currency}} = {{rate}} {{method_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">You will get: {{method_amount}} {{method_currency}}<br></div><div style=\"font-family: Montserrat, sans-serif;\">Via :&nbsp; {{method_name}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Transaction Number : {{trx}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"5\">Your current Balance is&nbsp;<span style=\"font-weight: bolder;\">{{post_balance}} {{site_currency}}</span></font></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><br><br><br></div>', '{{amount}} {{site_currency}} withdraw requested by {{method_name}}. You will get {{method_amount}} {{method_currency}} Trx: {{trx}}', '{\"trx\":\"Transaction number for the withdraw\",\"amount\":\"Amount requested by the user\",\"charge\":\"Gateway charge set by the admin\",\"rate\":\"Conversion rate between base currency and method currency\",\"method_name\":\"Name of the withdraw method\",\"method_currency\":\"Currency of the withdraw method\",\"method_amount\":\"Amount after conversion between base currency and method currency\",\"post_balance\":\"Balance of the user after fter this transaction\"}', 1, 1, 0, NULL, '2021-11-03 12:00:00', '2022-03-21 04:39:03'),
(15, 'DEFAULT', 'Default Template', '{{subject}}', '{{message}}', '{{message}}', '{\"subject\":\"Subject\",\"message\":\"Message\"}', 1, 1, 0, NULL, '2019-09-14 13:14:22', '2021-11-04 09:38:55'),
(16, 'KYC_APPROVE', 'KYC Approved', 'KYC has been approved', NULL, NULL, '[]', 1, 1, 0, NULL, NULL, NULL),
(17, 'KYC_REJECT', 'KYC Rejected Successfully', 'KYC has been rejected', NULL, NULL, '[]', 1, 1, 0, NULL, NULL, NULL),
(18, 'INTEREST', 'Interest', 'Interest added to your balance', '<div style=\"font-family: Montserrat, sans-serif;\">You got&nbsp;<span style=\"font-size: 1rem; text-align: var(--bs-body-text-align); font-weight: bolder;\">{{amount}} {{site_currency}}</span><span style=\"color: rgb(33, 37, 41); font-size: 1rem; text-align: var(--bs-body-text-align);\">&nbsp;interest.</span></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\">Details of your Interest:</span></div><div style=\"font-family: Montserrat, sans-serif;\">Amount : {{amount}} {{site_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">Plan Name: {{plan_name}}</div><div style=\"font-family: Montserrat, sans-serif;\">Transaction Number : {{trx}}</div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"5\"><span style=\"font-weight: bolder;\"><br></span></font></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"5\">Your current Balance is&nbsp;<span style=\"font-weight: bolder;\">{{post_balance}} {{site_currency}}</span></font></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div>', 'You got {{amount}} {{site_currency}} interest. Plan: {{plan_name}}. Trx: {{trx}}', '{\r\n    \"trx\": \"Transaction number for the interest\",\r\n    \"amount\": \"Amount inserted by the user\",\r\n    \"plan_name\": \"Plan name\",\r\n    \"post_balance\": \"Balance of the user after this transaction\"\r\n}', 1, 1, 0, NULL, '2021-11-03 12:00:00', '2022-09-22 06:43:09'),
(19, 'INVESTMENT', 'Investment', 'Investment successfully completed', '<div style=\"font-family: Montserrat, sans-serif;\">Your&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp;investment successfully completed.<span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\">Details of your Investment:</span></div><div style=\"font-family: Montserrat, sans-serif;\">Amount : {{amount}} {{site_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"color: rgb(33, 37, 41);\">Wallet type: {{wallet_type}}</span><br></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"color: rgb(33, 37, 41);\">Plan name: {{plan_name}}</span><br></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"color: rgb(33, 37, 41);\">Interest: {{interest_amount}} {{site_currency}}</span></div><div style=\"font-family: Montserrat, sans-serif;\">Duration: {{time}}</div><div style=\"font-family: Montserrat, sans-serif;\">Every {{time_name}}</div><div style=\"font-family: Montserrat, sans-serif;\">Transaction Number : {{trx}}</div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"5\"><span style=\"font-weight: bolder;\"><br></span></font></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"5\">Your current Balance is&nbsp;<span style=\"font-weight: bolder;\">{{post_balance}} {{site_currency}}</span></font></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div>', 'Your {{amount}} {{site_currency}} investment successfully completed. Plan name: {{plan_name}}. Trx: {{trx}}', '{\r\n    \"trx\": \"Transaction number for the interest\",\r\n    \"amount\": \"Amount inserted by the user\",\r\n    \"plan_name\": \"Plan name\",\r\n    \"interest_amount\": \"Interest amount\",\r\n    \"time\": \"Plan duration\",\r\n    \"time_name\": \"Interest duration\",\r\n    \"wallet_type\": \"Invest wallet\",\r\n    \"post_balance\": \"Balance of the user after this transaction\"\r\n}', 1, 1, 0, NULL, '2021-11-03 12:00:00', '2022-09-22 06:26:23'),
(20, 'REFERRAL_COMMISSION', 'Referral Commission', 'Referral Commission', '<div style=\"font-family: Montserrat, sans-serif;\">You got&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp;referral commission.</div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\">Details of your referral commission:</span></div><div style=\"font-family: Montserrat, sans-serif;\">Amount : {{amount}} {{site_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">{{type}} referral commission</div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"color: rgb(33, 37, 41);\">Transaction Number : {{trx}}</span><br></div><div style=\"font-family: Montserrat, sans-serif;\">{{level}} level referral commission.</div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"5\"><span style=\"font-weight: bolder;\"><br></span></font></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"5\">Your current Balance is&nbsp;<span style=\"font-weight: bolder;\">{{post_balance}} {{site_currency}}</span></font></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div>', 'Your got {{amount}} {{site_currency}} referral commission from {{ref_username}}.', '{\r\n    \"trx\": \"Transaction number for the interest\",\r\n    \"amount\": \"Amount inserted by the user\",\r\n    \"plan_name\": \"Plan name\",\r\n    \"level\": \"Which level referral commission\",\r\n    \"post_balance\": \"Balance of the user after this transaction\"\r\n}', 1, 1, 0, NULL, '2021-11-03 12:00:00', '2022-09-22 03:43:49'),
(21, 'REFERRAL_JOIN', 'Referral Join', 'Referral Join', '<div style=\"font-family: Montserrat, sans-serif;\">@{{ref_username}} has been joined by your referral link.</div>', '{{ref_user_name}} ({{ref_username}}) has been joined by your referral link.', '{\r\n    \"ref_user_name\": \"Referral user full name\",\r\n    \"ref_username\": \"Referral user username\"\r\n}', 1, 1, 0, NULL, '2021-11-03 12:00:00', '2022-09-22 05:05:46'),
(22, 'BALANCE_TRANSFER', 'Balance Transfer', 'Balance Transfer', '<div style=\"font-family: Montserrat, sans-serif;\">Your&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp;transferred successfully.<span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\">Details of your Transfer:</span></div><div style=\"font-family: Montserrat, sans-serif;\">Amount : {{amount}} {{site_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">Charge:&nbsp;<font color=\"#FF0000\">{{charge}} {{site_currency}}</font></div><div style=\"\"><font face=\"Montserrat, sans-serif\">Wallet type: {{wallet_type}}</font></div><div style=\"\"><font face=\"Montserrat, sans-serif\">Transfer to: {{user_fullname}} (</font><span style=\"color: rgb(33, 37, 41); font-family: Montserrat, sans-serif; font-size: 1rem; text-align: var(--bs-body-text-align);\">{{username}})</span></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Transaction Number : {{trx}}</div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"5\"><span style=\"font-weight: bolder;\"><br></span></font></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"5\">Your current Balance is&nbsp;<span style=\"font-weight: bolder;\">{{post_balance}} {{site_currency}}</span></font></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div>', 'Your {{amount}} {{site_currency}} transferred successfully. Transfer to: {{user_fullname}} ({{username}})', '{\r\n{\r\n    \"trx\": \"Transaction number for the interest\",\r\n    \"amount\": \"Amount inserted by the user\",\r\n    \"wallet_type\": \"Wallet type\",\r\n    \"charge\": \"Charge amount\",\r\n    \"user_fullname\": \"Transfer user full name\",\r\n    \"username\": \"Transfer user username\",\r\n    \"post_balance\": \"Balance of the user after this transaction\"\r\n}\r\n    \"amount\": \"Amount inserted by the user\",\r\n    \"charge\": \"Charge amount\",\r\n    \"user_fullname\": \"Transfer user full name\",\r\n    \"username\": \"Transfer user username\",\r\n    \"post_balance\": \"Balance of the user after this transaction\"\r\n}\r\n', 1, 1, 0, NULL, '2021-11-03 12:00:00', '2022-09-22 05:09:03'),
(23, 'BALANCE_RECEIVE', 'Balance Receive', 'Balance Receive', '<div style=\"font-family: Montserrat, sans-serif;\">You received&nbsp;<span style=\"font-weight: bolder;\">{{amount}} {{site_currency}}</span>&nbsp;from {{sender}}.<span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\"><br></span></div><div style=\"font-family: Montserrat, sans-serif;\"><span style=\"font-weight: bolder;\">Details of your Received Money:</span></div><div style=\"font-family: Montserrat, sans-serif;\">Amount : {{amount}} {{site_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">Wallet_type: {{wallet_type}}</div><div style=\"font-family: Montserrat, sans-serif;\">Transaction Number : {{trx}}</div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"5\"><span style=\"font-weight: bolder;\"><br></span></font></div><div style=\"font-family: Montserrat, sans-serif;\"><font size=\"5\">Your current Balance is&nbsp;<span style=\"font-weight: bolder;\">{{post_balance}} {{site_currency}}</span></font></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\"><br></div>', 'Your {{amount}} {{site_currency}} transferred successfully. Transfer to: {{user_fullname}} ({{username}})', '{\r\n    \"trx\": \"Transaction number for the interest\",\r\n    \"amount\": \"Amount inserted by the user\",\r\n    \"sender\": \"Sender username\",\r\n    \"wallet_type\": \"Wallet type\",\r\n    \"post_balance\": \"Balance of the user after this transaction\"\r\n}\r\n', 1, 1, 0, NULL, '2021-11-03 12:00:00', '2022-09-20 09:03:25'),
(24, 'INSUFFICIENT_BALANCE', 'Schedule Investment Failed', 'Schedule Investment Failed', '<div style=\"font-family: Montserrat, sans-serif;\">Your scheduled investment failed due to insufficient balance.</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Details of your scheduled investment.</div><div style=\"font-family: Montserrat, sans-serif;\">Invest Amount: {{invest_amount}} {{site_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">Wallet: {{wallet}}</div><div style=\"font-family: Montserrat, sans-serif;\">Plan Name: {{plan_name}}</div><div style=\"font-family: Montserrat, sans-serif;\">Your Balance: {{balance}} {{site_currency}}</div><div style=\"font-family: Montserrat, sans-serif;\">Next Schedule: {{next_schedule}}</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div><div style=\"font-family: Montserrat, sans-serif;\">Please keep your balance for the next scheduled date.</div><div style=\"font-family: Montserrat, sans-serif;\"><br></div>', 'Your scheduled investment failed due to insufficient balance.', '{\r\n    \"invest_amount\": \"Invest amount\",\r\n    \"wallet\": \"Wallet type\",\r\n    \"plan_name\": \"Plan name\",\r\n    \"balance\": \"User balance\",\r\n    \"next_schedule\": \"Next invest schedule\"\r\n}', 1, 0, 0, 'Your scheduled investment failed due to insufficient balance.', '2021-11-03 12:00:00', '2023-06-21 03:13:36');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `slug` varchar(40) DEFAULT NULL,
  `tempname` varchar(40) DEFAULT NULL COMMENT 'template name',
  `secs` text DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `tempname`, `secs`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'HOME', '/', 'templates.bit_gold.', '[\"about\",\"plan\",\"why_choose\",\"calculation\",\"how_work\",\"faq\",\"testimonial\",\"team\",\"transaction\",\"top_investor\",\"cta\",\"we_accept\",\"ranking\",\"blog\",\"subscribe\"]', 1, '2020-07-11 06:23:58', '2023-06-21 06:27:07'),
(4, 'Blog', 'blogs', 'templates.bit_gold.', NULL, 1, '2020-10-22 01:14:43', '2022-09-10 04:36:20'),
(5, 'Contact', 'contact', 'templates.bit_gold.', NULL, 1, '2020-10-22 01:14:53', '2020-10-22 01:14:53'),
(19, 'Plans', 'plans', 'templates.bit_gold.', NULL, 1, '2022-05-18 09:37:02', '2022-05-18 09:38:21'),
(20, 'Home', '/', 'templates.neo_dark.', '[\"about\",\"faq\",\"why_choose\",\"plan\",\"subscribe\",\"testimonial\",\"top_investor\",\"transaction\",\"calculation\",\"ranking\",\"how_work\",\"blog\"]', 1, '2022-06-06 08:34:19', '2023-06-21 06:22:47'),
(21, 'Plan', 'plans', 'templates.neo_dark.', NULL, 1, '2022-06-11 08:26:40', '2022-06-11 08:27:13'),
(22, 'About', 'about', 'templates.neo_dark.', '[\"how_work\",\"about\",\"counter\",\"team\",\"we_accept\"]', 0, '2022-06-11 08:55:56', '2022-06-11 09:06:05'),
(23, 'Blogs', 'blogs', 'templates.neo_dark.', NULL, 1, '2022-06-11 09:34:38', '2022-06-11 09:34:38'),
(24, 'About', 'about', 'templates.bit_gold.', '[\"how_work\",\"about\",\"faq\",\"cta\"]', 0, '2022-08-25 04:50:42', '2022-08-25 04:52:26'),
(25, 'Home', '/', 'templates.invester.', NULL, 1, '2022-09-20 07:12:38', '2022-09-20 07:13:53');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(40) DEFAULT NULL,
  `token` varchar(40) DEFAULT NULL,
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_setting_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(40) NOT NULL,
  `minimum` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `maximum` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `fixed_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `interest` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `interest_type` tinyint(1) DEFAULT 0 COMMENT '1 = ''%'' / 0 =''currency''',
  `repeat_time` varchar(40) DEFAULT NULL,
  `lifetime` tinyint(1) DEFAULT 0,
  `capital_back` tinyint(1) DEFAULT 0,
  `compound_interest` tinyint(1) NOT NULL DEFAULT 0,
  `hold_capital` tinyint(1) NOT NULL DEFAULT 0,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `time_setting_id`, `name`, `minimum`, `maximum`, `fixed_amount`, `interest`, `interest_type`, `repeat_time`, `lifetime`, `capital_back`, `compound_interest`, `hold_capital`, `featured`, `status`, `created_at`, `updated_at`) VALUES
(16, 2, 'Zam Zam Investr No. 1', 0.00000000, 0.00000000, 10.00000000, 0.50000000, 0, '30', 0, 0, 0, 0, 0, 1, '2023-11-09 15:35:35', '2023-11-09 15:35:35'),
(17, 2, 'Zam Zam Investr No. 2', 0.00000000, 0.00000000, 20.00000000, 0.90000000, 0, '30', 0, 0, 0, 0, 0, 1, '2023-11-09 15:36:10', '2023-11-09 15:36:10'),
(18, 2, 'Zam Zam Investr No. 3', 0.00000000, 0.00000000, 50.00000000, 2.40000000, 0, '60', 0, 0, 0, 0, 0, 1, '2023-11-09 15:45:42', '2023-11-09 15:45:42'),
(19, 2, 'Zam Zam Investr No. 4', 0.00000000, 0.00000000, 100.00000000, 4.80000000, 0, '365', 0, 0, 0, 0, 0, 1, '2023-11-09 15:46:19', '2023-11-09 15:46:19'),
(20, 2, 'Zam Zam Investr No. 5', 0.00000000, 0.00000000, 200.00000000, 9.20000000, 0, '365', 0, 0, 0, 0, 0, 1, '2023-11-09 15:47:28', '2023-11-09 15:47:28');

-- --------------------------------------------------------

--
-- Table structure for table `pools`
--

CREATE TABLE `pools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `invested_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `interest_range` varchar(40) DEFAULT NULL,
  `share_interest` tinyint(4) NOT NULL DEFAULT 0,
  `interest` decimal(5,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pool_invests`
--

CREATE TABLE `pool_invests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `pool_id` int(10) UNSIGNED NOT NULL,
  `invest_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: Running\r\n2: Completed\r\n',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotion_tools`
--

CREATE TABLE `promotion_tools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `commission_type` varchar(40) DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `percent` decimal(5,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `referrals`
--

INSERT INTO `referrals` (`id`, `commission_type`, `level`, `percent`, `status`, `created_at`, `updated_at`) VALUES
(1, 'deposit_commission', 1, 5.00, 1, '2023-11-04 14:59:52', '2023-11-04 14:59:52'),
(2, 'deposit_commission', 2, 3.00, 1, '2023-11-04 14:59:52', '2023-11-04 14:59:52'),
(3, 'deposit_commission', 3, 1.00, 1, '2023-11-04 14:59:52', '2023-11-04 14:59:52');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_invests`
--

CREATE TABLE `schedule_invests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `plan_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `wallet` varchar(40) DEFAULT NULL,
  `amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `schedule_times` int(11) NOT NULL DEFAULT 0,
  `rem_schedule_times` int(11) NOT NULL DEFAULT 0,
  `interval_hours` int(11) NOT NULL DEFAULT 0,
  `compound_times` int(11) NOT NULL DEFAULT 0,
  `next_invest` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stakings`
--

CREATE TABLE `stakings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `days` int(11) NOT NULL,
  `interest_percent` decimal(5,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staking_invests`
--

CREATE TABLE `staking_invests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `staking_id` int(11) NOT NULL DEFAULT 0,
  `invest_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `interest` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `end_at` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1: Running\r\n2: Completed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_attachments`
--

CREATE TABLE `support_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_message_id` int(10) UNSIGNED DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_messages`
--

CREATE TABLE `support_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_ticket_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `message` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT 0,
  `name` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `ticket` varchar(40) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: Open, 1: Answered, 2: Replied, 3: Closed',
  `priority` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 = Low, 2 = medium, 3 = heigh',
  `last_reply` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_settings`
--

CREATE TABLE `time_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `time` varchar(40) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: Disable\r\n1: Enable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_settings`
--

INSERT INTO `time_settings` (`id`, `name`, `time`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Day', '24', 1, '2023-11-02 13:37:48', '2023-11-06 15:57:32');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `invest_id` int(11) NOT NULL DEFAULT 0,
  `amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `post_balance` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `trx_type` varchar(40) DEFAULT NULL,
  `trx` varchar(40) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `remark` varchar(40) DEFAULT NULL,
  `wallet_type` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `invest_id`, `amount`, `charge`, `post_balance`, `trx_type`, `trx`, `details`, `remark`, `wallet_type`, `created_at`, `updated_at`) VALUES
(433, 85, 0, 500.00000000, 0.00000000, 500.00000000, '+', 'Q8BPVJS9VQPF', 'trurtutr', 'balance_add', 'interest_wallet', '2024-03-12 18:38:16', '2024-03-12 18:38:16'),
(434, 85, 0, 200.00000000, 10.00000000, 300.00000000, '-', '9FR61TGRO6YC', '190.00 INR Withdraw Via Bank Transfer', 'withdraw', 'interest_wallet', '2024-03-12 18:38:32', '2024-03-12 18:38:32'),
(435, 85, 0, 500.00000000, 0.00000000, 500.00000000, '+', 'WQ2OYZA32RMV', 'ytrytr', 'balance_add', 'deposit_wallet', '2024-03-12 18:46:16', '2024-03-12 18:46:16'),
(436, 85, 0, 10.00000000, 0.00000000, 490.00000000, '-', 'XCVYAPBGU2HG', 'Invested on Zam Zam Investr No. 1', 'invest', 'deposit_wallet', '2024-03-12 18:46:33', '2024-03-12 18:46:33'),
(437, 85, 44, 0.50000000, 0.00000000, 300.50000000, '+', 'K1CAQ27CT7A1', '0.50 INR interest from Zam Zam Investr No. 1', 'interest', 'interest_wallet', '2024-03-12 18:46:33', '2024-03-12 18:46:33');

-- --------------------------------------------------------

--
-- Table structure for table `update_logs`
--

CREATE TABLE `update_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(40) DEFAULT NULL,
  `update_log` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(40) DEFAULT NULL,
  `lastname` varchar(40) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `refCode` int(11) DEFAULT 0,
  `wallet` varchar(255) DEFAULT NULL,
  `message` varchar(40) DEFAULT NULL,
  `country_code` varchar(40) DEFAULT NULL,
  `mobile` varchar(40) DEFAULT NULL,
  `ref_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `deposit_wallet` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `interest_wallet` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `password` varchar(255) NOT NULL,
  `total_invests` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `team_invests` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `user_ranking_id` int(11) NOT NULL DEFAULT 0,
  `address` text DEFAULT NULL COMMENT 'contains full address',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: banned, 1: active',
  `kyc_data` text DEFAULT NULL,
  `kv` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: KYC Unverified, 2: KYC pending, 1: KYC verified',
  `ev` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: email unverified, 1: email verified',
  `sv` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: mobile unverified, 1: mobile verified',
  `profile_complete` tinyint(1) NOT NULL DEFAULT 0,
  `ver_code` varchar(40) DEFAULT NULL COMMENT 'stores verification code',
  `ver_code_send_at` datetime DEFAULT NULL COMMENT 'verification send time',
  `ts` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: 2fa off, 1: 2fa on',
  `tv` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: 2fa unverified, 1: 2fa verified',
  `tsc` varchar(255) DEFAULT NULL,
  `ban_reason` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `last_rank_update` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `refCode`, `wallet`, `message`, `country_code`, `mobile`, `ref_by`, `deposit_wallet`, `interest_wallet`, `password`, `total_invests`, `team_invests`, `user_ranking_id`, `address`, `status`, `kyc_data`, `kv`, `ev`, `sv`, `profile_complete`, `ver_code`, `ver_code_send_at`, `ts`, `tv`, `tsc`, `ban_reason`, `remember_token`, `last_rank_update`, `created_at`, `updated_at`) VALUES
(85, NULL, NULL, '7970165730', 'ak6994059@gmail.com', 80067360, NULL, NULL, NULL, NULL, 0, 490.00000000, 300.50000000, '$2y$10$UtzNvbY9Ku/6LKHHmhs5BeRnyPLF4APK6pYlI3.S7rMindQm/P4pW', 10.00000000, 0.00000000, 0, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":null,\"city\":\"\"}', 1, NULL, 1, 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, NULL, '2024-03-12 19:18:03', '2024-03-12 18:26:15', '2024-03-12 19:18:03');

-- --------------------------------------------------------

--
-- Table structure for table `user_logins`
--

CREATE TABLE `user_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_ip` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `country` varchar(40) DEFAULT NULL,
  `country_code` varchar(40) DEFAULT NULL,
  `longitude` varchar(40) DEFAULT NULL,
  `latitude` varchar(40) DEFAULT NULL,
  `browser` varchar(40) DEFAULT NULL,
  `os` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_logins`
--

INSERT INTO `user_logins` (`id`, `user_id`, `user_ip`, `city`, `country`, `country_code`, `longitude`, `latitude`, `browser`, `os`, `created_at`, `updated_at`) VALUES
(247, 84, '103.111.226.83', '', 'Bangladesh', 'BD', '90.3742', '23.7018', 'Handheld Browser', 'Android', '2023-11-09 15:38:24', '2023-11-09 15:38:24'),
(248, 85, '81.17.122.136', 'Mumbai', 'India', 'IN', '72.8856', '19.0748', 'Chrome', 'Windows 10', '2024-03-12 18:26:15', '2024-03-12 18:26:15'),
(249, 85, '81.17.122.136', 'Mumbai', 'India', 'IN', '72.8856', '19.0748', 'Handheld Browser', 'Android', '2024-03-12 19:19:10', '2024-03-12 19:19:10');

-- --------------------------------------------------------

--
-- Table structure for table `user_rankings`
--

CREATE TABLE `user_rankings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT 0,
  `name` varchar(40) DEFAULT NULL,
  `minimum_invest` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `min_referral_invest` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `min_referral` int(11) NOT NULL DEFAULT 0,
  `bonus` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `currency` varchar(40) DEFAULT NULL,
  `rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `trx` varchar(40) DEFAULT NULL,
  `final_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `after_charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `withdraw_information` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=>success, 2=>pending, 3=>cancel,  ',
  `admin_feedback` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdrawals`
--

INSERT INTO `withdrawals` (`id`, `method_id`, `user_id`, `amount`, `currency`, `rate`, `charge`, `trx`, `final_amount`, `after_charge`, `withdraw_information`, `status`, `admin_feedback`, `created_at`, `updated_at`) VALUES
(53, 2, 85, 200.00000000, 'INR', 1.00000000, 10.00000000, '9FR61TGRO6YC', 190.00000000, 190.00000000, '[{\"name\":\"Bank Name\",\"type\":\"text\",\"value\":\"t465t43\"},{\"name\":\"Account no\",\"type\":\"text\",\"value\":\"tgetertert345345\"},{\"name\":\"IFSC Code\",\"type\":\"text\",\"value\":\"5345rftged\"},{\"name\":\"A\\/C Holder Name\",\"type\":\"text\",\"value\":\"532543\"}]', 1, 'rtewrte', '2024-03-12 18:38:22', '2024-03-12 18:39:03');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(40) DEFAULT NULL,
  `min_limit` decimal(28,8) DEFAULT 0.00000000,
  `max_limit` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `fixed_charge` decimal(28,8) DEFAULT 0.00000000,
  `rate` decimal(28,8) DEFAULT 0.00000000,
  `percent_charge` decimal(5,2) DEFAULT 0.00,
  `currency` varchar(40) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_methods`
--

INSERT INTO `withdraw_methods` (`id`, `form_id`, `name`, `min_limit`, `max_limit`, `fixed_charge`, `rate`, `percent_charge`, `currency`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'USDT', 6.00000000, 200000.00000000, 0.00000000, 6.00000000, 0.00, 'USDT', '<br>', 0, '2023-11-02 16:25:23', '2024-03-12 18:35:58'),
(2, 4, 'Bank Transfer', 200.00000000, 100000.00000000, 0.00000000, 1.00000000, 5.00, 'INR', 'Enter Correct Bank details&nbsp;', 1, '2024-03-12 18:37:46', '2024-03-12 18:37:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`,`username`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cron_jobs`
--
ALTER TABLE `cron_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cron_job_logs`
--
ALTER TABLE `cron_job_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cron_schedules`
--
ALTER TABLE `cron_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `device_tokens`
--
ALTER TABLE `device_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extensions`
--
ALTER TABLE `extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontends`
--
ALTER TABLE `frontends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invests`
--
ALTER TABLE `invests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_logs`
--
ALTER TABLE `notification_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_templates`
--
ALTER TABLE `notification_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pools`
--
ALTER TABLE `pools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pool_invests`
--
ALTER TABLE `pool_invests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotion_tools`
--
ALTER TABLE `promotion_tools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_invests`
--
ALTER TABLE `schedule_invests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stakings`
--
ALTER TABLE `stakings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staking_invests`
--
ALTER TABLE `staking_invests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_attachments`
--
ALTER TABLE `support_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_messages`
--
ALTER TABLE `support_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_settings`
--
ALTER TABLE `time_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `update_logs`
--
ALTER TABLE `update_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`email`);

--
-- Indexes for table `user_logins`
--
ALTER TABLE `user_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_rankings`
--
ALTER TABLE `user_rankings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cron_jobs`
--
ALTER TABLE `cron_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cron_job_logs`
--
ALTER TABLE `cron_job_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1213;

--
-- AUTO_INCREMENT for table `cron_schedules`
--
ALTER TABLE `cron_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `device_tokens`
--
ALTER TABLE `device_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `extensions`
--
ALTER TABLE `extensions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `frontends`
--
ALTER TABLE `frontends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invests`
--
ALTER TABLE `invests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_logs`
--
ALTER TABLE `notification_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_templates`
--
ALTER TABLE `notification_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pools`
--
ALTER TABLE `pools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pool_invests`
--
ALTER TABLE `pool_invests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotion_tools`
--
ALTER TABLE `promotion_tools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schedule_invests`
--
ALTER TABLE `schedule_invests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stakings`
--
ALTER TABLE `stakings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staking_invests`
--
ALTER TABLE `staking_invests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_attachments`
--
ALTER TABLE `support_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_messages`
--
ALTER TABLE `support_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_settings`
--
ALTER TABLE `time_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=438;

--
-- AUTO_INCREMENT for table `update_logs`
--
ALTER TABLE `update_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `user_logins`
--
ALTER TABLE `user_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `user_rankings`
--
ALTER TABLE `user_rankings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
