-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 21 juil. 2022 à 14:13
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `laravel_medic`
--

-- --------------------------------------------------------

--
-- Structure de la table `cards`
--

CREATE TABLE `cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'https://kangsblackbeltacademy.com/home/default-image/',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_postal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pays` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cards`
--

INSERT INTO `cards` (`id`, `Adresse`, `picture`, `created_at`, `updated_at`, `latitude`, `longitude`, `code_postal`, `ville`, `pays`) VALUES
(1, '38 Rue Malard', 'cards\\July2022\\hGATS7bgQCdXqF9sTMvW.png', '2022-07-16 15:15:00', '2022-07-19 14:11:42', '43.633906', '1.393455', '31700', 'Blagnac', 'France'),
(2, '494 Boulevard Alfred Daney', 'cards\\July2022\\alD9YLfS9qHSVzJyC8IN.png', '2022-07-16 15:17:00', '2022-07-19 14:08:55', '44.873366', '-0.555483', '33300', 'Bordeaux', 'France'),
(3, '15 Allée François Mitterrand', 'cards\\July2022\\6IJG8dwgQZcVbkbV4WAK.png', '2022-07-16 15:17:00', '2022-07-19 14:09:33', '48.52753', '7.706236', '67400', 'Illkirch-Graffenstaden', 'France'),
(4, 'Arches du Plat de l\'Air, Route des Pins', 'cards\\July2022\\x9FNnPRcQM8L1klupj39.png', '2022-07-16 15:17:00', '2022-07-19 14:10:11', '45.722299', '4.7619', '69630', 'Chaponost', 'France'),
(5, '12 Résidence Guy Mollet', 'cards\\July2022\\iaq9OV0XSCtBmM8eMzJm.png', '2022-07-16 15:17:00', '2022-07-19 14:10:47', '50.498763', '2.850279', '62410', 'Wingles', 'France'),
(6, '12 Square Alphonse Laveran', 'cards\\July2022\\LiXZ8pGp2jvypi6ijv0b.png', '2022-07-16 15:17:00', '2022-07-19 14:41:37', '48.940779', '2.67539', '77410', 'Claye-Souilly', 'France'),
(7, '5 Rue André Rivoire', 'cards\\July2022\\8G9bt3lE5QT2r2wueG2Z.png', '2022-07-16 15:20:00', '2022-07-19 14:11:54', '48.810976', '2.292399', '92240', 'Malakoff', 'France'),
(8, '5 Chemin de l\'Aulnay', 'cards\\July2022\\5XBHtnHvWsOS9kvZhjLz.png', '2022-07-16 15:20:00', '2022-07-19 14:39:45', '49.048866', '1.810935', '78440', 'Lainville-en-Vexin', 'France');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `label`, `created_at`, `updated_at`) VALUES
(1, 'orale', NULL, NULL),
(2, 'injectable', NULL, NULL),
(3, 'dermique', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(24, 6, 'picture', 'image', 'Picture', 1, 1, 1, 1, 1, 1, '{}', 4),
(25, 6, 'Description', 'markdown_editor', 'Description', 1, 1, 1, 1, 1, 1, '{}', 5),
(26, 6, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{}', 6),
(27, 6, 'category_id', 'text', 'Category Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(28, 6, 'slug', 'text', 'Slug', 0, 1, 1, 0, 0, 1, '{}', 7),
(29, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(30, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(31, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(32, 7, 'label', 'text', 'Label', 1, 1, 1, 1, 1, 1, '{}', 2),
(33, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(34, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(35, 6, 'medicament_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"label\",\"pivot_table\":\"cards\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(36, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(38, 9, 'picture', 'image', 'Picture', 1, 1, 1, 1, 1, 1, '{}', 8),
(39, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(40, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(41, 9, 'Adresse', 'text', 'Adresse', 1, 1, 1, 1, 1, 1, '{}', 2),
(42, 9, 'latitude', 'text', 'Latitude', 1, 1, 1, 1, 1, 1, '{}', 6),
(43, 9, 'longitude', 'text', 'Longitude', 0, 1, 1, 1, 1, 1, '{}', 7),
(44, 9, 'code_postal', 'text', 'Code Postal', 0, 1, 1, 1, 1, 1, '{}', 3),
(45, 9, 'ville', 'text', 'Ville', 0, 1, 1, 1, 1, 1, '{}', 4),
(46, 9, 'pays', 'text', 'Pays', 0, 1, 1, 1, 1, 1, '{}', 5);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(6, 'medicaments', 'medicaments', 'Medicament', 'Medicaments', 'voyager-cross', 'App\\Models\\Medicaments', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-07-16 13:04:32', '2022-07-16 14:53:29'),
(7, 'categories', 'categories', 'Category', 'Categories', 'voyager-folder', 'App\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-07-16 13:13:19', '2022-07-16 13:13:19'),
(9, 'cards', 'cards', 'Card', 'Cards', NULL, 'App\\Models\\cards', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-07-16 15:05:24', '2022-07-19 14:07:12');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `medicaments`
--

CREATE TABLE `medicaments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'http://www.ipsgroup.fr/wp-content/uploads/2013/12/?C=M;O=D',
  `Description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `medicaments`
--

INSERT INTO `medicaments` (`id`, `name`, `picture`, `Description`, `price`, `category_id`, `slug`, `created_at`, `updated_at`) VALUES
(5, 'Viên Uống B Complex  Vitamin Royal Care 60 Viê', 'medicaments\\July2022\\frSPSstx0ScqNz1BSsYQ.png', '###  Nullam vehicula \r\n\r\n> Nam suscipit sapien eget ligula commodo, ut rhoncus tellus pretium.\r\n \r\n Nullam vehicula vitae nulla sed porttitor. Curabitur venenatis nisi ac dui tincidunt ornare. Duis consequat viverra consequat. Vivamus ut gravida nisl. Integer interdum consequat enim, ac consectetur tortor rhoncus quis.\r\n\r\n\r\nPraesent suscipit leo ut euismod volutpat. Vestibulum sagittis libero nulla, sit amet sem eget magna vehicula vestibulum ut ut lacus. Fusce pulvinar leo nisi, maximus malesuada nisi fringilla vel. In erat ligula, sodales at ante a, blandit eleifend ante.', 25, 1, 'Viên-Uống-B-Complex-Vitamin-Royal Care-60-Viê', '2022-07-16 14:02:00', '2022-07-18 08:25:06'),
(6, 'Viên Uống Hỗ Trợ Phòng Ngừa  Đột Quỵ Giúp Làm Tan Cục', 'medicaments\\July2022\\oEZsCMqp5efJJs5DhA3d.png', '###  Nullam vehicula \r\n\r\n> Nam suscipit sapien eget ligula commodo, ut rhoncus tellus pretium.\r\n \r\n Nullam vehicula vitae nulla sed porttitor. Curabitur venenatis nisi ac dui tincidunt ornare. Duis consequat viverra consequat. Vivamus ut gravida nisl. Integer interdum consequat enim, ac consectetur tortor rhoncus quis.\r\n\r\n\r\nPraesent suscipit leo ut euismod volutpat. Vestibulum sagittis libero nulla, sit amet sem eget magna vehicula vestibulum ut ut lacus. Fusce pulvinar leo nisi, maximus malesuada nisi fringilla vel. In erat ligula, sodales at ante a, blandit eleifend ante.', 15, 1, 'Viên-Uống-Hỗ-Trợ-Phòng-Ngừa-Đột Quỵ-Giúp-Làm-Tan-Cục', '2022-07-16 14:32:00', '2022-07-18 08:24:37'),
(7, 'Viên Sủi Optimax Immunity  Booster Vid - Fighter Tăng', 'medicaments\\July2022\\E9pMXmMYV0fEfamhDN3C.png', '###  Nullam vehicula \r\n\r\n> Nam suscipit sapien eget ligula commodo, ut rhoncus tellus pretium.\r\n \r\n Nullam vehicula vitae nulla sed porttitor. Curabitur venenatis nisi ac dui tincidunt ornare. Duis consequat viverra consequat. Vivamus ut gravida nisl. Integer interdum consequat enim, ac consectetur tortor rhoncus quis.\r\n\r\n\r\nPraesent suscipit leo ut euismod volutpat. Vestibulum sagittis libero nulla, sit amet sem eget magna vehicula vestibulum ut ut lacus. Fusce pulvinar leo nisi, maximus malesuada nisi fringilla vel. In erat ligula, sodales at ante a, blandit eleifend ante.', 10, 2, 'vien-sui-optimax-immunity-booster-vid-fighter-tang', '2022-07-16 15:23:00', '2022-07-18 08:25:30'),
(8, 'Viên Uống Active Lung New  Nordic Giảm Ho, Hỗ Trợ', 'medicaments\\July2022\\FZ7nEAD8RB6FrwWz83XF.png', '###  Nullam vehicula \r\n\r\n> Nam suscipit sapien eget ligula commodo, ut rhoncus tellus pretium.\r\n \r\n Nullam vehicula vitae nulla sed porttitor. Curabitur venenatis nisi ac dui tincidunt ornare. Duis consequat viverra consequat. Vivamus ut gravida nisl. Integer interdum consequat enim, ac consectetur tortor rhoncus quis.\r\n\r\n\r\nPraesent suscipit leo ut euismod volutpat. Vestibulum sagittis libero nulla, sit amet sem eget magna vehicula vestibulum ut ut lacus. Fusce pulvinar leo nisi, maximus malesuada nisi fringilla vel. In erat ligula, sodales at ante a, blandit eleifend ante.', 5, 3, 'vien-uong-active-lung-new-nordic-giam-ho-ho-tro', '2022-07-16 15:24:00', '2022-07-18 08:25:20'),
(9, 'Viên Uống Gaba Jpanwell  Giúp Ngủ Ngon An Thần', 'medicaments\\July2022\\XV6OsY4MDR7reXMeGvvZ.png', '###  Nullam vehicula \r\n\r\n> Nam suscipit sapien eget ligula commodo, ut rhoncus tellus pretium.\r\n \r\n Nullam vehicula vitae nulla sed porttitor. Curabitur venenatis nisi ac dui tincidunt ornare. Duis consequat viverra consequat. Vivamus ut gravida nisl. Integer interdum consequat enim, ac consectetur tortor rhoncus quis.\r\n\r\n\r\nPraesent suscipit leo ut euismod volutpat. Vestibulum sagittis libero nulla, sit amet sem eget magna vehicula vestibulum ut ut lacus. Fusce pulvinar leo nisi, maximus malesuada nisi fringilla vel. In erat ligula, sodales at ante a, blandit eleifend ante.', 25, 2, 'vien-uong-gaba-jpanwell-giup-ngu-ngon-an-than', '2022-07-16 15:26:00', '2022-07-18 08:24:55'),
(10, 'Viên Uống Giảm Căng Thẳng,  Lo Lắng Trấn Kinh An 30 Viên', 'medicaments\\July2022\\UzieZbJbcXE3V4NWJdzb.png', '###  Nullam vehicula \r\n\r\n> Nam suscipit sapien eget ligula commodo, ut rhoncus tellus pretium.\r\n \r\n Nullam vehicula vitae nulla sed porttitor. Curabitur venenatis nisi ac dui tincidunt ornare. Duis consequat viverra consequat. Vivamus ut gravida nisl. Integer interdum consequat enim, ac consectetur tortor rhoncus quis.\r\n\r\n\r\nPraesent suscipit leo ut euismod volutpat. Vestibulum sagittis libero nulla, sit amet sem eget magna vehicula vestibulum ut ut lacus. Fusce pulvinar leo nisi, maximus malesuada nisi fringilla vel. In erat ligula, sodales at ante a, blandit eleifend ante.', 30, 3, 'vien-uong-giam-cang-thang-lo-lang-tran-kinh-an-30-vien', '2022-07-16 15:30:00', '2022-07-18 08:24:46'),
(11, 'Dầu Gội Hoa Bưởi La Beauty,  Kích Thích Mọc Tóc 250Ml', 'medicaments\\July2022\\uCnapuEDguP48PkWbBRO.png', '###  Nullam vehicula \r\n\r\n> Nam suscipit sapien eget ligula commodo, ut rhoncus tellus pretium.\r\n \r\n Nullam vehicula vitae nulla sed porttitor. Curabitur venenatis nisi ac dui tincidunt ornare. Duis consequat viverra consequat. Vivamus ut gravida nisl. Integer interdum consequat enim, ac consectetur tortor rhoncus quis.\r\n\r\n\r\nPraesent suscipit leo ut euismod volutpat. Vestibulum sagittis libero nulla, sit amet sem eget magna vehicula vestibulum ut ut lacus. Fusce pulvinar leo nisi, maximus malesuada nisi fringilla vel. In erat ligula, sodales at ante a, blandit eleifend ante.', 5, 3, 'dau-goi-hoa-buoi-la-beauty-giam-gay-rung-kich-thich-moc-toc-250ml', '2022-07-16 15:30:00', '2022-07-18 08:25:40');

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-07-16 12:31:08', '2022-07-16 12:31:08');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-07-16 12:31:08', '2022-07-16 12:31:08', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2022-07-16 12:31:08', '2022-07-16 14:00:11', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 14, 2, '2022-07-16 12:31:08', '2022-07-16 13:36:11', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 14, 1, '2022-07-16 12:31:08', '2022-07-16 13:36:08', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 5, '2022-07-16 12:31:08', '2022-07-16 14:00:11', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2022-07-16 12:31:08', '2022-07-16 12:53:10', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2022-07-16 12:31:08', '2022-07-16 12:53:11', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-07-16 12:31:08', '2022-07-16 12:53:11', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-07-16 12:31:08', '2022-07-16 12:53:11', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 6, '2022-07-16 12:31:08', '2022-07-16 14:00:11', 'voyager.settings.index', NULL),
(11, 1, 'Voir le site', 'http://127.0.0.1:8000', '_self', 'voyager-eye', '#000000', NULL, 2, '2022-07-16 12:53:00', '2022-07-16 13:36:29', NULL, ''),
(12, 1, 'Medicaments', '', '_self', 'voyager-cross', NULL, 14, 4, '2022-07-16 13:04:32', '2022-07-16 15:07:07', 'voyager.medicaments.index', NULL),
(13, 1, 'Categories', '', '_self', 'voyager-folder', NULL, 14, 5, '2022-07-16 13:13:20', '2022-07-16 15:07:07', 'voyager.categories.index', NULL),
(14, 1, 'Models', '', '_self', 'voyager-bread', '#000000', NULL, 3, '2022-07-16 13:35:41', '2022-07-16 13:36:29', NULL, ''),
(15, 1, 'Cards', '', '_self', NULL, NULL, 14, 3, '2022-07-16 15:05:24', '2022-07-16 15:07:07', 'voyager.cards.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(31, '2014_10_12_000000_create_users_table', 1),
(32, '2014_10_12_100000_create_password_resets_table', 1),
(33, '2019_08_19_000000_create_failed_jobs_table', 1),
(34, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(35, '2022_07_13_154632_create_cards_table', 1),
(36, '2022_07_15_180749_create_categories_table', 1),
(37, '2022_07_15_193938_create_medicaments_table', 1),
(38, '2016_01_01_000000_add_voyager_user_fields', 2),
(39, '2016_01_01_000000_create_data_types_table', 2),
(40, '2016_05_19_173453_create_menu_table', 2),
(41, '2016_10_21_190000_create_roles_table', 2),
(42, '2016_10_21_190000_create_settings_table', 2),
(43, '2016_11_30_135954_create_permission_table', 2),
(44, '2016_11_30_141208_create_permission_role_table', 2),
(45, '2016_12_26_201236_data_types__add__server_side', 2),
(46, '2017_01_13_000000_add_route_to_menu_items_table', 2),
(47, '2017_01_14_005015_create_translations_table', 2),
(48, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
(49, '2017_03_06_000000_add_controller_to_data_types_table', 2),
(50, '2017_04_21_000000_add_order_to_data_rows_table', 2),
(51, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
(52, '2017_08_05_000000_add_group_to_settings_table', 2),
(53, '2017_11_26_013050_add_user_role_relationship', 2),
(54, '2017_11_26_015000_create_user_roles_table', 2),
(55, '2018_03_11_000000_add_user_settings', 2),
(56, '2018_03_14_000000_add_details_to_data_types_table', 2),
(57, '2018_03_16_000000_make_settings_value_nullable', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(2, 'browse_bread', NULL, '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(3, 'browse_database', NULL, '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(4, 'browse_media', NULL, '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(5, 'browse_compass', NULL, '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(6, 'browse_menus', 'menus', '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(7, 'read_menus', 'menus', '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(8, 'edit_menus', 'menus', '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(9, 'add_menus', 'menus', '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(10, 'delete_menus', 'menus', '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(11, 'browse_roles', 'roles', '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(12, 'read_roles', 'roles', '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(13, 'edit_roles', 'roles', '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(14, 'add_roles', 'roles', '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(15, 'delete_roles', 'roles', '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(16, 'browse_users', 'users', '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(17, 'read_users', 'users', '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(18, 'edit_users', 'users', '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(19, 'add_users', 'users', '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(20, 'delete_users', 'users', '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(21, 'browse_settings', 'settings', '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(22, 'read_settings', 'settings', '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(23, 'edit_settings', 'settings', '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(24, 'add_settings', 'settings', '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(25, 'delete_settings', 'settings', '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(26, 'browse_medicaments', 'medicaments', '2022-07-16 13:04:32', '2022-07-16 13:04:32'),
(27, 'read_medicaments', 'medicaments', '2022-07-16 13:04:32', '2022-07-16 13:04:32'),
(28, 'edit_medicaments', 'medicaments', '2022-07-16 13:04:32', '2022-07-16 13:04:32'),
(29, 'add_medicaments', 'medicaments', '2022-07-16 13:04:32', '2022-07-16 13:04:32'),
(30, 'delete_medicaments', 'medicaments', '2022-07-16 13:04:32', '2022-07-16 13:04:32'),
(31, 'browse_categories', 'categories', '2022-07-16 13:13:20', '2022-07-16 13:13:20'),
(32, 'read_categories', 'categories', '2022-07-16 13:13:20', '2022-07-16 13:13:20'),
(33, 'edit_categories', 'categories', '2022-07-16 13:13:20', '2022-07-16 13:13:20'),
(34, 'add_categories', 'categories', '2022-07-16 13:13:20', '2022-07-16 13:13:20'),
(35, 'delete_categories', 'categories', '2022-07-16 13:13:20', '2022-07-16 13:13:20'),
(36, 'browse_cards', 'cards', '2022-07-16 15:05:24', '2022-07-16 15:05:24'),
(37, 'read_cards', 'cards', '2022-07-16 15:05:24', '2022-07-16 15:05:24'),
(38, 'edit_cards', 'cards', '2022-07-16 15:05:24', '2022-07-16 15:05:24'),
(39, 'add_cards', 'cards', '2022-07-16 15:05:24', '2022-07-16 15:05:24'),
(40, 'delete_cards', 'cards', '2022-07-16 15:05:24', '2022-07-16 15:05:24');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
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
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-07-16 12:31:08', '2022-07-16 12:31:08'),
(2, 'user', 'Normal User', '2022-07-16 12:31:08', '2022-07-16 12:31:08');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'LaravelMedic', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$sWo5rMCncMzAziF7dfMONOmdth5BHKCHWuWcV0k7RO8.svPzwGgei', NULL, NULL, '2022-07-16 12:34:18', '2022-07-16 12:34:18');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `medicaments`
--
ALTER TABLE `medicaments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medicaments_category_id_foreign` (`category_id`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `medicaments`
--
ALTER TABLE `medicaments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `medicaments`
--
ALTER TABLE `medicaments`
  ADD CONSTRAINT `medicaments_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
