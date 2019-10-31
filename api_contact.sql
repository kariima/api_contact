-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 31 oct. 2019 à 16:05
-- Version du serveur :  10.3.16-MariaDB
-- Version de PHP :  7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `api_contact`
--

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `nom`, `prenom`, `telephone`, `email`) VALUES
(1, 'Joli', 'Harry', 115446213, 'gmail'),
(2, 'Potter', 'Harry', 109672750, 'gmail'),
(3, 'Potter', 'Emilie', 115114372, 'gmail'),
(4, 'Potter', 'Emilie', 114844683, 'gmail'),
(5, 'Potter', 'Emilie', 108138705, 'hotmail'),
(6, 'Joli', 'Harry', 115398115, 'hotmail'),
(7, 'Joli', 'Emilie', 105950891, 'gmail'),
(8, 'Potter', 'Emilie', 114511666, 'gmail'),
(9, 'Joli', 'Harry', 107353110, 'gmail'),
(10, 'Potter', 'Emilie', 113838238, 'hotmail'),
(11, 'Potter', 'Harry', 109669249, 'hotmail'),
(12, 'Joli', 'Harry', 104377788, 'gmail'),
(13, 'Potter', 'Emilie', 111490430, 'gmail'),
(14, 'Joli', 'Emilie', 103829348, 'hotmail'),
(15, 'Joli', 'Harry', 104800279, 'hotmail'),
(16, 'Joli', 'Emilie', 115644315, 'gmail'),
(17, 'Joli', 'Harry', 111643274, 'hotmail'),
(18, 'Potter', 'Emilie', 112045259, 'hotmail'),
(19, 'Potter', 'Harry', 108946004, 'gmail'),
(20, 'Potter', 'Harry', 109544531, 'gmail');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20191028154414', '2019-10-28 15:45:08');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
