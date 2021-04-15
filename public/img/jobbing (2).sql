-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 31 déc. 2020 à 16:30
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `jobbing`
--

-- --------------------------------------------------------

--
-- Structure de la table `availabilities`
--

DROP TABLE IF EXISTS `availabilities`;
CREATE TABLE IF NOT EXISTS `availabilities` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `start_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobber_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `billing_modes`
--

DROP TABLE IF EXISTS `billing_modes`;
CREATE TABLE IF NOT EXISTS `billing_modes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `businesses`
--

DROP TABLE IF EXISTS `businesses`;
CREATE TABLE IF NOT EXISTS `businesses` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rcc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taxpayer_account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gps` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_liability_insurance` tinyint(1) DEFAULT NULL,
  `jobber_id` bigint(20) DEFAULT NULL,
  `jobber_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `businesses`
--

INSERT INTO `businesses` (`id`, `email`, `name`, `username`, `phone`, `photo`, `rcc`, `taxpayer_account_number`, `address`, `longitude`, `latitude`, `gps`, `has_liability_insurance`, `jobber_id`, `jobber_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'xupo@mailinator.com', 'Lynch Colt', 'clynch', '22508453194', '', 'Velit voluptatem in', '486', 'Ut do officiis conse', NULL, NULL, NULL, 1, 9, 'Lynch Colt', '2020-12-30 15:32:27', '2020-12-30 15:32:27', NULL),
(2, 'xupo@mailinator.com', 'Lynch Colt', 'clynch.', '22508453194', '', 'Velit voluptatem in', '486', 'Ut do officiis conse', NULL, NULL, NULL, 1, 9, 'Lynch Colt', '2020-12-30 15:35:49', '2020-12-30 15:35:49', NULL),
(3, 'xupo@mailinator.com', 'Lynch Colt', '0', '22508453194', '', 'Velit voluptatem in', '486', 'Ut do officiis conse', NULL, NULL, NULL, 1, 9, 'Lynch Colt', '2020-12-30 15:37:31', '2020-12-30 15:37:31', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `photo`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ouvriers, techniciens spécialisés et artisans', 'ouvriers-techniciens-specialises-et-artisans', 'http://jobbing.adjemincloud.com/img/cat1.svg', 1, '2020-12-29 18:14:56', '2020-12-29 18:14:56', NULL),
(2, 'Professionnels et ingénieurs', 'professionnels-et-ingenieurs', 'http://jobbing.adjemincloud.com/img/cat2.svg', 1, '2020-12-31 12:47:00', '2020-12-31 12:47:00', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `certificates`
--

DROP TABLE IF EXISTS `certificates`;
CREATE TABLE IF NOT EXISTS `certificates` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobber_id` bigint(20) DEFAULT NULL,
  `jobber_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cities`
--

INSERT INTO `cities` (`id`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Marcory', 'marcory', '2020-12-31 10:09:14', '2020-12-31 10:09:14', NULL),
(2, 'Koumassi', 'koumassi', '2020-12-31 10:09:29', '2020-12-31 10:09:29', NULL),
(3, 'Adjamé', 'adjame', '2020-12-31 10:09:40', '2020-12-31 10:09:40', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dial_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cgu_has_been_accepted` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`id`, `last_name`, `first_name`, `dial_code`, `phone_number`, `phone`, `country_code`, `photo`, `email`, `password`, `cgu_has_been_accepted`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Jordan', 'Quinn', '225', '01020304', '22501020304', 'CI', NULL, 'customer@jobbing.com', '$2y$10$ZZXei5Pk97bpIHawdyYVyOPV0kZ1QzdaoAWYIBCbNfuqSOk2Yfdom', 1, 1, '2020-12-29 18:02:27', '2020-12-29 18:06:56', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `customer_password_resets`
--

DROP TABLE IF EXISTS `customer_password_resets`;
CREATE TABLE IF NOT EXISTS `customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `customer_password_resets_email_index` (`email`),
  KEY `customer_password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `customer_requests`
--

DROP TABLE IF EXISTS `customer_requests`;
CREATE TABLE IF NOT EXISTS `customer_requests` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `request_asked` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialty` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialty_id` bigint(20) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `location_adress` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_point` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gps` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appointment_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appointment_timeslot` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method_id` bigint(20) DEFAULT NULL,
  `payment_method_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobber_id` bigint(20) DEFAULT NULL,
  `jobber_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `diplomes`
--

DROP TABLE IF EXISTS `diplomes`;
CREATE TABLE IF NOT EXISTS `diplomes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobber_id` bigint(20) DEFAULT NULL,
  `jobber_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `emergency_contacts`
--

DROP TABLE IF EXISTS `emergency_contacts`;
CREATE TABLE IF NOT EXISTS `emergency_contacts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dial_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affiliation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobber_id` bigint(20) DEFAULT NULL,
  `jobber_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `emergency_contacts`
--

INSERT INTO `emergency_contacts` (`id`, `name`, `dial_code`, `phone_number`, `phone`, `affiliation`, `jobber_id`, `jobber_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Imani Walker', '225', '+1 (936) 884-2716', '225+1 (936) 884-2716', '08453194', 9, 'Lynch Colt', '2020-12-30 15:32:27', '2020-12-30 15:32:27', NULL),
(2, 'Imani Walker', '225', '+1 (936) 884-2716', '225+1 (936) 884-2716', '08453194', 9, 'Lynch Colt', '2020-12-30 15:35:49', '2020-12-30 15:35:49', NULL),
(3, 'Imani Walker', '225', '+1 (936) 884-2716', '225+1 (936) 884-2716', '08453194', 9, 'Lynch Colt', '2020-12-30 15:37:31', '2020-12-30 15:37:31', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `intervention_zones`
--

DROP TABLE IF EXISTS `intervention_zones`;
CREATE TABLE IF NOT EXISTS `intervention_zones` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latiitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gps` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jobbers`
--

DROP TABLE IF EXISTS `jobbers`;
CREATE TABLE IF NOT EXISTS `jobbers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dial_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cgu_has_been_accepted` tinyint(1) DEFAULT NULL,
  `cv` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cni_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profil_picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gps` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_criminal_record` tinyint(1) DEFAULT NULL,
  `transport_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_available_now` tinyint(1) DEFAULT NULL,
  `has_proof_certificate` tinyint(1) DEFAULT NULL,
  `has_service_contract` tinyint(1) DEFAULT NULL,
  `birthday` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medical_condition` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `physical_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intervention_zone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_professional` tinyint(1) DEFAULT NULL,
  `time_slot` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billingMode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jobbers_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `jobbers`
--

INSERT INTO `jobbers` (`id`, `email`, `last_name`, `first_name`, `name`, `country`, `dial_code`, `phone_number`, `phone`, `password`, `cgu_has_been_accepted`, `cv`, `cni_number`, `profil_picture`, `address`, `longitude`, `latitude`, `gps`, `has_criminal_record`, `transport_type`, `is_available_now`, `has_proof_certificate`, `has_service_contract`, `birthday`, `birth_location`, `marital_status`, `gender`, `medical_condition`, `physical_address`, `billing_method`, `price`, `intervention_zone`, `has_professional`, `time_slot`, `billingMode`, `is_active`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'jobber@jobbing.com', 'Rowland', 'Arden', 'Rowland Arden', 'CI', '225', '01020306', '22501020306', '$2y$10$3.GmRZUw8DFe/m/Hy6EQ9epxjjRZwu5jeKiuw3enHJ2Ahn8s1Zvfi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-12-29 18:08:57', '2020-12-29 18:10:35', NULL),
(2, 'bisicuc@mailinator.com', 'Grimes', 'David', 'Grimes David', 'CI', '225', '08453194', '22508453194', '$2y$10$d9YhgfEYMkOPGkQhELBIyObGYHcBN529J/9NGdKJJajhzL8DAtztu', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-12-29 22:16:54', '2020-12-29 22:16:54', NULL),
(3, 'tezimo@mailinator.com', 'Hubbard', 'Herrod', 'Hubbard Herrod', 'CI', '225', '08453194', '22508453194', '$2y$10$RXHm6O8LK9ajg2MyXj67keCE1oZLQwhaW04uFV5GAb.Lzcl1y/BVO', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Marcory', NULL, NULL, NULL, 0, NULL, '2020-12-30 12:45:12', '2020-12-30 12:45:12', NULL),
(4, 'vavinynaly@mailinator.com', 'Evans', 'Hiroko', 'Evans Hiroko', 'CI', '225', '08453194', '22508453194', '$2y$10$Ktv5MMRHV1iBrM/5hSkfNOs3EhqSHPzK.RPjS9Snj5YKSQ4pphr72', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-12-30 12:47:06', '2020-12-30 12:47:06', NULL),
(5, 'qyguqu@mailinator.com', 'Bell', 'Ciaran', 'Bell Ciaran', NULL, NULL, '08453194', '08453194', '$2y$10$zxyDPIbOuz5C.X8K2RKkTOgAbZCl0vA42VPOfkzk3QX/3A1v7O7ca', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-12-30 12:56:34', '2020-12-30 12:56:34', NULL),
(6, 'dadapako@mailinator.com', 'Barnes', 'Jolene', 'Barnes Jolene', 'CI', '225', '08453194', '22508453194', '$2y$10$5XUc35WJ66R3H2KtDZQ/5.51ek8GZ.PaH91AYrhBDOX8tASpNF2yO', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-12-30 12:58:22', '2020-12-30 12:58:22', NULL),
(7, 'quzexyjy@mailinator.com', 'Hewitt', 'Todd', 'Hewitt Todd', NULL, NULL, '08453194', '08453194', '$2y$10$sFE9KlCxA5/8DL7sRctHIO1Nfl9OwSPALgJXJSjhXr82xzEuIL27u', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-12-30 13:02:49', '2020-12-30 13:02:49', NULL),
(8, 'fomo@mailinator.com', 'Haney', 'Tashya', 'Haney Tashya', 'CI', '225', '08453194', '22508453194', '$2y$10$u372z4YOEA2vCkGjJiZVVu26tUFsVQKJ49.ZtllmnK0qO08f.a57m', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-12-30 13:03:58', '2020-12-30 13:03:58', NULL),
(9, 'xupo@mailinator.com', 'Lynch', 'Colt', 'Lynch Colt', 'CI', '225', '+1 (936) 884-2716', '22508453194', '$2y$10$c6tkyy2c/1HRMYdYE2ErUuu7w14/XiEA8j2W5.704AiBYKvETcBaO', 1, '', '533', 'http://jobbing.adjemincloud.com/img/3.jpg', NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2016-03-30', 'Dolore nihil laborum', 'Quae quibusdam id a', 'M', 'Illo quo mollitia en', 'Ut do officiis conse', NULL, '1500', 'Marcory', 1, NULL, NULL, 0, NULL, '2020-12-30 13:10:59', '2020-12-30 15:37:31', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `jobber_intervention_zones`
--

DROP TABLE IF EXISTS `jobber_intervention_zones`;
CREATE TABLE IF NOT EXISTS `jobber_intervention_zones` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `intervention_zone_id` bigint(20) DEFAULT NULL,
  `intervention_zone_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jobber_id` bigint(20) DEFAULT NULL,
  `jobber_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `jobber_intervention_zones`
--

INSERT INTO `jobber_intervention_zones` (`id`, `intervention_zone_id`, `intervention_zone_name`, `jobber_id`, `jobber_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Marcory', 9, 'Lynch Colt', '2020-12-31 00:00:00', NULL, NULL),
(2, 1, 'Marcory', 3, NULL, '2020-12-31 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `jobber_password_resets`
--

DROP TABLE IF EXISTS `jobber_password_resets`;
CREATE TABLE IF NOT EXISTS `jobber_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `jobber_password_resets_email_index` (`email`),
  KEY `jobber_password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jobber_specialties`
--

DROP TABLE IF EXISTS `jobber_specialties`;
CREATE TABLE IF NOT EXISTS `jobber_specialties` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `jobber_id` bigint(20) DEFAULT NULL,
  `jobber_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialty_id` bigint(20) DEFAULT NULL,
  `specialty_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `jobber_specialties`
--

INSERT INTO `jobber_specialties` (`id`, `jobber_id`, `jobber_name`, `specialty_id`, `specialty_name`, `billing_method`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 9, 'Lynch Colt', 1, 'Plombier', NULL, '1500', '2020-12-31 00:00:00', '2020-12-31 00:00:00', NULL),
(2, 3, NULL, 1, 'Plombier', NULL, '1500', '2020-12-31 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `jobber_transports`
--

DROP TABLE IF EXISTS `jobber_transports`;
CREATE TABLE IF NOT EXISTS `jobber_transports` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `jobber_id` bigint(20) DEFAULT NULL,
  `jobber_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transport_id` bigint(20) DEFAULT NULL,
  `transport_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_28_172720_create_jobbers_table', 1),
(5, '2020_12_28_174414_create_businesses_table', 1),
(6, '2020_12_28_175205_create_customers_table', 1),
(7, '2020_12_28_180745_create_availabilities_table', 1),
(8, '2020_12_28_181116_create_categories_table', 1),
(9, '2020_12_28_181442_create_specialties_table', 1),
(10, '2020_12_28_181927_create_jobber_specialties_table', 1),
(11, '2020_12_28_185030_create_emergency_contacts_table', 1),
(12, '2020_12_28_215340_create_diplomes_table', 1),
(13, '2020_12_28_215655_create_certificates_table', 1),
(14, '2020_12_28_220201_create_transports_table', 1),
(15, '2020_12_28_220407_create_jobber_transports_table', 1),
(16, '2020_12_28_220954_create_intervention_zones_table', 1),
(17, '2020_12_28_221509_create_jobber_intervention_zones_table', 1),
(18, '2020_12_28_223224_create_customer_password_resets_table', 1),
(19, '2020_12_28_223526_create_jobber_password_resets_table', 1),
(20, '2020_12_29_140321_create_time_slots_table', 1),
(21, '2020_12_29_143444_create_billing_modes_table', 1),
(22, '2020_12_29_184439_create_otps_table', 2),
(23, '2020_12_30_152506_create_payment_methods_table', 3),
(24, '2020_12_30_162918_create_customer_requests_table', 4),
(25, '2020_12_31_100527_create_cities_table', 5);

-- --------------------------------------------------------

--
-- Structure de la table `otps`
--

DROP TABLE IF EXISTS `otps`;
CREATE TABLE IF NOT EXISTS `otps` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dial_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadline` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `otps`
--

INSERT INTO `otps` (`id`, `code`, `dial_code`, `phone_number`, `deadline`, `is_used`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '581423', '225', '08453194', '2020-12-29 23:16:55', 0, '2020-12-29 22:16:55', '2020-12-29 22:16:55', NULL),
(2, '540679', '225', '08453194', '2020-12-30 13:45:13', 0, '2020-12-30 12:45:13', '2020-12-30 12:45:13', NULL),
(3, '800079', '225', '08453194', '2020-12-30 13:47:06', 0, '2020-12-30 12:47:06', '2020-12-30 12:47:06', NULL),
(4, '880584', NULL, '08453194', '2020-12-30 13:56:34', 0, '2020-12-30 12:56:34', '2020-12-30 12:56:34', NULL),
(5, '524373', '225', '08453194', '2020-12-30 13:58:22', 0, '2020-12-30 12:58:22', '2020-12-30 12:58:22', NULL),
(6, '840503', NULL, '08453194', '2020-12-30 14:02:49', 0, '2020-12-30 13:02:49', '2020-12-30 13:02:49', NULL),
(7, '980914', '225', '08453194', '2020-12-30 14:03:58', 0, '2020-12-30 13:03:58', '2020-12-30 13:03:58', NULL),
(8, '714448', '225', '08453194', '2020-12-30 14:11:00', 1, '2020-12-30 13:11:00', '2020-12-30 13:11:56', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
CREATE TABLE IF NOT EXISTS `payment_methods` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `title`, `slug`, `logo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'AdjeminPay', 'adjeminpay', '', '2020-12-30 15:27:37', '2020-12-30 15:27:37', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `specialties`
--

DROP TABLE IF EXISTS `specialties`;
CREATE TABLE IF NOT EXISTS `specialties` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `specialties`
--

INSERT INTO `specialties` (`id`, `name`, `slug`, `photo`, `category_id`, `category_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Plombier', NULL, 'http://jobbing.adjemincloud.com/img/3.jpg', 1, NULL, '2020-12-29 18:15:26', '2020-12-29 18:15:26', NULL),
(2, 'Marçon', NULL, 'http://jobbing.adjemincloud.com/img/3.jpg', 1, NULL, '2020-12-31 13:22:41', '2020-12-31 13:22:41', NULL),
(3, 'Electricien', NULL, 'http://jobbing.adjemincloud.com/img/3.jpg', 1, NULL, '2020-12-31 13:23:00', '2020-12-31 13:23:00', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `time_slots`
--

DROP TABLE IF EXISTS `time_slots`;
CREATE TABLE IF NOT EXISTS `time_slots` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `time_slot` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `time_slots`
--

INSERT INTO `time_slots` (`id`, `time_slot`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '08h - 09h', '2020-12-30 15:19:27', '2020-12-30 15:19:27', NULL),
(2, '09h - 10h', '2020-12-30 15:19:50', '2020-12-30 15:19:50', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `transports`
--

DROP TABLE IF EXISTS `transports`;
CREATE TABLE IF NOT EXISTS `transports` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `transports`
--

INSERT INTO `transports` (`id`, `type`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Moto', 'moto', '2020-12-30 15:20:56', '2020-12-30 15:20:56', NULL),
(2, 'Vélo', 'velo', '2020-12-30 15:21:02', '2020-12-30 15:21:02', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'dev@adjemin.com', NULL, '$2y$10$xihh87f63I9JHtTynkx0bOFLcAKn.q4dqfBBE7f9x3bCh5VFle8N6', NULL, '2020-12-29 18:03:49', '2020-12-29 18:03:49');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
