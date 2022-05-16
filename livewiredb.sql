-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2022 at 02:39 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `livewiredb`
--

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
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `filename`, `created_at`, `updated_at`) VALUES
(1, '[\"images\\/J6px1VTDniTVeSPH56K2oom1D9vKrVznw1bL78pV.jpg\",\"images\\/NWnZ7Ewssm3Vtued8fBkOu1qtPMoBZYRyTZexcXh.png\"]', '2022-04-06 14:56:00', '2022-04-06 14:56:00'),
(2, '[\"images\\/crOYIBSR7vO8TqkZMnHYY9FAWpL3YNt2c0lXrhDQ.svg\",\"images\\/smR8tYyGvarzloX94N7AQ6gaJQGzobhAbnQ2RsJg.png\"]', '2022-04-06 14:58:58', '2022-04-06 14:58:58');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_04_182200_create_students_table', 2),
(6, '2022_04_05_192502_create_uploads_table', 3),
(7, '2022_04_06_172353_create_images_table', 4);

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

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Zachary', 'Terry', 'haley.lea@hotmail.com', '(734) 576-6130', '2022-04-04 15:29:21', '2022-04-04 15:29:21'),
(2, 'Jedidiah', 'Emard', 'mazie94@medhurst.com', '(712) 349-6387', '2022-04-04 15:29:21', '2022-04-04 15:29:21'),
(3, 'Onie', 'Padberg', 'dgulgowski@cremin.info', '+15102211329', '2022-04-04 15:29:21', '2022-04-04 15:29:21'),
(4, 'Jayden', 'Quigley', 'theresia07@hayes.com', '608-454-7965', '2022-04-04 15:29:21', '2022-04-04 15:29:21'),
(5, 'Janice', 'Schuppe', 'estefania.king@hotmail.com', '(906) 704-9993', '2022-04-04 15:29:21', '2022-04-04 15:29:21'),
(6, 'Cyrus', 'Mwangi', 'abshire.madelyn@hotmail.com', '+1 (325) 853-4839', '2022-04-04 15:29:21', '2022-04-05 15:58:23'),
(7, 'Osborne', 'Thiel', 'aileen.mckenzie@hotmail.com', '303.398.8144', '2022-04-04 15:29:21', '2022-04-04 15:29:21'),
(8, 'Abe', 'Boehm', 'kwilderman@jakubowski.com', '(775) 328-3501', '2022-04-04 15:29:21', '2022-04-04 15:29:21'),
(9, 'Anne', 'Luettgen', 'dfisher@gmail.com', '(458) 326-7379', '2022-04-04 15:29:21', '2022-04-04 15:29:21'),
(10, 'Joe', 'Flatley', 'neil50@gmail.com', '+1 (409) 666-4474', '2022-04-04 15:29:21', '2022-04-04 15:29:21');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `title`, `filename`, `created_at`, `updated_at`) VALUES
(1, 'PHP tutorial', 'files/ceLdegaGNWHEZUxUUBhenhnRAAmiP7Abysd1EocU.png', '2022-04-05 16:56:40', '2022-04-05 16:56:40'),
(2, 'C++ tutorials', 'files/hAN676MSQQtbi9YlwbrjgTkuOQd8C2f0sL2n4boe.jpg', '2022-04-05 16:59:03', '2022-04-05 16:59:03');

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
(1, 'Rosella Ullrich', 'walker.roman@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bAMJy2kjlD', '2022-04-03 15:58:58', '2022-04-03 15:58:58'),
(2, 'Dr. Luna Anderson', 'padberg.jonathon@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2uqGF8f2vq', '2022-04-03 15:58:58', '2022-04-03 15:58:58'),
(3, 'Maudie Flatley Sr.', 'hector63@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7yJbvMQIfr', '2022-04-03 15:58:58', '2022-04-03 15:58:58'),
(4, 'Barney Ernser', 'ward.daniela@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hLZlWgLsFH', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(5, 'Aliyah Lehner PhD', 'wayne02@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Pnz559jmGy', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(6, 'Mrs. Kavon Bechtelar', 'jailyn89@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RpsB5oy5fC', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(7, 'Miss Mable Spencer V', 'ikirlin@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4nG66TSqxg', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(8, 'Raphaelle Lindgren IV', 'lenny86@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qURdYEQocA', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(9, 'Brando Nicolas Jr.', 'rae.heller@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sTpq6rfeqb', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(10, 'Mekhi Fisher', 'xfisher@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CAYozDrq33', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(11, 'Adolph Predovic', 'nboyer@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Clrnhl5Nio', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(12, 'Loy Kunde', 'melody.towne@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Mg2y0nc24k', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(13, 'Maurice Schaden Jr.', 'jameson48@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '28nbkLTWo0', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(14, 'Davonte West', 'vwitting@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9wcvFPiBBt', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(15, 'Hattie Pagac V', 'destini.deckow@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'znS84jbBHN', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(16, 'Orville Cummings', 'jeffrey36@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TyNj0ELnId', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(17, 'Prof. Lavonne Carter', 'darrell84@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2r1zYHC6Y2', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(18, 'Prof. Ulises Spinka Jr.', 'stoltenberg.hallie@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OWzEH96yud', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(19, 'Magnus Kulas MD', 'xaltenwerth@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PYtWWsJlTZ', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(20, 'Dave Swift', 'rzboncak@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vGfjuIqFPX', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(21, 'Dr. Emory Fahey', 'brant10@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MQmkO54S1l', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(22, 'Prof. Colby Braun', 'eldon.purdy@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8rCQSG7HjS', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(23, 'Mr. Joseph Conn Sr.', 'crystal47@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dkw0i3B9UV', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(24, 'Camron Schamberger', 'bessie.streich@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'syp6saf3Hd', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(25, 'Theodora Jacobi I', 'elenora96@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bQrQL19S01', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(26, 'Jean Wolf DVM', 'mclaughlin.leopoldo@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'p5GmYXKgdD', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(27, 'Lessie Jast', 'tremblay.kacey@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ajGbDuzJkD', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(28, 'Eli Lang', 'rdavis@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9PnSeCn15a', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(29, 'Brain Zboncak', 'ortiz.aida@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8WIXLVt2bz', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(30, 'Scottie Bruen', 'rolando40@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dQLkYlSA80', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(31, 'Thad Ryan', 'yspencer@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wrMjwCTrf5', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(32, 'Kianna O\'Connell', 'malachi.hickle@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mKAA0eMxzT', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(33, 'Ladarius Kuhlman', 'gschoen@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XmisAcr7Tm', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(34, 'Samir Kihn', 'finn75@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6tla7FPzEH', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(35, 'Freida Ullrich', 'constance44@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OfroTszx5i', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(36, 'Prof. Lowell Harber PhD', 'fdaugherty@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mFX4rOkslh', '2022-04-03 15:58:59', '2022-04-03 15:58:59'),
(37, 'Audrey Emard', 'eve.carter@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5Cq2AkzJB1', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(38, 'Prof. Keven Ortiz', 'chowe@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hlWqNs0BJq', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(39, 'Cody Cruickshank', 'tamara37@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UcANHKu8p0', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(40, 'Lura Casper', 'marilou91@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'udqCxBFvQ1', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(41, 'Clara Nienow', 'larkin.deborah@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qZfpouZSVs', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(42, 'Hal Huel', 'jayde54@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EUKS7v4R8E', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(43, 'Dr. Zachariah Rodriguez', 'wiegand.shane@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4i8fOXzTx9', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(44, 'Bradford Rath', 'jackie.ohara@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'K3SRLyioaB', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(45, 'Sonia Ratke', 'nyasia30@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KkwXPpiZ2b', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(46, 'Tierra Hintz', 'lindsey11@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uIbaxG5JfK', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(47, 'Sandy O\'Keefe Jr.', 'alysa.fadel@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WXhBCPvOM7', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(48, 'Jalen Reichert', 'sauer.vanessa@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'i8UKWKSiPX', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(49, 'Helmer Nitzsche', 'abagail.prohaska@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rZwFnf1dYv', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(50, 'Celestino Labadie', 'bergstrom.woodrow@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bBYaUK5LpD', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(51, 'Laverna Cremin', 'javier03@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QUSeh5RClv', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(52, 'Izaiah Franecki IV', 'bfeest@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BaYZJDHyee', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(53, 'Raegan Lockman', 'ovolkman@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5wFnSZr48U', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(54, 'Carol Zboncak I', 'vidal.jakubowski@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5plLbd1cEF', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(55, 'Linwood Murphy', 'yschuppe@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VbmYwh7Bl9', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(56, 'Sandy Harris', 'pleuschke@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bCKgKDG17a', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(57, 'Brody Hoppe', 'adubuque@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tpGxHHyWbM', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(58, 'Vernie Greenholt', 'ryleigh39@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Wyy4jaMIpM', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(59, 'Prof. Maurice Fisher', 'hayden.keeling@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kKGcoDap2g', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(60, 'Verner Botsford', 'lenna69@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jx3Em1802h', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(61, 'Chadd Schmitt', 'sdeckow@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'g24UXv2uoZ', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(62, 'Edna Franecki DVM', 'vita49@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8edjJ7RiWz', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(63, 'Miss Thelma Volkman', 'ethel.halvorson@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ap39IqVUhG', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(64, 'Bella Lebsack', 'ggoyette@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZnLusH9vfr', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(65, 'Freddie Ziemann', 'fschmitt@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EDfrAA5bqj', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(66, 'Dulce Robel', 'vesta.thompson@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6MYALNvbyQ', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(67, 'Maddison Ortiz', 'brown.tierra@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VNBY0uslYq', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(68, 'Mr. Eliezer Donnelly Sr.', 'ellsworth.franecki@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YUssjHO14K', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(69, 'Vaughn Kutch', 'candido.boyle@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UGe4PQykXk', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(70, 'Dr. Jake Pollich V', 'lbartoletti@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SypUOFC226', '2022-04-03 15:59:00', '2022-04-03 15:59:00'),
(71, 'Annabel Walsh', 'spencer.jamaal@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4KDfbIVaqB', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(72, 'Dr. Jacinthe Predovic', 'lamont.bednar@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WA7z8HsaP8', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(73, 'Cordia Russel', 'mcclure.brandt@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NIwQ3yt91X', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(74, 'Halie Swift I', 'demetrius.schneider@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sAIO7FheDZ', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(75, 'Sheldon Hermiston', 'thompson.ellis@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wasNCv0QyG', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(76, 'Mrs. Aileen Mueller', 'abigail42@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IJpQqzTJdY', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(77, 'Katrina Swaniawski II', 'swift.adriana@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'V7RtR7Z8sv', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(78, 'Itzel Boyle', 'zvolkman@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OXltlXbNhs', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(79, 'Miss Coralie Heaney PhD', 'evans37@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tz68KH6lpd', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(80, 'Elinore Buckridge I', 'eschaefer@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'r2JqvaHRiZ', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(81, 'Dr. Grover Hansen V', 'janessa66@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LpnMnK3oaa', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(82, 'Angeline Adams', 'dorothy.ferry@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CSNlTRtRm6', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(83, 'Ervin Dietrich Jr.', 'herman.clementine@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lw9EoxT7MU', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(84, 'Jackeline Gleason', 'carmel59@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Vz3yap4liM', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(85, 'Easton Gerlach', 'megane.stark@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HY3DcPTbKg', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(86, 'Madge Jacobs', 'rlesch@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9fJEMgbxFR', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(87, 'Prof. Phoebe Lebsack', 'ncruickshank@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ENOgcBYELO', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(88, 'Bessie Predovic III', 'kylee59@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '60frc3fftJ', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(89, 'Libbie Hansen Jr.', 'nikolaus.tom@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fDQ72ymASv', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(90, 'Forrest Dare', 'bogisich.monica@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XKkZevANa8', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(91, 'Dr. Keagan Crooks', 'ehessel@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'A21dzzhb0d', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(92, 'Isom Langworth', 'skylar.rohan@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zW4C2GahPK', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(93, 'Birdie Kassulke', 'zkerluke@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HI48VGoseJ', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(94, 'Ozella Koch', 'ratke.hailie@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PDGcgdrs4O', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(95, 'Will Ryan', 'madison87@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mHjE4BG60n', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(96, 'Lorenz Greenfelder', 'edmund22@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4t54LIeSZM', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(97, 'Kira Franecki', 'cecil.mccullough@example.net', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lueXz8Ak75', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(98, 'Dr. Ervin Stokes', 'kling.america@example.com', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hc8WTbrIHc', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(99, 'Van Adams', 'jonathan.rippin@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MTThWVGomb', '2022-04-03 15:59:01', '2022-04-03 15:59:01'),
(100, 'Jett Wyman', 'broberts@example.org', '2022-04-03 15:58:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2EGTEUowlq', '2022-04-03 15:59:01', '2022-04-03 15:59:01');

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
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
