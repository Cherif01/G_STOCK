-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 12 nov. 2022 à 11:21
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `stock_invoice`
--

-- --------------------------------------------------------

--
-- Structure de la table `historique_appro`
--

CREATE TABLE `historique_appro` (
  `id` int(11) NOT NULL,
  `ID_article` int(11) DEFAULT NULL,
  `id_fournisseur` int(11) DEFAULT NULL,
  `Quantite_appro` int(11) NOT NULL,
  `Creer_par` int(11) DEFAULT NULL,
  `Creer_le` datetime DEFAULT current_timestamp(),
  `Modifier_par` int(11) DEFAULT NULL,
  `Modifier_le` datetime DEFAULT current_timestamp(),
  `Statut_appro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `table_approvisionnement`
--

CREATE TABLE `table_approvisionnement` (
  `id` int(11) NOT NULL,
  `id_article` int(11) DEFAULT NULL,
  `id_fournisseur` int(11) DEFAULT NULL,
  `Quantite_approvisionnement` int(11) DEFAULT NULL,
  `Creer_par` int(11) DEFAULT NULL,
  `Creer_le` date DEFAULT current_timestamp(),
  `Modifier_par` int(11) DEFAULT NULL,
  `Modifier_le` datetime DEFAULT current_timestamp(),
  `Statut_appprovisionnement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `table_approvisionnement`
--

INSERT INTO `table_approvisionnement` (`id`, `id_article`, `id_fournisseur`, `Quantite_approvisionnement`, `Creer_par`, `Creer_le`, `Modifier_par`, `Modifier_le`, `Statut_appprovisionnement`) VALUES
(1, 1, 0, 100, NULL, '2022-11-11', NULL, '2022-11-11 23:24:06', NULL),
(2, 1, 0, 100, NULL, '2022-11-12', NULL, '2022-11-12 10:02:57', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `table_appro_magasin`
--

CREATE TABLE `table_appro_magasin` (
  `id` int(11) NOT NULL,
  `id_article` int(11) DEFAULT NULL,
  `Quantite_appro` int(11) DEFAULT NULL,
  `Creer_par` int(11) DEFAULT NULL,
  `Creer_le` date DEFAULT current_timestamp(),
  `Modifier_par` int(11) DEFAULT NULL,
  `Modifier_le` datetime DEFAULT current_timestamp(),
  `Statut_apppro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `table_caisse`
--

CREATE TABLE `table_caisse` (
  `id` int(11) NOT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Libelle` varchar(100) DEFAULT NULL,
  `Montant_operation` double DEFAULT NULL,
  `Motif_operation` varchar(155) DEFAULT NULL,
  `Creer_par` int(11) DEFAULT NULL,
  `Creer_le` date DEFAULT current_timestamp(),
  `Modifier_par` int(11) DEFAULT NULL,
  `Modifier_le` datetime DEFAULT current_timestamp(),
  `Statut_caisse` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `table_categorie`
--

CREATE TABLE `table_categorie` (
  `id` int(11) NOT NULL,
  `nom_categorie` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `table_client`
--

CREATE TABLE `table_client` (
  `id` int(11) NOT NULL,
  `Nom_client` varchar(100) DEFAULT NULL,
  `Prenom_client` varchar(100) DEFAULT NULL,
  `Telephone` varchar(100) DEFAULT NULL,
  `Adresse` varchar(100) DEFAULT NULL,
  `ID_ville` int(11) DEFAULT NULL,
  `Creer_par` int(11) DEFAULT NULL,
  `Creer_le` date DEFAULT current_timestamp(),
  `Modifier_par` int(11) DEFAULT NULL,
  `Modifier_le` datetime DEFAULT current_timestamp(),
  `Statut_client` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `table_client`
--

INSERT INTO `table_client` (`id`, `Nom_client`, `Prenom_client`, `Telephone`, `Adresse`, `ID_ville`, `Creer_par`, `Creer_le`, `Modifier_par`, `Modifier_le`, `Statut_client`) VALUES
(1, 'Cherif', 'Imourane', '623554545', 'Bonfi', 1, 1, '2022-10-22', NULL, '2022-10-22 01:02:12', NULL),
(2, 'Diallo', 'Mariame Kesso', '654773232', 'Tintinkan', 4, 2, '2022-10-22', NULL, '2022-10-22 01:06:19', NULL),
(4, 'Kaba', 'Aminata', '0625225555', 'Kipe', 1, 2, '2022-11-03', 2, '2022-11-03 03:54:46', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `table_commande`
--

CREATE TABLE `table_commande` (
  `id` int(11) NOT NULL,
  `Numero_commande` int(11) DEFAULT NULL,
  `ID_article` int(11) DEFAULT NULL,
  `Ref_article` varchar(25) DEFAULT NULL,
  `Nom_produit` varchar(100) DEFAULT NULL,
  `Quantite_vendu` int(11) DEFAULT NULL,
  `Prix_achat_unitaire` double DEFAULT 0,
  `Prix_vente_unitaire` double DEFAULT NULL,
  `Reduction` double NOT NULL DEFAULT 0,
  `Creer_par` int(11) DEFAULT NULL,
  `Creer_le` date DEFAULT current_timestamp(),
  `Modifier_par` int(11) DEFAULT NULL,
  `Modifier_le` datetime DEFAULT current_timestamp(),
  `Statut_commande` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Déchargement des données de la table `table_commande`
--

INSERT INTO `table_commande` (`id`, `Numero_commande`, `ID_article`, `Ref_article`, `Nom_produit`, `Quantite_vendu`, `Prix_achat_unitaire`, `Prix_vente_unitaire`, `Reduction`, `Creer_par`, `Creer_le`, `Modifier_par`, `Modifier_le`, `Statut_commande`) VALUES
(1, 1, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, '2022-11-12', 1, '2022-11-12 09:56:56', 200),
(2, 1, 1, 'Art-001', 'iPhone XR', 5, 0, 10000, 0, 1, '2022-11-12', 1, '2022-11-12 09:57:15', 200),
(3, 2, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, '2022-11-12', 1, '2022-11-12 10:01:13', 200),
(4, 2, 1, 'Art-001', 'iPhone XR', 85, 1500000, 2000000, 0, 1, '2022-11-12', 1, '2022-11-12 10:01:51', 200),
(6, 3, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, '2022-11-12', 1, '2022-11-12 10:16:50', 200),
(7, 3, 1, 'Art-001', 'iPhone XR', 1, 1500000, 2000000, 0, 1, '2022-11-12', 1, '2022-11-12 10:16:57', 200);

-- --------------------------------------------------------

--
-- Structure de la table `table_commande_gerant`
--

CREATE TABLE `table_commande_gerant` (
  `id` int(11) NOT NULL,
  `Numero_commande` int(11) DEFAULT NULL,
  `ID_article` int(11) DEFAULT NULL,
  `Ref_article` varchar(25) DEFAULT NULL,
  `Nom_produit` varchar(100) DEFAULT NULL,
  `Quantite_vendu` int(11) DEFAULT NULL,
  `Prix_achat_unitaire` double DEFAULT 0,
  `Prix_vente_unitaire` double DEFAULT NULL,
  `Reduction` double NOT NULL DEFAULT 0,
  `Creer_par` int(11) DEFAULT NULL,
  `Creer_le` date DEFAULT current_timestamp(),
  `Modifier_par` int(11) DEFAULT NULL,
  `Modifier_le` datetime DEFAULT current_timestamp(),
  `Statut_commande` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `table_commande_gerant`
--

INSERT INTO `table_commande_gerant` (`id`, `Numero_commande`, `ID_article`, `Ref_article`, `Nom_produit`, `Quantite_vendu`, `Prix_achat_unitaire`, `Prix_vente_unitaire`, `Reduction`, `Creer_par`, `Creer_le`, `Modifier_par`, `Modifier_le`, `Statut_commande`) VALUES
(1, 1, NULL, NULL, NULL, NULL, 0, NULL, 0, 3, '2022-11-12', 3, '2022-11-12 10:09:02', 200),
(2, 1, 1, 'Art-001', 'iPhone XR', 1, 1500000, 2000000, 0, 3, '2022-11-12', 3, '2022-11-12 10:09:04', 200),
(3, 2, NULL, NULL, NULL, NULL, 0, NULL, 0, 3, '2022-11-12', 3, '2022-11-12 10:16:05', 200),
(4, 2, 1, 'Art-001', 'iPhone XR', 1, 1500000, 2000000, 0, 3, '2022-11-12', 3, '2022-11-12 10:16:11', 200);

-- --------------------------------------------------------

--
-- Structure de la table `table_configuration`
--

CREATE TABLE `table_configuration` (
  `id` int(11) NOT NULL,
  `type_configuration` varchar(100) DEFAULT NULL,
  `detail` varchar(100) DEFAULT NULL,
  `value` int(100) DEFAULT NULL,
  `Creer_par` int(11) DEFAULT NULL,
  `Creer_le` date DEFAULT current_timestamp(),
  `Modifier_par` int(11) DEFAULT NULL,
  `Modifier_le` datetime DEFAULT current_timestamp(),
  `Statut_configuration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `table_creance`
--

CREATE TABLE `table_creance` (
  `id` int(11) NOT NULL,
  `Numero_commande` int(11) DEFAULT NULL,
  `ID_client` int(11) DEFAULT NULL,
  `Montant_payer` double DEFAULT NULL,
  `Creer_par` int(11) DEFAULT NULL,
  `Creer_le` date DEFAULT current_timestamp(),
  `Modifier_par` int(11) DEFAULT NULL,
  `Modifier_le` datetime DEFAULT current_timestamp(),
  `Statut_creance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `table_creance`
--

INSERT INTO `table_creance` (`id`, `Numero_commande`, `ID_client`, `Montant_payer`, `Creer_par`, `Creer_le`, `Modifier_par`, `Modifier_le`, `Statut_creance`) VALUES
(1, 2, 1, 66000000, 1, '2022-11-12', NULL, '2022-11-12 10:02:15', NULL),
(2, 2, 1, 50000000, 1, '2022-11-12', 1, '2022-11-12 10:06:58', NULL),
(4, 2, 1, 50600000, 1, '2022-11-12', 1, '2022-11-12 10:08:29', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `table_fournisseur`
--

CREATE TABLE `table_fournisseur` (
  `id` int(11) NOT NULL,
  `Nom_fournisseur` varchar(100) DEFAULT NULL,
  `Prenom_fournisseur` varchar(100) DEFAULT NULL,
  `Telephone` varchar(100) DEFAULT NULL,
  `Adresse` varchar(100) DEFAULT NULL,
  `Societe` varchar(100) DEFAULT NULL,
  `Creer_par` int(11) DEFAULT NULL,
  `Creer_le` date DEFAULT current_timestamp(),
  `Modifier_par` int(11) DEFAULT NULL,
  `Modifier_le` datetime DEFAULT current_timestamp(),
  `Statut_fournisseur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `table_fournisseur`
--

INSERT INTO `table_fournisseur` (`id`, `Nom_fournisseur`, `Prenom_fournisseur`, `Telephone`, `Adresse`, `Societe`, `Creer_par`, `Creer_le`, `Modifier_par`, `Modifier_le`, `Statut_fournisseur`) VALUES
(0, 'Null', 'Null', NULL, NULL, NULL, NULL, '0000-00-00', NULL, '2022-11-02 01:06:20', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `table_guide`
--

CREATE TABLE `table_guide` (
  `id` int(11) NOT NULL,
  `Titre` varchar(100) DEFAULT NULL,
  `Contenu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `table_guide`
--

INSERT INTO `table_guide` (`id`, `Titre`, `Contenu`) VALUES
(1, 'Presentation', '<p>Qu\'est ce que G-STOCK ?</p>\r\n<p>G-stock, est une application web d&eacute;velopper en PHP int&eacute;grant plusieurs fonctionnalit&eacute;</p>\r\n<p>pour aider les <strong><em>PME&nbsp;</em></strong>&agrave; mieux g&eacute;rer leurs stock et la vente des articles</p>\r\n<p><img src=\"https://www.vuescript.com/wp-content/uploads/2017/08/coreui.png\" alt=\"\" width=\"750\" height=\"431\" /></p>'),
(2, 'GUIDE', '<p style=\"box-sizing: border-box; font-family: \'Open Sans\', sans-serif; margin-top: 0px; margin-bottom: 1rem; font-size: 16px; line-height: 24px; color: #878787; background-color: #ffffff;\">Ce tutoriel est con&ccedil;u dans le cadre de vous expliquer en bref</p>\r\n<p style=\"box-sizing: border-box; font-family: \'Open Sans\', sans-serif; margin-top: 0px; margin-bottom: 1rem; font-size: 16px; line-height: 24px; color: #878787; background-color: #ffffff;\">Comment utiliser ce logiciel complet afin d\'&ecirc;tre plus pr&eacute;cis dans les actions que vous allez r&eacute;aliser</p>\r\n<p style=\"box-sizing: border-box; font-family: \'Open Sans\', sans-serif; margin-top: 0px; margin-bottom: 1rem; font-size: 16px; line-height: 24px; color: #878787; background-color: #ffffff;\">Pour c&eacute;l&agrave;, nous vous d&eacute;mandons de bien se r&eacute;ferer ce manuel int&eacute;grer au syst&egrave;me pour vous faciliter</p>\r\n<p style=\"box-sizing: border-box; font-family: \'Open Sans\', sans-serif; margin-top: 0px; margin-bottom: 1rem; font-size: 16px; line-height: 24px; color: #878787; background-color: #ffffff;\">l\'utilisation du logiciel.</p>\r\n<p>&nbsp;</p>'),
(4, 'Explication', '<p><strong>La page d\'accueil</strong>Cette page vous montre un r&eacute;sum&eacute; sur l\'ensemble des activit&eacute;s m&eacute;n&eacute;s au sein de votre entreprise :</p>\r\n<ul>\r\n<li style=\"list-style-type: none;\">\r\n<ul style=\"list-style-type: square;\">\r\n<li>Total vendu par jour de la session active</li>\r\n<li>D&eacute;penses / Charges &eacute;ffectuez par jour</li>\r\n<li>Les cr&eacute;dits clients journalier</li>\r\n<li>Caisse</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<p style=\"padding-left: 40px;\">En plus un graphique dynamique qui vous r&eacute;sume &eacute;galement :</p>\r\n<ul>\r\n<li style=\"list-style-type: none;\">\r\n<ul style=\"list-style-type: square;\">\r\n<li>L\'ensemble des ventes r&eacute;aliser par votre PME / An</li>\r\n<li>Toutes vos d&eacute;penses</li>\r\n<li>Cr&eacute;dits&nbsp;</li>\r\n<li>Statistiques</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<p><img src=\"https://coreui.io/images/mockups/mockup_3_default.png\" alt=\"\" width=\"684\" height=\"413\" /></p>');

-- --------------------------------------------------------

--
-- Structure de la table `table_magasin`
--

CREATE TABLE `table_magasin` (
  `id` int(11) NOT NULL,
  `Reference_mag` varchar(50) DEFAULT NULL,
  `Adresse_mag` varchar(100) DEFAULT NULL,
  `ID_gerant` int(11) DEFAULT NULL,
  `Description_mag` varchar(100) DEFAULT NULL,
  `Statut_mag` int(11) DEFAULT 200
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `table_magasin`
--

INSERT INTO `table_magasin` (`id`, `Reference_mag`, `Adresse_mag`, `ID_gerant`, `Description_mag`, `Statut_mag`) VALUES
(1, 'KS-BT01', 'Corniche Sud', NULL, 'Centre Yansane', 200),
(2, 'KS-BT02', 'Constantin Rond-Point', 3, 'Arrondissement Vista-Bank', 200);

-- --------------------------------------------------------

--
-- Structure de la table `table_perte`
--

CREATE TABLE `table_perte` (
  `id` int(11) NOT NULL,
  `ID_Produit` int(11) DEFAULT NULL,
  `Quantite_perte` int(5) DEFAULT 0,
  `Creer_par` int(11) DEFAULT NULL,
  `Creer_le` date DEFAULT current_timestamp(),
  `Modifier_par` int(11) DEFAULT NULL,
  `Modifier_le` datetime DEFAULT current_timestamp(),
  `Statut_produit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `table_produit`
--

CREATE TABLE `table_produit` (
  `id` int(11) NOT NULL,
  `Reference_produit` varchar(50) DEFAULT NULL,
  `Nom_produit` varchar(100) DEFAULT NULL,
  `ID_fournisseur` int(11) DEFAULT NULL,
  `Quantite_produit` int(11) NOT NULL DEFAULT 0,
  `Prix_achat_unitaire` double DEFAULT NULL,
  `Prix_vente_unitaire` double DEFAULT NULL,
  `Categorie` varchar(20) DEFAULT NULL,
  `Type_unite_unitaire` varchar(20) DEFAULT NULL,
  `Image` varchar(100) DEFAULT NULL,
  `Description` int(255) DEFAULT NULL,
  `Seuil_minimum` int(11) NOT NULL DEFAULT 1,
  `Date_perumption` date NOT NULL DEFAULT current_timestamp(),
  `Creer_par` int(11) DEFAULT NULL,
  `Creer_le` date NOT NULL DEFAULT current_timestamp(),
  `Modifier_par` int(11) DEFAULT NULL,
  `Modifier_le` date NOT NULL DEFAULT current_timestamp(),
  `Statut_produit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `table_produit`
--

INSERT INTO `table_produit` (`id`, `Reference_produit`, `Nom_produit`, `ID_fournisseur`, `Quantite_produit`, `Prix_achat_unitaire`, `Prix_vente_unitaire`, `Categorie`, `Type_unite_unitaire`, `Image`, `Description`, `Seuil_minimum`, `Date_perumption`, `Creer_par`, `Creer_le`, `Modifier_par`, `Modifier_le`, `Statut_produit`) VALUES
(1, 'Art-001', 'iPhone XR', 0, 99, 1500000, 2000000, NULL, NULL, NULL, 0, 1, '2022-11-11', NULL, '2022-11-11', NULL, '2022-11-11', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `table_stock_magasin`
--

CREATE TABLE `table_stock_magasin` (
  `Id` int(11) NOT NULL,
  `Id_magasin` int(11) DEFAULT NULL,
  `Id_gerant` int(11) DEFAULT NULL,
  `ID_article` int(11) DEFAULT NULL,
  `Quantite_stock_magasin` int(11) DEFAULT NULL,
  `Creer_le` date NOT NULL DEFAULT current_timestamp(),
  `Modifer_le` date NOT NULL DEFAULT current_timestamp(),
  `Creer-par` int(11) DEFAULT NULL,
  `Modifier_par` int(11) DEFAULT NULL,
  `Statut` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `table_stock_magasin`
--

INSERT INTO `table_stock_magasin` (`Id`, `Id_magasin`, `Id_gerant`, `ID_article`, `Quantite_stock_magasin`, `Creer_le`, `Modifer_le`, `Creer-par`, `Modifier_par`, `Statut`) VALUES
(1, 2, 3, 1, 8, '2022-11-11', '2022-11-11', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `table_utilisateur`
--

CREATE TABLE `table_utilisateur` (
  `id` int(11) NOT NULL,
  `Nom_utilisateur` varchar(100) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Telephone` varchar(100) DEFAULT NULL,
  `Adresse` varchar(100) DEFAULT NULL,
  `Role` varchar(100) DEFAULT NULL,
  `Mot_de_passe` varchar(255) DEFAULT NULL,
  `Image` varchar(100) DEFAULT NULL,
  `Creer_par` int(11) DEFAULT NULL,
  `Creer_le` date DEFAULT current_timestamp(),
  `Modifier_par` int(11) DEFAULT NULL,
  `Modifier_le` datetime DEFAULT current_timestamp(),
  `Statut_utilisateur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `table_utilisateur`
--

INSERT INTO `table_utilisateur` (`id`, `Nom_utilisateur`, `Name`, `Telephone`, `Adresse`, `Role`, `Mot_de_passe`, `Image`, `Creer_par`, `Creer_le`, `Modifier_par`, `Modifier_le`, `Statut_utilisateur`) VALUES
(1, 'admin', 'Super Administrateur', '626 37 01 38', 'Bonfi - Heremakonon', 'Admin', '21232f297a57a5a743894a0e4a801fc3', 'cv.png', NULL, '0000-00-00', NULL, '2022-11-08 22:42:25', NULL),
(2, 'user1', 'Utilisateur 1', '655 00 00 01', 'Adr1', 'utilisateur', '4a7d1ed414474e4033ac29ccb8653d9b', NULL, NULL, '0000-00-00', NULL, '2022-11-09 01:19:14', NULL),
(3, 'omar', 'Oumar Traore', NULL, NULL, 'utilisateur', '4a7d1ed414474e4033ac29ccb8653d9b', 'avatar.png', 1, '2022-11-11', 1, '2022-11-11 23:22:54', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `table_vente`
--

CREATE TABLE `table_vente` (
  `id` int(11) NOT NULL,
  `Numero_commande` int(11) DEFAULT NULL,
  `ID_client` int(11) DEFAULT NULL,
  `Nom_client` varchar(50) DEFAULT NULL,
  `Etat_paiement` varchar(100) DEFAULT NULL,
  `Remise` double DEFAULT NULL,
  `Montant_total_SR` double NOT NULL DEFAULT 0,
  `Montant_total` double NOT NULL DEFAULT 0,
  `Creer_par` int(11) DEFAULT NULL,
  `Creer_le` date DEFAULT current_timestamp(),
  `Modifier_par` int(11) DEFAULT NULL,
  `Modifier_le` datetime DEFAULT current_timestamp(),
  `Statut_vente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `table_vente`
--

INSERT INTO `table_vente` (`id`, `Numero_commande`, `ID_client`, `Nom_client`, `Etat_paiement`, `Remise`, `Montant_total_SR`, `Montant_total`, `Creer_par`, `Creer_le`, `Modifier_par`, `Modifier_le`, `Statut_vente`) VALUES
(1, 1, NULL, NULL, 'Payer', NULL, 0, 50000, 1, '2022-11-12', 1, '2022-11-12 09:56:56', 200),
(2, 2, 1, 'Cherif Imourane', 'Payer', 2, 0, 166600000, 1, '2022-11-12', 1, '2022-11-12 10:01:13', 200),
(4, 3, NULL, NULL, 'Payer', 5, 2000000, 1900000, 1, '2022-11-12', 1, '2022-11-12 10:16:50', 200);

-- --------------------------------------------------------

--
-- Structure de la table `table_vente_gerant`
--

CREATE TABLE `table_vente_gerant` (
  `id` int(11) NOT NULL,
  `Numero_commande` int(11) DEFAULT NULL,
  `ID_client` int(11) DEFAULT NULL,
  `Nom_client` varchar(50) DEFAULT NULL,
  `Etat_paiement` varchar(100) DEFAULT NULL,
  `Remise` double DEFAULT NULL,
  `Montant_total_SR` double NOT NULL DEFAULT 0,
  `Montant_total` double NOT NULL DEFAULT 0,
  `Creer_par` int(11) DEFAULT NULL,
  `Creer_le` date DEFAULT current_timestamp(),
  `Modifier_par` int(11) DEFAULT NULL,
  `Modifier_le` datetime DEFAULT current_timestamp(),
  `Statut_vente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `table_vente_gerant`
--

INSERT INTO `table_vente_gerant` (`id`, `Numero_commande`, `ID_client`, `Nom_client`, `Etat_paiement`, `Remise`, `Montant_total_SR`, `Montant_total`, `Creer_par`, `Creer_le`, `Modifier_par`, `Modifier_le`, `Statut_vente`) VALUES
(1, 1, NULL, NULL, 'Payer', NULL, 2000000, 2000000, 3, '2022-11-12', 3, '2022-11-12 10:09:02', 200),
(2, 2, NULL, NULL, 'Payer', 2, 2000000, 1960000, 3, '2022-11-12', 3, '2022-11-12 10:16:05', 200);

-- --------------------------------------------------------

--
-- Structure de la table `table_ville`
--

CREATE TABLE `table_ville` (
  `id` int(11) NOT NULL,
  `Nom_ville` varchar(30) DEFAULT NULL,
  `Creer_par` int(11) DEFAULT NULL,
  `Creer_le` date DEFAULT current_timestamp(),
  `Modifier_par` int(11) DEFAULT NULL,
  `Modifier_le` datetime DEFAULT current_timestamp(),
  `Statut_ville` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `table_ville`
--

INSERT INTO `table_ville` (`id`, `Nom_ville`, `Creer_par`, `Creer_le`, `Modifier_par`, `Modifier_le`, `Statut_ville`) VALUES
(1, 'Conakry', NULL, '0000-00-00', NULL, '2022-10-22 00:52:58', NULL),
(2, 'Kankan', NULL, '0000-00-00', NULL, '2022-10-22 00:53:38', NULL),
(3, 'Labé', NULL, '0000-00-00', NULL, '2022-10-22 00:53:38', NULL),
(4, 'Mamou', NULL, '0000-00-00', NULL, '2022-10-22 00:53:38', NULL),
(5, 'Kindia', NULL, '0000-00-00', NULL, '2022-10-22 00:53:38', NULL),
(6, 'Kissidougou', NULL, '0000-00-00', NULL, '2022-10-22 00:53:38', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `historique_appro`
--
ALTER TABLE `historique_appro`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `table_approvisionnement`
--
ALTER TABLE `table_approvisionnement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Article_` (`id_article`),
  ADD KEY `fk_fournisseur` (`id_fournisseur`);

--
-- Index pour la table `table_appro_magasin`
--
ALTER TABLE `table_appro_magasin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `table_caisse`
--
ALTER TABLE `table_caisse`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `table_categorie`
--
ALTER TABLE `table_categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `table_client`
--
ALTER TABLE `table_client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ville` (`ID_ville`);

--
-- Index pour la table `table_commande`
--
ALTER TABLE `table_commande`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `table_commande_gerant`
--
ALTER TABLE `table_commande_gerant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `table_configuration`
--
ALTER TABLE `table_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `table_creance`
--
ALTER TABLE `table_creance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vente_gerant` (`Numero_commande`);

--
-- Index pour la table `table_fournisseur`
--
ALTER TABLE `table_fournisseur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `table_guide`
--
ALTER TABLE `table_guide`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `table_magasin`
--
ALTER TABLE `table_magasin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `table_perte`
--
ALTER TABLE `table_perte`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Article` (`ID_Produit`);

--
-- Index pour la table `table_produit`
--
ALTER TABLE `table_produit`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `Reference_produit` (`Reference_produit`);

--
-- Index pour la table `table_stock_magasin`
--
ALTER TABLE `table_stock_magasin`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `table_utilisateur`
--
ALTER TABLE `table_utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `table_vente`
--
ALTER TABLE `table_vente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Numero_commande` (`Numero_commande`),
  ADD KEY `FK_client` (`ID_client`);

--
-- Index pour la table `table_vente_gerant`
--
ALTER TABLE `table_vente_gerant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Numero_commande` (`Numero_commande`);

--
-- Index pour la table `table_ville`
--
ALTER TABLE `table_ville`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `historique_appro`
--
ALTER TABLE `historique_appro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `table_approvisionnement`
--
ALTER TABLE `table_approvisionnement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `table_appro_magasin`
--
ALTER TABLE `table_appro_magasin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `table_caisse`
--
ALTER TABLE `table_caisse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `table_categorie`
--
ALTER TABLE `table_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `table_client`
--
ALTER TABLE `table_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `table_commande`
--
ALTER TABLE `table_commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `table_commande_gerant`
--
ALTER TABLE `table_commande_gerant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `table_configuration`
--
ALTER TABLE `table_configuration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `table_creance`
--
ALTER TABLE `table_creance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `table_fournisseur`
--
ALTER TABLE `table_fournisseur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `table_guide`
--
ALTER TABLE `table_guide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `table_magasin`
--
ALTER TABLE `table_magasin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `table_perte`
--
ALTER TABLE `table_perte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `table_produit`
--
ALTER TABLE `table_produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `table_stock_magasin`
--
ALTER TABLE `table_stock_magasin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `table_utilisateur`
--
ALTER TABLE `table_utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `table_vente`
--
ALTER TABLE `table_vente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `table_vente_gerant`
--
ALTER TABLE `table_vente_gerant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `table_ville`
--
ALTER TABLE `table_ville`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `table_approvisionnement`
--
ALTER TABLE `table_approvisionnement`
  ADD CONSTRAINT `fk_fournisseur` FOREIGN KEY (`id_fournisseur`) REFERENCES `table_fournisseur` (`id`);

--
-- Contraintes pour la table `table_client`
--
ALTER TABLE `table_client`
  ADD CONSTRAINT `FK_ville` FOREIGN KEY (`ID_ville`) REFERENCES `table_ville` (`id`);

--
-- Contraintes pour la table `table_vente`
--
ALTER TABLE `table_vente`
  ADD CONSTRAINT `FK_client` FOREIGN KEY (`ID_client`) REFERENCES `table_client` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
