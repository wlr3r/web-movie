-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 19 jan. 2024 à 10:25
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sak_movie`
--

-- --------------------------------------------------------

--
-- Structure de la table `connexion`
--

DROP TABLE IF EXISTS `connexion`;
CREATE TABLE IF NOT EXISTS `connexion` (
  `mail` varchar(255) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

DROP TABLE IF EXISTS `film`;
CREATE TABLE IF NOT EXISTS `film` (
  `id_film` int(11) NOT NULL AUTO_INCREMENT,
  `nom_film` varchar(255) DEFAULT NULL,
  `auteur` varchar(255) DEFAULT NULL,
  `synopsis` text,
  `date_creation` date DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `duree_heures` int(11) DEFAULT NULL,
  `duree_minutes` int(11) DEFAULT NULL,
  `image` text,
  `pays` varchar(255) DEFAULT NULL,
  `langue` varchar(255) DEFAULT NULL,
  `sous_titre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_film`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id_film`, `nom_film`, `auteur`, `synopsis`, `date_creation`, `genre`, `duree_heures`, `duree_minutes`, `image`, `pays`, `langue`, `sous_titre`) VALUES
(1, 'justice', 'rwano', 'un mec pas ouf', '2001-04-09', 'JUSTICE', 1, 39, 'JESAISPASENCORE', 'FRANCE', 'français', 'français'),
(2, 'azeazezae', 'aezaze', 'aez', '1113-11-11', 'AZEAZE', 1, 1, 'AZEAZEAZEAZEAZE', 'FRANCE', 'anglais', 'japonais'),
(3, 'azeazezae', 'aezaze', 'aez', '1113-11-11', 'AZEAZE', 1, 1, 'AZEAZEAZEAZEAZE', 'FRANCE', 'anglais', 'japonais'),
(4, 'azeazezae', 'aezaze', 'aez', '1113-11-11', 'AZEAZE', 1, 1, 'AZEAZEAZEAZEAZE', 'FRANCE', 'japonais', 'japonais'),
(5, 'azeazezae', 'aezaze', 'aez', '1113-11-11', 'AZEAZE', 1, 1, 'AZEAZEAZEAZEAZE', 'FRANCE', 'arabe', 'japonais'),
(6, 'azeazezae', 'aezaze', 'aez', '1113-11-11', 'AZEAZE', 1, 1, 'AZEAZEAZEAZEAZE', 'FRANCE', 'arabe', 'anglais'),
(7, 'azeazezae', 'aezaze', 'aez', '1113-11-11', 'AZEAZE', 1, 1, 'AZEAZEAZEAZEAZE', 'FRANCE', 'arabe', 'japonais'),
(8, 'azeazezae', 'aezaze', 'aez', '1113-11-11', 'AZEAZE', 1, 1, 'AZEAZEAZEAZEAZE', 'FRANCE', 'arabe', 'arabe'),
(9, 'aze', 'aez', 'aza', '1111-11-11', 'AZEAZEAZEAZE', 1, 1, 'AZAEAZE', 'AZEAZEAZE', 'français', 'français'),
(10, 'Alexis', 'LeNul', 'un mec null', '1002-02-09', 'Action', 12, 2, 'uploads/Screenshot_5.png', 'France', 'français', 'français'),
(11, 'Le Parrain', 'Ayoub', 'un parain', '2001-02-09', 'Action', 2, 10, 'uploads/Le_Parrain_(film).png', NULL, NULL, NULL),
(12, 'dem4s', 'Samy', 'dev', '2023-02-09', 'Action', 2, 10, 'uploads/118670879.png', 'france', 'français', NULL),
(13, 'dem4s', 'Samy', 'dev', '2023-02-09', 'Action', 2, 10, 'uploads/118670879.png', 'france', 'français', NULL),
(14, 'dem4s', 'Samy', 'dev', '2023-02-09', 'Action', 2, 10, 'uploads/118670879.png', 'france', 'français', NULL),
(15, 'dem4s', 'dem4s', 'dev', '2025-02-09', 'Action', 13, 21, 'uploads/118670879.png', 'etats-unis', NULL, NULL),
(16, 'dem4s', 'dem4s', 'dev', '2025-02-09', 'Action', 13, 21, 'uploads/118670879.png', 'etats-unis', 'anglais', NULL),
(17, 'dem4s', 'dem4s', 'dev', '2025-02-09', 'Action', 13, 21, 'uploads/118670879.png', 'etats-unis', 'anglais', NULL),
(18, 'dem4s', 'dem4s', 'dev', '2025-02-09', 'Action', 13, 21, 'uploads/118670879.png', 'italie', 'japonais', NULL),
(19, 'dem4s', 'dem4s', 'dev', '2025-02-09', 'Action', 13, 21, 'uploads/118670879.png', 'italie', NULL, NULL),
(20, 'dem4s', 'dem4s', 'dev', '2025-02-09', 'Action', 13, 21, 'uploads/118670879.png', 'italie', 'autre', NULL),
(21, 'dem4s', 'dem4s', 'dev', '2025-02-09', 'Action', 13, 21, 'uploads/118670879.png', 'italie', 'autre', NULL),
(22, 'dem4s', 'hdidogs', 'dev', '2025-02-09', 'Action', 13, 21, 'uploads/151913373.png', 'italie', 'autre', NULL),
(23, 'dem4s', 'hdidogs', 'dev', '2025-02-09', 'Action', 13, 21, 'uploads/151913373.png', 'italie', 'espagnol', NULL),
(24, 'dem4s', 'Samy', 'Test', '3033-02-09', 'Action', 23, 12, 'uploads/118670879.png', 'etats-unis', 'japonais', NULL),
(25, 'dem4s', 'Samy', 'TESTT', '3311-02-02', 'Action', 124, 12, 'uploads/118670879.png', 'etats-unis', 'japonais', ''),
(26, 'dem4s', 'Samy', 'TESTT', '3311-02-02', 'Action', 124, 12, 'uploads/118670879.png', 'etats-unis', 'japonais', ''),
(27, 'dem4s', 'Samy', 'TESTT', '3311-02-02', 'Action', 124, 12, 'uploads/118670879.png', 'etats-unis', 'japonais', ''),
(28, 'dem4s', 'Samy', 'TESTT', '3311-02-02', 'Action', 124, 12, 'uploads/118670879.png', 'etats-unis', 'japonais', ''),
(29, 'dem4s', 'Samy', 'TESTT', '3311-02-02', 'Action', 124, 12, 'uploads/118670879.png', 'etats-unis', 'japonais', NULL),
(30, 'dem4s', 'Samy', 'TESTT', '3311-02-02', 'Action', 124, 12, 'uploads/118670879.png', 'etats-unis', 'japonais', ''),
(31, 'dem4s', 'Samy', 'TESTT', '3311-02-02', 'Action', 124, 12, 'uploads/118670879.png', 'etats-unis', 'japonais', ''),
(32, 'dem4s', 'Samy', 'TESTT', '3311-02-02', 'Action', 124, 12, 'uploads/118670879.png', 'etats-unis', 'japonais', ''),
(33, 'dem4s', 'Samy', 'TESTT', '3311-02-02', 'Action', 124, 12, 'uploads/Capture.PNG', 'etats-unis', 'japonais', ''),
(34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Anglais'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Français'),
(36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Espagnol'),
(37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Japonais'),
(38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chinois'),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Coréen'),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Autre'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Anglais', NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Français', NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Espagnol', NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Japonais', NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chinois', NULL),
(46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Coréen', NULL),
(47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Autre', NULL),
(48, 'dem4s', 'Samy', 'TESTT', '3311-02-02', 'Action', 124, 12, 'uploads/Capture.PNG', 'coree-du-sud', 'italien', ''),
(49, 'dem4s', 'Samy', 'TESTT', '3311-02-02', 'Action', 124, 12, 'uploads/Le_Parrain_(film).png', 'coree-du-sud', 'italien', NULL),
(50, 'dem4s', 'Samy', 'TESTT', '3311-02-02', 'Action', 124, 12, 'uploads/Le_Parrain_(film).png', 'coree-du-sud', 'italien', NULL),
(51, 'dem4s', 'Samy', 'TESTT', '3311-02-02', 'Action', 124, 12, 'uploads/Le_Parrain_(film).png', 'coree-du-sud', 'italien', NULL),
(52, 'dem4s', 'Samy', 'TESTT', '3311-02-02', 'Action', 124, 12, 'uploads/Le_Parrain_(film).png', 'coree-du-sud', 'italien', NULL),
(53, 'dem4s', 'Samy', 'TESTT', '3311-02-02', 'Action', 124, 12, 'uploads/Le_Parrain_(film).png', 'coree-du-sud', 'espagnol', NULL),
(54, 'dem4s', 'zzzz', 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz', '2222-12-12', 'JUSTICE', 12, 13, 'uploads/151913373.png', 'italie', 'chinois', NULL),
(55, 'dem4s', 'zzzz', 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz', '2222-12-12', 'JUSTICE', 12, 13, 'uploads/151913373.png', 'italie', 'chinois', NULL),
(56, 'dem4s', 'zzzz', 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz', '2222-12-12', 'JUSTICE', 12, 13, 'uploads/151913373.png', 'italie', 'chinois', NULL),
(57, 'dem4s', 'zzzz', 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz', '2222-12-12', 'JUSTICE', 12, 13, 'uploads/151913373.png', 'italie', 'chinois', NULL),
(58, 'dem4s', 'zzzz', 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz', '2222-12-12', 'JUSTICE', 12, 48, 'uploads/151913373.png', 'royaume-uni', 'espagnol', NULL),
(59, 'dem4s', 'dem4s', 'SAMSAMSAMSAMSAMSAM', '2222-12-12', 'JUSTICE', 12, 48, 'uploads/118670879.png', 'france', 'francais', NULL),
(60, 'dem4s', 'dem4s', 'SAMSAMSAMSAMSAMSAM', '2222-12-12', 'JUSTICE', 12, 48, 'uploads/118670879.png', 'france', 'francais', NULL),
(61, 'dem4s', 'dem4s', 'SAMSAMSAMSAMSAMSAM', '2222-12-12', 'JUSTICE', 12, 48, 'uploads/118670879.png', 'france', 'francais', NULL),
(62, 'dem4s', 'dem4s', 'JSAIS PASA\r\nSAZ', '1233-03-12', 'JUSTICE', 1, 23, 'uploads/118670879.png', 'france', 'francais', NULL),
(63, 'dem4s', 'dem4s', 'JSAIS PASA\r\nSAZ', '1233-03-12', 'JUSTICE', 1, 23, 'uploads/118670879.png', 'france', 'francais', NULL),
(64, 'dem4s', 'dem4sdem4s', 'dem4sdem4sdem4sdem4sdem4sdem4sdem4s', '2024-02-09', 'Action', 1, 32, 'uploads/118670879.png', 'espagne', 'anglais', NULL),
(65, 'dem4s', 'dem4sdem4s', 'dem4sdem4sdem4sdem4sdem4sdem4sdem4s', '2024-02-09', 'Action', 1, 32, 'uploads/118670879.png', 'espagne', 'anglais', NULL),
(66, 'dem4s', 'dem4sdem4s', 'dem4sdem4sdem4sdem4sdem4sdem4sdem4s', '2024-02-09', 'Action', 1, 32, 'uploads/118670879.png', 'espagne', 'anglais', NULL),
(67, 'dem4s', 'dem4sdem4s', 'dem4sdem4sdem4sdem4sdem4sdem4sdem4s', '2024-02-09', 'Action', 1, 32, 'uploads/118670879.png', 'espagne', 'anglais', NULL),
(68, 'dem4s', 'dem4sdem4s', 'dem4sdem4sdem4sdem4sdem4sdem4sdem4s', '2024-02-09', 'Action', 1, 32, 'uploads/118670879.png', 'espagne', 'anglais', NULL),
(69, 'dem4s', 'dem4sdem4s', 'dem4sdem4sdem4sdem4sdem4sdem4sdem4s', '2024-02-09', 'Action', 1, 32, 'uploads/118670879.png', 'espagne', 'anglais', NULL),
(70, 'dem4s', 'dem4sdem4s', 'dem4sdem4sdem4sdem4sdem4sdem4sdem4s', '2024-02-09', 'Action', 1, 32, 'uploads/118670879.png', 'espagne', 'anglais', ''),
(71, 'dem4s', 'dem4sdem4s', 'dem4sdem4sdem4sdem4sdem4sdem4sdem4s', '2024-02-09', 'Action', 1, 32, 'uploads/118670879.png', 'espagne', 'anglais', ''),
(72, 'dem4sAZEAZEAZE', 'dem4sdem4sAZEAZEAZE', 'dem4sdem4sdem4sdem4sdem4sdem4sdem4sAZEAZE', '2024-02-09', 'Action', 11, 32, NULL, 'italie', 'italien', ''),
(73, 'dem4sAZEAZEAZE', 'dem4sdem4sAZEAZEAZE', 'dem4sdem4sdem4sdem4sdem4sdem4sdem4sAZEAZE', '2024-02-09', 'Action', 11, 32, 'uploads/118670879.png', 'italie', 'italien', ''),
(74, 'dem4sAZEAZEAZE', 'dem4sdem4sAZEAZEAZE', 'dem4sdem4sdem4sdem4sdem4sdem4sdem4sAZEAZE', '2024-02-09', 'Action', 11, 32, 'uploads/118670879.png', 'italie', 'italien', ''),
(75, 'dem4sAZEAZEAZE', 'dem4sdem4sAZEAZEAZE', 'dem4sdem4sdem4sdem4sdem4sdem4sdem4sAZEAZE', '2024-02-09', 'Action', 11, 32, 'uploads/118670879.png', 'italie', 'italien', NULL),
(76, 'dem4sAZEAZEAZE', 'dem4sdem4sAZEAZEAZE', 'dem4sdem4sdem4sdem4sdem4sdem4sdem4sAZEAZE', '2024-02-09', 'Action', 11, 32, 'uploads/118670879.png', 'italie', 'italien', NULL),
(77, 'dem4sAZEAZEAZE', 'dem4sdem4sAZEAZEAZE', 'dem4sdem4sdem4sdem4sdem4sdem4sdem4sAZEAZE', '2024-02-09', 'Action', 11, 32, 'uploads/118670879.png', 'italie', 'italien', ''),
(78, 'dem4sAZEAZEAZE', 'dem4sdem4sAZEAZEAZE', 'dem4sdem4sdem4sdem4sdem4sdem4sdem4sAZEAZE', '2024-02-09', 'Action', 11, 32, 'uploads/118670879.png', 'italie', 'italien', 'jesaispas'),
(79, 'dem4sAZEAZEAZE', 'dem4sdem4sAZEAZEAZE', 'dem4sdem4sdem4sdem4sdem4sdem4sdem4sAZEAZE', '2024-02-09', 'Action', 11, 32, NULL, 'italie', 'italien', 'jesaispas'),
(80, 'dem4sAZEAZEAZE', 'dem4sdem4sAZEAZEAZE', 'dem4sdem4sdem4sdem4sdem4sdem4sdem4sAZEAZE', '2024-02-09', 'Action', 11, 32, NULL, 'italie', 'italien', NULL),
(81, 'dem4sAZEAZEAZE', 'dem4sdem4sAZEAZEAZE', 'dem4sdem4sdem4sdem4sdem4sdem4sdem4sAZEAZE', '2024-02-09', 'Action', 11, 32, NULL, 'italie', 'italien', 'jesaispas');

-- --------------------------------------------------------

--
-- Structure de la table `genre_film`
--

DROP TABLE IF EXISTS `genre_film`;
CREATE TABLE IF NOT EXISTS `genre_film` (
  `aventure` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `comedie` varchar(255) NOT NULL,
  `horreur` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `realisation`
--

DROP TABLE IF EXISTS `realisation`;
CREATE TABLE IF NOT EXISTS `realisation` (
  `id_realisation` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(55) NOT NULL,
  `prenom` varchar(55) NOT NULL,
  `date_naissance` date NOT NULL,
  PRIMARY KEY (`id_realisation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `id_reservation` int(11) NOT NULL AUTO_INCREMENT,
  `places` int(11) NOT NULL,
  `date` date NOT NULL,
  `prix` int(11) NOT NULL,
  `ref_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_reservation`),
  KEY `fk_reservation_utilsateur` (`ref_user`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id_reservation`, `places`, `date`, `prix`, `ref_user`) VALUES
(1, 12, '1020-02-09', 0, NULL),
(2, 12, '1020-02-09', 0, NULL),
(3, 12, '1020-02-09', 24000, NULL),
(4, 12, '2024-01-20', 0, NULL),
(5, 12, '2024-01-20', 24000, NULL),
(6, 12, '2024-01-20', 18000, NULL),
(7, 4, '2024-01-20', 8000, NULL),
(8, 4, '2024-01-20', 8000, NULL),
(9, 4, '2024-01-20', 8000, NULL),
(10, 4, '2024-01-20', 8000, NULL),
(11, 4, '2024-01-20', 8000, NULL),
(12, 4, '2024-01-20', 8000, NULL),
(13, 4, '2024-01-20', 8000, NULL),
(14, 4, '2024-01-20', 8000, NULL),
(15, 4, '2024-01-20', 8000, NULL),
(16, 4, '2024-01-20', 8000, NULL),
(17, 2, '2024-01-21', 4000, NULL),
(18, 2, '2024-01-20', 4000, NULL),
(19, 2, '2024-01-20', 4000, NULL),
(20, 2, '2024-01-20', 4000, NULL),
(21, 2, '2024-01-20', 4000, NULL),
(22, 2, '2024-01-20', 4000, NULL),
(23, 2, '2024-01-20', 4000, 15),
(24, 2, '2024-01-20', 4000, 1);

-- --------------------------------------------------------

--
-- Structure de la table `salle_cinema`
--

DROP TABLE IF EXISTS `salle_cinema`;
CREATE TABLE IF NOT EXISTS `salle_cinema` (
  `id_salle_cinema` int(11) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `prix` float NOT NULL,
  `numero_salle` int(11) NOT NULL,
  PRIMARY KEY (`id_salle_cinema`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `salle_cinema`
--

INSERT INTO `salle_cinema` (`id_salle_cinema`, `type`, `prix`, `numero_salle`) VALUES
(1, 'vip', 2000, 1),
(2, 'premium', 1500, 2),
(3, 'standard', 100, 3);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(55) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`id_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `nom`, `email`, `password`, `age`, `role`) VALUES
(1, 'admin', 'nospher4z@gmail.com', '$2y$10$YdGxugCEEb8TIkEbyCEhiOClq0JpTFl/u6bnA4HTKE891N4ww/bbO', 19, 'admin'),
(12, 'alexis', 'alexislemecnull@lprs.fr', '$2y$10$sYAabmQUzrJKjGr1384ZXeH4QfAGHUTwngyc5Nbq/F3OAylCJ9kH6', 19, 'dev'),
(14, 'alexis', 'Hdidogs.pro@gmail.com', '$2y$10$Qvj2kSbREFAzEZZEBaPIFeRH.YWD5C7FvsKiLN7vBQXrq0/HRK2WK', 19, 'membre'),
(15, 'random', 'randommail@gmail.com', '$2y$10$bVDQYHN8rdhMW.x5yDDRhOWLHJkdxf6MkhJjlHoTiutKRR6tyPiVi', 18, 'membre');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `fk_reservation_utilsateur` FOREIGN KEY (`ref_user`) REFERENCES `utilisateur` (`id_utilisateur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
