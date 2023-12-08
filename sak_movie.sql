-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 08 déc. 2023 à 10:09
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
  `theme` varchar(100) NOT NULL,
  `date_creation` date NOT NULL,
  `duree` int(11) NOT NULL,
  `restriction_age` int(11) NOT NULL,
  PRIMARY KEY (`id_film`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `email_confirmation` int(11) NOT NULL,
  PRIMARY KEY (`id_reservation`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `salle_cinema`
--

DROP TABLE IF EXISTS `salle_cinema`;
CREATE TABLE IF NOT EXISTS `salle_cinema` (
  `id_salle_cinema` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `numero_salle` int(11) NOT NULL,
  PRIMARY KEY (`id_salle_cinema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`id_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `nom`, `email`, `password`, `age`) VALUES
(1, 'db', 'i.debbab@lprs.fr', 'ilyes123', 18),
(2, 'ii', 'samy@lprs.fr', 'samy123', 19),
(3, 'AZE', 'az@az.Fr', 'AZE', 12);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
