-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2024 at 05:09 PM
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
-- Database: `movie2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'shahriarabiddut@gmail.com', NULL, '$2y$10$8XY2Q72GKtfoHz5S.oT/hOgVTkE.wN8cv.UArwH6Tx/N6q8mPVLha', NULL, '2023-09-05 10:28:11', '2023-09-05 10:28:11'),
(2, 'Dilruba Easmin', 'dilruba@gmail.com', NULL, 'admin', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `casts`
--

CREATE TABLE `casts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gender` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bio` longtext DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `deathd` date DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `spouse` varchar(255) DEFAULT NULL,
  `spouse_id` int(11) DEFAULT NULL,
  `children` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `casts`
--

INSERT INTO `casts` (`id`, `gender`, `name`, `bio`, `country`, `dob`, `photo`, `deathd`, `education`, `spouse`, `spouse_id`, `children`, `status`, `created_at`, `updated_at`) VALUES
(1, '', 'Tim Robbins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(2, '', 'Morgan Freeman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(3, '', 'Christian Bale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(4, '', 'Heath Ledger', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(5, '', 'Aaron Eckhart', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(6, '', 'Leonardo DiCaprio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(7, '', 'Joseph Gordon-Levitt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(8, '', 'Ellen Page', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(9, '', 'Marlon Brando', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(10, '', ' Al Pacino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(11, '', 'James Caan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(12, '', 'John Travolta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(13, '', 'Uma Thurman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(14, '', ' Samuel L. Jackson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(15, '', 'Ulrich Mühe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(16, '', 'Martina Gedeck', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(17, '', 'Sebastian Koch', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(18, '', 'Daniel Brühl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(19, '', 'Katrin Saß', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(20, '', 'Chulpan Khamatova', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(21, '', 'Franka Potente', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(22, '', 'Moritz Bleibtreu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(23, '', ' Herbert Knaup', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(24, '', 'Birol Ünel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(25, '', 'Sibel Kekilli', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(26, '', 'Güven Kiraç', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(27, '', 'Jürgen Vogelt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(28, '', 'Frederick Lau', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(29, '', ' Max Riemel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(30, '', 'Bertil Guve', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(31, '', 'Pernilla Allwin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(32, '', 'Kristina Adolphson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(33, '', ' Lina Leandersson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(34, '', 'Kåre Hedebrant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(35, '', ' Per Ragnar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(36, '', ' Michael Nyqvist', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(37, '', ' Ewa Fröling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(38, '', 'Noomi Rapace', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(39, '', 'Rolf Lassgård', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(40, '', 'Bahar Pars', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(41, '', 'Filip Berg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(42, '', ' Claes Bang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(43, '', 'Elisabeth Moss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(44, '', ' Dominic West', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(45, '', 'Sigurður Sigurjónsson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(46, '', 'Theodór Júlíusson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(47, '', 'Charlotte Bøving', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(48, '', ' Halldóra Geirharðsdóttir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(49, '', ' Juan Camillo Roman Estrada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(50, '', ' Jóhann Sigurðarson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(51, '', '  Ingvar Eggert Sigurðsson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(52, '', ' Helgi Björnsson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(53, '', 'Ólafur Darri Ólafsson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(54, '', ' Þorbjörg Helga Þorgilsdóttir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(55, '', 'Jóhann G. Jóhannsson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(56, '', ' Björn Hlynur Haraldsson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(57, '', ' Ágústa Eva Erlendsdóttir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(58, '', 'Teresa Madruga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(59, '', 'Laura Soveral', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(60, '', 'Ana Moreira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(61, '', ' Paul Hamy ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(62, '', ' Xelo Cagiao', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(63, '', ' João Pedro Rodrigues', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(64, '', '  Alexandre Rodrigues', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(65, '', ' Phellipe Haagensen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(66, '', ' Leandro Firmino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(67, '', ' Rüdiger Vogler', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(68, '', 'Patrick Bauchau', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(69, '', ' Vasco Sequeira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(70, '', ' Adriano Luz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(71, '', ' Maria João Bastos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(72, '', 'Ricardo Pereira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(73, '', 'Iko Uwais', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(74, '', 'Ananda George', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(75, '', ' Ray Sahetapy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(76, '', ' Cut Mini Theo ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(77, '', ' Ikranagara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(78, '', '  Tora Sudiro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(79, '', '  Tara Basro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(80, '', ' Bront Palarae', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(81, '', ' Dimas Aditya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(82, '', ' Dian Sastrowardoyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(83, '', 'Nicholas Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(84, '', '  Titi Kamal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(85, '', ' Shareefa Daanish', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(86, '', ' Julie Estelle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(87, '', 'Imelda Therinne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(88, '', 'Joanna Kulig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(89, '', 'Tomasz Kot', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(90, '', ' Agata Trzebuchowska', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(91, '', ' Agata Kulesza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(92, '', ' Janusz Gajos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(93, '', '  Maja Ostaszewska', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(94, '', '  Artur Żmijewski', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(95, '', ' Daniel Olbrychski', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(96, '', 'Wojciech Pszoniak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(97, '', ' Zdeněk Svěrák', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(98, '', ' Andrey Khalimon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(99, '', '   Libuše Šafránková', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(100, '', ' Vlastimil Brodský', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(101, '', 'Josef Somr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(102, '', 'Václav Neckář', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(103, '', 'Jan Vostrčil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(104, '', 'Josef Šebánek', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(105, '', ' Josef Valnoha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(106, '', ' Boleslav Polívka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(107, '', ' Csongor Kassai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(108, '', '  Jaroslav Dušek', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(109, '', '  Ivan Barnev', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(110, '', ' Oldřich Kaiser', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(111, '', 'Julia Jentsch', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(112, '', 'Marcello Mastroianni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(113, '', 'Anita Ekberg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(114, '', ' Anouk Aimée', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(115, '', 'Philippe Noiret', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(116, '', ' Enzo Cannavale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(117, '', '  Antonella Attili', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(118, '', '  Roberto Benigni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(119, '', '  Nicoletta Braschi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(120, '', 'Giorgio Cantarini', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(121, '', ' Sabrina Ferilli', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(122, '', ' Toni Servillo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(123, '', 'Carlo Verdone', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(124, '', ' Gianfelice Imparato', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(125, '', 'Maria Nazionale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(126, '', 'Ivana Baquero', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(127, '', 'Sergi López', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(128, '', 'Maribel Verdú', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(129, '', '  Nicole Kidman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(130, '', ' Fionnula Flanagan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(131, '', ' Christopher Eccleston', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(132, '', '  Ricardo Darín', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(133, '', '  Soledad Villamil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(134, '', 'Pablo Rago', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(135, '', 'Penélope Cruz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(136, '', '  Carmen Maura', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(137, '', 'Lola Dueñas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(138, '', 'Antonio Banderas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(139, '', '  Elena Anaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(140, '', 'Jan Cornet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(141, '', 'Aleksey Kravchenko', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(142, '', 'Olga Mironova', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(143, '', '  Liubomiras Laucevicius', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(144, '', 'Donatas Banionis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(145, '', ' Natalya Bondarchuk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(146, '', '  Jüri Järvet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(147, '', '  Konstantin Khabenskiy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(148, '', '   Vladimir Menshov', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(149, '', 'Mariya Poroshina', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(150, '', ' Aleksey Serebryakov', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(151, '', ' Elena Lyadova', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(152, '', 'Roman Madyanov', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(153, '', ' Alisa Freyndlikh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(154, '', 'Anatoliy Solonitsyn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(155, '', 'Ryan Gosling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(156, '', ' Emma Stone', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(157, '', ' Mathieu Kassovitz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(158, '', '  Audrey Tautou', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(159, '', ' François Cluzet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(160, '', ' Omar Sy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(161, '', '  Léa Seydoux', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(162, '', '  Adèle Exarchopoulos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(163, '', 'Vincent Cassel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(164, '', 'Hubert Koundé', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(165, '', 'Markku Peltola', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(166, '', 'Kati Outinen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(167, '', '  Juhani Niemelä', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(168, '', 'Turo Pajala', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(169, '', ' Susanna Haavisto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(170, '', '  Matti Pellonpää', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(171, '', '  Elina Salo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(172, '', '   Jorma Tommila', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(173, '', 'Peeter Jakobi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(174, '', ' Onni Tommila', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(175, '', ' Nadine Labaki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(176, '', 'Adel Karam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(177, '', ' Yasmine Al Massri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(178, '', 'Jacir Eid Al-Hwietat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(179, '', 'Hussein Salameh Al-Sweilhiyeen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(180, '', ' Waad Mohammed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(181, '', ' Reem Abdullah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(182, '', '  Abdullrahman Al Gohani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(183, '', ' Zain Al Rafeea', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(184, '', ' Yordanos Shiferaw', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(185, '', '  Boluwatife Treasure Bankole', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(186, '', '  Adam Bakri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(187, '', 'Leem Lubany', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(188, '', 'Eyad Hourani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(189, '', 'Haluk Bilginer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(190, '', 'Melisa Sözen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(191, '', '  Demet Akbag', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(192, '', 'Muhammet Uzuner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(193, '', ' Yılmaz Erdoğan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(194, '', '  Taner Birsel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(195, '', '  Günes Sensoy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(196, '', '   Doga Zeynep Doguslu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(197, '', 'Tugba Sunguroglu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(198, '', ' Birol Ünel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(199, '', ' Sibel Kekilli', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(200, '', 'Catrin Striebeck', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(201, '', ' Şener Şen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(202, '', 'Ugur Yücel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(203, '', 'Song Kang-ho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(204, '', 'Lee Sun-kyun', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(205, '', 'Cho Yeo-jeong', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(206, '', 'Choi Min-sik', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(207, '', 'Yoo Ji-tae', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(208, '', 'Kang Hye-jung', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(209, '', 'Kim Min-hee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(210, '', 'Kim Tae-ri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(211, '', ' Ha Jung-woo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(212, '', 'Gong Yoo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(213, '', 'Jung Yu-mi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(214, '', ' Ma Dong-seok', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(215, '', 'Kim Sang-kyung', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(216, '', 'Shah Rukh Khan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(217, '', 'Kajol', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(218, '', ' Hrithik Roshan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(219, '', 'Kareena Kapoor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(220, '', 'Ranveer Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(221, '', 'Alia Bhatt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(222, '', 'Siddhant Chaturvedi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(223, '', ' Dhanush', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(224, '', 'Sonam Kapoor', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(225, '', 'Aftab Shivdasani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(226, '', ' Tia Bajpai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(227, '', 'Chow Yun-fat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(228, '', 'Michelle Yeoh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(229, '', ' Zhang Ziyi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(230, '', 'Jet Li', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(231, '', 'Tony Leung', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(232, '', ' Maggie Cheung', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(233, '', ' Takeshi Kaneshiro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(234, '', ' Andy Lau', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(235, '', 'Gong Li', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(236, '', 'Ma Jingwu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(237, '', ' He Saifei', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(238, '', ' Leslie Cheung', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(239, '', ' Zhang Fengyi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(240, '', 'Tony Jaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(241, '', 'Petchtai Wongkamlao', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(242, '', ' Pumwaree Yodkamol', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(243, '', 'Ananda Everingham', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(244, '', 'Natthaweeranuch Thongmee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(245, '', ' Thanapat Saisaymar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(246, '', 'Jenjira Pongpas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(247, '', ' Sakda Kaewbuadee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(248, '', '  Chutimon Chuengcharoensukying', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(249, '', '  Eisaya Hosuwan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(250, '', ' Teeradon Supapunpinyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(251, '', 'Bongkoj Khongmalai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(252, '', 'Rumi Hiiragi ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(253, '', ' Miyu Irino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(254, '', ' Mari Natsuki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(255, '', ' Ryunosuke Kamiki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(256, '', 'Mitsuo Iwata', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(257, '', 'Nozomu Sasaki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(258, '', 'Tatsuya Fujiwara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(259, '', 'Aki Maeda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(260, '', 'Takeshi Kitano', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(261, '', 'Tsutomu Tatsumi ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(262, '', 'Ayano Shiraishi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `title`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'USA', NULL, NULL, NULL),
(2, 'Germany', NULL, NULL, NULL),
(3, 'Sweden', NULL, NULL, NULL),
(4, 'Iceland', NULL, NULL, NULL),
(5, 'Portugal', NULL, NULL, NULL),
(6, 'Indonesia', NULL, NULL, NULL),
(7, 'Brazil', NULL, NULL, NULL),
(9, 'Poland', NULL, NULL, NULL),
(10, 'Czech Republic', NULL, NULL, NULL),
(11, 'Slovakia', NULL, NULL, NULL),
(12, 'Italy', NULL, NULL, NULL),
(13, 'Spain', NULL, NULL, NULL),
(14, 'Russia', NULL, NULL, NULL),
(15, 'France', NULL, NULL, NULL),
(16, 'Finland', NULL, NULL, NULL),
(17, 'Jordan', NULL, NULL, NULL),
(18, 'Saudi Arabia', NULL, NULL, NULL),
(19, 'Lebanon', NULL, NULL, NULL),
(20, 'Palestine', NULL, NULL, NULL),
(21, 'Turkey', NULL, NULL, NULL),
(22, 'South Korea', NULL, NULL, NULL),
(23, 'India', NULL, NULL, NULL),
(24, 'China', NULL, NULL, NULL),
(25, 'Hong Kong', NULL, NULL, NULL),
(26, 'Taiwan', NULL, NULL, NULL),
(27, 'Thailand', NULL, NULL, NULL),
(28, 'Japan', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `bio` longtext DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `deathd` date DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `spouse` varchar(255) DEFAULT NULL,
  `spouse_id` int(11) DEFAULT NULL,
  `children` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`id`, `name`, `gender`, `bio`, `country`, `dob`, `photo`, `deathd`, `education`, `spouse`, `spouse_id`, `children`, `status`, `created_at`, `updated_at`) VALUES
(1, ' Frank Darabont', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(2, 'Christopher Nolan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(3, 'Francis Ford Coppola', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(4, 'Quentin Tarantino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(5, 'Florian Henckel von Donnersmarck', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(6, 'Wolfgang Becker', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(7, 'Tom Tykwer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(8, 'Fatih Akin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(9, 'Dennis Gansel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(10, 'Ingmar Bergman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(11, 'Tomas Alfredson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(12, 'Niels Arden Oplev', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(13, 'Hannes Holm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(14, 'Ruben Östlund', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(15, 'Grímur Hákonarson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(16, 'Benedikt Erlingsson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(17, 'Baltasar Kormákur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(18, 'Miguel Gomes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(19, 'João Pedro Rodrigues', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(20, 'Fernando Meirelles', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(21, ' Kátia Lund', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(22, 'Wim Wenders', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(23, 'Raúl Ruiz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(24, 'Gareth Evans', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(25, 'Riri Riza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(26, 'Joko Anwar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(27, ' Rudy Soedjarwo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(28, 'Kimo Stamboel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(29, 'Timo Tjahjanto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(30, 'Paweł Pawlikowski', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(31, 'Małgorzata Szumowska', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(32, 'Andrzej Wajda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(33, '  Jan Svěrák', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(34, 'Jiří Menzel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(35, 'Timo Tjahjanto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(36, 'Federico Fellini', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(37, 'Giuseppe Tornatore', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(38, 'Roberto Benigni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(39, '  Paolo Sorrentino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(40, 'Jiří Menzel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(41, 'Matteo Garrone', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(42, 'Guillermo del Toro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(43, 'Alejandro Amenábar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(44, 'Juan José Campanella', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(45, '  Pedro Almodóvar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(46, 'Elem Klimov', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(47, 'Andrei Tarkovsky', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(48, 'Timur Bekmambetov', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(49, '  Andrey Zvyagintsev', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(50, 'Andrei Tarkovsky', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(51, 'Damien Chazelle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(52, 'Jean-Pierre Jeunet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(53, '  Olivier Nakache', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(54, 'Éric Toledano', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(55, 'Abdellatif Kechiche', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(56, 'Mathieu Kassovitz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(57, 'Aki Kaurismäki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(58, 'Jalmari Helander', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(59, 'Nadine Labaki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(60, '  Naji Abu Nowar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(61, 'Haifaa Al-Mansour', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(62, 'Hany Abu-Assad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(63, 'Nuri Bilge Ceylan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(64, 'Deniz Gamze Ergüven', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(65, 'Yavuz Turgul', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(66, '  Bong Joon-ho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(67, 'Park Chan-wook', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(68, 'Yeon Sang-ho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(69, 'Aditya Chopra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(70, 'Karan Johar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(71, 'Zoya Akhtar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(72, 'Aanand L. Rai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(73, 'Bhushan Patel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(74, 'Ang Lee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(75, 'Zhang Yimou', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(76, 'Chen Kaige', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(77, 'Prachya Pinkaew', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(78, 'Banjong Pisanthanakun', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(79, 'Parkpoom Wongpoom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(80, 'Apichatpong Weerasethakul', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(81, 'Nattawut Poonpiriya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(82, 'Hayao Miyazaki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(83, 'Makoto Shinkai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(84, 'Katsuhiro Otomo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(85, 'Kinji Fukasaku', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(86, 'Isao Takahata', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `objective` varchar(255) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `title`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Action', 'genrePhoto/mwxlGy5lSaowLnG5D2WmBNsdqqT8BDRadkMOr7WD.jpg', '2023-09-06 06:24:26', '2023-09-06 07:11:11'),
(2, 'adventure', 'genrePhoto/eO6myDqpl1nSscK8oWAI06ZeQoAwo1WHsuPCZ5l3.jpg', '2023-09-06 06:29:21', '2023-09-06 06:29:21'),
(3, 'war', '', '2023-09-06 06:32:09', '2023-09-06 06:33:23'),
(4, 'Science Fiction', '', '2023-09-06 07:12:17', '2023-09-06 07:12:17'),
(5, 'Fantasy', NULL, NULL, NULL),
(6, 'Mystery', NULL, NULL, NULL),
(7, 'Crime', NULL, NULL, NULL),
(8, 'Thriller', NULL, NULL, NULL),
(9, 'Horror', NULL, NULL, NULL),
(10, 'Drama', NULL, NULL, NULL),
(11, 'Romance', NULL, NULL, NULL),
(12, 'Comedy', NULL, NULL, NULL),
(13, 'Family', NULL, NULL, NULL),
(14, 'Music', NULL, NULL, NULL),
(15, 'Biography', NULL, NULL, NULL),
(16, 'History', NULL, NULL, NULL),
(17, 'Sport', NULL, NULL, NULL),
(18, 'Musical', NULL, NULL, NULL),
(19, 'Western', NULL, NULL, NULL),
(20, 'Animation', NULL, NULL, NULL),
(21, 'Documentary', NULL, NULL, NULL),
(22, 'Political', NULL, NULL, NULL),
(23, 'Satire', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `interests`
--

CREATE TABLE `interests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interests`
--

INSERT INTO `interests` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-01-08 01:44:11', '2024-01-08 01:44:11'),
(2, 1, '2024-01-08 01:52:03', '2024-01-08 01:52:03'),
(3, 1, '2024-01-08 01:52:47', '2024-01-08 01:52:47'),
(4, 1, '2024-01-08 01:53:19', '2024-01-08 01:53:19'),
(5, 2, '2024-01-27 13:22:53', '2024-01-27 13:22:53');

-- --------------------------------------------------------

--
-- Table structure for table `interest_casts`
--

CREATE TABLE `interest_casts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `interest_id` int(11) NOT NULL,
  `cast_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interest_casts`
--

INSERT INTO `interest_casts` (`id`, `interest_id`, `cast_id`, `created_at`, `updated_at`) VALUES
(6, 1, 216, '2024-01-18 12:01:38', '2024-01-18 12:01:38'),
(8, 1, 217, '2024-01-25 14:37:06', '2024-01-25 14:37:06'),
(9, 5, 216, '2024-01-27 13:22:53', '2024-01-27 13:22:53'),
(10, 5, 217, '2024-01-27 13:22:53', '2024-01-27 13:22:53');

-- --------------------------------------------------------

--
-- Table structure for table `interest_countries`
--

CREATE TABLE `interest_countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `interest_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interest_countries`
--

INSERT INTO `interest_countries` (`id`, `country_id`, `interest_id`, `created_at`, `updated_at`) VALUES
(5, 23, 1, '2024-01-18 12:01:38', '2024-01-18 12:01:38'),
(6, 23, 5, '2024-01-27 13:22:53', '2024-01-27 13:22:53');

-- --------------------------------------------------------

--
-- Table structure for table `interest_directors`
--

CREATE TABLE `interest_directors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `interest_id` int(11) NOT NULL,
  `director_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interest_directors`
--

INSERT INTO `interest_directors` (`id`, `interest_id`, `director_id`, `created_at`, `updated_at`) VALUES
(4, 1, 69, '2024-01-18 12:01:38', '2024-01-18 12:01:38'),
(6, 5, 69, '2024-01-27 13:31:30', '2024-01-27 13:31:30');

-- --------------------------------------------------------

--
-- Table structure for table `interest_genres`
--

CREATE TABLE `interest_genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `interest_id` int(11) NOT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interest_genres`
--

INSERT INTO `interest_genres` (`id`, `interest_id`, `genre_id`, `created_at`, `updated_at`) VALUES
(10, 1, 10, '2024-01-25 14:37:06', '2024-01-25 14:37:06'),
(11, 1, 11, '2024-01-25 14:37:06', '2024-01-25 14:37:06'),
(12, 5, 10, '2024-01-27 13:22:53', '2024-01-27 13:22:53'),
(13, 5, 11, '2024-01-27 13:22:53', '2024-01-27 13:22:53');

-- --------------------------------------------------------

--
-- Table structure for table `interest_languages`
--

CREATE TABLE `interest_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `interest_id` int(11) NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interest_languages`
--

INSERT INTO `interest_languages` (`id`, `interest_id`, `language_id`, `created_at`, `updated_at`) VALUES
(3, 1, 12, '2024-01-18 12:01:38', '2024-01-18 12:01:38'),
(4, 5, 12, '2024-01-27 13:22:53', '2024-01-27 13:22:53');

-- --------------------------------------------------------

--
-- Table structure for table `interest_pcompanies`
--

CREATE TABLE `interest_pcompanies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `interest_id` int(11) NOT NULL,
  `pcompany_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interest_pcompanies`
--

INSERT INTO `interest_pcompanies` (`id`, `interest_id`, `pcompany_id`, `created_at`, `updated_at`) VALUES
(5, 1, 134, '2024-01-18 12:01:38', '2024-01-18 12:01:38'),
(6, 5, 134, '2024-01-27 13:22:53', '2024-01-27 13:22:53');

-- --------------------------------------------------------

--
-- Table structure for table `interest_ratings`
--

CREATE TABLE `interest_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `interest_id` int(11) NOT NULL,
  `rating_id` int(11) NOT NULL,
  `ratings` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interest_ratings`
--

INSERT INTO `interest_ratings` (`id`, `interest_id`, `rating_id`, `ratings`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 0.00, '2024-01-27 13:22:53', '2024-01-27 13:22:53'),
(2, 5, 2, 0.00, '2024-01-27 13:22:53', '2024-01-27 13:22:53'),
(3, 5, 3, 0.00, '2024-01-27 13:22:53', '2024-01-27 13:22:53');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `title`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'English', NULL, NULL, NULL),
(2, 'German', NULL, NULL, NULL),
(3, 'Swedish', NULL, NULL, NULL),
(4, 'Icelandic', NULL, NULL, NULL),
(5, 'Italian', NULL, NULL, NULL),
(6, 'French', NULL, NULL, NULL),
(7, 'Portuguese', NULL, NULL, NULL),
(8, 'Spanish', NULL, NULL, NULL),
(9, 'Czech', NULL, NULL, NULL),
(10, 'Polish', NULL, NULL, NULL),
(11, 'Russian', NULL, NULL, NULL),
(12, 'Hindi', NULL, NULL, NULL),
(13, 'Arabic', NULL, NULL, NULL),
(14, 'Chinese', NULL, NULL, NULL),
(15, 'Finnish', NULL, NULL, NULL),
(16, 'Indonesian', NULL, NULL, NULL),
(17, 'Japanese', NULL, NULL, NULL),
(18, 'Korean', NULL, NULL, NULL),
(19, 'Thai', NULL, NULL, NULL),
(20, 'Turkish', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `info` longtext DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `release` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `info`, `photo`, `release`, `created_at`, `updated_at`) VALUES
(1, 'The Shawshank Redemption (1994)', 'Andy Dufresne, a successful banker, is arrested for the murders of his wife and her lover, and is sentenced to life imprisonment at the Shawshank prison. He becomes the most unconventional prisoner.', 'MoviePhoto/kO41yK9MUWSfkfloQbyN2CTZzU1RkqMdLGQMgVqK.jpg', '1994-08-14', '2024-01-08 01:34:43', '2024-01-27 12:27:00'),
(3, 'The Dark Knight', 'Batman has a new foe, the Joker, who is an accomplished criminal hell-bent on decimating Gotham City. Together with Gordon and Harvey Dent, Batman struggles to thwart the Joker before it is too late.', 'MoviePhoto/xOYTeFX4t2V3MMJ8La5bHif3A96aEO8Sc7uo5LtJ.jpg', '2008-12-07', '2024-01-08 02:05:30', '2024-01-27 13:41:32'),
(5, 'Inception', 'Cobb steals information from his targets by entering their dreams. He is wanted for his alleged role in his wife\'s murder and his only chance at redemption is to perform a nearly impossible task.', 'MoviePhoto/D3c7vjVaQosLoZngf5WD5DFT57WGCLJapT0hLjxv.jpg', '2010-12-07', '2024-01-08 02:08:28', '2024-01-27 10:36:48'),
(6, 'The Godfather', 'The Godfather is a trilogy of American crime films directed by Francis Ford Coppola inspired by the 1969 novel of the same name by Italian American author Mario Puzo.', 'MoviePhoto/cyW3bYturpX0NPuwE7OVIaOwXXqN8ChKas50rm8n.jpg', '1972-03-24', '2024-01-08 02:12:40', '2024-01-08 02:12:40'),
(7, 'Pulp Fiction', 'In the realm of underworld, a series of incidents intertwines the lives of two Los Angeles mobsters, a gangster\'s wife, a boxer and two small-time criminals.', 'MoviePhoto/mYJV90HmHz6fXPHfF31PfqSU4IlCoFAWyEicI2Lx.jpg', '1994-10-14', '2024-01-08 02:15:52', '2024-01-27 10:40:44'),
(8, 'Das Leben der Anderen', 'In 1984, in East Germany, an agent of the secret police performs surveillance on a writer and his lover. Subsequently, the agent finds himself becoming increasingly interested in their lives.', 'MoviePhoto/eXnOFaciAI5II5xOcJn4YTzUrfZpMQ19c3nW1RuU.jpg', '2006-03-23', '2024-01-08 09:30:24', '2024-01-08 09:30:24'),
(9, 'Good Bye Lenin!', 'Christiane falls into coma after watching her son Alex being arrested. Alex is released but has to fake the GDR regime to help her mother recover fast and this puts him into funny situations.', 'MoviePhoto/4ICvfTsJpczrEGNyobeis9bu0JIhsiP5veDEVggB.jpg', '2003-02-09', '2024-01-08 09:35:00', '2024-01-08 09:35:00'),
(10, 'Run Lola Run', 'Lola has 20 minutes to bring 100,000 DM to her boyfriend or he robs a store. If the money is not returned, there will be consequences. We see three possible scenarios, depending on Lola\'s encounters.', 'MoviePhoto/4S4Veqrtq47tYRsDgWWlnFXud6ajdPN8cExXhx3c.jpg', '1998-08-20', '2024-01-08 09:38:02', '2024-01-08 09:38:02'),
(11, 'Gegen die Wand', 'Cahit (Birol Ünel) stumbles from bar to bar in Hamburg, Germany, lost in an alcoholic haze. The boozy Turkish immigrant crashes his car into a wall, which lands him in a mental institution. There he meets the suicidal Sibel (Sibel Kekilli). She convinces him to marry her, because otherwise her family will arrange her marriage to a Turkish man of their choosing. She proposes a deal to Cahit: She will cook and clean for him and they can see other people. Thus begins their strange romance.', 'MoviePhoto/DMr3qXM9PWKZZM3GimPOIaVlbWI6CsPrNufklAUk.jpg', '2004-03-11', '2024-01-08 09:41:27', '2024-01-08 09:41:27'),
(12, 'Die Welle', 'A high school teacher\'s uncommon experiment to show to his students what life is like under an autocracy spirals terribly out of control when he forges a social unit with a distinct life of its own.', 'MoviePhoto/tK5VHOh8GeB7aflS44UsAHbcqIh9tVQ9W9SKN1mF.jpg', '2008-03-13', '2024-01-08 09:44:10', '2024-01-08 09:44:10'),
(13, 'Fanny and Alexander', 'During the early twentieth century, Fanny and Alexander are the children of the Ekdahl family in a Swedish town. They are living a peaceful life until their father Mr. Oscar dies.', 'MoviePhoto/KKujlizZT85LGIWlsdDKcmQjCPpwJTsXALjTR2LB.jpg', '1992-12-17', '2024-01-08 12:08:05', '2024-01-08 12:08:05'),
(14, 'Let the Right One In', 'Oskar is a bullying victim dreaming of revenge. He finds the courage to strike back through Eli. Oskar falls in love with her but soon learns that she lives on human blood.', 'MoviePhoto/okPTVd64tJWGa2EDBUU1dR9EeGjkMrxrwNFrCYBo.jpg', '2008-01-26', '2024-01-08 12:10:58', '2024-01-08 12:10:58'),
(15, 'The Girl with the Dragon Tattoo', 'Mikael Blomkvist, a journalist, hires Lisbeth Salander, a computer hacker, to solve the mystery of a woman who has been missing for forty years. The two soon discover more than they bargained for.', 'MoviePhoto/8LSprDnF09CjBqkFR8x0cKS6caeZ4evljdNhcHUO.jpg', '2011-12-21', '2024-01-08 12:42:12', '2024-01-08 12:42:12'),
(16, 'A Man Called Ove', 'Ove, a short-tempered, retired old man, visits his wife\'s grave everyday but finally gives up on life. He suddenly develops a bond with his neighbours, who turn his life around.', 'MoviePhoto/6zySleBvJ2GE40K6IFPQYJBlPOcBjpVCQxwPHdiL.jpg', '2015-12-25', '2024-01-08 12:45:26', '2024-01-08 12:45:26'),
(17, 'The Square', 'The curator of an art museum in Stockholm finds himself in a major crisis as he is entrusted to set up an important exhibit whilst dealing with several problems.', 'MoviePhoto/80KUyOZSNtfjFDgs4MkgC021w5cUU0be5dw9zxuX.jpg', '2017-08-25', '2024-01-08 12:54:57', '2024-01-08 12:54:57'),
(18, 'The Deep', 'A fisherman fights for survival in the freezing ocean after getting into a tragic accident which leaves his boat capsized far off the coast of Iceland.', 'MoviePhoto/1YzdJIkXrSJSuyNBI02JESPOidYHBqxmRQDntJN6.jpg', '2012-09-21', '2024-01-08 13:59:38', '2024-01-08 13:59:38'),
(19, 'Jar City', 'Investigating the murder of an old man, Police Detective Erlendur find clues linking it to the mysterious death of a child in 1974 but struggles to find the link. Meanwhile, Orn, a man distraught at the death of his young daughter, uses the national genetics database to find out why she died.', 'MoviePhoto/qS036tgm5V0XBbZCGGlrql6lcxCUwOEAqsmnaVux.jpg', '2016-10-20', '2024-01-08 14:03:54', '2024-01-08 14:03:54'),
(20, 'Rams', 'In order to prevent slaughter of their sheep, two distant-brothers join forces and stand up against the relentless authorities who will stop at nothing to complete their mission.', 'MoviePhoto/y2ldDOXFroFiNKkBWFi2YLFfGjXME9Kz5EttFzNL.jpg', '2015-05-15', '2024-01-08 14:11:48', '2024-01-08 14:11:48'),
(21, 'Woman at War', 'Halla, an environmental activist, tries to bring down the operations of a regional aluminium business. Things change when she receives a letter of approval for the adoption of an orphan child.', 'MoviePhoto/jEyVkm3HShtOM4kN83Cq5Q3KM5D4RfeJwsywJsQU.jpg', '2018-05-22', '2024-01-08 14:23:11', '2024-01-08 14:23:11'),
(22, 'Of Horses and Men', 'Set amidst the majestic splendour of the Icelandic countryside, Icelandic writer-director Benedikt Erlingsson interweaves a series of tales about horse-owners and their steeds.', 'MoviePhoto/W0tNtPqmPdUwWsT1y1kHsH6KVZcS2OMA4tbE5sBy.jpg', '2013-08-28', '2024-01-08 14:27:55', '2024-01-08 14:27:55'),
(23, 'Tabu', 'A retired woman who is fidgety joins forces with her dead neighbour\'s maid to detect a man who has a clandestine relation to her past life as a farm owner at the foothills of Mount Tabu in Africa.', 'MoviePhoto/JBHQDHWtfaXSvUNt4Nxh1MvE4GaQyTk3vD3ekRfk.jpg', '2012-04-05', '2024-01-09 02:53:57', '2024-01-09 02:53:57'),
(24, 'O Ornitólogo', 'Fernando, a handsome young ornithologist, goes on a river expedition in search of rare bird species. However, he falls unconscious after his kayak tips over.', 'MoviePhoto/je9m773HcoGzHRXfcMZWMC1Us1uVHWvYOcoUGHSJ.jpg', '2016-03-30', '2024-01-09 02:57:23', '2024-01-09 02:57:23'),
(25, 'Cidade de Deus (City of God)', 'Two boys are brought up in a sadistic neighbourhood of Rio de Janeiro. Later, they adopt diverse professional paths, with one of them becoming a photographer and the other boy becoming a drug dealer.', 'MoviePhoto/BfofJ4dNuMKidqHbhbUGnHpIikx9vBbGj5KvAjVE.jpg', '2002-08-30', '2024-01-09 03:01:07', '2024-01-09 03:01:07'),
(26, 'Lisbon Story', 'Friedrich, a director, decides to complete his black-and-white film and calls Phillip, a sound engineer, to help him. They part ways but meet later in Lisbon and decide to complete the film.', 'MoviePhoto/uiYjMUtaqWvedCwf3ThoIHPCFYmiByTsP6KTXBH1.jpg', '1995-05-12', '2024-01-09 03:09:12', '2024-01-09 03:09:12'),
(27, 'Mysteries of Lisbon', 'Drama movie revolves around Pedro, a foundling child, whose parents are forbidden to marry. He looks for the truth of his parentage and begins a journey through Portugal, Spain, France and Italy.', 'MoviePhoto/frLsGPvdyp8GZpx9k3bLNaNqFTMa5Agkb4IBcKCi.jpg', '2010-10-20', '2024-01-09 03:30:47', '2024-01-09 03:30:47'),
(28, 'The Raid: Redemption', 'After getting trapped in a 30-storey safe house belonging to a drug lord, Tama, a group of police officers must do everything to survive and take him down.', 'MoviePhoto/nu8Emg4yamRsEcGXEzhIYOB2VKvzCFrfz2NY27AT.jpg', '2012-03-23', '2024-01-09 03:34:23', '2024-01-09 03:34:23'),
(29, 'Laskar Pelangi (The Rainbow Troops)', 'Two Indonesian teachers embrace an inspiring crop of gifted young students who\'ve come to study at their crumbling Islamic primary school.', 'MoviePhoto/7BAXivtMx2hEljOyohtM8i6qFSc1TfxQLc92UOvL.jpg', '2008-09-25', '2024-01-09 03:40:27', '2024-01-09 03:40:27'),
(30, 'Pengabdi Setan (Satan\'s Slaves)', 'After dying from a strange illness that she suffered for three years, a mother returns home to pick up her children.', 'MoviePhoto/hbxyBY5NpPCcm9bPLuYhjMz8Yc7vlVQ7fwyELB2z.jpg', '2017-09-28', '2024-01-09 03:46:18', '2024-01-09 03:46:18'),
(31, 'Ada Apa dengan Cinta? (What\'s with Love?)', 'Cinta (Dian Sastrowardoyo), a teenager in suburban Jakarta, spends all of her time with her four girlfriends, Maura (Titi Kamal), Alya (Ladya Cheryll), Carmen (Adinia Wirasti) and Milly (Sissy Priscillia) -- that is, until she falls for Rangga (Nicholas Saputra), the unassuming winner of the school poetry contest. Rangga\'s presence triggers the jealousy of Cinta\'s best friends, and things get more challenging for the couple when the girls pressure Cinta to choose between them and Rangga.', 'MoviePhoto/D1HX0O7RleMkJgRWrMupT6x9Ado73xqmRvYDQpDE.jpg', '2002-02-08', '2024-01-09 03:50:07', '2024-01-09 03:50:07'),
(32, 'Rumah Dara', 'Adjie, Astrid and three friends are hunted and slaughtered one by one by a murderous family.', 'MoviePhoto/Rh3EOKOXuzghWA2qeqKPiXFOXwd6lhC6YMGMLy7M.jpg', '2009-10-08', '2024-01-09 03:53:44', '2024-01-09 03:53:44'),
(33, 'Cold War', 'Two individuals from contrasting backgrounds fall in love with each other in the aftermath of the war in Poland and soon the man begins to persuade the woman to leave communist Poland for France.', 'MoviePhoto/t2SWqaqFQjOQrxVA2vDUqpH8sEwp1OfOnWGJW64s.jpg', '2018-06-08', '2024-01-09 04:48:09', '2024-01-09 04:48:09'),
(34, 'Ida', 'When a young novice nun goes to meet her aunt, her aunt tells her that her parents were Jews and were killed in Poland during the Second World War. Her aunt also takes her to her parents\' house.', 'MoviePhoto/NXzxBKeqcGDAjZaeGbhUnKJkVj9O1Ucfo2gCbrFE.jpg', '2013-10-25', '2024-01-09 04:50:52', '2024-01-09 04:50:52'),
(35, 'Body', 'The intertwined stories of a criminal prosecutor, his anorexic daughter and her therapist who claims she can communicate with the dead loved ones. Three radically different approaches to the body and soul.', 'MoviePhoto/uB9ApPK83Oxmxi1HkSGMI3bsEyYSh5Vbiwi3KhyY.jpg', '2015-02-06', '2024-01-09 04:54:24', '2024-01-09 04:54:24'),
(36, 'Katyn', 'A young Polish soldier refuses to escape the country when he has the chance and later gets caught, spending his last few days unaware that he is going to be a part of history\'s biggest massacre.', 'MoviePhoto/bzMnUJ1zzcepjWkScUC3LtCAbMnVs0b5CUAMZ256.jpg', '2007-09-17', '2024-01-09 05:05:59', '2024-01-09 05:05:59'),
(37, 'The Promised Land', 'In 18th-century Denmark, impoverished war hero Capt. Ludvig Kahlen sets out to tame a vast, uninhabitable land on which seemingly nothing can grow. This beautiful but forbidding area is under the rule of Frederik De Schinkel, a merciless nobleman who realizes the threat Kahlen represents to his power. As a new community starts to settle in, De Schinkel swears vengeance, leading to a violent and intense confrontation between the two men.', 'MoviePhoto/na9XY0AP8HTPYhO1aF2Ajw4HtGSnuuVVHWjfckIW.jpg', '1975-11-20', '2024-01-09 05:09:01', '2024-01-09 05:09:01'),
(38, 'Kolya', 'As the Cold War winds down, former concert cellist Louka (Zdenek Sverák) barely makes ends meet providing accompaniment at funerals after being blacklisted from his much cushier job with the Prague Philharmonic. For a fee, he marries a Russian woman (Libuse Safránková) so she can become a Czech citizen, but she immediately emigrates to West Germany, sticking the bachelor with her sickly 5-year-old Kolya (Andrej Chalimon) and a host of official questions about the sham marriage.', 'MoviePhoto/DOJZUkCiXGyHxL4FTr87QV35lT15ICks7dnlfQa7.jpg', '1996-06-05', '2024-01-09 05:12:41', '2024-01-09 05:12:41'),
(39, 'Closely Watched Trains', 'A bumbling railroad dispatcher joins the resistance in World War II to impress the girls.', 'MoviePhoto/9aIbV36k7KP8oF3nhUKaxu9IIyKnuWrleCujpwJA.jpg', '1966-11-18', '2024-01-09 05:16:41', '2024-01-09 05:16:41'),
(40, 'The Firemen\'s Ball', 'In Milos Forman\'s satire on Communism set in a small Czechoslovakian town in the 1960s, the local firemen decide to organize a ball, however the proceedings are dogged by difficulty at every step. They plan to organize a beauty pageant at the ball, yet struggle tremendously to find enough pretty contestants. A lottery is planned for later in the evening, but the guests begin stealing the prizes. Then, inevitably, there is a fire in the town... It seems that whatever can go wrong, does go wrong.', 'MoviePhoto/xGsskyw9CdCkz0KLUzOoipH1D54td4lBJm1IABR7.jpg', '0067-12-15', '2024-01-09 05:20:25', '2024-01-09 05:20:25'),
(41, 'Divided We Fall', 'Google users\r\nIn Nazi occupied Czechoslovakia, a childless couple agrees to hide a Jewish friend at a great personal risk, which could lead to their execution.', 'MoviePhoto/X6zx9B3ZfJcryEHqHLAr58fbb58RDoWHdtDifAJ8.jpg', '2000-09-28', '2024-01-09 05:22:55', '2024-01-09 05:22:55'),
(42, 'I Served the King of England', 'After serving 15 years in a Czechoslovakian prison, Jan Díte; (Ivan Barnev) looks back on his life as an aspiring millionaire. As a young man, Jan comes to believe that wealth and prestige are the ultimate source of happiness. He works his way up from a lowly train attendant to a series of jobs in prominent hotels with wealthy guests. While in constant pursuit of money, Jan has a string of affairs and a relationship with a fanatical Nazi that lead him towards temptation and social ruin.', 'MoviePhoto/gRbrpNkdg9sEk46RK0kXqBtIs8LPPQoQx8SSCqOX.jpg', '2006-12-19', '2024-01-09 05:25:53', '2024-01-09 05:25:53'),
(43, 'La Dolce Vita', 'Marcello, a gossip columnist, has an aspiration to turn himself into a serious writer. However, he finds himself at the centre of Rome\'s elite social scene, attracting the attention of several women.', 'MoviePhoto/PcFWQosfkBI50Csxox9LMqv6YjuIahtLLPipWNYK.jpg', '1960-02-05', '2024-01-09 10:43:11', '2024-01-09 10:43:11'),
(44, 'Cinema Paradiso', 'Salvatore, a famous film director, returns to his hometown for the funeral of the local theatre\'s film projectionist, Alfredo. He reminisces about his life as a young boy falling in love with cinema.', 'MoviePhoto/gc4CA8K1sD7kGppDPzGlEJlOlgCV1qA0aSvxveMQ.jpg', '1980-11-17', '2024-01-09 10:45:50', '2024-01-09 10:45:50'),
(45, 'Life Is Beautiful', 'When his Italian nation is occupied by Nazi German troops during WWII, Guido, an easy-going Jewish librarian, uses willpower, humour and imagination to shield his son from anti-Semitic horrors.', 'MoviePhoto/zo5zc4EwXhMafMwQU6BHPLe1KoPQdRX2dUZsIfmS.jpg', '1997-12-20', '2024-01-09 10:50:51', '2024-01-09 10:50:51'),
(46, 'The Great Beauty', 'Jep Gambardella, an ageing socialite, wrote a novel in his twenties that catapulted him to international fame. But on his 65th birthday, a shock from the past makes him take stock of the life he led.', 'MoviePhoto/Kob2kWDgwc7AicFLmxZDbY16B3JlInnpHjJPz8iQ.jpg', '2013-05-21', '2024-01-09 10:53:39', '2024-01-09 10:53:39'),
(47, 'Gomorrah', 'Ciro di Marzio, the right-hand man of gangster Don Pietro, wishes to rise to power and gain control of the Savastano clan. He soon seizes his opportunity after Don Pietro\'s arrest.', 'MoviePhoto/TVNut2g5sysZHy9qwSzsay2UOZ2oExGVIRh7Qm6p.jpg', '2018-05-23', '2024-01-09 10:58:16', '2024-01-09 10:58:16'),
(48, 'Pan\'s Labyrinth', 'Ofelia moves with her mother to her stepfather\'s house. At night, a fairy leads her to a faun who informs her that she is a princess and she needs to participate in three tasks to prove her royalty.', 'MoviePhoto/PeaQJQCdKlpHsUhVSfu0LLwqmY9bDK6gh4RJEqa1.jpg', '2006-05-27', '2024-01-09 11:08:58', '2024-01-09 11:08:58'),
(49, 'The Others', 'Grace moves into a new house with her children in Jersey. However, when inexplicable events start to take place at the residence, Grace becomes convinced that the house is haunted.', 'MoviePhoto/nm5VyLxDj65bpRhq14HCvIseYmkfSnGkEi3fwlx7.jpg', '2001-08-02', '2024-01-09 11:13:05', '2024-01-09 11:13:05'),
(50, 'The Secret in Their Eyes', 'Benjamin Esposito is a retired legal counsellor who is working on a novel centred around murders that occurred years ago in Buenos Aries. Twenty years later, the unresolved case still haunts him.', 'MoviePhoto/Dum3OcyjRpCGVbJY5isDPpQ8xfBRPtS1sli8Re1y.jpg', '2009-08-13', '2024-01-09 11:17:08', '2024-01-09 11:17:08'),
(51, 'Volver', 'Sole, a young woman, visits her ancestral village to attend the funeral of Paula, her aunt. However, much to her horror, she encounters the ghost of her mother who died years ago.', 'MoviePhoto/Rki1X6YQvZMqyEXyFzbCNeMnQI3IduOUfdGnEYZq.jpg', '2016-03-16', '2024-01-09 11:25:21', '2024-01-09 11:25:21'),
(52, 'The Skin I Live In', 'A brilliant yet tortured plastic surgeon creates a type of synthetic skin which is resistant to any damage. But his guinea pig is a mysterious woman who holds the key to his past and obsessions.', 'MoviePhoto/elxlzgeiaIp06nhkoS9D9tSmj9dyboOk9oUYStzA.jpg', '2011-08-17', '2024-01-09 11:28:28', '2024-01-09 11:28:28'),
(53, 'Come and See', 'Florya joins the Soviet Army against his family\'s wishes. After being subjected to unfair treatment in the army, he returns home and finds his family massacred by the German forces.', 'MoviePhoto/Zz2EDfbNbVqDVZ2emkiU6klxTtQHgcNh3GQLuFWZ.jpg', '1995-07-01', '2024-01-10 05:21:32', '2024-01-10 05:21:32'),
(54, 'Solaris', 'The crew of a space station orbiting the oceanic planet, Solaris, is going insane under mysterious circumstances. Kelvin, a psychologist, is sent there to find out the cause for this.', 'MoviePhoto/3XbBpyVAh7bMguXy9eTo8RbLXGy834eqmnJ4czOu.jpg', '1972-02-05', '2024-01-10 05:24:10', '2024-01-10 05:24:10'),
(55, 'Night Watch', 'After battling for centuries, the Night Watch and Day Watch come to a truce, agreeing to stick to night-time and daytime respectively. But a member of the Night Watch threatens the peace between them.', 'MoviePhoto/v8StBW8zGpcGct0ZGSO80vRoiPHDHYmeZZpE5M3e.jpg', '2004-07-08', '2024-01-10 05:26:48', '2024-01-10 05:26:48'),
(56, 'Leviathan', 'Kolya, an ordinary man, lives with his family in a Russian coastal town. His life turns upside down when he learns that his house is going to be demolished.', 'MoviePhoto/HCK204c2nf8h5nYoG0stY7NPGXu8Dba3LkSnU4FZ.jpg', '2014-05-23', '2024-01-10 05:29:50', '2024-01-10 05:29:50'),
(57, 'Stalker', 'A guide helps a writer and a professor to infiltrate a restricted area, the Zone. Paying no heed to the dangers which lay ahead, they proceed towards the Room in order to fulfil their desires.', 'MoviePhoto/g5kQtK0GQZ7XjvqPO94HMhMi229tNBE2xj9Vs4zA.jpg', '1979-05-13', '2024-01-10 05:33:39', '2024-01-10 05:33:39'),
(58, 'La La Land', 'When Sebastian, a pianist, and Mia, an actress, follow their passion and achieve success in their respective fields, they find themselves torn between their love for each other and their careers.', 'MoviePhoto/GqWdVTC1b2Q5Ur7Wdjo1p6K1McPgHdxZiZb3DbtX.jpg', '2016-08-31', '2024-01-10 05:37:37', '2024-01-10 05:37:37'),
(59, 'Amélie', 'Despite being caught in her imaginative world, Amelie, a young waitress, decides to help people find happiness. Her quest to spread joy leads her on a journey where she finds true love.', 'MoviePhoto/u9Mz2vVdCq5YOE4SVuSHD8Gz7eDdChmjxXk62F9T.jpg', '2001-04-25', '2024-01-10 05:40:26', '2024-01-10 05:40:26'),
(60, 'The Intouchables', 'Philippe, a rich man, loses his wife and becomes a quadriplegic in a paragliding accident. He wants a live-in care taker to look after him and his daughter. He chooses Driss who has a criminal record', 'MoviePhoto/KIHx0ufhtNepSwZkrJMiH5NI5Dwl3RiTU3sjpkqr.jpg', '2011-11-02', '2024-01-10 05:42:48', '2024-01-10 05:42:48'),
(61, 'Blue Is the Warmest Color', 'Adele is confused about her sexuality after she breaks up with her boyfriend and gets attracted to a beautiful woman who sports a funky haircut. She sets out to find true love.', 'MoviePhoto/1JBjdpG7RuZ2c9DFFsdfNHZiMAEi8FiqBxY4TxA7.jpg', '2013-05-23', '2024-01-10 05:45:51', '2024-01-10 05:45:51'),
(62, 'La Haine', 'After a youth is tortured by the police, a riot explodes on the streets of Paris. Vinz, Said and Hubert find a gun lost by the police in the riots and threaten to kill a cop if their friend dies.', 'MoviePhoto/At89eigUAuIpoJRNx8m4WaCGGoW0b9PZAChaIp8E.jpg', '1995-05-31', '2024-01-10 05:48:30', '2024-01-10 05:48:30'),
(63, 'The Man Without a Past', 'The film tells the story of a man who loses his memory after a brutal beating and must reconstruct his life from scratch.', 'MoviePhoto/fxFBy9WwQV3QCQ8Zd4ojKZUVD7iJy8Vq6d07BdQG.jpg', '2002-05-01', '2024-01-13 07:09:05', '2024-01-13 07:09:05'),
(64, 'Ariel', 'The film follows a coal miner who becomes involved in a labor dispute and faces challenges in his personal life.', 'MoviePhoto/85t0kOxFFS6r5emzpaAJOeyDARN5H0Z3bZ4RpPJ7.jpg', '1988-09-17', '2024-01-13 07:15:02', '2024-01-13 07:15:02'),
(65, 'The Match Factory Girl', 'The film tells the story of a lonely and mistreated woman who seeks revenge for the neglect she experiences.', 'MoviePhoto/xii1mzTzu0dEjS5lcmfZDOo8xXCNd5ycjjZvTKMk.jpg', '1990-09-21', '2024-01-13 07:18:18', '2024-01-13 07:18:18'),
(66, 'Le Havre', 'The film centers on a shoeshiner who tries to save an immigrant child in the French port city of Le Havre.', 'MoviePhoto/q68Btz61J475lwNVu2wu3ZpuYSlt5L4soyYGotAU.jpg', '2011-05-17', '2024-01-13 07:24:22', '2024-01-13 07:24:22'),
(67, 'Rare Exports: A Christmas Tale', 'A dark fantasy film about the discovery of the real Santa Claus buried in a mountain, leading to unexpected and sinister events.', 'MoviePhoto/uLXhrabEoNygXhm90qvLO7Q2CG35h2pxf3jc6fvz.jpg', '2010-12-31', '2024-01-13 07:31:05', '2024-01-13 07:31:05'),
(68, 'Caramel', 'Set in Beirut, the film follows the lives of five Lebanese women as they navigate love, friendship, and societal expectations.', 'MoviePhoto/IRNlFN6lbOZbkrAWNv3DpLIROR4pQf7X2WvSACIv.jpg', '2007-05-20', '2024-01-13 07:35:14', '2024-01-13 07:35:14'),
(69, 'Theeb', 'A Bedouin boy embarks on a perilous journey through the Arabian Desert during World War I.', 'MoviePhoto/u2EERFyQQYE4eYiefQ8REwgH3TlC9ZCV3z1lGKXH.jpg', '2014-09-04', '2024-01-13 07:38:49', '2024-01-13 07:38:49'),
(70, 'Wadjda', 'The film is about a young Saudi girl who dreams of owning a bicycle, defying societal norms.', 'MoviePhoto/MwqR04JTwlnZ3cOuT9Y4EqpwgK4FcC5kpQd7CSLT.jpg', '2012-09-03', '2024-01-13 07:42:27', '2024-01-13 07:42:27'),
(71, 'Capernaum', 'The film follows the journey of a young boy living in the slums of Beirut who sues his parents for bringing him into a world of poverty and neglect.', 'MoviePhoto/gAJ7bj021p6ml2laQh7dBIbGzsMypzp49Cvt6lCX.jpg', '2018-12-05', '2024-01-13 07:47:31', '2024-01-13 07:47:31'),
(72, 'Omar', 'A Palestinian baker faces moral dilemmas and personal challenges when he becomes involved in the resistance movement against the Israeli occupation.', 'MoviePhoto/R7uRD42tzmu9N3twopsitLxPodwj2RsKoJBRWzIv.jpg', '2013-05-21', '2024-01-13 07:52:24', '2024-01-13 07:52:24'),
(73, 'Winter Sleep', 'The film revolves around a retired actor who runs a mountaintop hotel and confronts his relationships with his wife and sister.', 'MoviePhoto/hdUw8FJGn8DUvLmHD94ifjLJW742oTKuMD3yfi2J.jpg', '2014-05-16', '2024-01-14 22:31:51', '2024-01-14 22:31:51'),
(74, 'Once Upon a Time in Anatolia', 'A police procedural drama that follows a group of men as they search for a buried body on the Anatolian steppes.', 'MoviePhoto/j0cCndujl5W9agWSo3ubKyrdxCkEqmChnjihTyTC.jpg', '2011-05-21', '2024-01-14 22:34:28', '2024-01-14 22:34:28'),
(75, 'Mustang', 'The film follows the lives of five orphaned sisters in a Turkish village as they navigate societal expectations and restrictions.', 'MoviePhoto/fZ5ITnSQklnaX96zjQ23WKrnwROd2ek4VkR93IC0.jpg', '2015-05-11', '2024-01-14 22:37:41', '2024-01-14 22:37:41'),
(76, 'Head-On', 'The film tells the story of two Turkish-German individuals who enter into a marriage of convenience, exploring issues of identity and culture clash.', 'MoviePhoto/pDxJFQUx6Eec8XPvVUP87eOxGE1cShnQcyu3taad.jpg', '2014-02-12', '2024-01-14 22:42:34', '2024-01-14 22:42:34'),
(77, 'The Bandit', 'The film follows the life of a former car thief who, after serving a prison sentence, tries to reconcile with his family and leave his criminal past behind.', 'MoviePhoto/I5JIby4eaQcEK0IREGoKtF156qthZtCBHeWa1JYs.jpg', '1996-02-05', '2024-01-14 22:45:00', '2024-01-14 22:45:00'),
(78, 'Parasite', 'A dark comedy thriller about a poor family who infiltrates the lives of a wealthy family, leading to unexpected consequences.', 'MoviePhoto/6l2Vm5xZ685eOeJK1eOOBOSTd5rv8r8e0v9mE3Zi.jpg', '2019-05-21', '2024-01-14 23:02:49', '2024-01-14 23:02:49'),
(79, 'Oldboy', 'A psychological thriller about a man who is inexplicably imprisoned for 15 years and seeks revenge after his release.', 'MoviePhoto/9ZwUlk2X1aP2JPStpIcbfmqvvBZYB17gustb1w5f.jpg', '2003-11-21', '2024-01-14 23:06:56', '2024-01-14 23:06:56'),
(80, 'The Handmaiden', 'A psychological thriller based on the novel \"Fingersmith\" by Sarah Waters, involving a conman, a wealthy heiress, and a pickpocket.', 'MoviePhoto/QiJDj7ZCCg9Qs5h894gS0FKYR1HAxCpqvt2Hm7GV.jpg', '2016-06-01', '2024-01-14 23:09:11', '2024-01-14 23:09:11'),
(81, 'Train to Busan', 'A zombie apocalypse thriller that unfolds on a high-speed train bound for Busan, with passengers fighting for survival.', 'MoviePhoto/xUCf7nqRPJZumaJfAkisRrDYJkUiN7OTkSEGmkEg.jpg', '2016-05-13', '2024-01-14 23:11:29', '2024-01-14 23:11:29'),
(82, 'Memories of Murder', 'A crime drama based on the real-life events of the Hwaseong serial murders in the 1980s, as detectives try to catch a elusive killer.', 'MoviePhoto/qe7IoZI050c170BreZtIwJSwVNwaLODOvHTrcrDs.jpg', '2013-05-02', '2024-01-14 23:18:07', '2024-01-14 23:18:07'),
(83, 'Dilwale Dulhania Le Jayenge', 'A classic Bollywood romantic drama about a young couple who fall in love during a European vacation, facing family opposition upon their return to India.', 'MoviePhoto/vuyzz6etIUOYrlfUUNweLKt663wgCQVHi5ctCYhV.jpg', '1995-10-20', '2024-01-14 23:34:30', '2024-01-14 23:34:30'),
(84, 'Kabhi Khushi Kabhie Gham', 'A family drama that explores themes of love, relationships, and the challenges faced by a family separated by societal expectations.', 'MoviePhoto/nZSYetYJMGqO0EQFvAKg21rQhDHDOKpDuHKJ8suW.jpg', '2001-12-14', '2024-01-14 23:37:12', '2024-01-14 23:37:12'),
(85, 'Gully Boy', 'Inspired by the lives of Indian street rappers, the film follows a young man\'s journey from the slums to the world of hip-hop.', 'MoviePhoto/iuBIWAVvBNA41EuR3IjtWUwVODCbmLwhnyTOMYLE.jpg', '2019-02-14', '2024-01-14 23:39:20', '2024-01-14 23:39:20'),
(86, 'Raanjhanaa', '\"Raanjhanaa\" is a romantic drama that tells the story of Kundan (played by Dhanush), who falls deeply in love with Zoya (played by Sonam Kapoor) during their school days in Benares (Varanasi). The film explores themes of love, sacrifice, and social and political issues.', 'MoviePhoto/RJSzws4uLhuJVoTH2ODKbWGJJbCF5dl8XcVb8xSl.jpg', '2013-06-21', '2024-01-14 23:42:17', '2024-01-14 23:42:17'),
(87, '1920: Evil Returns', '\"1920: Evil Returns\" is a supernatural horror film and a sequel to the 2008 movie \"1920.\" The story follows a writer, played by Aftab Shivdasani, who becomes possessed by a spirit after using a Ouija board. The film explores themes of love, possession, and the supernatural.', 'MoviePhoto/4Oo8ehBpPT6pMb2OicOsDiveCqgRW93RgCTiZsYi.jpg', '2012-11-02', '2024-01-14 23:46:49', '2024-01-14 23:46:49'),
(88, 'Crouching Tiger, Hidden Dragon', 'A wuxia film that tells the story of a stolen sword and the intertwined destinies of the individuals who come in contact with it.', 'MoviePhoto/9AClJdh7HaWHPcDNoIdSV0QaNNJunDlGCNXEyIib.jpg', '2000-09-02', '2024-01-15 00:24:16', '2024-01-15 00:24:16'),
(89, 'Hero', 'Set during the Warring States period, the film explores the concept of heroism and the conflicting interests of different factions.', 'MoviePhoto/dKfCtmEXugxDzxnfWAAOJ4C1xkFy760Gxstyr7wv.jpg', '2002-10-24', '2024-01-15 00:27:11', '2024-01-15 00:27:11'),
(90, 'Raise the Red Lantern', 'A historical drama set in the 1920s, exploring the life of a young woman who becomes the fourth wife in a wealthy household.', 'MoviePhoto/w0cxvmP7rAUFu1SLosb3n2PG3QwXVS1CUftRJPug.jpg', '1991-12-20', '2024-01-15 00:37:16', '2024-01-15 00:37:16'),
(91, 'Farewell My Concubine', 'A historical drama that spans 53 years, revolving around the lives of two Peking opera performers and their complex relationship.', 'MoviePhoto/ugjOEkjqY2Ae6K6bdVVVizjUENDoe7oa0cHLQxlC.jpg', '1993-01-11', '2024-01-15 00:40:03', '2024-01-15 00:40:03'),
(92, 'House of Flying Daggers', 'A romantic wuxia film set in the declining years of the Tang Dynasty, involving love, betrayal, and political intrigue.', 'MoviePhoto/IPFI9ClYe2KnSeC2p3UyRytrGVfh5yqWDHE7CA03.jpg', '2004-05-19', '2024-01-15 00:42:38', '2024-01-15 00:42:38'),
(93, 'Ong-Bak: Muay Thai Warrior', 'A martial arts action film featuring Tony Jaa, who must retrieve the stolen head of a sacred Buddha statue.', 'MoviePhoto/dAZppfsZadNLArfAdkLSobuFFnHh6ny8qpEwNrOt.jpg', '2003-01-21', '2024-01-15 02:02:02', '2024-01-15 02:02:02'),
(94, 'Shutter', 'A horror film about a photographer who begins to see mysterious images in his pictures, leading to a chilling revelation.', 'MoviePhoto/6rWcpve7UKV1Y8W90kQPDOL0arzoTyJBiNbEPM5E.jpg', '2004-09-09', '2024-01-15 02:05:33', '2024-01-15 02:05:33'),
(95, 'Uncle Boonmee Who Can Recall His Past Lives', 'A surreal drama that explores the memories and past lives of Uncle Boonmee as he contemplates his impending death.', 'MoviePhoto/JWaGdT8qIie8MRNowt84y7WjAnKDBboY2kJoW9qd.jpg', '2010-05-21', '2024-01-15 02:08:07', '2024-01-15 02:08:07'),
(96, 'Bad Genius', 'A thriller about a high school student who devises an elaborate cheating scheme during exams.', 'MoviePhoto/j1QRyWE8m8d0uC2W9mnQhbezBY6mKefehrpld1AS.jpg', '2007-05-03', '2024-01-15 02:11:46', '2024-01-15 02:11:46'),
(97, 'The Protector', 'A martial arts action film featuring Tony Jaa as a young man on a quest to rescue his stolen elephants from a syndicate.', 'MoviePhoto/UUOxTczM4JzGrom8LRtUdjZ8wzj1RkYSkPiFKokr.jpg', '2005-09-11', '2024-01-15 02:14:48', '2024-01-15 02:14:48'),
(98, 'Spirited Away', 'An animated fantasy film about a young girl named Chihiro who becomes trapped in a mysterious and magical world, trying to rescue her parents and find her way back home.', 'MoviePhoto/36mKSFXPHOud8iF7AybRDiES0IxNUT109GnUmDqt.jpg', '2001-07-20', '2024-01-15 02:17:47', '2024-01-15 02:17:47'),
(99, 'Your Name', 'An animated romantic fantasy film about two teenagers who mysteriously swap bodies and try to navigate each other\'s lives.', 'MoviePhoto/Kati8urcf9LTVKh5h6OwrVF8yAZRLSaPKd0PVBGL.jpg', '2016-09-26', '2024-01-15 02:23:49', '2024-01-15 02:23:49'),
(100, 'Akira', 'An animated cyberpunk film based on the manga of the same name, set in a dystopian Tokyo where a biker gang member discovers government experiments.', 'MoviePhoto/oNx1yjnRoDBnTItMe3q9rqcaCls62KPBj7kJxVSq.jpg', '1988-07-16', '2024-01-15 02:36:47', '2024-01-15 02:36:47'),
(101, 'Battle Royale', 'A dystopian thriller where a group of students is forced to participate in a deadly game of survival on a deserted island.', 'MoviePhoto/hIpBLFkMMqtqGSBKExc6DnhO9Hx4fz8MCYHcvuOu.jpg', '2000-12-16', '2024-01-15 02:40:39', '2024-01-15 02:40:39'),
(102, 'Grave of the Fireflies', 'An animated war drama that tells the heartbreaking story of two siblings trying to survive in Japan during World War II.', 'MoviePhoto/Yh9DZCXn17En1YbT0OmSWtTzxjiqtiiYSHHMBAbw.jpg', '1988-04-16', '2024-01-15 02:43:54', '2024-01-15 02:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `movie_casts`
--

CREATE TABLE `movie_casts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` int(11) NOT NULL,
  `cast_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_casts`
--

INSERT INTO `movie_casts` (`id`, `movie_id`, `cast_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-01-08 01:42:41', '2024-01-08 01:42:41'),
(2, 1, 2, '2024-01-08 01:42:41', '2024-01-08 01:42:41'),
(3, 3, 3, '2024-01-08 02:05:30', '2024-01-08 02:05:30'),
(4, 3, 4, '2024-01-08 02:05:31', '2024-01-08 02:05:31'),
(5, 3, 5, '2024-01-08 02:05:31', '2024-01-08 02:05:31'),
(9, 5, 6, '2024-01-08 02:08:28', '2024-01-08 02:08:28'),
(10, 5, 7, '2024-01-08 02:08:28', '2024-01-08 02:08:28'),
(11, 5, 8, '2024-01-08 02:08:28', '2024-01-08 02:08:28'),
(12, 6, 9, '2024-01-08 02:12:40', '2024-01-08 02:12:40'),
(13, 6, 10, '2024-01-08 02:12:40', '2024-01-08 02:12:40'),
(14, 6, 11, '2024-01-08 02:12:40', '2024-01-08 02:12:40'),
(15, 7, 12, '2024-01-08 02:15:52', '2024-01-08 02:15:52'),
(16, 7, 13, '2024-01-08 02:15:52', '2024-01-08 02:15:52'),
(17, 7, 14, '2024-01-08 02:15:52', '2024-01-08 02:15:52'),
(18, 8, 15, '2024-01-08 09:30:24', '2024-01-08 09:30:24'),
(19, 8, 16, '2024-01-08 09:30:24', '2024-01-08 09:30:24'),
(20, 8, 17, '2024-01-08 09:30:24', '2024-01-08 09:30:24'),
(21, 9, 18, '2024-01-08 09:35:00', '2024-01-08 09:35:00'),
(22, 9, 19, '2024-01-08 09:35:00', '2024-01-08 09:35:00'),
(23, 9, 20, '2024-01-08 09:35:00', '2024-01-08 09:35:00'),
(24, 10, 21, '2024-01-08 09:38:02', '2024-01-08 09:38:02'),
(25, 10, 22, '2024-01-08 09:38:02', '2024-01-08 09:38:02'),
(26, 10, 23, '2024-01-08 09:38:02', '2024-01-08 09:38:02'),
(27, 11, 24, '2024-01-08 09:41:28', '2024-01-08 09:41:28'),
(28, 11, 25, '2024-01-08 09:41:28', '2024-01-08 09:41:28'),
(29, 11, 26, '2024-01-08 09:41:28', '2024-01-08 09:41:28'),
(30, 12, 27, '2024-01-08 09:44:10', '2024-01-08 09:44:10'),
(31, 12, 28, '2024-01-08 09:44:10', '2024-01-08 09:44:10'),
(32, 12, 29, '2024-01-08 09:44:10', '2024-01-08 09:44:10'),
(33, 13, 30, '2024-01-08 12:08:05', '2024-01-08 12:08:05'),
(34, 13, 31, '2024-01-08 12:08:05', '2024-01-08 12:08:05'),
(35, 13, 32, '2024-01-08 12:08:05', '2024-01-08 12:08:05'),
(36, 14, 33, '2024-01-08 12:10:58', '2024-01-08 12:10:58'),
(37, 14, 34, '2024-01-08 12:10:58', '2024-01-08 12:10:58'),
(38, 14, 35, '2024-01-08 12:10:58', '2024-01-08 12:10:58'),
(39, 15, 36, '2024-01-08 12:42:12', '2024-01-08 12:42:12'),
(40, 15, 37, '2024-01-08 12:42:13', '2024-01-08 12:42:13'),
(41, 15, 38, '2024-01-08 12:42:13', '2024-01-08 12:42:13'),
(42, 16, 39, '2024-01-08 12:45:26', '2024-01-08 12:45:26'),
(43, 16, 40, '2024-01-08 12:45:26', '2024-01-08 12:45:26'),
(44, 16, 41, '2024-01-08 12:45:26', '2024-01-08 12:45:26'),
(45, 17, 42, '2024-01-08 12:54:57', '2024-01-08 12:54:57'),
(46, 17, 43, '2024-01-08 12:54:57', '2024-01-08 12:54:57'),
(47, 17, 44, '2024-01-08 12:54:57', '2024-01-08 12:54:57'),
(48, 18, 53, '2024-01-08 13:59:38', '2024-01-08 13:59:38'),
(49, 18, 54, '2024-01-08 13:59:38', '2024-01-08 13:59:38'),
(50, 18, 55, '2024-01-08 13:59:38', '2024-01-08 13:59:38'),
(51, 19, 51, '2024-01-08 14:03:54', '2024-01-08 14:03:54'),
(52, 19, 56, '2024-01-08 14:03:54', '2024-01-08 14:03:54'),
(53, 19, 57, '2024-01-08 14:03:54', '2024-01-08 14:03:54'),
(54, 20, 45, '2024-01-08 14:11:48', '2024-01-08 14:11:48'),
(55, 20, 46, '2024-01-08 14:11:48', '2024-01-08 14:11:48'),
(56, 20, 47, '2024-01-08 14:11:48', '2024-01-08 14:11:48'),
(57, 21, 48, '2024-01-08 14:23:11', '2024-01-08 14:23:11'),
(58, 21, 49, '2024-01-08 14:23:11', '2024-01-08 14:23:11'),
(59, 21, 50, '2024-01-08 14:23:11', '2024-01-08 14:23:11'),
(60, 22, 47, '2024-01-08 14:27:55', '2024-01-08 14:27:55'),
(61, 22, 51, '2024-01-08 14:27:55', '2024-01-08 14:27:55'),
(62, 22, 52, '2024-01-08 14:27:55', '2024-01-08 14:27:55'),
(63, 23, 58, '2024-01-09 02:53:57', '2024-01-09 02:53:57'),
(64, 23, 59, '2024-01-09 02:53:57', '2024-01-09 02:53:57'),
(65, 23, 60, '2024-01-09 02:53:57', '2024-01-09 02:53:57'),
(66, 24, 61, '2024-01-09 02:57:24', '2024-01-09 02:57:24'),
(67, 24, 62, '2024-01-09 02:57:24', '2024-01-09 02:57:24'),
(68, 24, 63, '2024-01-09 02:57:24', '2024-01-09 02:57:24'),
(69, 25, 6, '2024-01-09 03:01:07', '2024-01-09 03:01:07'),
(70, 25, 64, '2024-01-09 03:01:07', '2024-01-09 03:01:07'),
(71, 25, 65, '2024-01-09 03:01:07', '2024-01-09 03:01:07'),
(72, 26, 67, '2024-01-09 03:09:12', '2024-01-09 03:09:12'),
(73, 26, 68, '2024-01-09 03:09:12', '2024-01-09 03:09:12'),
(74, 26, 69, '2024-01-09 03:09:12', '2024-01-09 03:09:12'),
(75, 27, 70, '2024-01-09 03:30:47', '2024-01-09 03:30:47'),
(76, 27, 71, '2024-01-09 03:30:47', '2024-01-09 03:30:47'),
(77, 27, 72, '2024-01-09 03:30:47', '2024-01-09 03:30:47'),
(78, 28, 73, '2024-01-09 03:34:23', '2024-01-09 03:34:23'),
(79, 28, 74, '2024-01-09 03:34:23', '2024-01-09 03:34:23'),
(80, 28, 75, '2024-01-09 03:34:23', '2024-01-09 03:34:23'),
(81, 29, 76, '2024-01-09 03:40:27', '2024-01-09 03:40:27'),
(82, 29, 77, '2024-01-09 03:40:27', '2024-01-09 03:40:27'),
(83, 29, 78, '2024-01-09 03:40:27', '2024-01-09 03:40:27'),
(84, 30, 79, '2024-01-09 03:46:18', '2024-01-09 03:46:18'),
(85, 30, 80, '2024-01-09 03:46:18', '2024-01-09 03:46:18'),
(86, 30, 81, '2024-01-09 03:46:18', '2024-01-09 03:46:18'),
(87, 31, 82, '2024-01-09 03:50:07', '2024-01-09 03:50:07'),
(88, 31, 83, '2024-01-09 03:50:07', '2024-01-09 03:50:07'),
(89, 31, 84, '2024-01-09 03:50:07', '2024-01-09 03:50:07'),
(90, 32, 85, '2024-01-09 03:53:44', '2024-01-09 03:53:44'),
(91, 32, 86, '2024-01-09 03:53:44', '2024-01-09 03:53:44'),
(92, 32, 87, '2024-01-09 03:53:44', '2024-01-09 03:53:44'),
(93, 33, 88, '2024-01-09 04:48:09', '2024-01-09 04:48:09'),
(94, 33, 89, '2024-01-09 04:48:09', '2024-01-09 04:48:09'),
(95, 34, 90, '2024-01-09 04:50:52', '2024-01-09 04:50:52'),
(96, 34, 91, '2024-01-09 04:50:52', '2024-01-09 04:50:52'),
(97, 35, 92, '2024-01-09 04:54:24', '2024-01-09 04:54:24'),
(98, 35, 93, '2024-01-09 04:54:24', '2024-01-09 04:54:24'),
(99, 36, 93, '2024-01-09 05:06:00', '2024-01-09 05:06:00'),
(100, 36, 94, '2024-01-09 05:06:00', '2024-01-09 05:06:00'),
(101, 37, 95, '2024-01-09 05:09:01', '2024-01-09 05:09:01'),
(102, 37, 96, '2024-01-09 05:09:01', '2024-01-09 05:09:01'),
(103, 38, 97, '2024-01-09 05:12:41', '2024-01-09 05:12:41'),
(104, 38, 98, '2024-01-09 05:12:41', '2024-01-09 05:12:41'),
(105, 38, 99, '2024-01-09 05:12:41', '2024-01-09 05:12:41'),
(106, 39, 100, '2024-01-09 05:16:41', '2024-01-09 05:16:41'),
(107, 39, 101, '2024-01-09 05:16:41', '2024-01-09 05:16:41'),
(108, 39, 102, '2024-01-09 05:16:41', '2024-01-09 05:16:41'),
(109, 40, 103, '2024-01-09 05:20:25', '2024-01-09 05:20:25'),
(110, 40, 104, '2024-01-09 05:20:25', '2024-01-09 05:20:25'),
(111, 40, 105, '2024-01-09 05:20:25', '2024-01-09 05:20:25'),
(112, 41, 106, '2024-01-09 05:22:55', '2024-01-09 05:22:55'),
(113, 41, 107, '2024-01-09 05:22:55', '2024-01-09 05:22:55'),
(114, 41, 108, '2024-01-09 05:22:55', '2024-01-09 05:22:55'),
(115, 42, 109, '2024-01-09 05:25:54', '2024-01-09 05:25:54'),
(116, 42, 110, '2024-01-09 05:25:54', '2024-01-09 05:25:54'),
(117, 42, 111, '2024-01-09 05:25:54', '2024-01-09 05:25:54'),
(118, 43, 112, '2024-01-09 10:43:11', '2024-01-09 10:43:11'),
(119, 43, 113, '2024-01-09 10:43:11', '2024-01-09 10:43:11'),
(120, 43, 114, '2024-01-09 10:43:11', '2024-01-09 10:43:11'),
(121, 44, 115, '2024-01-09 10:45:50', '2024-01-09 10:45:50'),
(122, 44, 116, '2024-01-09 10:45:50', '2024-01-09 10:45:50'),
(123, 44, 117, '2024-01-09 10:45:50', '2024-01-09 10:45:50'),
(124, 45, 118, '2024-01-09 10:50:51', '2024-01-09 10:50:51'),
(125, 45, 119, '2024-01-09 10:50:51', '2024-01-09 10:50:51'),
(126, 45, 120, '2024-01-09 10:50:51', '2024-01-09 10:50:51'),
(127, 46, 121, '2024-01-09 10:53:39', '2024-01-09 10:53:39'),
(128, 46, 122, '2024-01-09 10:53:39', '2024-01-09 10:53:39'),
(129, 46, 123, '2024-01-09 10:53:39', '2024-01-09 10:53:39'),
(130, 47, 122, '2024-01-09 10:58:16', '2024-01-09 10:58:16'),
(131, 47, 124, '2024-01-09 10:58:16', '2024-01-09 10:58:16'),
(132, 47, 125, '2024-01-09 10:58:16', '2024-01-09 10:58:16'),
(133, 48, 126, '2024-01-09 11:08:58', '2024-01-09 11:08:58'),
(134, 48, 127, '2024-01-09 11:08:58', '2024-01-09 11:08:58'),
(135, 48, 128, '2024-01-09 11:08:58', '2024-01-09 11:08:58'),
(136, 49, 129, '2024-01-09 11:13:05', '2024-01-09 11:13:05'),
(137, 49, 130, '2024-01-09 11:13:05', '2024-01-09 11:13:05'),
(138, 49, 131, '2024-01-09 11:13:05', '2024-01-09 11:13:05'),
(139, 50, 132, '2024-01-09 11:17:08', '2024-01-09 11:17:08'),
(140, 50, 133, '2024-01-09 11:17:08', '2024-01-09 11:17:08'),
(141, 50, 134, '2024-01-09 11:17:08', '2024-01-09 11:17:08'),
(142, 51, 135, '2024-01-09 11:25:21', '2024-01-09 11:25:21'),
(143, 51, 136, '2024-01-09 11:25:21', '2024-01-09 11:25:21'),
(144, 51, 137, '2024-01-09 11:25:21', '2024-01-09 11:25:21'),
(145, 52, 138, '2024-01-09 11:28:28', '2024-01-09 11:28:28'),
(146, 52, 139, '2024-01-09 11:28:28', '2024-01-09 11:28:28'),
(147, 52, 140, '2024-01-09 11:28:28', '2024-01-09 11:28:28'),
(148, 53, 141, '2024-01-10 05:21:32', '2024-01-10 05:21:32'),
(149, 53, 142, '2024-01-10 05:21:32', '2024-01-10 05:21:32'),
(150, 53, 143, '2024-01-10 05:21:32', '2024-01-10 05:21:32'),
(151, 54, 144, '2024-01-10 05:24:10', '2024-01-10 05:24:10'),
(152, 54, 145, '2024-01-10 05:24:10', '2024-01-10 05:24:10'),
(153, 54, 146, '2024-01-10 05:24:10', '2024-01-10 05:24:10'),
(154, 55, 147, '2024-01-10 05:26:48', '2024-01-10 05:26:48'),
(155, 55, 148, '2024-01-10 05:26:48', '2024-01-10 05:26:48'),
(156, 55, 149, '2024-01-10 05:26:48', '2024-01-10 05:26:48'),
(157, 56, 150, '2024-01-10 05:29:50', '2024-01-10 05:29:50'),
(158, 56, 151, '2024-01-10 05:29:50', '2024-01-10 05:29:50'),
(159, 56, 152, '2024-01-10 05:29:50', '2024-01-10 05:29:50'),
(160, 57, 153, '2024-01-10 05:33:39', '2024-01-10 05:33:39'),
(161, 57, 154, '2024-01-10 05:33:39', '2024-01-10 05:33:39'),
(162, 58, 155, '2024-01-10 05:37:37', '2024-01-10 05:37:37'),
(163, 58, 156, '2024-01-10 05:37:37', '2024-01-10 05:37:37'),
(164, 59, 157, '2024-01-10 05:40:26', '2024-01-10 05:40:26'),
(165, 59, 158, '2024-01-10 05:40:26', '2024-01-10 05:40:26'),
(166, 60, 159, '2024-01-10 05:42:49', '2024-01-10 05:42:49'),
(167, 60, 160, '2024-01-10 05:42:49', '2024-01-10 05:42:49'),
(168, 61, 161, '2024-01-10 05:45:51', '2024-01-10 05:45:51'),
(169, 61, 162, '2024-01-10 05:45:51', '2024-01-10 05:45:51'),
(170, 62, 163, '2024-01-10 05:48:30', '2024-01-10 05:48:30'),
(171, 62, 164, '2024-01-10 05:48:30', '2024-01-10 05:48:30'),
(172, 63, 165, '2024-01-13 07:09:05', '2024-01-13 07:09:05'),
(173, 63, 166, '2024-01-13 07:09:05', '2024-01-13 07:09:05'),
(174, 63, 167, '2024-01-13 07:09:05', '2024-01-13 07:09:05'),
(175, 64, 168, '2024-01-13 07:15:02', '2024-01-13 07:15:02'),
(176, 64, 169, '2024-01-13 07:15:02', '2024-01-13 07:15:02'),
(177, 64, 170, '2024-01-13 07:15:02', '2024-01-13 07:15:02'),
(178, 65, 166, '2024-01-13 07:18:18', '2024-01-13 07:18:18'),
(179, 65, 171, '2024-01-13 07:18:18', '2024-01-13 07:18:18'),
(180, 66, 166, '2024-01-13 07:24:22', '2024-01-13 07:24:22'),
(181, 67, 172, '2024-01-13 07:31:05', '2024-01-13 07:31:05'),
(182, 67, 173, '2024-01-13 07:31:05', '2024-01-13 07:31:05'),
(183, 67, 174, '2024-01-13 07:31:05', '2024-01-13 07:31:05'),
(184, 68, 175, '2024-01-13 07:35:14', '2024-01-13 07:35:14'),
(185, 68, 176, '2024-01-13 07:35:14', '2024-01-13 07:35:14'),
(186, 68, 177, '2024-01-13 07:35:14', '2024-01-13 07:35:14'),
(187, 69, 178, '2024-01-13 07:38:49', '2024-01-13 07:38:49'),
(188, 69, 179, '2024-01-13 07:38:49', '2024-01-13 07:38:49'),
(189, 70, 180, '2024-01-13 07:42:27', '2024-01-13 07:42:27'),
(190, 70, 181, '2024-01-13 07:42:27', '2024-01-13 07:42:27'),
(191, 70, 182, '2024-01-13 07:42:27', '2024-01-13 07:42:27'),
(192, 71, 183, '2024-01-13 07:47:31', '2024-01-13 07:47:31'),
(193, 71, 184, '2024-01-13 07:47:31', '2024-01-13 07:47:31'),
(194, 71, 185, '2024-01-13 07:47:31', '2024-01-13 07:47:31'),
(195, 72, 186, '2024-01-13 07:52:24', '2024-01-13 07:52:24'),
(196, 72, 187, '2024-01-13 07:52:24', '2024-01-13 07:52:24'),
(197, 72, 188, '2024-01-13 07:52:24', '2024-01-13 07:52:24'),
(198, 73, 189, '2024-01-14 22:31:51', '2024-01-14 22:31:51'),
(199, 73, 190, '2024-01-14 22:31:51', '2024-01-14 22:31:51'),
(200, 73, 191, '2024-01-14 22:31:51', '2024-01-14 22:31:51'),
(201, 74, 192, '2024-01-14 22:34:28', '2024-01-14 22:34:28'),
(202, 74, 193, '2024-01-14 22:34:28', '2024-01-14 22:34:28'),
(203, 74, 194, '2024-01-14 22:34:28', '2024-01-14 22:34:28'),
(204, 75, 195, '2024-01-14 22:37:41', '2024-01-14 22:37:41'),
(205, 75, 196, '2024-01-14 22:37:41', '2024-01-14 22:37:41'),
(206, 75, 197, '2024-01-14 22:37:41', '2024-01-14 22:37:41'),
(207, 76, 24, '2024-01-14 22:42:34', '2024-01-14 22:42:34'),
(208, 76, 25, '2024-01-14 22:42:34', '2024-01-14 22:42:34'),
(209, 76, 200, '2024-01-14 22:42:34', '2024-01-14 22:42:34'),
(210, 77, 201, '2024-01-14 22:45:00', '2024-01-14 22:45:00'),
(211, 77, 202, '2024-01-14 22:45:00', '2024-01-14 22:45:00'),
(212, 78, 203, '2024-01-14 23:02:49', '2024-01-14 23:02:49'),
(213, 78, 204, '2024-01-14 23:02:49', '2024-01-14 23:02:49'),
(214, 78, 205, '2024-01-14 23:02:49', '2024-01-14 23:02:49'),
(215, 79, 206, '2024-01-14 23:06:56', '2024-01-14 23:06:56'),
(216, 79, 207, '2024-01-14 23:06:56', '2024-01-14 23:06:56'),
(217, 79, 208, '2024-01-14 23:06:56', '2024-01-14 23:06:56'),
(218, 80, 209, '2024-01-14 23:09:11', '2024-01-14 23:09:11'),
(219, 80, 210, '2024-01-14 23:09:11', '2024-01-14 23:09:11'),
(220, 80, 211, '2024-01-14 23:09:11', '2024-01-14 23:09:11'),
(221, 81, 212, '2024-01-14 23:11:29', '2024-01-14 23:11:29'),
(222, 81, 213, '2024-01-14 23:11:29', '2024-01-14 23:11:29'),
(223, 81, 214, '2024-01-14 23:11:29', '2024-01-14 23:11:29'),
(224, 82, 203, '2024-01-14 23:18:07', '2024-01-14 23:18:07'),
(225, 82, 215, '2024-01-14 23:18:07', '2024-01-14 23:18:07'),
(226, 83, 216, '2024-01-14 23:34:30', '2024-01-14 23:34:30'),
(227, 83, 217, '2024-01-14 23:34:30', '2024-01-14 23:34:30'),
(228, 84, 216, '2024-01-14 23:37:12', '2024-01-14 23:37:12'),
(229, 84, 217, '2024-01-14 23:37:12', '2024-01-14 23:37:12'),
(230, 84, 218, '2024-01-14 23:37:12', '2024-01-14 23:37:12'),
(231, 84, 219, '2024-01-14 23:37:12', '2024-01-14 23:37:12'),
(232, 85, 220, '2024-01-14 23:39:20', '2024-01-14 23:39:20'),
(233, 85, 221, '2024-01-14 23:39:20', '2024-01-14 23:39:20'),
(234, 85, 222, '2024-01-14 23:39:20', '2024-01-14 23:39:20'),
(235, 86, 223, '2024-01-14 23:42:17', '2024-01-14 23:42:17'),
(236, 86, 224, '2024-01-14 23:42:17', '2024-01-14 23:42:17'),
(237, 87, 225, '2024-01-14 23:46:49', '2024-01-14 23:46:49'),
(238, 87, 226, '2024-01-14 23:46:49', '2024-01-14 23:46:49'),
(239, 88, 227, '2024-01-15 00:24:16', '2024-01-15 00:24:16'),
(240, 88, 228, '2024-01-15 00:24:16', '2024-01-15 00:24:16'),
(241, 88, 229, '2024-01-15 00:24:16', '2024-01-15 00:24:16'),
(242, 89, 230, '2024-01-15 00:27:11', '2024-01-15 00:27:11'),
(243, 89, 231, '2024-01-15 00:27:11', '2024-01-15 00:27:11'),
(244, 89, 232, '2024-01-15 00:27:11', '2024-01-15 00:27:11'),
(245, 90, 235, '2024-01-15 00:37:16', '2024-01-15 00:37:16'),
(246, 90, 236, '2024-01-15 00:37:16', '2024-01-15 00:37:16'),
(247, 90, 237, '2024-01-15 00:37:16', '2024-01-15 00:37:16'),
(248, 91, 235, '2024-01-15 00:40:03', '2024-01-15 00:40:03'),
(249, 91, 238, '2024-01-15 00:40:03', '2024-01-15 00:40:03'),
(250, 91, 239, '2024-01-15 00:40:03', '2024-01-15 00:40:03'),
(251, 92, 229, '2024-01-15 00:42:38', '2024-01-15 00:42:38'),
(252, 92, 233, '2024-01-15 00:42:38', '2024-01-15 00:42:38'),
(253, 92, 234, '2024-01-15 00:42:38', '2024-01-15 00:42:38'),
(254, 93, 240, '2024-01-15 02:02:02', '2024-01-15 02:02:02'),
(255, 93, 241, '2024-01-15 02:02:02', '2024-01-15 02:02:02'),
(256, 93, 242, '2024-01-15 02:02:02', '2024-01-15 02:02:02'),
(257, 94, 243, '2024-01-15 02:05:33', '2024-01-15 02:05:33'),
(258, 94, 244, '2024-01-15 02:05:33', '2024-01-15 02:05:33'),
(259, 95, 245, '2024-01-15 02:08:07', '2024-01-15 02:08:07'),
(260, 95, 246, '2024-01-15 02:08:07', '2024-01-15 02:08:07'),
(261, 95, 247, '2024-01-15 02:08:07', '2024-01-15 02:08:07'),
(262, 96, 248, '2024-01-15 02:11:47', '2024-01-15 02:11:47'),
(263, 96, 249, '2024-01-15 02:11:47', '2024-01-15 02:11:47'),
(264, 96, 250, '2024-01-15 02:11:47', '2024-01-15 02:11:47'),
(265, 97, 240, '2024-01-15 02:14:48', '2024-01-15 02:14:48'),
(266, 97, 241, '2024-01-15 02:14:48', '2024-01-15 02:14:48'),
(267, 97, 251, '2024-01-15 02:14:48', '2024-01-15 02:14:48'),
(268, 98, 252, '2024-01-15 02:17:47', '2024-01-15 02:17:47'),
(269, 98, 253, '2024-01-15 02:17:47', '2024-01-15 02:17:47'),
(270, 98, 254, '2024-01-15 02:17:47', '2024-01-15 02:17:47'),
(271, 99, 255, '2024-01-15 02:23:50', '2024-01-15 02:23:50'),
(272, 100, 256, '2024-01-15 02:36:47', '2024-01-15 02:36:47'),
(273, 100, 257, '2024-01-15 02:36:47', '2024-01-15 02:36:47'),
(274, 101, 258, '2024-01-15 02:40:39', '2024-01-15 02:40:39'),
(275, 101, 259, '2024-01-15 02:40:39', '2024-01-15 02:40:39'),
(276, 101, 260, '2024-01-15 02:40:39', '2024-01-15 02:40:39'),
(277, 102, 261, '2024-01-15 02:43:54', '2024-01-15 02:43:54'),
(278, 102, 262, '2024-01-15 02:43:54', '2024-01-15 02:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `movie_countries`
--

CREATE TABLE `movie_countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_countries`
--

INSERT INTO `movie_countries` (`id`, `movie_id`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-01-08 01:39:13', '2024-01-08 01:39:13'),
(2, 3, 1, '2024-01-08 02:05:30', '2024-01-08 02:05:30'),
(3, 4, 1, '2024-01-08 02:06:02', '2024-01-08 02:06:02'),
(4, 5, 1, '2024-01-08 02:08:28', '2024-01-08 02:08:28'),
(5, 6, 1, '2024-01-08 02:12:40', '2024-01-08 02:12:40'),
(6, 7, 1, '2024-01-08 02:15:52', '2024-01-08 02:15:52'),
(7, 8, 2, '2024-01-08 09:30:24', '2024-01-08 09:30:24'),
(8, 9, 2, '2024-01-08 09:35:00', '2024-01-08 09:35:00'),
(9, 10, 2, '2024-01-08 09:38:02', '2024-01-08 09:38:02'),
(10, 11, 2, '2024-01-08 09:41:27', '2024-01-08 09:41:27'),
(11, 12, 2, '2024-01-08 09:44:10', '2024-01-08 09:44:10'),
(12, 13, 3, '2024-01-08 12:08:05', '2024-01-08 12:08:05'),
(13, 14, 3, '2024-01-08 12:10:58', '2024-01-08 12:10:58'),
(14, 15, 1, '2024-01-08 12:42:12', '2024-01-08 12:42:12'),
(15, 16, 3, '2024-01-08 12:45:26', '2024-01-08 12:45:26'),
(16, 17, 3, '2024-01-08 12:54:57', '2024-01-08 12:54:57'),
(17, 18, 4, '2024-01-08 13:59:38', '2024-01-08 13:59:38'),
(18, 19, 4, '2024-01-08 14:03:54', '2024-01-08 14:03:54'),
(19, 20, 4, '2024-01-08 14:11:48', '2024-01-08 14:11:48'),
(20, 21, 4, '2024-01-08 14:23:11', '2024-01-08 14:23:11'),
(21, 22, 4, '2024-01-08 14:27:55', '2024-01-08 14:27:55'),
(22, 23, 5, '2024-01-09 02:53:57', '2024-01-09 02:53:57'),
(23, 24, 7, '2024-01-09 02:57:23', '2024-01-09 02:57:23'),
(24, 25, 7, '2024-01-09 03:01:07', '2024-01-09 03:01:07'),
(25, 26, 5, '2024-01-09 03:09:12', '2024-01-09 03:09:12'),
(26, 27, 8, '2024-01-09 03:30:47', '2024-01-09 03:30:47'),
(27, 28, 6, '2024-01-09 03:34:23', '2024-01-09 03:34:23'),
(28, 29, 6, '2024-01-09 03:40:27', '2024-01-09 03:40:27'),
(29, 30, 6, '2024-01-09 03:46:18', '2024-01-09 03:46:18'),
(30, 31, 6, '2024-01-09 03:50:07', '2024-01-09 03:50:07'),
(31, 32, 6, '2024-01-09 03:53:44', '2024-01-09 03:53:44'),
(32, 33, 9, '2024-01-09 04:48:09', '2024-01-09 04:48:09'),
(33, 34, 9, '2024-01-09 04:50:52', '2024-01-09 04:50:52'),
(34, 35, 9, '2024-01-09 04:54:24', '2024-01-09 04:54:24'),
(35, 36, 9, '2024-01-09 05:05:59', '2024-01-09 05:05:59'),
(36, 37, 9, '2024-01-09 05:09:01', '2024-01-09 05:09:01'),
(37, 38, 10, '2024-01-09 05:12:41', '2024-01-09 05:12:41'),
(38, 39, 11, '2024-01-09 05:16:41', '2024-01-09 05:16:41'),
(39, 40, 11, '2024-01-09 05:20:25', '2024-01-09 05:20:25'),
(40, 41, 10, '2024-01-09 05:22:55', '2024-01-09 05:22:55'),
(41, 42, 10, '2024-01-09 05:25:53', '2024-01-09 05:25:53'),
(42, 43, 12, '2024-01-09 10:43:11', '2024-01-09 10:43:11'),
(43, 44, 12, '2024-01-09 10:45:50', '2024-01-09 10:45:50'),
(44, 45, 12, '2024-01-09 10:50:51', '2024-01-09 10:50:51'),
(45, 46, 12, '2024-01-09 10:53:39', '2024-01-09 10:53:39'),
(46, 47, 12, '2024-01-09 10:58:16', '2024-01-09 10:58:16'),
(47, 48, 13, '2024-01-09 11:08:58', '2024-01-09 11:08:58'),
(48, 49, 13, '2024-01-09 11:13:05', '2024-01-09 11:13:05'),
(49, 50, 13, '2024-01-09 11:17:08', '2024-01-09 11:17:08'),
(50, 51, 13, '2024-01-09 11:25:21', '2024-01-09 11:25:21'),
(51, 52, 13, '2024-01-09 11:28:28', '2024-01-09 11:28:28'),
(52, 53, 14, '2024-01-10 05:21:32', '2024-01-10 05:21:32'),
(53, 54, 14, '2024-01-10 05:24:10', '2024-01-10 05:24:10'),
(54, 55, 14, '2024-01-10 05:26:48', '2024-01-10 05:26:48'),
(55, 56, 14, '2024-01-10 05:29:50', '2024-01-10 05:29:50'),
(56, 57, 14, '2024-01-10 05:33:39', '2024-01-10 05:33:39'),
(57, 58, 15, '2024-01-10 05:37:37', '2024-01-10 05:37:37'),
(58, 59, 15, '2024-01-10 05:40:26', '2024-01-10 05:40:26'),
(59, 60, 15, '2024-01-10 05:42:48', '2024-01-10 05:42:48'),
(60, 61, 15, '2024-01-10 05:45:51', '2024-01-10 05:45:51'),
(61, 62, 15, '2024-01-10 05:48:30', '2024-01-10 05:48:30'),
(62, 63, 16, '2024-01-13 07:09:05', '2024-01-13 07:09:05'),
(63, 64, 16, '2024-01-13 07:15:02', '2024-01-13 07:15:02'),
(64, 65, 16, '2024-01-13 07:18:18', '2024-01-13 07:18:18'),
(65, 66, 16, '2024-01-13 07:24:22', '2024-01-13 07:24:22'),
(66, 67, 16, '2024-01-13 07:31:05', '2024-01-13 07:31:05'),
(67, 68, 19, '2024-01-13 07:35:14', '2024-01-13 07:35:14'),
(68, 69, 17, '2024-01-13 07:38:49', '2024-01-13 07:38:49'),
(69, 70, 18, '2024-01-13 07:42:27', '2024-01-13 07:42:27'),
(70, 71, 19, '2024-01-13 07:47:31', '2024-01-13 07:47:31'),
(71, 72, 20, '2024-01-13 07:52:24', '2024-01-13 07:52:24'),
(72, 73, 21, '2024-01-14 22:31:51', '2024-01-14 22:31:51'),
(73, 74, 21, '2024-01-14 22:34:28', '2024-01-14 22:34:28'),
(74, 75, 21, '2024-01-14 22:37:41', '2024-01-14 22:37:41'),
(75, 76, 21, '2024-01-14 22:42:34', '2024-01-14 22:42:34'),
(76, 77, 21, '2024-01-14 22:45:00', '2024-01-14 22:45:00'),
(77, 78, 22, '2024-01-14 23:02:49', '2024-01-14 23:02:49'),
(78, 79, 22, '2024-01-14 23:06:56', '2024-01-14 23:06:56'),
(79, 80, 22, '2024-01-14 23:09:11', '2024-01-14 23:09:11'),
(80, 81, 22, '2024-01-14 23:11:29', '2024-01-14 23:11:29'),
(81, 82, 22, '2024-01-14 23:18:07', '2024-01-14 23:18:07'),
(82, 83, 23, '2024-01-14 23:34:30', '2024-01-14 23:34:30'),
(83, 84, 23, '2024-01-14 23:37:12', '2024-01-14 23:37:12'),
(84, 85, 23, '2024-01-14 23:39:20', '2024-01-14 23:39:20'),
(85, 86, 23, '2024-01-14 23:42:17', '2024-01-14 23:42:17'),
(86, 87, 23, '2024-01-14 23:46:49', '2024-01-14 23:46:49'),
(87, 88, 24, '2024-01-15 00:24:16', '2024-01-15 00:24:16'),
(88, 88, 25, '2024-01-15 00:24:16', '2024-01-15 00:24:16'),
(89, 88, 26, '2024-01-15 00:24:16', '2024-01-15 00:24:16'),
(90, 89, 24, '2024-01-15 00:27:11', '2024-01-15 00:27:11'),
(91, 89, 25, '2024-01-15 00:27:11', '2024-01-15 00:27:11'),
(92, 90, 24, '2024-01-15 00:37:16', '2024-01-15 00:37:16'),
(93, 90, 25, '2024-01-15 00:37:16', '2024-01-15 00:37:16'),
(94, 90, 26, '2024-01-15 00:37:16', '2024-01-15 00:37:16'),
(95, 91, 24, '2024-01-15 00:40:03', '2024-01-15 00:40:03'),
(96, 91, 25, '2024-01-15 00:40:03', '2024-01-15 00:40:03'),
(97, 92, 24, '2024-01-15 00:42:38', '2024-01-15 00:42:38'),
(98, 92, 25, '2024-01-15 00:42:38', '2024-01-15 00:42:38'),
(99, 93, 27, '2024-01-15 02:02:02', '2024-01-15 02:02:02'),
(100, 94, 27, '2024-01-15 02:05:33', '2024-01-15 02:05:33'),
(101, 95, 27, '2024-01-15 02:08:07', '2024-01-15 02:08:07'),
(102, 96, 27, '2024-01-15 02:11:47', '2024-01-15 02:11:47'),
(103, 97, 27, '2024-01-15 02:14:48', '2024-01-15 02:14:48'),
(104, 98, 28, '2024-01-15 02:17:47', '2024-01-15 02:17:47'),
(105, 99, 28, '2024-01-15 02:23:50', '2024-01-15 02:23:50'),
(106, 100, 28, '2024-01-15 02:36:47', '2024-01-15 02:36:47'),
(107, 101, 28, '2024-01-15 02:40:39', '2024-01-15 02:40:39'),
(108, 102, 28, '2024-01-15 02:43:54', '2024-01-15 02:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `movie_directors`
--

CREATE TABLE `movie_directors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` int(11) NOT NULL,
  `director_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_directors`
--

INSERT INTO `movie_directors` (`id`, `movie_id`, `director_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-01-08 01:42:41', '2024-01-08 01:42:41'),
(2, 3, 2, '2024-01-08 02:05:31', '2024-01-08 02:05:31'),
(4, 5, 2, '2024-01-08 02:08:28', '2024-01-08 02:08:28'),
(5, 6, 3, '2024-01-08 02:12:40', '2024-01-08 02:12:40'),
(6, 7, 4, '2024-01-08 02:15:52', '2024-01-08 02:15:52'),
(7, 8, 5, '2024-01-08 09:30:24', '2024-01-08 09:30:24'),
(8, 9, 6, '2024-01-08 09:35:00', '2024-01-08 09:35:00'),
(9, 10, 7, '2024-01-08 09:38:02', '2024-01-08 09:38:02'),
(10, 11, 8, '2024-01-08 09:41:28', '2024-01-08 09:41:28'),
(11, 12, 9, '2024-01-08 09:44:10', '2024-01-08 09:44:10'),
(12, 13, 10, '2024-01-08 12:08:05', '2024-01-08 12:08:05'),
(13, 14, 11, '2024-01-08 12:10:58', '2024-01-08 12:10:58'),
(14, 15, 12, '2024-01-08 12:42:13', '2024-01-08 12:42:13'),
(15, 16, 13, '2024-01-08 12:45:26', '2024-01-08 12:45:26'),
(16, 17, 14, '2024-01-08 12:54:57', '2024-01-08 12:54:57'),
(17, 18, 17, '2024-01-08 13:59:38', '2024-01-08 13:59:38'),
(18, 19, 17, '2024-01-08 14:03:54', '2024-01-08 14:03:54'),
(19, 20, 15, '2024-01-08 14:11:48', '2024-01-08 14:11:48'),
(20, 21, 16, '2024-01-08 14:23:11', '2024-01-08 14:23:11'),
(21, 22, 16, '2024-01-08 14:27:55', '2024-01-08 14:27:55'),
(22, 23, 18, '2024-01-09 02:53:57', '2024-01-09 02:53:57'),
(23, 24, 19, '2024-01-09 02:57:24', '2024-01-09 02:57:24'),
(24, 25, 20, '2024-01-09 03:01:07', '2024-01-09 03:01:07'),
(25, 25, 21, '2024-01-09 03:01:07', '2024-01-09 03:01:07'),
(26, 26, 22, '2024-01-09 03:09:12', '2024-01-09 03:09:12'),
(27, 27, 23, '2024-01-09 03:30:47', '2024-01-09 03:30:47'),
(28, 28, 24, '2024-01-09 03:34:23', '2024-01-09 03:34:23'),
(29, 29, 25, '2024-01-09 03:40:27', '2024-01-09 03:40:27'),
(30, 30, 26, '2024-01-09 03:46:18', '2024-01-09 03:46:18'),
(31, 31, 27, '2024-01-09 03:50:07', '2024-01-09 03:50:07'),
(32, 32, 28, '2024-01-09 03:53:44', '2024-01-09 03:53:44'),
(33, 32, 29, '2024-01-09 03:53:44', '2024-01-09 03:53:44'),
(34, 33, 30, '2024-01-09 04:48:09', '2024-01-09 04:48:09'),
(35, 34, 30, '2024-01-09 04:50:52', '2024-01-09 04:50:52'),
(36, 35, 31, '2024-01-09 04:54:24', '2024-01-09 04:54:24'),
(37, 36, 32, '2024-01-09 05:06:00', '2024-01-09 05:06:00'),
(38, 37, 32, '2024-01-09 05:09:01', '2024-01-09 05:09:01'),
(39, 38, 33, '2024-01-09 05:12:41', '2024-01-09 05:12:41'),
(40, 39, 34, '2024-01-09 05:16:41', '2024-01-09 05:16:41'),
(41, 40, 18, '2024-01-09 05:20:25', '2024-01-09 05:20:25'),
(42, 41, 33, '2024-01-09 05:22:55', '2024-01-09 05:22:55'),
(43, 42, 34, '2024-01-09 05:25:54', '2024-01-09 05:25:54'),
(44, 43, 36, '2024-01-09 10:43:11', '2024-01-09 10:43:11'),
(45, 44, 37, '2024-01-09 10:45:50', '2024-01-09 10:45:50'),
(46, 45, 38, '2024-01-09 10:50:51', '2024-01-09 10:50:51'),
(47, 46, 39, '2024-01-09 10:53:39', '2024-01-09 10:53:39'),
(48, 47, 41, '2024-01-09 10:58:16', '2024-01-09 10:58:16'),
(49, 48, 42, '2024-01-09 11:08:58', '2024-01-09 11:08:58'),
(50, 49, 43, '2024-01-09 11:13:05', '2024-01-09 11:13:05'),
(51, 50, 44, '2024-01-09 11:17:08', '2024-01-09 11:17:08'),
(52, 51, 19, '2024-01-09 11:25:21', '2024-01-09 11:25:21'),
(53, 51, 45, '2024-01-09 11:25:21', '2024-01-09 11:25:21'),
(54, 52, 45, '2024-01-09 11:28:28', '2024-01-09 11:28:28'),
(55, 53, 46, '2024-01-10 05:21:32', '2024-01-10 05:21:32'),
(56, 54, 47, '2024-01-10 05:24:10', '2024-01-10 05:24:10'),
(57, 55, 48, '2024-01-10 05:26:48', '2024-01-10 05:26:48'),
(58, 56, 49, '2024-01-10 05:29:50', '2024-01-10 05:29:50'),
(59, 57, 47, '2024-01-10 05:33:39', '2024-01-10 05:33:39'),
(60, 58, 51, '2024-01-10 05:37:37', '2024-01-10 05:37:37'),
(61, 59, 52, '2024-01-10 05:40:26', '2024-01-10 05:40:26'),
(62, 60, 53, '2024-01-10 05:42:49', '2024-01-10 05:42:49'),
(63, 60, 54, '2024-01-10 05:42:49', '2024-01-10 05:42:49'),
(64, 61, 55, '2024-01-10 05:45:51', '2024-01-10 05:45:51'),
(65, 62, 56, '2024-01-10 05:48:30', '2024-01-10 05:48:30'),
(66, 63, 57, '2024-01-13 07:09:05', '2024-01-13 07:09:05'),
(67, 64, 57, '2024-01-13 07:15:02', '2024-01-13 07:15:02'),
(68, 65, 57, '2024-01-13 07:18:18', '2024-01-13 07:18:18'),
(69, 66, 57, '2024-01-13 07:24:22', '2024-01-13 07:24:22'),
(70, 67, 58, '2024-01-13 07:31:05', '2024-01-13 07:31:05'),
(71, 68, 59, '2024-01-13 07:35:14', '2024-01-13 07:35:14'),
(72, 69, 60, '2024-01-13 07:38:49', '2024-01-13 07:38:49'),
(73, 70, 61, '2024-01-13 07:42:27', '2024-01-13 07:42:27'),
(74, 71, 59, '2024-01-13 07:47:31', '2024-01-13 07:47:31'),
(75, 72, 62, '2024-01-13 07:52:24', '2024-01-13 07:52:24'),
(76, 73, 63, '2024-01-14 22:31:51', '2024-01-14 22:31:51'),
(77, 74, 63, '2024-01-14 22:34:28', '2024-01-14 22:34:28'),
(78, 75, 64, '2024-01-14 22:37:41', '2024-01-14 22:37:41'),
(79, 76, 8, '2024-01-14 22:42:34', '2024-01-14 22:42:34'),
(80, 77, 65, '2024-01-14 22:45:00', '2024-01-14 22:45:00'),
(81, 78, 66, '2024-01-14 23:02:49', '2024-01-14 23:02:49'),
(82, 79, 67, '2024-01-14 23:06:56', '2024-01-14 23:06:56'),
(83, 80, 67, '2024-01-14 23:09:11', '2024-01-14 23:09:11'),
(84, 81, 68, '2024-01-14 23:11:29', '2024-01-14 23:11:29'),
(85, 82, 66, '2024-01-14 23:18:07', '2024-01-14 23:18:07'),
(86, 83, 69, '2024-01-14 23:34:30', '2024-01-14 23:34:30'),
(87, 84, 70, '2024-01-14 23:37:12', '2024-01-14 23:37:12'),
(88, 85, 71, '2024-01-14 23:39:20', '2024-01-14 23:39:20'),
(89, 86, 72, '2024-01-14 23:42:17', '2024-01-14 23:42:17'),
(90, 87, 73, '2024-01-14 23:46:49', '2024-01-14 23:46:49'),
(91, 88, 74, '2024-01-15 00:24:16', '2024-01-15 00:24:16'),
(92, 89, 75, '2024-01-15 00:27:11', '2024-01-15 00:27:11'),
(93, 90, 75, '2024-01-15 00:37:16', '2024-01-15 00:37:16'),
(94, 91, 76, '2024-01-15 00:40:03', '2024-01-15 00:40:03'),
(95, 92, 75, '2024-01-15 00:42:38', '2024-01-15 00:42:38'),
(96, 93, 77, '2024-01-15 02:02:02', '2024-01-15 02:02:02'),
(97, 94, 78, '2024-01-15 02:05:33', '2024-01-15 02:05:33'),
(98, 94, 79, '2024-01-15 02:05:33', '2024-01-15 02:05:33'),
(99, 95, 80, '2024-01-15 02:08:07', '2024-01-15 02:08:07'),
(100, 96, 81, '2024-01-15 02:11:47', '2024-01-15 02:11:47'),
(101, 97, 77, '2024-01-15 02:14:48', '2024-01-15 02:14:48'),
(102, 98, 82, '2024-01-15 02:17:47', '2024-01-15 02:17:47'),
(103, 99, 83, '2024-01-15 02:23:50', '2024-01-15 02:23:50'),
(104, 100, 84, '2024-01-15 02:36:47', '2024-01-15 02:36:47'),
(105, 101, 85, '2024-01-15 02:40:39', '2024-01-15 02:40:39'),
(106, 102, 86, '2024-01-15 02:43:54', '2024-01-15 02:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `movie_genres`
--

CREATE TABLE `movie_genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_genres`
--

INSERT INTO `movie_genres` (`id`, `movie_id`, `genre_id`, `created_at`, `updated_at`) VALUES
(1, 1, 10, '2024-01-08 01:41:45', '2024-01-08 01:41:45'),
(2, 3, 1, '2024-01-08 02:05:30', '2024-01-08 02:05:30'),
(3, 3, 7, '2024-01-08 02:05:30', '2024-01-08 02:05:30'),
(4, 3, 10, '2024-01-08 02:05:30', '2024-01-08 02:05:30'),
(8, 5, 1, '2024-01-08 02:08:28', '2024-01-08 02:08:28'),
(9, 5, 2, '2024-01-08 02:08:28', '2024-01-08 02:08:28'),
(10, 5, 4, '2024-01-08 02:08:28', '2024-01-08 02:08:28'),
(11, 6, 7, '2024-01-08 02:12:40', '2024-01-08 02:12:40'),
(12, 6, 10, '2024-01-08 02:12:40', '2024-01-08 02:12:40'),
(13, 7, 7, '2024-01-08 02:15:52', '2024-01-08 02:15:52'),
(14, 7, 10, '2024-01-08 02:15:52', '2024-01-08 02:15:52'),
(15, 8, 8, '2024-01-08 09:30:24', '2024-01-08 09:30:24'),
(16, 8, 10, '2024-01-08 09:30:24', '2024-01-08 09:30:24'),
(17, 9, 10, '2024-01-08 09:35:00', '2024-01-08 09:35:00'),
(18, 9, 11, '2024-01-08 09:35:00', '2024-01-08 09:35:00'),
(19, 9, 12, '2024-01-08 09:35:00', '2024-01-08 09:35:00'),
(20, 10, 1, '2024-01-08 09:38:02', '2024-01-08 09:38:02'),
(21, 10, 7, '2024-01-08 09:38:02', '2024-01-08 09:38:02'),
(22, 10, 10, '2024-01-08 09:38:02', '2024-01-08 09:38:02'),
(23, 11, 10, '2024-01-08 09:41:28', '2024-01-08 09:41:28'),
(24, 11, 11, '2024-01-08 09:41:28', '2024-01-08 09:41:28'),
(25, 12, 6, '2024-01-08 09:44:10', '2024-01-08 09:44:10'),
(26, 12, 8, '2024-01-08 09:44:10', '2024-01-08 09:44:10'),
(27, 13, 5, '2024-01-08 12:08:05', '2024-01-08 12:08:05'),
(28, 13, 21, '2024-01-08 12:08:05', '2024-01-08 12:08:05'),
(29, 14, 9, '2024-01-08 12:10:58', '2024-01-08 12:10:58'),
(30, 14, 11, '2024-01-08 12:10:58', '2024-01-08 12:10:58'),
(31, 15, 6, '2024-01-08 12:42:12', '2024-01-08 12:42:12'),
(32, 15, 7, '2024-01-08 12:42:12', '2024-01-08 12:42:12'),
(33, 15, 8, '2024-01-08 12:42:12', '2024-01-08 12:42:12'),
(34, 16, 10, '2024-01-08 12:45:26', '2024-01-08 12:45:26'),
(35, 16, 12, '2024-01-08 12:45:26', '2024-01-08 12:45:26'),
(36, 17, 8, '2024-01-08 12:54:57', '2024-01-08 12:54:57'),
(37, 17, 12, '2024-01-08 12:54:57', '2024-01-08 12:54:57'),
(38, 18, 1, '2024-01-08 13:59:38', '2024-01-08 13:59:38'),
(39, 18, 2, '2024-01-08 13:59:38', '2024-01-08 13:59:38'),
(40, 19, 7, '2024-01-08 14:03:54', '2024-01-08 14:03:54'),
(41, 19, 8, '2024-01-08 14:03:54', '2024-01-08 14:03:54'),
(42, 20, 8, '2024-01-08 14:11:48', '2024-01-08 14:11:48'),
(43, 21, 2, '2024-01-08 14:23:11', '2024-01-08 14:23:11'),
(44, 21, 8, '2024-01-08 14:23:11', '2024-01-08 14:23:11'),
(45, 21, 12, '2024-01-08 14:23:11', '2024-01-08 14:23:11'),
(46, 22, 11, '2024-01-08 14:27:55', '2024-01-08 14:27:55'),
(47, 22, 12, '2024-01-08 14:27:55', '2024-01-08 14:27:55'),
(48, 23, 2, '2024-01-09 02:53:57', '2024-01-09 02:53:57'),
(49, 23, 11, '2024-01-09 02:53:57', '2024-01-09 02:53:57'),
(50, 24, 2, '2024-01-09 02:57:24', '2024-01-09 02:57:24'),
(51, 24, 6, '2024-01-09 02:57:24', '2024-01-09 02:57:24'),
(52, 25, 7, '2024-01-09 03:01:07', '2024-01-09 03:01:07'),
(53, 25, 8, '2024-01-09 03:01:07', '2024-01-09 03:01:07'),
(54, 26, 18, '2024-01-09 03:09:12', '2024-01-09 03:09:12'),
(55, 26, 21, '2024-01-09 03:09:12', '2024-01-09 03:09:12'),
(56, 27, 6, '2024-01-09 03:30:47', '2024-01-09 03:30:47'),
(57, 27, 8, '2024-01-09 03:30:47', '2024-01-09 03:30:47'),
(58, 28, 1, '2024-01-09 03:34:23', '2024-01-09 03:34:23'),
(59, 28, 8, '2024-01-09 03:34:23', '2024-01-09 03:34:23'),
(60, 29, 10, '2024-01-09 03:40:27', '2024-01-09 03:40:27'),
(61, 29, 11, '2024-01-09 03:40:27', '2024-01-09 03:40:27'),
(62, 30, 6, '2024-01-09 03:46:18', '2024-01-09 03:46:18'),
(63, 30, 9, '2024-01-09 03:46:18', '2024-01-09 03:46:18'),
(64, 31, 10, '2024-01-09 03:50:07', '2024-01-09 03:50:07'),
(65, 31, 11, '2024-01-09 03:50:07', '2024-01-09 03:50:07'),
(66, 32, 9, '2024-01-09 03:53:44', '2024-01-09 03:53:44'),
(67, 33, 3, '2024-01-09 04:48:09', '2024-01-09 04:48:09'),
(68, 33, 11, '2024-01-09 04:48:09', '2024-01-09 04:48:09'),
(69, 34, 8, '2024-01-09 04:50:52', '2024-01-09 04:50:52'),
(70, 34, 10, '2024-01-09 04:50:52', '2024-01-09 04:50:52'),
(71, 35, 8, '2024-01-09 04:54:24', '2024-01-09 04:54:24'),
(72, 35, 12, '2024-01-09 04:54:24', '2024-01-09 04:54:24'),
(73, 36, 3, '2024-01-09 05:05:59', '2024-01-09 05:05:59'),
(74, 36, 21, '2024-01-09 05:05:59', '2024-01-09 05:05:59'),
(75, 37, 8, '2024-01-09 05:09:01', '2024-01-09 05:09:01'),
(76, 37, 19, '2024-01-09 05:09:01', '2024-01-09 05:09:01'),
(77, 38, 10, '2024-01-09 05:12:41', '2024-01-09 05:12:41'),
(78, 38, 12, '2024-01-09 05:12:41', '2024-01-09 05:12:41'),
(79, 38, 14, '2024-01-09 05:12:41', '2024-01-09 05:12:41'),
(80, 39, 10, '2024-01-09 05:16:41', '2024-01-09 05:16:41'),
(81, 39, 11, '2024-01-09 05:16:41', '2024-01-09 05:16:41'),
(82, 39, 12, '2024-01-09 05:16:41', '2024-01-09 05:16:41'),
(83, 40, 10, '2024-01-09 05:20:25', '2024-01-09 05:20:25'),
(84, 40, 12, '2024-01-09 05:20:25', '2024-01-09 05:20:25'),
(85, 41, 3, '2024-01-09 05:22:55', '2024-01-09 05:22:55'),
(86, 41, 12, '2024-01-09 05:22:55', '2024-01-09 05:22:55'),
(87, 42, 3, '2024-01-09 05:25:53', '2024-01-09 05:25:53'),
(88, 42, 12, '2024-01-09 05:25:53', '2024-01-09 05:25:53'),
(89, 43, 10, '2024-01-09 10:43:11', '2024-01-09 10:43:11'),
(90, 43, 12, '2024-01-09 10:43:11', '2024-01-09 10:43:11'),
(91, 44, 8, '2024-01-09 10:45:50', '2024-01-09 10:45:50'),
(92, 44, 10, '2024-01-09 10:45:50', '2024-01-09 10:45:50'),
(93, 45, 3, '2024-01-09 10:50:51', '2024-01-09 10:50:51'),
(94, 45, 12, '2024-01-09 10:50:51', '2024-01-09 10:50:51'),
(95, 46, 10, '2024-01-09 10:53:39', '2024-01-09 10:53:39'),
(96, 47, 7, '2024-01-09 10:58:16', '2024-01-09 10:58:16'),
(97, 47, 10, '2024-01-09 10:58:16', '2024-01-09 10:58:16'),
(98, 48, 3, '2024-01-09 11:08:58', '2024-01-09 11:08:58'),
(99, 48, 5, '2024-01-09 11:08:58', '2024-01-09 11:08:58'),
(100, 49, 6, '2024-01-09 11:13:05', '2024-01-09 11:13:05'),
(101, 49, 8, '2024-01-09 11:13:05', '2024-01-09 11:13:05'),
(102, 49, 9, '2024-01-09 11:13:05', '2024-01-09 11:13:05'),
(103, 50, 6, '2024-01-09 11:17:08', '2024-01-09 11:17:08'),
(104, 50, 7, '2024-01-09 11:17:08', '2024-01-09 11:17:08'),
(105, 50, 8, '2024-01-09 11:17:08', '2024-01-09 11:17:08'),
(106, 51, 7, '2024-01-09 11:25:21', '2024-01-09 11:25:21'),
(107, 51, 12, '2024-01-09 11:25:21', '2024-01-09 11:25:21'),
(108, 52, 4, '2024-01-09 11:28:28', '2024-01-09 11:28:28'),
(109, 52, 8, '2024-01-09 11:28:28', '2024-01-09 11:28:28'),
(110, 52, 9, '2024-01-09 11:28:28', '2024-01-09 11:28:28'),
(111, 53, 3, '2024-01-10 05:21:32', '2024-01-10 05:21:32'),
(112, 53, 9, '2024-01-10 05:21:32', '2024-01-10 05:21:32'),
(113, 54, 4, '2024-01-10 05:24:10', '2024-01-10 05:24:10'),
(114, 54, 6, '2024-01-10 05:24:10', '2024-01-10 05:24:10'),
(115, 55, 9, '2024-01-10 05:26:48', '2024-01-10 05:26:48'),
(116, 56, 7, '2024-01-10 05:29:50', '2024-01-10 05:29:50'),
(117, 56, 8, '2024-01-10 05:29:50', '2024-01-10 05:29:50'),
(118, 57, 4, '2024-01-10 05:33:39', '2024-01-10 05:33:39'),
(119, 57, 5, '2024-01-10 05:33:39', '2024-01-10 05:33:39'),
(120, 58, 11, '2024-01-10 05:37:37', '2024-01-10 05:37:37'),
(121, 58, 18, '2024-01-10 05:37:37', '2024-01-10 05:37:37'),
(122, 59, 11, '2024-01-10 05:40:26', '2024-01-10 05:40:26'),
(123, 59, 12, '2024-01-10 05:40:26', '2024-01-10 05:40:26'),
(124, 60, 12, '2024-01-10 05:42:48', '2024-01-10 05:42:48'),
(125, 60, 21, '2024-01-10 05:42:49', '2024-01-10 05:42:49'),
(126, 61, 10, '2024-01-10 05:45:51', '2024-01-10 05:45:51'),
(127, 61, 11, '2024-01-10 05:45:51', '2024-01-10 05:45:51'),
(128, 62, 7, '2024-01-10 05:48:30', '2024-01-10 05:48:30'),
(129, 62, 8, '2024-01-10 05:48:30', '2024-01-10 05:48:30'),
(130, 63, 10, '2024-01-13 07:09:05', '2024-01-13 07:09:05'),
(131, 63, 11, '2024-01-13 07:09:05', '2024-01-13 07:09:05'),
(132, 63, 12, '2024-01-13 07:09:05', '2024-01-13 07:09:05'),
(133, 64, 7, '2024-01-13 07:15:02', '2024-01-13 07:15:02'),
(134, 64, 11, '2024-01-13 07:15:02', '2024-01-13 07:15:02'),
(135, 65, 10, '2024-01-13 07:18:18', '2024-01-13 07:18:18'),
(136, 65, 12, '2024-01-13 07:18:18', '2024-01-13 07:18:18'),
(137, 66, 10, '2024-01-13 07:24:22', '2024-01-13 07:24:22'),
(138, 66, 12, '2024-01-13 07:24:22', '2024-01-13 07:24:22'),
(139, 67, 2, '2024-01-13 07:31:05', '2024-01-13 07:31:05'),
(140, 67, 12, '2024-01-13 07:31:05', '2024-01-13 07:31:05'),
(141, 68, 10, '2024-01-13 07:35:14', '2024-01-13 07:35:14'),
(142, 68, 11, '2024-01-13 07:35:14', '2024-01-13 07:35:14'),
(143, 68, 12, '2024-01-13 07:35:14', '2024-01-13 07:35:14'),
(144, 69, 2, '2024-01-13 07:38:49', '2024-01-13 07:38:49'),
(145, 69, 8, '2024-01-13 07:38:49', '2024-01-13 07:38:49'),
(146, 69, 10, '2024-01-13 07:38:49', '2024-01-13 07:38:49'),
(147, 70, 10, '2024-01-13 07:42:27', '2024-01-13 07:42:27'),
(148, 71, 10, '2024-01-13 07:47:31', '2024-01-13 07:47:31'),
(149, 72, 7, '2024-01-13 07:52:24', '2024-01-13 07:52:24'),
(150, 72, 10, '2024-01-13 07:52:24', '2024-01-13 07:52:24'),
(151, 72, 11, '2024-01-13 07:52:24', '2024-01-13 07:52:24'),
(152, 73, 10, '2024-01-14 22:31:51', '2024-01-14 22:31:51'),
(153, 74, 7, '2024-01-14 22:34:28', '2024-01-14 22:34:28'),
(154, 74, 10, '2024-01-14 22:34:28', '2024-01-14 22:34:28'),
(155, 75, 10, '2024-01-14 22:37:41', '2024-01-14 22:37:41'),
(156, 76, 10, '2024-01-14 22:42:34', '2024-01-14 22:42:34'),
(157, 76, 11, '2024-01-14 22:42:34', '2024-01-14 22:42:34'),
(158, 77, 7, '2024-01-14 22:45:00', '2024-01-14 22:45:00'),
(159, 77, 8, '2024-01-14 22:45:00', '2024-01-14 22:45:00'),
(160, 77, 10, '2024-01-14 22:45:00', '2024-01-14 22:45:00'),
(161, 78, 8, '2024-01-14 23:02:49', '2024-01-14 23:02:49'),
(162, 78, 10, '2024-01-14 23:02:49', '2024-01-14 23:02:49'),
(163, 78, 12, '2024-01-14 23:02:49', '2024-01-14 23:02:49'),
(164, 79, 1, '2024-01-14 23:06:56', '2024-01-14 23:06:56'),
(165, 79, 6, '2024-01-14 23:06:56', '2024-01-14 23:06:56'),
(166, 79, 10, '2024-01-14 23:06:56', '2024-01-14 23:06:56'),
(167, 80, 8, '2024-01-14 23:09:11', '2024-01-14 23:09:11'),
(168, 80, 10, '2024-01-14 23:09:11', '2024-01-14 23:09:11'),
(169, 80, 11, '2024-01-14 23:09:11', '2024-01-14 23:09:11'),
(170, 81, 1, '2024-01-14 23:11:29', '2024-01-14 23:11:29'),
(171, 81, 8, '2024-01-14 23:11:29', '2024-01-14 23:11:29'),
(172, 81, 9, '2024-01-14 23:11:29', '2024-01-14 23:11:29'),
(173, 82, 6, '2024-01-14 23:18:07', '2024-01-14 23:18:07'),
(174, 82, 7, '2024-01-14 23:18:07', '2024-01-14 23:18:07'),
(175, 82, 10, '2024-01-14 23:18:07', '2024-01-14 23:18:07'),
(176, 83, 10, '2024-01-14 23:34:30', '2024-01-14 23:34:30'),
(177, 83, 11, '2024-01-14 23:34:30', '2024-01-14 23:34:30'),
(178, 84, 10, '2024-01-14 23:37:12', '2024-01-14 23:37:12'),
(179, 84, 11, '2024-01-14 23:37:12', '2024-01-14 23:37:12'),
(180, 85, 10, '2024-01-14 23:39:20', '2024-01-14 23:39:20'),
(181, 86, 10, '2024-01-14 23:42:17', '2024-01-14 23:42:17'),
(182, 86, 11, '2024-01-14 23:42:17', '2024-01-14 23:42:17'),
(183, 87, 9, '2024-01-14 23:46:49', '2024-01-14 23:46:49'),
(184, 87, 11, '2024-01-14 23:46:49', '2024-01-14 23:46:49'),
(185, 88, 1, '2024-01-15 00:24:16', '2024-01-15 00:24:16'),
(186, 88, 2, '2024-01-15 00:24:16', '2024-01-15 00:24:16'),
(187, 88, 5, '2024-01-15 00:24:16', '2024-01-15 00:24:16'),
(188, 89, 1, '2024-01-15 00:27:11', '2024-01-15 00:27:11'),
(189, 89, 2, '2024-01-15 00:27:11', '2024-01-15 00:27:11'),
(190, 89, 16, '2024-01-15 00:27:11', '2024-01-15 00:27:11'),
(191, 90, 10, '2024-01-15 00:37:16', '2024-01-15 00:37:16'),
(192, 90, 11, '2024-01-15 00:37:16', '2024-01-15 00:37:16'),
(193, 90, 16, '2024-01-15 00:37:16', '2024-01-15 00:37:16'),
(194, 91, 10, '2024-01-15 00:40:03', '2024-01-15 00:40:03'),
(195, 91, 14, '2024-01-15 00:40:03', '2024-01-15 00:40:03'),
(196, 92, 1, '2024-01-15 00:42:38', '2024-01-15 00:42:38'),
(197, 92, 2, '2024-01-15 00:42:38', '2024-01-15 00:42:38'),
(198, 93, 1, '2024-01-15 02:02:02', '2024-01-15 02:02:02'),
(199, 93, 7, '2024-01-15 02:02:02', '2024-01-15 02:02:02'),
(200, 93, 8, '2024-01-15 02:02:02', '2024-01-15 02:02:02'),
(201, 94, 6, '2024-01-15 02:05:33', '2024-01-15 02:05:33'),
(202, 94, 8, '2024-01-15 02:05:33', '2024-01-15 02:05:33'),
(203, 94, 9, '2024-01-15 02:05:33', '2024-01-15 02:05:33'),
(204, 95, 5, '2024-01-15 02:08:07', '2024-01-15 02:08:07'),
(205, 95, 10, '2024-01-15 02:08:07', '2024-01-15 02:08:07'),
(206, 96, 7, '2024-01-15 02:11:47', '2024-01-15 02:11:47'),
(207, 96, 10, '2024-01-15 02:11:47', '2024-01-15 02:11:47'),
(208, 96, 12, '2024-01-15 02:11:47', '2024-01-15 02:11:47'),
(209, 97, 1, '2024-01-15 02:14:48', '2024-01-15 02:14:48'),
(210, 97, 7, '2024-01-15 02:14:48', '2024-01-15 02:14:48'),
(211, 97, 10, '2024-01-15 02:14:48', '2024-01-15 02:14:48'),
(212, 98, 2, '2024-01-15 02:17:47', '2024-01-15 02:17:47'),
(213, 98, 20, '2024-01-15 02:17:47', '2024-01-15 02:17:47'),
(214, 99, 5, '2024-01-15 02:23:50', '2024-01-15 02:23:50'),
(215, 99, 10, '2024-01-15 02:23:50', '2024-01-15 02:23:50'),
(216, 99, 20, '2024-01-15 02:23:50', '2024-01-15 02:23:50'),
(217, 100, 1, '2024-01-15 02:36:47', '2024-01-15 02:36:47'),
(218, 100, 10, '2024-01-15 02:36:47', '2024-01-15 02:36:47'),
(219, 100, 20, '2024-01-15 02:36:47', '2024-01-15 02:36:47'),
(220, 101, 1, '2024-01-15 02:40:39', '2024-01-15 02:40:39'),
(221, 101, 4, '2024-01-15 02:40:39', '2024-01-15 02:40:39'),
(222, 101, 10, '2024-01-15 02:40:39', '2024-01-15 02:40:39'),
(223, 102, 3, '2024-01-15 02:43:54', '2024-01-15 02:43:54'),
(224, 102, 10, '2024-01-15 02:43:54', '2024-01-15 02:43:54'),
(225, 102, 20, '2024-01-15 02:43:54', '2024-01-15 02:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `movie_languages`
--

CREATE TABLE `movie_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_languages`
--

INSERT INTO `movie_languages` (`id`, `movie_id`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-01-08 01:42:41', '2024-01-08 01:42:41'),
(2, 3, 1, '2024-01-08 02:05:31', '2024-01-08 02:05:31'),
(4, 5, 1, '2024-01-08 02:08:28', '2024-01-08 02:08:28'),
(5, 6, 1, '2024-01-08 02:12:40', '2024-01-08 02:12:40'),
(6, 7, 1, '2024-01-08 02:15:52', '2024-01-08 02:15:52'),
(7, 8, 2, '2024-01-08 09:30:24', '2024-01-08 09:30:24'),
(8, 9, 2, '2024-01-08 09:35:00', '2024-01-08 09:35:00'),
(9, 10, 2, '2024-01-08 09:38:02', '2024-01-08 09:38:02'),
(10, 11, 2, '2024-01-08 09:41:28', '2024-01-08 09:41:28'),
(11, 12, 2, '2024-01-08 09:44:10', '2024-01-08 09:44:10'),
(12, 13, 3, '2024-01-08 12:08:05', '2024-01-08 12:08:05'),
(13, 14, 3, '2024-01-08 12:10:58', '2024-01-08 12:10:58'),
(14, 15, 3, '2024-01-08 12:42:13', '2024-01-08 12:42:13'),
(15, 16, 1, '2024-01-08 12:45:26', '2024-01-08 12:45:26'),
(16, 16, 2, '2024-01-08 12:45:26', '2024-01-08 12:45:26'),
(17, 16, 3, '2024-01-08 12:45:26', '2024-01-08 12:45:26'),
(18, 17, 1, '2024-01-08 12:54:57', '2024-01-08 12:54:57'),
(19, 17, 3, '2024-01-08 12:54:57', '2024-01-08 12:54:57'),
(20, 18, 4, '2024-01-08 13:59:38', '2024-01-08 13:59:38'),
(21, 19, 4, '2024-01-08 14:03:54', '2024-01-08 14:03:54'),
(22, 20, 4, '2024-01-08 14:11:48', '2024-01-08 14:11:48'),
(23, 21, 4, '2024-01-08 14:23:11', '2024-01-08 14:23:11'),
(24, 22, 4, '2024-01-08 14:27:55', '2024-01-08 14:27:55'),
(25, 23, 7, '2024-01-09 02:53:58', '2024-01-09 02:53:58'),
(26, 24, 7, '2024-01-09 02:57:24', '2024-01-09 02:57:24'),
(27, 25, 1, '2024-01-09 03:01:07', '2024-01-09 03:01:07'),
(28, 25, 7, '2024-01-09 03:01:07', '2024-01-09 03:01:07'),
(29, 26, 7, '2024-01-09 03:09:12', '2024-01-09 03:09:12'),
(30, 27, 1, '2024-01-09 03:30:47', '2024-01-09 03:30:47'),
(31, 27, 6, '2024-01-09 03:30:47', '2024-01-09 03:30:47'),
(32, 27, 7, '2024-01-09 03:30:47', '2024-01-09 03:30:47'),
(33, 28, 1, '2024-01-09 03:34:23', '2024-01-09 03:34:23'),
(34, 28, 16, '2024-01-09 03:34:23', '2024-01-09 03:34:23'),
(35, 29, 16, '2024-01-09 03:40:27', '2024-01-09 03:40:27'),
(36, 30, 16, '2024-01-09 03:46:18', '2024-01-09 03:46:18'),
(37, 31, 16, '2024-01-09 03:50:07', '2024-01-09 03:50:07'),
(38, 32, 16, '2024-01-09 03:53:44', '2024-01-09 03:53:44'),
(39, 33, 1, '2024-01-09 04:48:09', '2024-01-09 04:48:09'),
(40, 33, 2, '2024-01-09 04:48:09', '2024-01-09 04:48:09'),
(41, 33, 5, '2024-01-09 04:48:09', '2024-01-09 04:48:09'),
(42, 33, 6, '2024-01-09 04:48:09', '2024-01-09 04:48:09'),
(43, 33, 10, '2024-01-09 04:48:09', '2024-01-09 04:48:09'),
(44, 33, 11, '2024-01-09 04:48:09', '2024-01-09 04:48:09'),
(45, 34, 6, '2024-01-09 04:50:52', '2024-01-09 04:50:52'),
(46, 34, 10, '2024-01-09 04:50:52', '2024-01-09 04:50:52'),
(47, 35, 10, '2024-01-09 04:54:24', '2024-01-09 04:54:24'),
(48, 36, 10, '2024-01-09 05:06:00', '2024-01-09 05:06:00'),
(49, 37, 10, '2024-01-09 05:09:01', '2024-01-09 05:09:01'),
(50, 38, 9, '2024-01-09 05:12:41', '2024-01-09 05:12:41'),
(51, 39, 9, '2024-01-09 05:16:41', '2024-01-09 05:16:41'),
(52, 40, 9, '2024-01-09 05:20:25', '2024-01-09 05:20:25'),
(53, 41, 9, '2024-01-09 05:22:55', '2024-01-09 05:22:55'),
(54, 42, 9, '2024-01-09 05:25:54', '2024-01-09 05:25:54'),
(55, 43, 5, '2024-01-09 10:43:11', '2024-01-09 10:43:11'),
(56, 44, 5, '2024-01-09 10:45:50', '2024-01-09 10:45:50'),
(57, 45, 5, '2024-01-09 10:50:51', '2024-01-09 10:50:51'),
(58, 46, 5, '2024-01-09 10:53:39', '2024-01-09 10:53:39'),
(59, 47, 5, '2024-01-09 10:58:16', '2024-01-09 10:58:16'),
(60, 48, 8, '2024-01-09 11:08:58', '2024-01-09 11:08:58'),
(61, 49, 8, '2024-01-09 11:13:05', '2024-01-09 11:13:05'),
(62, 50, 8, '2024-01-09 11:17:08', '2024-01-09 11:17:08'),
(63, 51, 8, '2024-01-09 11:25:21', '2024-01-09 11:25:21'),
(64, 52, 8, '2024-01-09 11:28:28', '2024-01-09 11:28:28'),
(65, 53, 11, '2024-01-10 05:21:32', '2024-01-10 05:21:32'),
(66, 54, 11, '2024-01-10 05:24:10', '2024-01-10 05:24:10'),
(67, 55, 11, '2024-01-10 05:26:48', '2024-01-10 05:26:48'),
(68, 56, 11, '2024-01-10 05:29:50', '2024-01-10 05:29:50'),
(69, 57, 11, '2024-01-10 05:33:39', '2024-01-10 05:33:39'),
(70, 58, 6, '2024-01-10 05:37:37', '2024-01-10 05:37:37'),
(71, 59, 6, '2024-01-10 05:40:26', '2024-01-10 05:40:26'),
(72, 60, 6, '2024-01-10 05:42:49', '2024-01-10 05:42:49'),
(73, 61, 6, '2024-01-10 05:45:51', '2024-01-10 05:45:51'),
(74, 62, 6, '2024-01-10 05:48:30', '2024-01-10 05:48:30'),
(75, 63, 15, '2024-01-13 07:09:05', '2024-01-13 07:09:05'),
(76, 64, 15, '2024-01-13 07:15:03', '2024-01-13 07:15:03'),
(77, 65, 15, '2024-01-13 07:18:18', '2024-01-13 07:18:18'),
(78, 66, 6, '2024-01-13 07:24:22', '2024-01-13 07:24:22'),
(79, 66, 15, '2024-01-13 07:24:22', '2024-01-13 07:24:22'),
(80, 67, 1, '2024-01-13 07:31:05', '2024-01-13 07:31:05'),
(81, 67, 15, '2024-01-13 07:31:05', '2024-01-13 07:31:05'),
(82, 68, 13, '2024-01-13 07:35:14', '2024-01-13 07:35:14'),
(83, 69, 13, '2024-01-13 07:38:49', '2024-01-13 07:38:49'),
(84, 70, 13, '2024-01-13 07:42:27', '2024-01-13 07:42:27'),
(85, 71, 13, '2024-01-13 07:47:31', '2024-01-13 07:47:31'),
(86, 72, 13, '2024-01-13 07:52:24', '2024-01-13 07:52:24'),
(87, 73, 20, '2024-01-14 22:31:51', '2024-01-14 22:31:51'),
(88, 74, 20, '2024-01-14 22:34:28', '2024-01-14 22:34:28'),
(89, 75, 20, '2024-01-14 22:37:41', '2024-01-14 22:37:41'),
(90, 76, 2, '2024-01-14 22:42:34', '2024-01-14 22:42:34'),
(91, 76, 20, '2024-01-14 22:42:34', '2024-01-14 22:42:34'),
(92, 77, 20, '2024-01-14 22:45:00', '2024-01-14 22:45:00'),
(93, 78, 18, '2024-01-14 23:02:49', '2024-01-14 23:02:49'),
(94, 79, 18, '2024-01-14 23:06:56', '2024-01-14 23:06:56'),
(95, 80, 18, '2024-01-14 23:09:11', '2024-01-14 23:09:11'),
(96, 81, 18, '2024-01-14 23:11:29', '2024-01-14 23:11:29'),
(97, 82, 18, '2024-01-14 23:18:07', '2024-01-14 23:18:07'),
(98, 83, 12, '2024-01-14 23:34:30', '2024-01-14 23:34:30'),
(99, 84, 12, '2024-01-14 23:37:12', '2024-01-14 23:37:12'),
(100, 85, 12, '2024-01-14 23:39:20', '2024-01-14 23:39:20'),
(101, 86, 12, '2024-01-14 23:42:17', '2024-01-14 23:42:17'),
(102, 87, 12, '2024-01-14 23:46:49', '2024-01-14 23:46:49'),
(103, 88, 14, '2024-01-15 00:24:16', '2024-01-15 00:24:16'),
(104, 89, 14, '2024-01-15 00:27:11', '2024-01-15 00:27:11'),
(105, 90, 14, '2024-01-15 00:37:16', '2024-01-15 00:37:16'),
(106, 91, 14, '2024-01-15 00:40:03', '2024-01-15 00:40:03'),
(107, 92, 14, '2024-01-15 00:42:38', '2024-01-15 00:42:38'),
(108, 93, 19, '2024-01-15 02:02:02', '2024-01-15 02:02:02'),
(109, 94, 19, '2024-01-15 02:05:33', '2024-01-15 02:05:33'),
(110, 95, 19, '2024-01-15 02:08:07', '2024-01-15 02:08:07'),
(111, 96, 19, '2024-01-15 02:11:47', '2024-01-15 02:11:47'),
(112, 97, 19, '2024-01-15 02:14:48', '2024-01-15 02:14:48'),
(113, 98, 19, '2024-01-15 02:17:47', '2024-01-15 02:17:47'),
(114, 99, 17, '2024-01-15 02:23:50', '2024-01-15 02:23:50'),
(115, 100, 17, '2024-01-15 02:36:47', '2024-01-15 02:36:47'),
(116, 101, 17, '2024-01-15 02:40:39', '2024-01-15 02:40:39'),
(117, 102, 19, '2024-01-15 02:43:54', '2024-01-15 02:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `movie_pcompanies`
--

CREATE TABLE `movie_pcompanies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` int(11) NOT NULL,
  `pcompany_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_pcompanies`
--

INSERT INTO `movie_pcompanies` (`id`, `movie_id`, `pcompany_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-01-08 01:42:41', '2024-01-08 01:42:41'),
(2, 3, 2, '2024-01-08 02:05:31', '2024-01-08 02:05:31'),
(4, 5, 3, '2024-01-08 02:08:28', '2024-01-08 02:08:28'),
(5, 6, 4, '2024-01-08 02:12:40', '2024-01-08 02:12:40'),
(6, 7, 5, '2024-01-08 02:15:52', '2024-01-08 02:15:52'),
(7, 8, 6, '2024-01-08 09:30:24', '2024-01-08 09:30:24'),
(8, 8, 7, '2024-01-08 09:30:24', '2024-01-08 09:30:24'),
(9, 8, 8, '2024-01-08 09:30:24', '2024-01-08 09:30:24'),
(10, 9, 9, '2024-01-08 09:35:00', '2024-01-08 09:35:00'),
(11, 10, 9, '2024-01-08 09:38:02', '2024-01-08 09:38:02'),
(12, 11, 10, '2024-01-08 09:41:28', '2024-01-08 09:41:28'),
(13, 11, 11, '2024-01-08 09:41:28', '2024-01-08 09:41:28'),
(14, 12, 12, '2024-01-08 09:44:10', '2024-01-08 09:44:10'),
(15, 13, 13, '2024-01-08 12:08:05', '2024-01-08 12:08:05'),
(16, 13, 14, '2024-01-08 12:08:05', '2024-01-08 12:08:05'),
(17, 14, 15, '2024-01-08 12:10:58', '2024-01-08 12:10:58'),
(18, 14, 16, '2024-01-08 12:10:58', '2024-01-08 12:10:58'),
(19, 14, 17, '2024-01-08 12:10:58', '2024-01-08 12:10:58'),
(20, 15, 18, '2024-01-08 12:42:13', '2024-01-08 12:42:13'),
(21, 15, 19, '2024-01-08 12:42:13', '2024-01-08 12:42:13'),
(22, 16, 20, '2024-01-08 12:45:26', '2024-01-08 12:45:26'),
(23, 16, 21, '2024-01-08 12:45:26', '2024-01-08 12:45:26'),
(24, 17, 22, '2024-01-08 12:54:57', '2024-01-08 12:54:57'),
(25, 17, 23, '2024-01-08 12:54:57', '2024-01-08 12:54:57'),
(26, 17, 24, '2024-01-08 12:54:57', '2024-01-08 12:54:57'),
(27, 18, 26, '2024-01-08 13:59:38', '2024-01-08 13:59:38'),
(28, 19, 25, '2024-01-08 14:03:54', '2024-01-08 14:03:54'),
(29, 19, 26, '2024-01-08 14:03:54', '2024-01-08 14:03:54'),
(30, 20, 27, '2024-01-08 14:11:48', '2024-01-08 14:11:48'),
(31, 20, 28, '2024-01-08 14:11:48', '2024-01-08 14:11:48'),
(32, 21, 29, '2024-01-08 14:23:11', '2024-01-08 14:23:11'),
(33, 21, 30, '2024-01-08 14:23:11', '2024-01-08 14:23:11'),
(34, 21, 31, '2024-01-08 14:23:11', '2024-01-08 14:23:11'),
(35, 22, 32, '2024-01-08 14:27:55', '2024-01-08 14:27:55'),
(36, 22, 33, '2024-01-08 14:27:55', '2024-01-08 14:27:55'),
(37, 22, 34, '2024-01-08 14:27:55', '2024-01-08 14:27:55'),
(38, 23, 35, '2024-01-09 02:53:58', '2024-01-09 02:53:58'),
(39, 24, 36, '2024-01-09 02:57:24', '2024-01-09 02:57:24'),
(40, 25, 37, '2024-01-09 03:01:07', '2024-01-09 03:01:07'),
(41, 26, 38, '2024-01-09 03:09:12', '2024-01-09 03:09:12'),
(42, 27, 39, '2024-01-09 03:30:47', '2024-01-09 03:30:47'),
(43, 28, 40, '2024-01-09 03:34:23', '2024-01-09 03:34:23'),
(44, 29, 41, '2024-01-09 03:40:27', '2024-01-09 03:40:27'),
(45, 29, 42, '2024-01-09 03:40:27', '2024-01-09 03:40:27'),
(46, 30, 43, '2024-01-09 03:46:18', '2024-01-09 03:46:18'),
(47, 30, 44, '2024-01-09 03:46:18', '2024-01-09 03:46:18'),
(48, 31, 41, '2024-01-09 03:50:07', '2024-01-09 03:50:07'),
(49, 31, 45, '2024-01-09 03:50:07', '2024-01-09 03:50:07'),
(50, 32, 46, '2024-01-09 03:53:44', '2024-01-09 03:53:44'),
(51, 32, 47, '2024-01-09 03:53:44', '2024-01-09 03:53:44'),
(52, 33, 48, '2024-01-09 04:48:09', '2024-01-09 04:48:09'),
(53, 34, 48, '2024-01-09 04:50:52', '2024-01-09 04:50:52'),
(54, 35, 49, '2024-01-09 04:54:24', '2024-01-09 04:54:24'),
(55, 36, 50, '2024-01-09 05:06:00', '2024-01-09 05:06:00'),
(56, 37, 51, '2024-01-09 05:09:01', '2024-01-09 05:09:01'),
(57, 38, 52, '2024-01-09 05:12:41', '2024-01-09 05:12:41'),
(58, 39, 53, '2024-01-09 05:16:41', '2024-01-09 05:16:41'),
(59, 40, 53, '2024-01-09 05:20:25', '2024-01-09 05:20:25'),
(60, 41, 54, '2024-01-09 05:22:55', '2024-01-09 05:22:55'),
(61, 42, 55, '2024-01-09 05:25:54', '2024-01-09 05:25:54'),
(62, 42, 56, '2024-01-09 05:25:54', '2024-01-09 05:25:54'),
(63, 43, 57, '2024-01-09 10:43:11', '2024-01-09 10:43:11'),
(64, 43, 58, '2024-01-09 10:43:11', '2024-01-09 10:43:11'),
(65, 43, 59, '2024-01-09 10:43:11', '2024-01-09 10:43:11'),
(66, 44, 60, '2024-01-09 10:45:50', '2024-01-09 10:45:50'),
(67, 44, 61, '2024-01-09 10:45:50', '2024-01-09 10:45:50'),
(68, 44, 62, '2024-01-09 10:45:50', '2024-01-09 10:45:50'),
(69, 45, 5, '2024-01-09 10:50:51', '2024-01-09 10:50:51'),
(70, 45, 63, '2024-01-09 10:50:51', '2024-01-09 10:50:51'),
(71, 46, 65, '2024-01-09 10:53:39', '2024-01-09 10:53:39'),
(72, 46, 66, '2024-01-09 10:53:39', '2024-01-09 10:53:39'),
(73, 47, 67, '2024-01-09 10:58:16', '2024-01-09 10:58:16'),
(74, 47, 68, '2024-01-09 10:58:16', '2024-01-09 10:58:16'),
(75, 48, 69, '2024-01-09 11:08:58', '2024-01-09 11:08:58'),
(76, 48, 70, '2024-01-09 11:08:58', '2024-01-09 11:08:58'),
(77, 48, 71, '2024-01-09 11:08:58', '2024-01-09 11:08:58'),
(78, 49, 72, '2024-01-09 11:13:05', '2024-01-09 11:13:05'),
(79, 49, 75, '2024-01-09 11:13:05', '2024-01-09 11:13:05'),
(80, 49, 76, '2024-01-09 11:13:05', '2024-01-09 11:13:05'),
(81, 50, 77, '2024-01-09 11:17:08', '2024-01-09 11:17:08'),
(82, 50, 78, '2024-01-09 11:17:08', '2024-01-09 11:17:08'),
(83, 50, 79, '2024-01-09 11:17:08', '2024-01-09 11:17:08'),
(84, 51, 80, '2024-01-09 11:25:21', '2024-01-09 11:25:21'),
(85, 51, 81, '2024-01-09 11:25:21', '2024-01-09 11:25:21'),
(86, 52, 80, '2024-01-09 11:28:28', '2024-01-09 11:28:28'),
(87, 52, 82, '2024-01-09 11:28:28', '2024-01-09 11:28:28'),
(88, 53, 83, '2024-01-10 05:21:32', '2024-01-10 05:21:32'),
(89, 53, 84, '2024-01-10 05:21:32', '2024-01-10 05:21:32'),
(90, 54, 84, '2024-01-10 05:24:10', '2024-01-10 05:24:10'),
(91, 55, 85, '2024-01-10 05:26:48', '2024-01-10 05:26:48'),
(92, 55, 86, '2024-01-10 05:26:48', '2024-01-10 05:26:48'),
(93, 56, 87, '2024-01-10 05:29:50', '2024-01-10 05:29:50'),
(94, 56, 88, '2024-01-10 05:29:50', '2024-01-10 05:29:50'),
(95, 57, 84, '2024-01-10 05:33:39', '2024-01-10 05:33:39'),
(96, 58, 89, '2024-01-10 05:37:37', '2024-01-10 05:37:37'),
(97, 58, 90, '2024-01-10 05:37:37', '2024-01-10 05:37:37'),
(98, 59, 72, '2024-01-10 05:40:26', '2024-01-10 05:40:26'),
(99, 59, 91, '2024-01-10 05:40:26', '2024-01-10 05:40:26'),
(100, 60, 72, '2024-01-10 05:42:49', '2024-01-10 05:42:49'),
(101, 60, 92, '2024-01-10 05:42:49', '2024-01-10 05:42:49'),
(102, 61, 94, '2024-01-10 05:45:51', '2024-01-10 05:45:51'),
(103, 61, 95, '2024-01-10 05:45:51', '2024-01-10 05:45:51'),
(104, 61, 96, '2024-01-10 05:45:51', '2024-01-10 05:45:51'),
(105, 62, 72, '2024-01-10 05:48:30', '2024-01-10 05:48:30'),
(106, 62, 97, '2024-01-10 05:48:30', '2024-01-10 05:48:30'),
(107, 63, 98, '2024-01-13 07:09:05', '2024-01-13 07:09:05'),
(108, 64, 99, '2024-01-13 07:15:02', '2024-01-13 07:15:02'),
(109, 65, 99, '2024-01-13 07:18:18', '2024-01-13 07:18:18'),
(110, 66, 100, '2024-01-13 07:24:22', '2024-01-13 07:24:22'),
(111, 67, 101, '2024-01-13 07:31:05', '2024-01-13 07:31:05'),
(112, 67, 102, '2024-01-13 07:31:05', '2024-01-13 07:31:05'),
(113, 67, 105, '2024-01-13 07:31:05', '2024-01-13 07:31:05'),
(114, 68, 106, '2024-01-13 07:35:14', '2024-01-13 07:35:14'),
(115, 68, 107, '2024-01-13 07:35:14', '2024-01-13 07:35:14'),
(116, 69, 108, '2024-01-13 07:38:49', '2024-01-13 07:38:49'),
(117, 69, 109, '2024-01-13 07:38:49', '2024-01-13 07:38:49'),
(118, 69, 110, '2024-01-13 07:38:49', '2024-01-13 07:38:49'),
(119, 70, 111, '2024-01-13 07:42:27', '2024-01-13 07:42:27'),
(120, 70, 112, '2024-01-13 07:42:27', '2024-01-13 07:42:27'),
(121, 71, 113, '2024-01-13 07:47:31', '2024-01-13 07:47:31'),
(122, 71, 114, '2024-01-13 07:47:31', '2024-01-13 07:47:31'),
(123, 71, 115, '2024-01-13 07:47:31', '2024-01-13 07:47:31'),
(124, 72, 116, '2024-01-13 07:52:24', '2024-01-13 07:52:24'),
(125, 72, 117, '2024-01-13 07:52:24', '2024-01-13 07:52:24'),
(126, 72, 118, '2024-01-13 07:52:24', '2024-01-13 07:52:24'),
(127, 73, 119, '2024-01-14 22:31:51', '2024-01-14 22:31:51'),
(128, 74, 119, '2024-01-14 22:34:28', '2024-01-14 22:34:28'),
(129, 75, 120, '2024-01-14 22:37:41', '2024-01-14 22:37:41'),
(130, 75, 121, '2024-01-14 22:37:41', '2024-01-14 22:37:41'),
(131, 76, 10, '2024-01-14 22:42:34', '2024-01-14 22:42:34'),
(132, 76, 123, '2024-01-14 22:42:34', '2024-01-14 22:42:34'),
(133, 77, 124, '2024-01-14 22:45:00', '2024-01-14 22:45:00'),
(134, 78, 125, '2024-01-14 23:02:49', '2024-01-14 23:02:49'),
(135, 78, 126, '2024-01-14 23:02:49', '2024-01-14 23:02:49'),
(136, 78, 127, '2024-01-14 23:02:49', '2024-01-14 23:02:49'),
(137, 79, 128, '2024-01-14 23:06:56', '2024-01-14 23:06:56'),
(138, 79, 129, '2024-01-14 23:06:56', '2024-01-14 23:06:56'),
(139, 80, 130, '2024-01-14 23:09:11', '2024-01-14 23:09:11'),
(140, 81, 131, '2024-01-14 23:11:29', '2024-01-14 23:11:29'),
(141, 82, 126, '2024-01-14 23:18:07', '2024-01-14 23:18:07'),
(142, 83, 134, '2024-01-14 23:34:30', '2024-01-14 23:34:30'),
(143, 84, 136, '2024-01-14 23:37:12', '2024-01-14 23:37:12'),
(144, 85, 138, '2024-01-14 23:39:20', '2024-01-14 23:39:20'),
(145, 85, 139, '2024-01-14 23:39:20', '2024-01-14 23:39:20'),
(146, 86, 140, '2024-01-14 23:42:17', '2024-01-14 23:42:17'),
(147, 86, 141, '2024-01-14 23:42:17', '2024-01-14 23:42:17'),
(148, 87, 142, '2024-01-14 23:46:49', '2024-01-14 23:46:49'),
(149, 88, 143, '2024-01-15 00:24:16', '2024-01-15 00:24:16'),
(150, 88, 144, '2024-01-15 00:24:16', '2024-01-15 00:24:16'),
(151, 89, 5, '2024-01-15 00:27:11', '2024-01-15 00:27:11'),
(152, 89, 145, '2024-01-15 00:27:11', '2024-01-15 00:27:11'),
(153, 89, 146, '2024-01-15 00:27:11', '2024-01-15 00:27:11'),
(154, 90, 150, '2024-01-15 00:37:16', '2024-01-15 00:37:16'),
(155, 90, 151, '2024-01-15 00:37:16', '2024-01-15 00:37:16'),
(156, 90, 152, '2024-01-15 00:37:16', '2024-01-15 00:37:16'),
(157, 91, 111, '2024-01-15 00:40:03', '2024-01-15 00:40:03'),
(158, 91, 150, '2024-01-15 00:40:03', '2024-01-15 00:40:03'),
(159, 91, 153, '2024-01-15 00:40:03', '2024-01-15 00:40:03'),
(160, 92, 146, '2024-01-15 00:42:38', '2024-01-15 00:42:38'),
(161, 92, 149, '2024-01-15 00:42:38', '2024-01-15 00:42:38'),
(162, 92, 150, '2024-01-15 00:42:38', '2024-01-15 00:42:38'),
(163, 93, 155, '2024-01-15 02:02:02', '2024-01-15 02:02:02'),
(164, 93, 156, '2024-01-15 02:02:02', '2024-01-15 02:02:02'),
(165, 94, 157, '2024-01-15 02:05:33', '2024-01-15 02:05:33'),
(166, 95, 158, '2024-01-15 02:08:07', '2024-01-15 02:08:07'),
(167, 96, 159, '2024-01-15 02:11:47', '2024-01-15 02:11:47'),
(168, 97, 155, '2024-01-15 02:14:48', '2024-01-15 02:14:48'),
(169, 97, 156, '2024-01-15 02:14:48', '2024-01-15 02:14:48'),
(170, 98, 160, '2024-01-15 02:17:47', '2024-01-15 02:17:47'),
(171, 99, 161, '2024-01-15 02:23:50', '2024-01-15 02:23:50'),
(172, 100, 162, '2024-01-15 02:36:47', '2024-01-15 02:36:47'),
(173, 100, 163, '2024-01-15 02:36:47', '2024-01-15 02:36:47'),
(174, 100, 164, '2024-01-15 02:36:47', '2024-01-15 02:36:47'),
(175, 101, 165, '2024-01-15 02:40:39', '2024-01-15 02:40:39'),
(176, 101, 167, '2024-01-15 02:40:39', '2024-01-15 02:40:39'),
(177, 102, 160, '2024-01-15 02:43:54', '2024-01-15 02:43:54'),
(178, 102, 164, '2024-01-15 02:43:54', '2024-01-15 02:43:54'),
(179, 102, 168, '2024-01-15 02:43:54', '2024-01-15 02:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `movie_ratings`
--

CREATE TABLE `movie_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` int(11) NOT NULL,
  `rating_id` int(11) NOT NULL,
  `ratings` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_ratings`
--

INSERT INTO `movie_ratings` (`id`, `movie_id`, `rating_id`, `ratings`, `created_at`, `updated_at`) VALUES
(4, 5, 1, 9, '2024-01-08 02:08:28', '2024-01-08 02:08:28'),
(5, 5, 2, 87, '2024-01-08 02:08:28', '2024-01-08 02:08:28'),
(6, 5, 3, 0, '2024-01-08 02:08:28', '2024-01-08 02:08:28'),
(7, 6, 1, 9, '2024-01-08 02:12:40', '2024-01-08 02:12:40'),
(8, 6, 2, 98, '2024-01-08 02:12:40', '2024-01-08 02:12:40'),
(9, 6, 3, 0, '2024-01-08 02:12:40', '2024-01-08 02:12:40'),
(10, 7, 1, 8, '2024-01-08 02:15:52', '2024-01-08 02:15:52'),
(11, 7, 2, 92, '2024-01-08 02:15:52', '2024-01-08 02:15:52'),
(12, 7, 3, 0, '2024-01-08 02:15:52', '2024-01-08 02:15:52'),
(13, 8, 1, 8, '2024-01-08 09:30:24', '2024-01-08 09:30:24'),
(14, 8, 2, 93, '2024-01-08 09:30:24', '2024-01-08 09:30:24'),
(15, 8, 3, 0, '2024-01-08 09:30:24', '2024-01-08 09:30:24'),
(16, 9, 1, 8, '2024-01-08 09:35:00', '2024-01-08 09:35:00'),
(17, 9, 2, 91, '2024-01-08 09:35:00', '2024-01-08 09:35:00'),
(18, 9, 3, 0, '2024-01-08 09:35:00', '2024-01-08 09:35:00'),
(19, 10, 1, 7, '2024-01-08 09:38:02', '2024-01-08 09:38:02'),
(20, 10, 2, 93, '2024-01-08 09:38:02', '2024-01-08 09:38:02'),
(21, 10, 3, 0, '2024-01-08 09:38:02', '2024-01-08 09:38:02'),
(22, 11, 1, 8, '2024-01-08 09:41:28', '2024-01-08 09:41:28'),
(23, 11, 2, 90, '2024-01-08 09:41:28', '2024-01-08 09:41:28'),
(24, 11, 3, 0, '2024-01-08 09:41:28', '2024-01-08 09:41:28'),
(25, 12, 1, 7, '2024-01-08 09:44:10', '2024-01-08 09:44:10'),
(26, 12, 2, 67, '2024-01-08 09:44:10', '2024-01-08 09:44:10'),
(27, 12, 3, 0, '2024-01-08 09:44:10', '2024-01-08 09:44:10'),
(28, 13, 1, 8, '2024-01-08 12:08:05', '2024-01-08 12:08:05'),
(29, 13, 2, 100, '2024-01-08 12:08:05', '2024-01-08 12:08:05'),
(30, 13, 3, 0, '2024-01-08 12:08:05', '2024-01-08 12:08:05'),
(31, 14, 1, 8, '2024-01-08 12:10:58', '2024-01-08 12:10:58'),
(32, 14, 2, 98, '2024-01-08 12:10:58', '2024-01-08 12:10:58'),
(33, 14, 3, 0, '2024-01-08 12:10:58', '2024-01-08 12:10:58'),
(34, 15, 1, 8, '2024-01-08 12:42:13', '2024-01-08 12:42:13'),
(35, 15, 2, 86, '2024-01-08 12:42:13', '2024-01-08 12:42:13'),
(36, 15, 3, 0, '2024-01-08 12:42:13', '2024-01-08 12:42:13'),
(37, 16, 1, 8, '2024-01-08 12:45:26', '2024-01-08 12:45:26'),
(38, 16, 2, 90, '2024-01-08 12:45:26', '2024-01-08 12:45:26'),
(39, 16, 3, 0, '2024-01-08 12:45:26', '2024-01-08 12:45:26'),
(40, 17, 1, 7, '2024-01-08 12:54:57', '2024-01-08 12:54:57'),
(41, 17, 2, 82, '2024-01-08 12:54:57', '2024-01-08 12:54:57'),
(42, 17, 3, 0, '2024-01-08 12:54:57', '2024-01-08 12:54:57'),
(43, 18, 1, 7, '2024-01-08 13:59:38', '2024-01-08 13:59:38'),
(44, 18, 2, 89, '2024-01-08 13:59:38', '2024-01-08 13:59:38'),
(45, 18, 3, 0, '2024-01-08 13:59:38', '2024-01-08 13:59:38'),
(46, 19, 1, 7, '2024-01-08 14:03:54', '2024-01-08 14:03:54'),
(47, 19, 2, 84, '2024-01-08 14:03:54', '2024-01-08 14:03:54'),
(48, 19, 3, 0, '2024-01-08 14:03:54', '2024-01-08 14:03:54'),
(49, 20, 1, 7, '2024-01-08 14:11:48', '2024-01-08 14:11:48'),
(50, 20, 2, 95, '2024-01-08 14:11:48', '2024-01-08 14:11:48'),
(51, 20, 3, 0, '2024-01-08 14:11:48', '2024-01-08 14:11:48'),
(52, 21, 1, 7, '2024-01-08 14:23:11', '2024-01-08 14:23:11'),
(53, 21, 2, 92, '2024-01-08 14:23:11', '2024-01-08 14:23:11'),
(54, 21, 3, 0, '2024-01-08 14:23:11', '2024-01-08 14:23:11'),
(55, 22, 1, 7, '2024-01-08 14:27:55', '2024-01-08 14:27:55'),
(56, 22, 2, 86, '2024-01-08 14:27:55', '2024-01-08 14:27:55'),
(57, 22, 3, 0, '2024-01-08 14:27:55', '2024-01-08 14:27:55'),
(58, 23, 1, 7, '2024-01-09 02:53:58', '2024-01-09 02:53:58'),
(59, 23, 2, 89, '2024-01-09 02:53:58', '2024-01-09 02:53:58'),
(60, 23, 3, 0, '2024-01-09 02:53:58', '2024-01-09 02:53:58'),
(61, 24, 1, 6, '2024-01-09 02:57:25', '2024-01-09 02:57:25'),
(62, 24, 2, 87, '2024-01-09 02:57:25', '2024-01-09 02:57:25'),
(63, 24, 3, 0, '2024-01-09 02:57:25', '2024-01-09 02:57:25'),
(64, 25, 1, 6, '2024-01-09 03:01:07', '2024-01-09 03:01:07'),
(65, 25, 2, 90, '2024-01-09 03:01:07', '2024-01-09 03:01:07'),
(66, 25, 3, 0, '2024-01-09 03:01:07', '2024-01-09 03:01:07'),
(67, 26, 1, 7, '2024-01-09 03:09:12', '2024-01-09 03:09:12'),
(68, 26, 2, 86, '2024-01-09 03:09:12', '2024-01-09 03:09:12'),
(69, 26, 3, 0, '2024-01-09 03:09:12', '2024-01-09 03:09:12'),
(70, 27, 1, 8, '2024-01-09 03:30:47', '2024-01-09 03:30:47'),
(71, 27, 2, 86, '2024-01-09 03:30:47', '2024-01-09 03:30:47'),
(72, 27, 3, 0, '2024-01-09 03:30:47', '2024-01-09 03:30:47'),
(73, 28, 1, 7, '2024-01-09 03:34:23', '2024-01-09 03:34:23'),
(74, 28, 2, 87, '2024-01-09 03:34:23', '2024-01-09 03:34:23'),
(75, 28, 3, 0, '2024-01-09 03:34:23', '2024-01-09 03:34:23'),
(76, 29, 1, 8, '2024-01-09 03:40:27', '2024-01-09 03:40:27'),
(77, 29, 2, 91, '2024-01-09 03:40:27', '2024-01-09 03:40:27'),
(78, 29, 3, 0, '2024-01-09 03:40:27', '2024-01-09 03:40:27'),
(79, 30, 1, 7, '2024-01-09 03:46:18', '2024-01-09 03:46:18'),
(80, 30, 2, 94, '2024-01-09 03:46:19', '2024-01-09 03:46:19'),
(81, 30, 3, 0, '2024-01-09 03:46:19', '2024-01-09 03:46:19'),
(82, 31, 1, 8, '2024-01-09 03:50:07', '2024-01-09 03:50:07'),
(83, 31, 2, 85, '2024-01-09 03:50:07', '2024-01-09 03:50:07'),
(84, 31, 3, 0, '2024-01-09 03:50:07', '2024-01-09 03:50:07'),
(85, 32, 1, 6, '2024-01-09 03:53:44', '2024-01-09 03:53:44'),
(86, 32, 2, 64, '2024-01-09 03:53:44', '2024-01-09 03:53:44'),
(87, 32, 3, 0, '2024-01-09 03:53:44', '2024-01-09 03:53:44'),
(88, 33, 1, 7, '2024-01-09 04:48:09', '2024-01-09 04:48:09'),
(89, 33, 2, 92, '2024-01-09 04:48:09', '2024-01-09 04:48:09'),
(90, 33, 3, 0, '2024-01-09 04:48:09', '2024-01-09 04:48:09'),
(91, 34, 1, 7, '2024-01-09 04:50:52', '2024-01-09 04:50:52'),
(92, 34, 2, 92, '2024-01-09 04:50:52', '2024-01-09 04:50:52'),
(93, 34, 3, 0, '2024-01-09 04:50:52', '2024-01-09 04:50:52'),
(94, 35, 1, 6, '2024-01-09 04:54:24', '2024-01-09 04:54:24'),
(95, 35, 2, 81, '2024-01-09 04:54:24', '2024-01-09 04:54:24'),
(96, 35, 3, 0, '2024-01-09 04:54:24', '2024-01-09 04:54:24'),
(97, 36, 1, 7, '2024-01-09 05:06:00', '2024-01-09 05:06:00'),
(98, 36, 2, 83, '2024-01-09 05:06:00', '2024-01-09 05:06:00'),
(99, 36, 3, 0, '2024-01-09 05:06:00', '2024-01-09 05:06:00'),
(100, 37, 1, 8, '2024-01-09 05:09:01', '2024-01-09 05:09:01'),
(101, 37, 2, 90, '2024-01-09 05:09:01', '2024-01-09 05:09:01'),
(102, 37, 3, 0, '2024-01-09 05:09:01', '2024-01-09 05:09:01'),
(103, 38, 1, 7, '2024-01-09 05:12:41', '2024-01-09 05:12:41'),
(104, 38, 2, 83, '2024-01-09 05:12:41', '2024-01-09 05:12:41'),
(105, 38, 3, 0, '2024-01-09 05:12:41', '2024-01-09 05:12:41'),
(106, 39, 1, 7, '2024-01-09 05:16:41', '2024-01-09 05:16:41'),
(107, 39, 2, 94, '2024-01-09 05:16:41', '2024-01-09 05:16:41'),
(108, 39, 3, 0, '2024-01-09 05:16:41', '2024-01-09 05:16:41'),
(109, 40, 1, 8, '2024-01-09 05:20:25', '2024-01-09 05:20:25'),
(110, 40, 2, 91, '2024-01-09 05:20:25', '2024-01-09 05:20:25'),
(111, 40, 3, 0, '2024-01-09 05:20:25', '2024-01-09 05:20:25'),
(112, 41, 1, 7, '2024-01-09 05:22:55', '2024-01-09 05:22:55'),
(113, 41, 2, 89, '2024-01-09 05:22:55', '2024-01-09 05:22:55'),
(114, 41, 3, 0, '2024-01-09 05:22:55', '2024-01-09 05:22:55'),
(115, 42, 1, 7, '2024-01-09 05:25:54', '2024-01-09 05:25:54'),
(116, 42, 2, 75, '2024-01-09 05:25:54', '2024-01-09 05:25:54'),
(117, 42, 3, 0, '2024-01-09 05:25:54', '2024-01-09 05:25:54'),
(118, 43, 1, 8, '2024-01-09 10:43:11', '2024-01-09 10:43:11'),
(119, 43, 2, 95, '2024-01-09 10:43:11', '2024-01-09 10:43:11'),
(120, 43, 3, 0, '2024-01-09 10:43:11', '2024-01-09 10:43:11'),
(121, 44, 1, 8, '2024-01-09 10:45:50', '2024-01-09 10:45:50'),
(122, 44, 2, 90, '2024-01-09 10:45:50', '2024-01-09 10:45:50'),
(123, 44, 3, 0, '2024-01-09 10:45:50', '2024-01-09 10:45:50'),
(124, 45, 1, 8, '2024-01-09 10:50:51', '2024-01-09 10:50:51'),
(125, 45, 2, 80, '2024-01-09 10:50:51', '2024-01-09 10:50:51'),
(126, 45, 3, 0, '2024-01-09 10:50:51', '2024-01-09 10:50:51'),
(127, 46, 1, 8, '2024-01-09 10:53:39', '2024-01-09 10:53:39'),
(128, 46, 2, 91, '2024-01-09 10:53:39', '2024-01-09 10:53:39'),
(129, 46, 3, 0, '2024-01-09 10:53:39', '2024-01-09 10:53:39'),
(130, 47, 1, 7, '2024-01-09 10:58:16', '2024-01-09 10:58:16'),
(131, 47, 2, 91, '2024-01-09 10:58:16', '2024-01-09 10:58:16'),
(132, 47, 3, 0, '2024-01-09 10:58:16', '2024-01-09 10:58:16'),
(133, 48, 1, 8, '2024-01-09 11:08:58', '2024-01-09 11:08:58'),
(134, 48, 2, 95, '2024-01-09 11:08:58', '2024-01-09 11:08:58'),
(135, 48, 3, 0, '2024-01-09 11:08:58', '2024-01-09 11:08:58'),
(136, 49, 1, 7, '2024-01-09 11:13:05', '2024-01-09 11:13:05'),
(137, 49, 2, 83, '2024-01-09 11:13:05', '2024-01-09 11:13:05'),
(138, 49, 3, 0, '2024-01-09 11:13:05', '2024-01-09 11:13:05'),
(139, 50, 1, 8, '2024-01-09 11:17:08', '2024-01-09 11:17:08'),
(140, 50, 2, 91, '2024-01-09 11:17:08', '2024-01-09 11:17:08'),
(141, 50, 3, 0, '2024-01-09 11:17:08', '2024-01-09 11:17:08'),
(142, 51, 1, 7, '2024-01-09 11:25:21', '2024-01-09 11:25:21'),
(143, 51, 2, 91, '2024-01-09 11:25:21', '2024-01-09 11:25:21'),
(144, 51, 3, 0, '2024-01-09 11:25:21', '2024-01-09 11:25:21'),
(145, 52, 1, 7, '2024-01-09 11:28:28', '2024-01-09 11:28:28'),
(146, 52, 2, 79, '2024-01-09 11:28:28', '2024-01-09 11:28:28'),
(147, 52, 3, 0, '2024-01-09 11:28:28', '2024-01-09 11:28:28'),
(148, 53, 1, 8, '2024-01-10 05:21:32', '2024-01-10 05:21:32'),
(149, 53, 2, 96, '2024-01-10 05:21:32', '2024-01-10 05:21:32'),
(150, 53, 3, 0, '2024-01-10 05:21:32', '2024-01-10 05:21:32'),
(151, 54, 1, 8, '2024-01-10 05:24:10', '2024-01-10 05:24:10'),
(152, 54, 2, 95, '2024-01-10 05:24:10', '2024-01-10 05:24:10'),
(153, 54, 3, 0, '2024-01-10 05:24:10', '2024-01-10 05:24:10'),
(154, 55, 1, 6, '2024-01-10 05:26:48', '2024-01-10 05:26:48'),
(155, 55, 2, 58, '2024-01-10 05:26:48', '2024-01-10 05:26:48'),
(156, 55, 3, 0, '2024-01-10 05:26:48', '2024-01-10 05:26:48'),
(157, 56, 1, 7, '2024-01-10 05:29:50', '2024-01-10 05:29:50'),
(158, 56, 2, 98, '2024-01-10 05:29:50', '2024-01-10 05:29:50'),
(159, 56, 3, 0, '2024-01-10 05:29:50', '2024-01-10 05:29:50'),
(160, 57, 1, 8, '2024-01-10 05:33:39', '2024-01-10 05:33:39'),
(161, 57, 2, 92, '2024-01-10 05:33:39', '2024-01-10 05:33:39'),
(162, 57, 3, 0, '2024-01-10 05:33:39', '2024-01-10 05:33:39'),
(163, 58, 1, 8, '2024-01-10 05:37:37', '2024-01-10 05:37:37'),
(164, 58, 2, 91, '2024-01-10 05:37:37', '2024-01-10 05:37:37'),
(165, 58, 3, 0, '2024-01-10 05:37:37', '2024-01-10 05:37:37'),
(166, 59, 1, 8, '2024-01-10 05:40:26', '2024-01-10 05:40:26'),
(167, 59, 2, 89, '2024-01-10 05:40:26', '2024-01-10 05:40:26'),
(168, 59, 3, 0, '2024-01-10 05:40:26', '2024-01-10 05:40:26'),
(169, 60, 1, 8, '2024-01-10 05:42:49', '2024-01-10 05:42:49'),
(170, 60, 2, 75, '2024-01-10 05:42:49', '2024-01-10 05:42:49'),
(171, 60, 3, 0, '2024-01-10 05:42:49', '2024-01-10 05:42:49'),
(172, 61, 1, 8, '2024-01-10 05:45:51', '2024-01-10 05:45:51'),
(173, 61, 2, 91, '2024-01-10 05:45:51', '2024-01-10 05:45:51'),
(174, 61, 3, 0, '2024-01-10 05:45:51', '2024-01-10 05:45:51'),
(175, 62, 1, 8, '2024-01-10 05:48:30', '2024-01-10 05:48:30'),
(176, 62, 2, 96, '2024-01-10 05:48:30', '2024-01-10 05:48:30'),
(177, 62, 3, 0, '2024-01-10 05:48:30', '2024-01-10 05:48:30'),
(178, 63, 1, 8, '2024-01-13 07:09:05', '2024-01-13 07:09:05'),
(179, 63, 2, 96, '2024-01-13 07:09:05', '2024-01-13 07:09:05'),
(180, 63, 3, 0, '2024-01-13 07:09:05', '2024-01-13 07:09:05'),
(181, 64, 1, 8, '2024-01-13 07:15:03', '2024-01-13 07:15:03'),
(182, 64, 2, 96, '2024-01-13 07:15:03', '2024-01-13 07:15:03'),
(183, 64, 3, 0, '2024-01-13 07:15:03', '2024-01-13 07:15:03'),
(184, 65, 1, 8, '2024-01-13 07:18:18', '2024-01-13 07:18:18'),
(185, 65, 2, 100, '2024-01-13 07:18:18', '2024-01-13 07:18:18'),
(186, 65, 3, 0, '2024-01-13 07:18:18', '2024-01-13 07:18:18'),
(187, 66, 1, 7, '2024-01-13 07:24:22', '2024-01-13 07:24:22'),
(188, 66, 2, 100, '2024-01-13 07:24:22', '2024-01-13 07:24:22'),
(189, 66, 3, 0, '2024-01-13 07:24:22', '2024-01-13 07:24:22'),
(190, 67, 1, 7, '2024-01-13 07:31:05', '2024-01-13 07:31:05'),
(191, 67, 2, 90, '2024-01-13 07:31:05', '2024-01-13 07:31:05'),
(192, 67, 3, 0, '2024-01-13 07:31:05', '2024-01-13 07:31:05'),
(193, 68, 1, 7, '2024-01-13 07:35:14', '2024-01-13 07:35:14'),
(194, 68, 2, 87, '2024-01-13 07:35:14', '2024-01-13 07:35:14'),
(195, 68, 3, 0, '2024-01-13 07:35:14', '2024-01-13 07:35:14'),
(196, 69, 1, 7, '2024-01-13 07:38:49', '2024-01-13 07:38:49'),
(197, 69, 2, 96, '2024-01-13 07:38:49', '2024-01-13 07:38:49'),
(198, 69, 3, 0, '2024-01-13 07:38:49', '2024-01-13 07:38:49'),
(199, 70, 1, 7, '2024-01-13 07:42:27', '2024-01-13 07:42:27'),
(200, 70, 2, 99, '2024-01-13 07:42:27', '2024-01-13 07:42:27'),
(201, 70, 3, 0, '2024-01-13 07:42:27', '2024-01-13 07:42:27'),
(202, 71, 1, 8, '2024-01-13 07:47:31', '2024-01-13 07:47:31'),
(203, 71, 2, 90, '2024-01-13 07:47:31', '2024-01-13 07:47:31'),
(204, 71, 3, 0, '2024-01-13 07:47:31', '2024-01-13 07:47:31'),
(205, 72, 1, 7, '2024-01-13 07:52:24', '2024-01-13 07:52:24'),
(206, 72, 2, 90, '2024-01-13 07:52:24', '2024-01-13 07:52:24'),
(207, 72, 3, 0, '2024-01-13 07:52:24', '2024-01-13 07:52:24'),
(208, 73, 1, 8, '2024-01-14 22:31:51', '2024-01-14 22:31:51'),
(209, 73, 2, 86, '2024-01-14 22:31:51', '2024-01-14 22:31:51'),
(210, 73, 3, 0, '2024-01-14 22:31:52', '2024-01-14 22:31:52'),
(211, 74, 1, 8, '2024-01-14 22:34:28', '2024-01-14 22:34:28'),
(212, 74, 2, 94, '2024-01-14 22:34:28', '2024-01-14 22:34:28'),
(213, 74, 3, 0, '2024-01-14 22:34:28', '2024-01-14 22:34:28'),
(214, 75, 1, 8, '2024-01-14 22:37:41', '2024-01-14 22:37:41'),
(215, 75, 2, 97, '2024-01-14 22:37:41', '2024-01-14 22:37:41'),
(216, 75, 3, 0, '2024-01-14 22:37:41', '2024-01-14 22:37:41'),
(217, 76, 1, 8, '2024-01-14 22:42:34', '2024-01-14 22:42:34'),
(218, 76, 2, 90, '2024-01-14 22:42:34', '2024-01-14 22:42:34'),
(219, 76, 3, 0, '2024-01-14 22:42:34', '2024-01-14 22:42:34'),
(220, 77, 1, 8, '2024-01-14 22:45:00', '2024-01-14 22:45:00'),
(221, 77, 2, 95, '2024-01-14 22:45:00', '2024-01-14 22:45:00'),
(222, 77, 3, 0, '2024-01-14 22:45:00', '2024-01-14 22:45:00'),
(223, 78, 1, 9, '2024-01-14 23:02:49', '2024-01-14 23:02:49'),
(224, 78, 2, 99, '2024-01-14 23:02:49', '2024-01-14 23:02:49'),
(225, 78, 3, 0, '2024-01-14 23:02:49', '2024-01-14 23:02:49'),
(226, 79, 1, 8, '2024-01-14 23:06:56', '2024-01-14 23:06:56'),
(227, 79, 2, 82, '2024-01-14 23:06:56', '2024-01-14 23:06:56'),
(228, 79, 3, 0, '2024-01-14 23:06:56', '2024-01-14 23:06:56'),
(229, 80, 1, 8, '2024-01-14 23:09:11', '2024-01-14 23:09:11'),
(230, 80, 2, 95, '2024-01-14 23:09:11', '2024-01-14 23:09:11'),
(231, 80, 3, 0, '2024-01-14 23:09:11', '2024-01-14 23:09:11'),
(232, 81, 1, 7, '2024-01-14 23:11:29', '2024-01-14 23:11:29'),
(233, 81, 2, 94, '2024-01-14 23:11:29', '2024-01-14 23:11:29'),
(234, 81, 3, 0, '2024-01-14 23:11:29', '2024-01-14 23:11:29'),
(235, 82, 1, 8, '2024-01-14 23:18:07', '2024-01-14 23:18:07'),
(236, 82, 2, 94, '2024-01-14 23:18:07', '2024-01-14 23:18:07'),
(237, 82, 3, 0, '2024-01-14 23:18:07', '2024-01-14 23:18:07'),
(238, 83, 1, 8, '2024-01-14 23:34:30', '2024-01-14 23:34:30'),
(239, 83, 2, 94, '2024-01-14 23:34:30', '2024-01-14 23:34:30'),
(240, 83, 3, 0, '2024-01-14 23:34:30', '2024-01-14 23:34:30'),
(241, 84, 1, 7, '2024-01-14 23:37:12', '2024-01-14 23:37:12'),
(242, 84, 2, 81, '2024-01-14 23:37:12', '2024-01-14 23:37:12'),
(243, 84, 3, 0, '2024-01-14 23:37:12', '2024-01-14 23:37:12'),
(244, 85, 1, 8, '2024-01-14 23:39:20', '2024-01-14 23:39:20'),
(245, 85, 2, 91, '2024-01-14 23:39:20', '2024-01-14 23:39:20'),
(246, 85, 3, 0, '2024-01-14 23:39:20', '2024-01-14 23:39:20'),
(247, 86, 1, 7, '2024-01-14 23:42:17', '2024-01-14 23:42:17'),
(248, 86, 2, 100, '2024-01-14 23:42:17', '2024-01-14 23:42:17'),
(249, 86, 3, 0, '2024-01-14 23:42:17', '2024-01-14 23:42:17'),
(250, 87, 1, 5, '2024-01-14 23:46:49', '2024-01-14 23:46:49'),
(251, 87, 2, 75, '2024-01-14 23:46:49', '2024-01-14 23:46:49'),
(252, 87, 3, 0, '2024-01-14 23:46:49', '2024-01-14 23:46:49'),
(253, 88, 1, 8, '2024-01-15 00:24:16', '2024-01-15 00:24:16'),
(254, 88, 2, 97, '2024-01-15 00:24:16', '2024-01-15 00:24:16'),
(255, 88, 3, 0, '2024-01-15 00:24:16', '2024-01-15 00:24:16'),
(256, 89, 1, 8, '2024-01-15 00:27:11', '2024-01-15 00:27:11'),
(257, 89, 2, 94, '2024-01-15 00:27:11', '2024-01-15 00:27:11'),
(258, 89, 3, 0, '2024-01-15 00:27:11', '2024-01-15 00:27:11'),
(259, 90, 1, 8, '2024-01-15 00:37:16', '2024-01-15 00:37:16'),
(260, 90, 2, 95, '2024-01-15 00:37:16', '2024-01-15 00:37:16'),
(261, 90, 3, 0, '2024-01-15 00:37:16', '2024-01-15 00:37:16'),
(262, 91, 1, 8, '2024-01-15 00:40:03', '2024-01-15 00:40:03'),
(263, 91, 2, 91, '2024-01-15 00:40:03', '2024-01-15 00:40:03'),
(264, 91, 3, 0, '2024-01-15 00:40:03', '2024-01-15 00:40:03'),
(265, 92, 1, 8, '2024-01-15 00:42:38', '2024-01-15 00:42:38'),
(266, 92, 2, 88, '2024-01-15 00:42:38', '2024-01-15 00:42:38'),
(267, 92, 3, 0, '2024-01-15 00:42:38', '2024-01-15 00:42:38'),
(268, 93, 1, 7, '2024-01-15 02:02:02', '2024-01-15 02:02:02'),
(269, 93, 2, 85, '2024-01-15 02:02:02', '2024-01-15 02:02:02'),
(270, 93, 3, 0, '2024-01-15 02:02:02', '2024-01-15 02:02:02'),
(271, 94, 1, 5, '2024-01-15 02:05:33', '2024-01-15 02:05:33'),
(272, 94, 2, 11, '2024-01-15 02:05:33', '2024-01-15 02:05:33'),
(273, 94, 3, 0, '2024-01-15 02:05:33', '2024-01-15 02:05:33'),
(274, 95, 1, 7, '2024-01-15 02:08:07', '2024-01-15 02:08:07'),
(275, 95, 2, 90, '2024-01-15 02:08:07', '2024-01-15 02:08:07'),
(276, 95, 3, 0, '2024-01-15 02:08:07', '2024-01-15 02:08:07'),
(277, 96, 1, 7, '2024-01-15 02:11:47', '2024-01-15 02:11:47'),
(278, 96, 2, 100, '2024-01-15 02:11:47', '2024-01-15 02:11:47'),
(279, 96, 3, 0, '2024-01-15 02:11:47', '2024-01-15 02:11:47'),
(280, 97, 1, 6, '2024-01-15 02:14:48', '2024-01-15 02:14:48'),
(281, 97, 2, 77, '2024-01-15 02:14:48', '2024-01-15 02:14:48'),
(282, 97, 3, 0, '2024-01-15 02:14:48', '2024-01-15 02:14:48'),
(283, 98, 1, 8, '2024-01-15 02:17:47', '2024-01-15 02:17:47'),
(284, 98, 2, 96, '2024-01-15 02:17:47', '2024-01-15 02:17:47'),
(285, 98, 3, 0, '2024-01-15 02:17:47', '2024-01-15 02:17:47'),
(286, 99, 1, 8, '2024-01-15 02:23:50', '2024-01-15 02:23:50'),
(287, 99, 2, 98, '2024-01-15 02:23:50', '2024-01-15 02:23:50'),
(288, 99, 3, 0, '2024-01-15 02:23:50', '2024-01-15 02:23:50'),
(289, 100, 1, 8, '2024-01-15 02:36:47', '2024-01-15 02:36:47'),
(290, 100, 2, 90, '2024-01-15 02:36:47', '2024-01-15 02:36:47'),
(291, 100, 3, 0, '2024-01-15 02:36:47', '2024-01-15 02:36:47'),
(292, 101, 1, 7, '2024-01-15 02:40:39', '2024-01-15 02:40:39'),
(293, 101, 2, 87, '2024-01-15 02:40:39', '2024-01-15 02:40:39'),
(294, 101, 3, 0, '2024-01-15 02:40:39', '2024-01-15 02:40:39'),
(295, 102, 1, 8, '2024-01-15 02:43:54', '2024-01-15 02:43:54'),
(296, 102, 2, 97, '2024-01-15 02:43:54', '2024-01-15 02:43:54'),
(297, 102, 3, 0, '2024-01-15 02:43:54', '2024-01-15 02:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
-- Table structure for table `production_companies`
--

CREATE TABLE `production_companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `info` longtext DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `founders` varchar(255) NOT NULL,
  `founded` date NOT NULL,
  `parentorganizations` varchar(255) NOT NULL,
  `president` varchar(255) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `production_companies`
--

INSERT INTO `production_companies` (`id`, `title`, `info`, `photo`, `founders`, `founded`, `parentorganizations`, `president`, `genre_id`, `created_at`, `updated_at`) VALUES
(1, 'Castle Rock Entertainment', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(2, 'Warner Bros', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(3, 'Syncopy', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(4, 'Paramount Pictures', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(5, 'Miramax', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(6, 'Creado Film', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(7, 'Bayerischer Rundfunk ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(8, 'ARTE', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(9, 'X Filme Creative Pool ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(10, 'Corazón International', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(11, ' Wüste Film ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(12, ' Constantin Film ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(13, 'Cinematograph AB', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(14, 'Svenska Filminstitutet (SFI) ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(15, 'EFTI', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(16, ' Sandrew Metronome Distribution ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(17, '  Ljudligan ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(18, 'Yellow Bird', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(19, 'Nordisk Film ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(20, 'Tre Vänner Produktion AB', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(21, ' Film i Väst ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(22, '   Plattform Production ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(23, '  Coproduction Office ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(24, 'Essential Filmproduktion GmbH ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(25, 'Blueeyes Productions', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(26, 'Filmhuset Produksjoner ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(27, 'Netop Films', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(28, ' Gummi Film ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(29, '  Slot Machine ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(30, '  Gulldrengurinn ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(31, 'Köggull Filmworks', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(32, '  Leiknar Myndir', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(33, ' Pegasus Pictures', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(34, ' Netop Films', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(35, 'O Som e a Fúria', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(36, 'Blackmaria ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(37, 'O2 Filmes', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(38, ' Road Movies Filmproduktion ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(39, '  Alfama Films ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(40, '  Pt. Merantau Films ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(41, 'Miles Films', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(42, '  Mizan Productions', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(43, ' Rapi Films', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(44, ' Screenplay Films', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(45, '  Kharisma Starvision Plus', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(46, ' Guerilla Filmmaking', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(47, ' Tino Saroengallo Production', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(48, 'Opus Film', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(49, 'Nowhere ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(50, 'Akson Studio', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(51, '  Zespół Filmowy \"X\" ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(52, '  Biograf Jan Svěrák ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(53, '  Filmové Studio Barrandov ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(54, 'Total HelpArt T.H.A.', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(55, '  Bontonfilm', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(56, ' Česká televize', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(57, 'Riama Film', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(58, 'Pathé Consortium Cinéma ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(59, 'Gray-Film', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(60, '  Cristaldifilm', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(61, '  Les Films Ariane ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(62, '  RAI Radiotelevisione Italiana ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(63, 'Melampo Cinematografica', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(64, '  Miramax', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(65, ' Indigo Film', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(66, 'Medusa Film', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(67, 'Rai Cinema', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(68, '  Fandango ', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(69, '  Estudios Picasso', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(70, 'Tequila Gang', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(71, '  Esperanto Filmoj', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(72, ' Canal+', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(73, 'Gray-Film', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(74, '  Cristaldifilm', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(75, '   Las Producciones del Escorpión', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(76, '  Sogecine', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(77, 'Tornasol Films', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(78, '  Haddock Films', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(79, ' 100 Bares', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(80, 'El Deseo', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(81, ' R.T.I.', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(82, 'Blue Haze Entertainment', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(83, 'Belarusfilm', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(84, ' Mosfilm', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(85, 'Channel One Russia', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(86, 'Tabbak', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(87, ' Non-Stop Productions', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(88, 'Russia 1', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(89, 'Summit Entertainment', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(90, ' Black Label Media', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(91, 'Claudie Ossard Productions', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(92, 'Quad Productions', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(93, ' Gaumont', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(94, 'Quatsous Films', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(95, ' Wild Bunch', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(96, ' France 2 Cinéma', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(97, 'Cofinergie', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(98, 'Sputnik Oy', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(99, ' Villealfa Filmproductions', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(100, 'Sputnik', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(101, 'Cinet', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(102, ' Filmpool Nord', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(103, 'Russia 1', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(104, 'Summit Entertainment', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(105, ' Kinology', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(106, 'Les Films des Tournelles', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(107, ' Roissy Films', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(108, ' Noor Pictures', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(109, ' Bayt Al Shawareb', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(110, ' Immortal Entertainment', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(111, ' Razor Film Produktion GmbH', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(112, 'High Look Group', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(113, 'Mooz Films', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(114, ' Cedrus Invest Bank', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(115, 'Doha Film Institute', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(116, 'ZBROS', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(117, ' Wajnbrosse Productions', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(118, 'Adopt Films', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(119, 'Zeyno Film', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(120, ' CG Cinéma', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(121, 'Vistamar Filmproduktion', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(122, 'Corazón International', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(123, ' Wüste Filmproduktion', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(124, 'ANS Production', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(125, 'Barunson E&A', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(126, ' CJ Entertainment', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(127, 'TMS Entertainment', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(128, 'Egg Films', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(129, ' Show East', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(130, 'Moho Film', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(131, 'Next Entertainment World', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(132, ' CJ Entertainment', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(133, 'Muhan Investment', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(134, 'Yash Raj Films', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(135, ' Sippy Films', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(136, 'Dharma Productions', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(137, 'Yash Raj Films', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(138, ' Excel Entertainment', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(139, 'Tiger Baby Productions', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(140, 'Eros International', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(141, ' Colour Yellow Productions', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(142, 'BVG Films', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(143, 'Asia Union Film & Entertainment Ltd.', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(144, ' China Film Co-Production Corporation', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(145, 'Beijing New Picture Film Co.', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(146, ' Elite Group Enterprises', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(147, ' Miramax', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(148, 'Elite Group Enterprises', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(149, 'Edko Films', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(150, ' Beijing Film Studio', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(151, 'Era International', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(152, ' Silverwood Films', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(153, ' Tomson Films', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(154, 'Razor Film Produktion GmbH', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(155, 'Baa-Ram-Ewe', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(156, 'Sahamongkol Film International', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(157, 'GMM Pictures', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(158, ' Kick the Machine Films', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(159, ' GDH 559', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(160, 'Studio Ghibli', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(161, 'CoMix Wave Films', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(162, ' Akira Committee Company Ltd.', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(163, ' Tokyo Movie Shinsha (TMS)', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(164, 'Toho Company', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(165, ' Fukasaku-gumi', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(166, ' Kobi Co.', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(167, 'Nippon Shuppan Hanbai (Nippan) K.K.', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL),
(168, 'Shinchosha Company', NULL, NULL, '', '0000-00-00', '', '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_options`
--

CREATE TABLE `site_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_options`
--

INSERT INTO `site_options` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'title', 'Movie Recommendation System', NULL, '2023-09-07 09:07:45'),
(2, 'logo', 'img/justcse.png', NULL, NULL),
(3, 'systemname', 'Movie Recommendation System', NULL, '2023-09-07 09:07:28'),
(4, 'bgimage', 'storage/images/bglogin.jpg', NULL, NULL),
(5, 'contactemail', 'contactemail@gmail.com', NULL, NULL),
(6, 'contactphone', '01945506778', NULL, NULL),
(7, 'address', 'Cumilla,Chattogram,Bangladesh', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `department_id` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `salary_type` varchar(255) DEFAULT NULL,
  `salary_amount` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `email`, `email_verified_at`, `password`, `department_id`, `photo`, `bio`, `salary_type`, `salary_amount`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Staff 1', 'shahriarabiddut@gmail.com', NULL, '$2y$10$JqUgR8swKuztw6iStNCsL.mdbWl/83V.zuszfOMmcq4W2/kWPvo6e', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Staff 2', 'shahriarhmed@gmail.com', NULL, '$2y$10$EvXgTTGQnZlHuYVQb.15wOs0HWeRAwnNsaFmpEzvehsiCX9DmimVa', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Dilruba Easmin', 'dilruba@gmail.com', NULL, 'admin', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supports`
--

CREATE TABLE `supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `repliedby` int(11) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `address` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `mobile` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `address`, `photo`, `mobile`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Shahriar Ahmed', 'shahriarabiddut@gmail.com', NULL, '$2y$10$pGM4cyBjNj2xgqhZlQ0Xc.z6FXTCnCdRM5lvhzIqx.Av9o0aw1LQ6', 'House no:279,  Payab,Muradnagar,Comilla\r\nHouse no:279,  Payab,Muradnagar,Comilla', NULL, '01945506778', NULL, NULL, '2023-09-12 09:44:44'),
(2, 'Mst. Dilruba Easmin', '180137.cse@student.just.edu.bd', NULL, '$2y$10$Q2vGkmVPqNvTA.oXZYluwuZOdXoTVgY/OEZAOQU/LeZyxYwdgyHV2', 'Sheikh Hasina Girls Hostel, JUST.', NULL, '01794-010775', NULL, '2023-09-14 23:29:47', '2023-09-14 23:29:47'),
(3, 'Nondita Mondal', '180130.cse@student.just.edu.bd', NULL, '$2y$10$zHV..VFHp.zhr1sO9aIS8.hcWXxGvYSQr1nnurFPs4DCLn967U9Ui', 'Sheikh Hasina Girls Hostel, JUST.', NULL, '01845308765', NULL, '2023-09-14 23:34:11', '2023-09-14 23:34:11'),
(7, 'Nayeem', 'Nayeem@gmail.com', NULL, '$2y$10$LkqzfSssFJhVWqZn3rV.DuC.RaWym0zGbx4fyRqCcDpEz.NIKGTZi', 'JUST', NULL, '01734-897654', NULL, '2023-09-19 00:21:20', '2023-09-19 00:21:20'),
(8, 'Mst Dilruba Easmin', 'shadikulislamsajol@gmail.com', NULL, '$2y$10$aqO.yuU9WXbYuLdpBeTZy.68FxdsA2pXkiWg.ug6nmira78VfRUH2', NULL, NULL, NULL, NULL, '2023-12-23 01:50:26', '2023-12-23 01:50:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `casts`
--
ALTER TABLE `casts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `interests`
--
ALTER TABLE `interests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interest_casts`
--
ALTER TABLE `interest_casts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interest_countries`
--
ALTER TABLE `interest_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interest_directors`
--
ALTER TABLE `interest_directors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interest_genres`
--
ALTER TABLE `interest_genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interest_languages`
--
ALTER TABLE `interest_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interest_pcompanies`
--
ALTER TABLE `interest_pcompanies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interest_ratings`
--
ALTER TABLE `interest_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_casts`
--
ALTER TABLE `movie_casts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_countries`
--
ALTER TABLE `movie_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_directors`
--
ALTER TABLE `movie_directors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_genres`
--
ALTER TABLE `movie_genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_languages`
--
ALTER TABLE `movie_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_pcompanies`
--
ALTER TABLE `movie_pcompanies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_ratings`
--
ALTER TABLE `movie_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `production_companies`
--
ALTER TABLE `production_companies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `casts`
--
ALTER TABLE `casts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `interests`
--
ALTER TABLE `interests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `interest_casts`
--
ALTER TABLE `interest_casts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `interest_countries`
--
ALTER TABLE `interest_countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `interest_directors`
--
ALTER TABLE `interest_directors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `interest_genres`
--
ALTER TABLE `interest_genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `interest_languages`
--
ALTER TABLE `interest_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `interest_pcompanies`
--
ALTER TABLE `interest_pcompanies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `interest_ratings`
--
ALTER TABLE `interest_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `movie_casts`
--
ALTER TABLE `movie_casts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT for table `movie_countries`
--
ALTER TABLE `movie_countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `movie_directors`
--
ALTER TABLE `movie_directors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `movie_genres`
--
ALTER TABLE `movie_genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `movie_languages`
--
ALTER TABLE `movie_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `movie_pcompanies`
--
ALTER TABLE `movie_pcompanies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `movie_ratings`
--
ALTER TABLE `movie_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT for table `production_companies`
--
ALTER TABLE `production_companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
