-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 16 jan. 2024 à 14:47
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
  `restriction_age` enum('mineur','majeur') DEFAULT NULL,
  `pays` varchar(255) DEFAULT NULL,
  `langue` enum('français','anglais','japonais','arabe') DEFAULT NULL,
  `sous_titre` enum('français','anglais','japonais','arabe') DEFAULT NULL,
  PRIMARY KEY (`id_film`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id_film`, `nom_film`, `auteur`, `synopsis`, `date_creation`, `genre`, `duree_heures`, `duree_minutes`, `image`, `restriction_age`, `pays`, `langue`, `sous_titre`) VALUES
(1, 'justice', 'rwano', 'un mec pas ouf', '2001-04-09', 'JUSTICE', 1, 39, 'JESAISPASENCORE', 'mineur', 'FRANCE', 'français', 'français'),
(2, 'azeazezae', 'aezaze', 'aez', '1113-11-11', 'AZEAZE', 1, 1, 'AZEAZEAZEAZEAZE', 'mineur', 'FRANCE', 'anglais', 'japonais'),
(3, 'azeazezae', 'aezaze', 'aez', '1113-11-11', 'AZEAZE', 1, 1, 'AZEAZEAZEAZEAZE', 'mineur', 'FRANCE', 'anglais', 'japonais'),
(4, 'azeazezae', 'aezaze', 'aez', '1113-11-11', 'AZEAZE', 1, 1, 'AZEAZEAZEAZEAZE', 'mineur', 'FRANCE', 'japonais', 'japonais'),
(5, 'azeazezae', 'aezaze', 'aez', '1113-11-11', 'AZEAZE', 1, 1, 'AZEAZEAZEAZEAZE', 'mineur', 'FRANCE', 'arabe', 'japonais'),
(6, 'azeazezae', 'aezaze', 'aez', '1113-11-11', 'AZEAZE', 1, 1, 'AZEAZEAZEAZEAZE', 'mineur', 'FRANCE', 'arabe', 'anglais'),
(7, 'azeazezae', 'aezaze', 'aez', '1113-11-11', 'AZEAZE', 1, 1, 'AZEAZEAZEAZEAZE', 'mineur', 'FRANCE', 'arabe', 'japonais'),
(8, 'azeazezae', 'aezaze', 'aez', '1113-11-11', 'AZEAZE', 1, 1, 'AZEAZEAZEAZEAZE', 'mineur', 'FRANCE', 'arabe', 'arabe'),
(9, 'aze', 'aez', 'aza', '1111-11-11', 'AZEAZEAZEAZE', 1, 1, 'AZAEAZE', 'mineur', 'AZEAZEAZE', 'français', 'français'),
(10, 'Alexis', 'LeNul', 'un mec null', '1002-02-09', 'Action', 12, 2, 'uploads/Screenshot_5.png', 'majeur', 'France', 'français', 'français');

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
  PRIMARY KEY (`id_reservation`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id_reservation`, `places`, `date`, `prix`) VALUES
(1, 12, '1020-02-09', 0),
(2, 12, '1020-02-09', 0),
(3, 12, '1020-02-09', 24000);

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `nom`, `email`, `password`, `age`, `role`) VALUES
(1, 'adminuwu', 'nospher4z@gmail.com', 'uwu', 19, 'admin'),
(3, 'BAKAKABAKAKA', 'BAKAKABAKAKA@az.Fr', 'BAKAKABAKAKA', 1131313, 'BAKAKA'),
(12, 'ROHEE', 'alexislemecnull@lprs.fr', '$2y$10$sYAabmQUzrJKjGr1384ZXeH4QfAGHUTwngyc5Nbq/F3OAylCJ9kH6', 19, 'membre');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
