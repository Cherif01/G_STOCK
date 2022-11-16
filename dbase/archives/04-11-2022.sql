-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 04 nov. 2022 à 12:02
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

--
-- Déchargement des données de la table `historique_appro`
--

INSERT INTO `historique_appro` (`id`, `ID_article`, `id_fournisseur`, `Quantite_appro`, `Creer_par`, `Creer_le`, `Modifier_par`, `Modifier_le`, `Statut_appro`) VALUES
(1, 4, NULL, 50, NULL, '2022-10-25 00:00:00', NULL, '2022-10-25 16:50:46', NULL),
(2, 4, NULL, 50, NULL, '2022-10-25 00:00:00', NULL, '2022-10-25 16:50:51', NULL),
(3, 0, NULL, 111, NULL, '2022-10-25 00:00:00', NULL, '2022-10-25 16:54:02', NULL),
(4, 5, NULL, 100, NULL, '2022-10-25 17:49:17', NULL, '2022-10-25 17:49:17', NULL),
(5, 5, NULL, 20, NULL, '2022-10-26 16:43:58', NULL, '2022-10-26 16:43:58', NULL),
(6, 7, NULL, 100, NULL, '2022-10-28 13:04:22', NULL, '2022-10-28 13:04:22', NULL),
(7, 7, NULL, 500, NULL, '2022-10-28 17:25:36', NULL, '2022-10-28 17:25:36', NULL),
(8, 5, NULL, 1, NULL, '2022-10-28 18:31:16', NULL, '2022-10-28 18:31:16', NULL),
(9, 9, 1, 20, NULL, '2022-10-29 18:45:54', NULL, '2022-10-29 18:45:54', NULL);

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
(1, 2, 0, 10, NULL, '2022-11-02', NULL, '2022-11-02 01:07:23', NULL),
(2, 8, 0, 50, NULL, '2022-11-02', NULL, '2022-11-02 01:07:53', NULL),
(3, 7, 0, 25, NULL, '2022-11-02', NULL, '2022-11-02 01:19:10', NULL),
(4, 9, 0, 25, NULL, '2022-11-02', NULL, '2022-11-02 01:25:39', NULL),
(5, 5, 0, 15, NULL, '2022-11-02', NULL, '2022-11-02 03:26:11', NULL),
(6, 39, 0, 55, NULL, '2022-11-02', NULL, '2022-11-02 03:44:23', NULL),
(7, 4, 0, 100, NULL, '2022-11-02', NULL, '2022-11-02 04:03:12', NULL),
(8, 13, 0, 15, NULL, '2022-11-02', NULL, '2022-11-02 04:03:45', NULL),
(9, 2, 0, 100, NULL, '2022-11-03', NULL, '2022-11-03 02:55:37', NULL),
(10, 11, 0, 50, NULL, '2022-11-03', NULL, '2022-11-03 03:57:45', NULL),
(11, 8, 0, 5, NULL, '2022-11-03', NULL, '2022-11-03 03:59:37', NULL),
(12, 8, 0, 5, NULL, '2022-11-03', NULL, '2022-11-03 03:59:44', NULL),
(13, 8, 0, 5, NULL, '2022-11-03', NULL, '2022-11-03 03:59:47', NULL),
(14, 8, 0, 5, NULL, '2022-11-03', NULL, '2022-11-03 03:59:53', NULL),
(15, 8, 0, 5, NULL, '2022-11-03', NULL, '2022-11-03 04:00:04', NULL),
(16, 8, 0, 5, NULL, '2022-11-03', NULL, '2022-11-03 04:00:08', NULL),
(17, 8, 0, 5, NULL, '2022-11-03', NULL, '2022-11-03 04:00:16', NULL),
(18, 79, 0, 16, NULL, '2022-11-03', NULL, '2022-11-03 04:00:40', NULL),
(19, 79, 0, 16, NULL, '2022-11-03', NULL, '2022-11-03 04:00:53', NULL),
(20, 12, 0, 500, NULL, '2022-11-03', NULL, '2022-11-03 11:37:06', NULL);

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

--
-- Déchargement des données de la table `table_appro_magasin`
--

INSERT INTO `table_appro_magasin` (`id`, `id_article`, `Quantite_appro`, `Creer_par`, `Creer_le`, `Modifier_par`, `Modifier_le`, `Statut_apppro`) VALUES
(1, 3, 5, NULL, '2022-11-02', NULL, '2022-11-02 03:14:22', NULL),
(2, 2, 10, NULL, '2022-11-03', NULL, '2022-11-03 02:55:45', NULL),
(3, 2, 5, NULL, '2022-11-03', NULL, '2022-11-03 02:56:37', NULL);

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

--
-- Déchargement des données de la table `table_caisse`
--

INSERT INTO `table_caisse` (`id`, `Type`, `Libelle`, `Montant_operation`, `Motif_operation`, `Creer_par`, `Creer_le`, `Modifier_par`, `Modifier_le`, `Statut_caisse`) VALUES
(1, 'Charges', 'Achat des materiels de bureaux', 200000, 'Achats des chaises, outils', 3, '2022-11-04', 3, '2022-11-04 03:16:46', NULL),
(2, 'Sortie', 'Sortie de caisse', 650000, 'Sortie de caisse a Alpha cire diallo', 3, '2022-11-04', 3, '2022-11-04 03:32:36', NULL),
(3, 'Entrer', 'Envoie de moussa', 40000, 'Appro - caisse', 2, '2022-11-04', 2, '2022-11-04 05:00:28', NULL),
(4, 'Virement', '020021025202211', 500000, 'depot a la bank uba', 2, '2022-11-04', 2, '2022-11-04 09:40:31', NULL);

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
(1, 1, NULL, NULL, NULL, NULL, 0, NULL, 0, 3, '2022-11-03', 3, '2022-11-03 11:38:22', 200),
(2, 1, 2, 'FTH1.5SB', 'Fil TH 1x1,5 mm? Souple Bleu', 5, 12500, 15000, 0, 3, '2022-11-03', 3, '2022-11-03 11:38:31', 200),
(3, 2, NULL, NULL, NULL, NULL, 0, NULL, 0, 3, '2022-11-03', 3, '2022-11-03 11:44:34', 200),
(4, 2, 3, 'FTH1.5SR', 'Fil TH 1x1,5 mm? Souple Rouge', 3, 19000, 25000, 0, 3, '2022-11-03', 3, '2022-11-03 11:44:44', 200),
(7, 3, NULL, NULL, NULL, NULL, 0, NULL, 0, 3, '2022-11-04', 3, '2022-11-04 02:32:04', 200),
(9, 3, 4, 'FTH1.5SN', 'Fil TH 1x1,5 mm? Souple Noir', 20, 0, 8000, 0, 3, '2022-11-04', 3, '2022-11-04 04:05:17', 200);

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
(1, 1, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, '2022-11-03', 1, '2022-11-03 03:25:34', 200),
(2, 1, 2, 'FTH1.5SB', 'Fil TH 1x1,5 mm? Souple Bleu', 4, 0, 15000, 0, 1, '2022-11-03', 1, '2022-11-03 03:25:39', 200),
(3, 1, 3, 'FTH1.5SR', 'Fil TH 1x1,5 mm? Souple Rouge', 3, 0, 25000, 0, 1, '2022-11-03', 1, '2022-11-03 03:25:42', 200),
(6, 2, NULL, NULL, NULL, NULL, 0, NULL, 0, 1, '2022-11-03', 1, '2022-11-03 11:52:36', 100),
(7, 3, NULL, NULL, NULL, NULL, 0, NULL, 0, 2, '2022-11-04', 2, '2022-11-04 04:57:21', 200),
(8, 3, 2, 'FTH1.5SB', 'Fil TH 1x1,5 mm? Souple Bleu', 1, 13000, 15000, 0, 2, '2022-11-04', 2, '2022-11-04 04:57:26', 200),
(11, 4, NULL, NULL, NULL, NULL, 0, NULL, 0, 2, '2022-11-04', 2, '2022-11-04 05:02:54', 200),
(12, 4, 2, 'FTH1.5SB', 'Fil TH 1x1,5 mm? Souple Bleu', 5, 0, 20000, -25000, 2, '2022-11-04', 2, '2022-11-04 05:03:02', 200);

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
(1, 1, 1, 30950, 1, '2022-11-03', 1, '2022-11-03 03:26:54', NULL),
(3, 2, 2, 5000, NULL, '2022-11-03', NULL, '2022-11-03 11:45:41', NULL),
(4, 2, 2, 50000, NULL, '2022-11-04', NULL, '2022-11-04 04:05:55', NULL),
(5, 3, 4, 5000, 2, '2022-11-04', 2, '2022-11-04 04:57:38', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `table_familliale`
--

CREATE TABLE `table_familliale` (
  `id` int(11) NOT NULL,
  `Nom_famille` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(1, 'BT-001', 'Ratoma/Cosa', 1, 'Rond-poind', 200),
(2, 'BT-002', 'Tombolia', 2, 'Carrefour KAALE', 200),
(3, 'BT-003', 'Madina', NULL, 'Boussoura', 200),
(4, 'BT-004', 'Belle vue', NULL, 'Près de la station', 200),
(5, 'BT-005', 'KISSIDOUGOU', NULL, 'Dounikonon', 200);

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
(2, 'FTH1.5SB', 'Fil TH 1x1,5 mm? Souple Bleu', 0, 70, 14000, 15000, NULL, NULL, 'android.JPG', 0, 5, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(3, 'FTH1.5SR', 'Fil TH 1x1,5 mm? Souple Rouge', 0, 5, 20000, 25000, NULL, NULL, 'project-4.jpg', 0, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(4, 'FTH1.5SN', 'Fil TH 1x1,5 mm? Souple Noir', 0, 20, 5000, 8000, NULL, NULL, 'team-1.jpg', 0, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(5, 'FTH1.5SJV', 'Fil TH 1x1,5 mm? Souple Jaune-vert', 0, 15, 11000, 17500, NULL, NULL, 'project-3.jpg', 0, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(6, 'FTH1.5SM', 'Fil TH 1x1,5 mm? Souple Marron', 0, 550, 12000, 15000, NULL, NULL, 'project-5.jpg', 0, 10, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(7, 'FTH1.5RB-1.5', 'Fil TH 1x1,5mm? Rigide Bleu', 0, 10, 10000, 15000, NULL, NULL, NULL, 0, 5, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(8, 'FTH1.5RR', 'Fil TH 1x1,5mm? Rigide Rouge', NULL, 75, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(9, 'FTH1.5RN', 'Fil TH 1x1,5mm? Rigide Noir', NULL, 25, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(10, 'FTH1.5RJV', 'Fil TH 1x1,5mm? Rigide Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(11, 'FTH1.5RM', 'Fil TH 1x1,5mm? Rigide Marron', 0, 50, 0, 0, NULL, NULL, 'team-1.jpg', 0, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(12, 'FTH1.5SB', 'Fil TH 1x2,5mm? Souple Bleu', NULL, 500, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(13, 'FTH1.5SR', 'Fil TH 1x2,5mm? Souple Rouge', NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(14, 'FTH1.5SN', 'Fil TH 1x2,5mm? Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(15, 'FTH1.5SJV', 'Fil TH 1x2,5mm? Souple Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(16, 'FTH1.5SM', 'Fil TH 1x2,5mm? Souple Marron', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(17, 'FTH1.5RB-2.5', 'Fil TH 1x2,5mm? Rigide Bleu', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(18, 'FTH1.5RR', 'Fil TH 1x2,5mm? Rigide Rouge', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(19, 'FTH1.5RN', 'Fil TH 1x2,5mm? Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(20, 'FTH1.5RJV', 'Fil TH 1x2,5mm? Rigide Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(21, 'FTH1.5RM', 'Fil TH 1x2,5mm? Rigide Marron', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(22, 'FTH4SB', 'Fil TH 1x4mm? Souple Bleu', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(23, 'FTH4SR', 'Fil TH 1x4mm? Souple Rouge', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(24, 'FTH4SN', 'Fil TH 1x4mm? Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(25, 'FTH4SJV', 'Fil TH 1x4mm? Souple Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(26, 'FTH4SM', 'Fil TH 1x4mm? Souple Marron', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(27, 'FTH4RB', 'Fil TH 1x4mm? Rigide Bleu', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(28, 'FTH4RR', 'Fil TH 1x4mm? Rigide Rouge', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(29, 'FTH4RN', 'Fil TH 1x4mm? Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(30, 'FTH4RJV', 'Fil TH 1x4mm? Rigide Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(31, 'FTH4RM', 'Fil TH 1x4mm? Rigide Marron', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(32, 'FTH6SB', 'Fil TH 1x6mm? Souple Bleu', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(33, 'FTH6SR', 'Fil TH 1x6mm? Souple Rouge', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(34, 'FTH6SN', 'Fil TH 1x6mm? Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(35, 'FTH6SJV', 'Fil TH 1x6mm? Souple Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(36, 'FTH6SM', 'Fil TH 1x6mm? Souple Marron', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(37, 'FTH6RB', 'Fil TH 1x6mm? Rigide Bleu', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(38, 'FTH6RR', 'Fil TH 1x6mm? Rigide Rouge', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(39, 'FTH6RN', 'Fil TH 1x6mm? Rigide Noir', NULL, 55, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(40, 'FTH6RJV', 'Fil TH 1x6mm? Rigide Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(41, 'FTH6RM', 'Fil TH 1x6mm? Rigide Marron', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(42, 'FTH10SB', 'Fil TH 1x10mm? Souple Bleu', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(43, 'FTH10SR', 'Fil TH 1x10mm? Souple Rouge', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(44, 'FTH10SN', 'Fil TH 1x10mm? Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(45, 'FTH10SJV', 'Fil TH 1x10mm? Souple Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(46, 'FTH10SM', 'Fil TH 1x10mm? Souple Marron', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(47, 'FTH10RB', 'Fil TH 1x10mm? Rigide Bleu', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(48, 'FTH10RR', 'Fil TH 1x10mm? Rigide Rouge', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(49, 'FTH10RN', 'Fil TH 1x10mm? Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(50, 'FTH10RJV', 'Fil TH 1x10mm? Rigide Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(51, 'FTH16SB', 'Fil TH 1x16mm? Souple Bleu', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(52, 'FTH16SR', 'Fil TH 1x16mm? Souple Rouge', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(53, 'FTH16SN', 'Fil TH 1x16mm? Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(54, 'FTH16SJV', 'Fil TH 1x16mm? Souple Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(55, 'FTH16SM', 'Fil TH 1x16mm? Souple Marron', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(56, 'FTH16RB', 'Fil TH 1x16mm? Rigide Bleu', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(57, 'FTH16RR', 'Fil TH 1x16mm? Rigide Rouge', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(58, 'FTH16RN', 'Fil TH 1x16mm? Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(59, 'FTH16RJV', 'Fil TH 1x16mm? Rigide Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(60, 'FTH25SB', 'Fil TH 1x25mm? Souple Bleu', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(61, 'FTH25SR', 'Fil TH 1x25mm? Souple Rouge', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(62, 'FTH25SN', 'Fil TH 1x25mm? Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(63, 'FTH25SJV', 'Fil TH 1x25mm? Souple Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(64, 'FTH25SM', 'Fil TH 1x25mm? Souple Marron', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(65, 'FTH25RB', 'Fil TH 1x25mm? Rigide Bleu', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(66, 'FTH25RR', 'Fil TH 1x25mm? Rigide Rouge', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(67, 'FTH25RN', 'Fil TH 1x25mm? Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(68, 'FTH25RJV', 'Fil TH 1x25mm? Rigide Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(69, 'FTH35SB', 'Fil TH 1x35mm? Souple Bleu', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(70, 'FTH35SR', 'Fil TH 1x35mm? Souple Rouge', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(71, 'FTH35SN', 'Fil TH 1x35mm? Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(72, 'FTH35SJV', 'Fil TH 1x35mm? Souple Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(73, 'FTH35SG', 'Fil TH 1x35mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(74, 'FTH35RB', 'Fil TH 1x35mm? Rigide Bleu', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(75, 'FTH35RR', 'Fil TH 1x35mm? Rigide Rouge', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(76, 'FTH35RN', 'Fil TH 1x35mm? Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(77, 'FTH35RJV', 'Fil TH 1x35mm? Rigide Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(78, 'FTH35RG', 'Fil TH 1x35mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(79, 'FTH50SB', 'Fil TH 1x50mm? Souple Bleu', NULL, 32, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(80, 'FTH50SR', 'Fil TH 1x50mm? Souple Rouge', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(81, 'FTH50SN', 'Fil TH 1x50mm? Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(82, 'FTH50SJV', 'Fil TH 1x50mm? Souple Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(83, 'FTH50SG', 'Fil TH 1x50mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(84, 'FTH50RB', 'Fil TH 1x50mm? Rigide Bleu', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(85, 'FTH50RR', 'Fil TH 1x50mm? Rigide Rouge', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(86, 'FTH50RN', 'Fil TH 1x50mm? Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(87, 'FTH50RG', 'Fil TH 1x50mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(88, 'FTH50RJV', 'Fil TH 1x50mm? Rigide Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(89, 'FTH70SB', 'Fil TH 1x70mm? Souple Bleu', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(90, 'FTH70SR', 'Fil TH 1x70mm? Souple Rouge', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(91, 'FTH70SN', 'Fil TH 1x70mm? Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(92, 'FTH70SJV', 'Fil TH 1x70mm? Souple Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(93, 'FTH70SG', 'Fil TH 1x70mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(94, 'FTH70RB', 'Fil TH 1x70mm? Rigide Bleu', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(95, 'FTH70RR', 'Fil TH 1x70mm? Rigide Rouge', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(96, 'FTH70RN', 'Fil TH 1x70mm? Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(97, 'FTH70RG', 'Fil TH 1x70mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(98, 'FTH70RJV', 'Fil TH 1x70mm? Rigide Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(99, 'FTH95SB', 'Fil TH 1x95mm? Souple Bleu', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(100, 'FTH95SR', 'Fil TH 1x95mm? Souple Rouge', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(101, 'FTH95SN', 'Fil TH 1x95mm? Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(102, 'FTH95SJV', 'Fil TH 1x95mm? Souple Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(103, 'FTH95SG', 'Fil TH 1x95mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(104, 'FTH95RB', 'Fil TH 1x95mm? Rigide Bleu', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(105, 'FTH95RR', 'Fil TH 1x95mm? Rigide Rouge', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(106, 'FTH95RN', 'Fil TH 1x95mm? Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(107, 'FTH95RG', 'Fil TH 1x95mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(108, 'FTH95RJV', 'Fil TH 1x95mm? Rigide Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(109, 'FTH120SN', 'Fil TH 1x120mm? Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(110, 'FTH120SJV', 'Fil TH 1x120mm? Souple Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(111, 'FTH120SG', 'Fil TH 1x120mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(112, 'FTH120RN', 'Fil TH 1x120mm? Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(113, 'FTH120RG', 'Fil TH 1x120mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(114, 'FTH120RJV', 'Fil TH 1x120mm? Rigide Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(115, 'FTH150SN', 'Fil TH 1x150mm? Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(116, 'FTH150SJV', 'Fil TH 1x150mm? Souple Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(117, 'FTH150SG', 'Fil TH 1x150mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(118, 'FTH150RN', 'Fil TH 1x150mm? Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(119, 'FTH150RG', 'Fil TH 1x150mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(120, 'FTH150RJV', 'Fil TH 1x150mm? Rigide Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(121, 'FTH185SN', 'Fil TH 1x185mm? Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(122, 'FTH185SJV', 'Fil TH 1x185mm? Souple Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(123, 'FTH185SG', 'Fil TH 1x185mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(124, 'FTH185RN', 'Fil TH 1x185mm? Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(125, 'FTH185RJV', 'Fil TH 1x185mm? Rigide Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(126, 'FTH185RG', 'Fil TH 1x185mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(127, 'FTH240SN', 'Fil TH 1x240mm? Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(128, 'FTH240SJV', 'Fil TH 1x240mm? Souple Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(129, 'FTH240SG', 'Fil TH 1x240mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(130, 'FTH240RN', 'Fil TH 1x240mm? Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(131, 'FTH240RJV', 'Fil TH 1x240mm? Rigide Jaune-vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(132, 'FTH240RG', 'Fil TH 1x240mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(133, 'Cab2x0,75SG', 'C?ble 2x0,75 mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(134, 'Cab2x0,75SN', 'C?ble 2x0,75 mm?  Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(135, 'Cab2x0,75RG', 'C?ble 2x0,75 mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(136, 'Cab2x0,75RN', 'C?ble 2x0,75 mm?  Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(137, 'Cab2x1,5SG', 'C?ble 2x1,5 mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(138, 'Cab2x1,5SN', 'C?ble 2x1,5 mm?  Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(139, 'Cab2x1,5RG', 'C?ble 2x1,5 mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(140, 'Cab2x1,5RN', 'C?ble 2x1,5 mm?  Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(141, 'Cab2x2,5SG', 'C?ble 2x2,5 mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(142, 'Cab2x2,5SN', 'C?ble 2x2,5 mm?  Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(143, 'Cab2x2,5RG', 'C?ble 2x2,5 mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(144, 'Cab2x2,5RN', 'C?ble 2x2,5 mm?  Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(145, 'Cab2x4SG', 'C?ble 2x4 mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(146, 'Cab2x4SN', 'C?ble 2x4 mm?  Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(147, 'Cab2x4RG', 'C?ble 2x4 mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(148, 'Cab2x4RN', 'C?ble 2x4 mm?  Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(149, 'Cab2x6SG', 'C?ble 2x6 mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(150, 'Cab2x6SN', 'C?ble 2x6 mm?  Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(151, 'Cab2x6RG', 'C?ble 2x6 mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(152, 'Cab2x6RN', 'C?ble 2x6 mm?  Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(153, 'Cab2x10SG', 'C?ble 2x10 mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(154, 'Cab2x10SN', 'C?ble 2x10 mm?  Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(155, 'Cab2x10RG', 'C?ble 2x10 mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(156, 'Cab2x10RN', 'C?ble 2x10 mm?  Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(157, 'Cab2x16SG', 'C?ble 2x16 mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(158, 'Cab2x16SN', 'C?ble 2x16 mm?  Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(159, 'Cab2x16RG', 'C?ble 2x16 mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(160, 'Cab2x16RN', 'C?ble 2x16 mm?  Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(161, 'Cab3x1,5SG', 'C?ble 3x1,5 mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(162, 'Cab3x1,5SN', 'C?ble 3x1,5 mm?  Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(163, 'Cab3x1,5RG', 'C?ble 3x1,5 mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(164, 'Cab3x1,5RN', 'C?ble 3x1,5 mm?  Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(165, 'Cab3x2,5SG', 'C?ble 3x2,5 mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(166, 'Cab3x2,5SN', 'C?ble 3x2,5 mm?  Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(167, 'Cab3x2,5RG', 'C?ble 3x2,5 mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(168, 'Cab3x2,5RN', 'C?ble 3x2,5 mm?  Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(169, 'Cab3x4SG', 'C?ble 3x4 mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(170, 'Cab3x4SN', 'C?ble 3x4 mm?  Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(171, 'Cab3x4RG', 'C?ble 3x4 mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(172, 'Cab3x4RN', 'C?ble 3x4 mm?  Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(173, 'Cab3x6SG', 'C?ble 3x6 mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(174, 'Cab3x6SN', 'C?ble 3x6 mm?  Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(175, 'Cab3x6SRG', 'C?ble 3x6 mm? Semi-rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(176, 'Cab3x6SRN', 'C?ble 3x6 mm?  Semi-rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(177, 'Cab3x10SG', 'C?ble 3x10 mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(178, 'Cab3x10SN', 'C?ble 3x10 mm?  Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(179, 'Cab3x10RG', 'C?ble 3x10 mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(180, 'Cab3x10RN', 'C?ble 3x10 mm?  Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(181, 'Cab4x1,5SG', 'C?ble 4x1,5 mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(182, 'Cab4x1,5SN', 'C?ble 4x1,5 mm?  Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(183, 'Cab4x1,5RG', 'C?ble 4x1,5 mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(184, 'Cab4x1,5RN', 'C?ble 4x1,5 mm?  Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(185, 'Cab4x2,5SG', 'C?ble 4x2,5 mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(186, 'Cab4x2,5SN', 'C?ble 4x2,5 mm?  Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(187, 'Cab4x2,5RG', 'C?ble 4x2,5 mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(188, 'Cab4x2,5RN', 'C?ble 4x2,5 mm?  Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(189, 'Cab4x4SG', 'C?ble 4x4 mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(190, 'Cab4x4SN', 'C?ble 4x4 mm?  Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(191, 'Cab4x4RG', 'C?ble 4x4 mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(192, 'Cab4x4RN', 'C?ble 4x4 mm?  Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(193, 'Cab4x6SG', 'C?ble 4x6 mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(194, 'Cab4x6SN', 'C?ble 4x6 mm?  Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(195, 'Cab4x6SRG', 'C?ble 4x6 mm? Semi-rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(196, 'Cab4x6RN', 'C?ble 4x6 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(197, 'Cab4x10SNR2V', 'C?ble 4x10 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(198, 'Cab4x10SRNR2V', 'C?ble 4x10 mm?  Semi-igide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(199, 'Cab4x16SNR2V', 'C?ble 4x16 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(200, 'Cab4x16SRNR2V', 'C?ble 4x16 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(201, 'Cab4x25SNR2V', 'C?ble 4x25 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(202, 'Cab4x25SRNR2V', 'C?ble 4x25 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(203, 'Cab4x35SNR2V', 'C?ble 4x35 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(204, 'Cab4x35SRNR2V', 'C?ble 4x35 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(205, 'Cab3x35+16SNR2V', 'C?ble 3x35+16 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(206, 'Cab3x35+16SRNR2V', 'C?ble 3x35+16 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(207, 'Cab4x50SNR2V', 'C?ble 4x50 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(208, 'Cab4x50SRNR2V', 'C?ble 4x50 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(209, 'Cab3x50+25SNR2V', 'C?ble 3x50+25 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(210, 'Cab3x50+25SRNR2V', 'C?ble 3x50+25 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(211, 'Cab4x70SNR2V', 'C?ble 4x70 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(212, 'Cab4x70SRNR2V', 'C?ble 4x70 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(213, 'Cab3x70+35SNR2V', 'C?ble 3x70+35 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(214, 'Cab3x70+35SRNR2V', 'C?ble 3x70+35 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(215, 'Cab4x95SNR2V', 'C?ble 4x95 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(216, 'Cab4x95SRNR2V', 'C?ble 4x95 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(217, 'Cab3x95+50SNR2V', 'C?ble 3x95+50 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(218, 'Cab3x95+50SRNR2V', 'C?ble 3x95+50 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(219, 'Cab4x120SNR2V', 'C?ble 4x120 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(220, 'Cab4x120SRNR2V', 'C?ble 4x120 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(221, 'Cab3x120+70SNR2V', 'C?ble 3x120+70 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(222, 'Cab3x120+70SRNR2V', 'C?ble 3x120+70 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(223, 'Cab4x150SNR2V', 'C?ble 4x150 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(224, 'Cab4x150SRNR2V', 'C?ble 4x150 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(225, 'Cab3x150+95SNR2V', 'C?ble 3x150+95 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(226, 'Cab3x150+95SRNR2V', 'C?ble 3x150+95 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(227, 'Cab4x185SNR2V', 'C?ble 4x185 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(228, 'Cab4x185SRNR2V', 'C?ble 4x185 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(229, 'Cab3x185+120SNR2V', 'C?ble 3x185+120 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(230, 'Cab3x185+120SRNR2V', 'C?ble 3x185+120 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(231, 'Cab4x240SNR2V', 'C?ble 4x240 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(232, 'Cab4x240SRNR2V', 'C?ble 4x240 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(233, 'Cab3x240+120SNR2V', 'C?ble 3x240+120 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(234, 'Cab3x240+120SRNR2V', 'C?ble 3x240+120 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(235, 'Cab5x1,5SG', 'C?ble 5x1,5 mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(236, 'Cab5x1,5SN', 'C?ble 5x1,5 mm?  Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(237, 'Cab5x1,5RG', 'C?ble 5x1,5 mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(238, 'Cab5x1,5RN', 'C?ble 5x1,5 mm?  Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(239, 'Cab5x2,5SG', 'C?ble 5x2,5 mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(240, 'Cab5x2,5SN', 'C?ble 5x2,5 mm?  Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(241, 'Cab5x2,5RG', 'C?ble 5x2,5 mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(242, 'Cab5x2,5RN', 'C?ble 5x2,5 mm?  Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(243, 'Cab5x4SG', 'C?ble 5x4 mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(244, 'Cab5x4SN', 'C?ble 5x4 mm?  Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(245, 'Cab5x4RG', 'C?ble 5x4 mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(246, 'Cab5x4RN', 'C?ble 5x4 mm?  Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(247, 'Cab5x6SG', 'C?ble 5x6 mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(248, 'Cab5x6SN', 'C?ble 5x6 mm?  Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(249, 'Cab5x6SRG', 'C?ble 5x6 mm? Semi-rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(250, 'Cab5x6RN', 'C?ble 5x6 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(251, 'Cab5x10SNR2V', 'C?ble 5x10 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(252, 'Cab5x10SRNR2V', 'C?ble 5x10 mm?  Semi-igide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(253, 'Cab5x16SNR2V', 'C?ble 5x16 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(254, 'Cab5x16SRNR2V', 'C?ble 5x16 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(255, 'Cab5x25SNR2V', 'C?ble 5x25 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(256, 'Cab5x25SRNR2V', 'C?ble 5x25 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(257, 'Cab5x35SNR2V', 'C?ble 5x35 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(258, 'Cab5x35SRNR2V', 'C?ble 5x35 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(259, 'Cab4x35+16SNR2V', 'C?ble 4x35+16 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(260, 'Cab4x35+16SRNR2V', 'C?ble 4x35+16 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(261, 'Cab5x50SNR2V', 'C?ble 5x50 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(262, 'Cab5x50SRNR2V', 'C?ble 5x50 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(263, 'Cab4x50+25SNR2V', 'C?ble 4x50+25 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(264, 'Cab4x50+25SRNR2V', 'C?ble 4x50+25 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(265, 'Cab5x70SNR2V', 'C?ble 5x70 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(266, 'Cab5x70SRNR2V', 'C?ble 5x70 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(267, 'Cab4x70+35SNR2V', 'C?ble 4x70+35 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(268, 'Cab4x70+35SRNR2V', 'C?ble 4x70+35 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(269, 'Cab5x95SNR2V', 'C?ble 5x95 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(270, 'Cab5x95SRNR2V', 'C?ble 5x95 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(271, 'Cab4x95+50SNR2V', 'C?ble 4x95+50 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(272, 'Cab4x95+50SRNR2V', 'C?ble 4x95+50 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(273, 'Cab5x120SNR2V', 'C?ble 5x120 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(274, 'Cab5x120SRNR2V', 'C?ble 5x120 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(275, 'Cab4x120+70SNR2V', 'C?ble 4x120+70 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(276, 'Cab4x120+70SRNR2V', 'C?ble 4x120+70 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(277, 'Cab5x150SNR2V', 'C?ble 5x150 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(278, 'Cab5x150SRNR2V', 'C?ble 5x150 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(279, 'Cab4x150+95SNR2V', 'C?ble 4x150+95 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(280, 'Cab4x150+95SRNR2V', 'C?ble 4x150+95 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(281, 'Cab5x185SNR2V', 'C?ble 5x185 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(282, 'Cab5x185SRNR2V', 'C?ble 5x185 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(283, 'Cab4x185+120SNR2V', 'C?ble 4x185+120 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(284, 'Cab4x185+120SRNR2V', 'C?ble 4x185+120 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(285, 'Cab5x240SNR2V', 'C?ble 5x240 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(286, 'Cab5x240SRNR2V', 'C?ble 5x240 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(287, 'Cab4x240+120SNR2V', 'C?ble 4x240+120 mm?  Souple Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(288, 'Cab4x240+120SRNR2V', 'C?ble 4x240+120 mm?  Semi-rigide Noir R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(289, 'Cab7x0,75SG', 'C?ble 7x0,75 mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(290, 'Cab7x0,75SN', 'C?ble 7x0,75 mm?  Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(291, 'Cab7x0,75RG', 'C?ble 7x0,75 mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(292, 'Cab7x0,75RN', 'C?ble 7x0,75 mm?  Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(293, 'Cab7x1,5SG', 'C?ble 7x1,5 mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(294, 'Cab7x1,5SN', 'C?ble 7x1,5 mm?  Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(295, 'Cab7x1,5RG', 'C?ble 7x1,5 mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(296, 'Cab7x1,5RN', 'C?ble 7x1,5 mm?  Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(297, 'Cab7x2,5SG', 'C?ble 7x2,5 mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(298, 'Cab7x2,5SN', 'C?ble 7x2,5 mm?  Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(299, 'Cab7x2,5RG', 'C?ble 7x2,5 mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(300, 'Cab7x2,5RN', 'C?ble 7x2,5 mm?  Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(301, 'Cab12x1,5SG', 'C?ble 12x1,5 mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(302, 'Cab12x1,5SN', 'C?ble 12x1,5 mm?  Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(303, 'Cab12x1,5RG', 'C?ble 12x1,5 mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(304, 'Cab12x1,5RN', 'C?ble 12x1,5 mm?  Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(305, 'Cab12x2,5SG', 'C?ble 12x2,5 mm? Souple Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(306, 'Cab12x2,5SN', 'C?ble 12x2,5 mm?  Souple Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(307, 'Cab12x2,5RG', 'C?ble 12x2,5 mm? Rigide Gris', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(308, 'Cab12x2,5RN', 'C?ble 12x2,5 mm?  Rigide Noir', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(309, 'Cab3x1,5SR2V', 'C?ble 3x1,5 mm?  Souple R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(310, 'Cab3x1,5RR2V', 'C?ble 3x1,5 mm? Rigide R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(311, 'Cab3x1,5SRR2V', 'C?ble 3x1,5 mm? Semi-rigide R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL);
INSERT INTO `table_produit` (`id`, `Reference_produit`, `Nom_produit`, `ID_fournisseur`, `Quantite_produit`, `Prix_achat_unitaire`, `Prix_vente_unitaire`, `Categorie`, `Type_unite_unitaire`, `Image`, `Description`, `Seuil_minimum`, `Date_perumption`, `Creer_par`, `Creer_le`, `Modifier_par`, `Modifier_le`, `Statut_produit`) VALUES
(312, 'Cab3x2,5SR2V', 'C?ble 3x2,5 mm?  Souple R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(313, 'Cab3x2,5RR2V', 'C?ble 3x2,5 mm? Rigide R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(314, 'Cab3x2,5SRR2V', 'C?ble 3x2,5 mm? Semi-rigide R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(315, 'Cab5x1,5SR2V', 'C?ble 5x1,5 mm?  Souple R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(316, 'Cab5x1,5RR2V', 'C?ble 5x1,5 mm? Rigide R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(317, 'Cab5x1,5SRR2V', 'C?ble 5x1,5 mm? Semi-rigide R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(318, 'Cab5x2,5SR2V', 'C?ble 5x2,5 mm?  Souple R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(319, 'Cab5x2,5RR2V', 'C?ble 5x2,5 mm? Rigide R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(320, 'Cab5x2,5SRR2V', 'C?ble 5x2,5 mm? Semi-rigide R2V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(321, 'Cab3x1,5RFVF', 'C?ble arm? 3x1,5 mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(322, 'Cab3x2,5RFVF', 'C?ble arm? 3x2,5 mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(323, 'Cab4x2,5RFVF', 'C?ble arm? 4x2,5 mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(324, 'Cab4x4RFVF', 'C?ble arm? 4x4 mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(325, 'Cab4x6RFVF', 'C?ble arm? 4x6 mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(326, 'Cab4x10RFVF', 'C?ble arm? 4x10 mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(327, 'Cab4x16RFVF', 'C?ble arm? 4x16 mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(328, 'Cab4x25RFVF', 'C?ble arm? 4x25 mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(329, 'Cab4x35RFVF', 'C?ble arm? 4x35 mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(330, 'Cab3x35+16RFVF', 'C?ble arm? 3x70+35 mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(331, 'Cab4x50RFVF', 'C?ble arm? 4x50 mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(332, 'Cab3x50+25RFVF', 'C?ble arm? 3x50+25 mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(333, 'Cab4x70RFVF', 'C?ble arm? 4x70 mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(334, 'Cab3x70+35RFVF', 'C?ble arm? 3x70+35 mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(335, 'Cab4x95RFVF', 'C?ble arm? 4x95 mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(336, 'Cab3x95+50RFVF', 'C?ble arm? 3x95+50 mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(337, 'Cab5x2,5RFVF', 'C?ble arm? 5x2,5 mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(338, 'Cab5x4RFVF', 'C?ble arm? 5x4 mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(339, 'Cab5x6RFVF', 'C?ble arm? 5x6 mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(340, 'Cab5x10RFVF', 'C?ble arm? 5x10 mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(341, 'Cab5x16RFVF', 'C?ble arm? 5x16 mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(342, 'Cab5x25RFVF', 'C?ble arm? 5x25 mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(343, 'Cab2x16AluEU', 'C?ble Alu 2x16 mm? EU', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(344, 'Cab4x16AluEU', 'C?ble Alu 4x16 mm? EU', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(345, 'Cab4x25AluEU', 'C?ble Alu 4x25 mm? EU', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(346, 'Cab4x35AluEU', 'C?ble Alu 4x35 mm? EU', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(347, 'Cab4x70AluEU', 'C?ble Alu 4x70 mm? EU', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(348, 'Cab3x70+54,6Alu', 'C?ble Alu 3x70+54,6 mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(349, 'Cab2x16AluAM', 'C?ble Alu 2x16 mm? AM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(350, 'Cab4x16AluAM', 'C?ble Alu 4x16 mm? AM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(351, 'Cab4x25AluAM', 'C?ble Alu 4x25 mm? AM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(352, 'Cab4x35AluAM', 'C?ble Alu 4x35 mm? AM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(353, 'Cab4x35AluRVFVAM', 'C?ble Alu 4x35 mm? arm? (au m?tre)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(354, 'Cab4x70AluAM', 'C?ble Alu 4x70 mm? AM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(355, 'Cab3x70+54,6Alu', 'C?ble Alu 1x240 mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(356, 'Cab3x150+70Alu', 'C?ble Alu 3x150+70 mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(357, 'Cab3x240+120RVFVAlu', 'C?ble Alu 3x240+120 mm? arm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(358, 'CabCAM', 'C?ble camera (Roul 305m)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(359, 'CabCat5', 'C?ble internet Cat 5 (Roul 305m)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(360, 'CabCat5RFVF', 'C?ble internet arm? Cat 5 (Roul 305m)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(361, 'CabCat6', 'C?ble internet Cat 5 (Roul 305m)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(362, 'CabCat6RFVF', 'C?ble internet arm? Cat 6 (Roul 305m)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(363, 'CabInc2x1,5', 'C?ble incendie 2x1,5mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(364, 'CabInc2x2,5', 'C?ble incendie 2x2,5mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(365, 'Cab1x50MTAlu', 'C?ble Alu 36kV 1x50 mm? (au m?tre)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(366, 'CabAster54,6Alu', 'C?ble ASTER 54.6mm? (au m?tre)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(367, 'CabAster148Alu', 'ASTER 148mm? (au m?tre)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(368, 'CONNEC1670BT', 'Connecteurs 35-70mm? BT', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(369, 'PincEncrAlu1670BT', 'Pinces d\'encrage Alu (Tendeurs Alu) BT', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(370, '', 'C?BLES SPECIAUX  Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(371, 'Transfo50-20', 'Transfo 50kVA 20/0,4kV', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(372, 'Transfo50-30', 'Transfo 50kVA 30/0,4kV', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(373, 'Transfo100-20', 'Transfo 100kVA 20/0,4kV', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(374, 'Transfo100-30', 'Transfo 100kVA 30/0,4kV', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(375, 'Transfo160-20', 'Transfo 160kVA 20/0,4kV', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(376, 'Transfo160-30', 'Transfo 160kVA 30/0,4kV', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(377, 'Transfo250-20', 'Transfo 250kVA 20/0,4kV', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(378, 'Transfo400-20', 'Transfo 400kVA 20/0,4kV', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(379, 'CollierPJ', 'Collier Petit-Jean (50m)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(380, 'AgrPJ', 'Agraphes Collier Petit-Jean ', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(381, 'PincPJ', 'Pinces / Cercleuse Collier Petit-Jean ', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(382, 'Paraf24kV', 'Parafoudres 24kV', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(383, 'Paraf36kV', 'Parafoudres 36kV', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(384, 'Isol24kV', 'Isolateurs 24kV', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(385, 'Isol36kV', 'Isolateurs 36kV', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(386, 'CoupC24kV', 'Coupe-circuit 24kV', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(387, 'CoupC36kV', 'Coupe-circuit 36kV', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(388, 'PincTens54,6', 'Pince de tension MT (pince d\'encrage MT) 54,6mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(389, 'PincTens148', 'Pince de tension MT (pince d\'encrage MT) 148mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(390, 'PincSusp54,8', 'Pince de supension (allignement) MT 54,6mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(391, 'PincSuspp54,9', 'Pince de supension  (allignement) MT 148mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(392, 'Connec16150MT2B', 'Connecteurs MT 16-150mm? 2 boulons', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(393, 'Connec16150MT3B', 'Connecteurs MT 16-150mm? 3 boulons', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(394, 'Connec35240MT2B', 'Connecteurs MT 35-240mm? 2 boulons', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(395, 'Connec35240MT3B', 'Connecteurs MT 35-240mm? 3 boulons', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(396, 'TirVit1T', 'Tirs-vite, 1 Tonne', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(397, 'TirVit2T', 'Tirs-vite, 2 Tonnes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(398, 'Gren1T', 'Grenouille, 1 Tonne', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(399, 'Gren2T', 'Grenouille, 2 Tonnes', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(400, 'PiquCU14120TR', 'Piquet CU Diam 14/1m20 TR', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(401, 'PiquCU14150TR', 'Piquet CU Diam 14/1m50 TR', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(402, 'PiquCU16120TR', 'Piquet CU Diam 16/1m20 TR', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(403, 'PiquCU16150TR', 'Piquet CU Diam 16/1m50 TR', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(404, 'PiquCU16200TR', 'Piquet CU Diam 16/2m TR', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(405, 'PiquGALV16120TR', 'Piquet Galva Diam 16/1m20', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(406, 'PiquGALV16150TR', 'Piquet Galva Diam 16/1m50', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(407, 'PiquGALV16200TR', 'Piquet Galva Diam 16/2m', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(408, 'Stab1kva', 'Stabilisateur 1KVA', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(409, 'Stab1,5kva', 'Stabilisateur 1,5KVA', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(410, 'Stab2kva', 'Stabilisateur 2KVA', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(411, 'Stab3kva', 'Stabilisateur 3KVA', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(412, 'Stab5kva', 'Stabilisateur 5KVA', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(413, 'Stab15kva1P', 'Stabilisateur 15KVA monophas?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(414, 'Stab15kva3P', 'Stabilisateur 15KVA Triphas?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(415, 'Stab20kva3P', 'Stabilisateur 20KVA Triphas?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(416, 'Stab30kva3P', 'Stabilisateur 30KVA Triphas?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(417, 'Stab40kva3P', 'Stabilisateur 40KVA Triphas?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(418, 'Stab60kva3P', 'Stabilisateur 60KVA Triphas?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(419, 'RegGril2x18', 'R?glette grillag?e 2x18W apparente', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(420, 'RegGril4x18App', 'R?glette grillag?e 4x18W apparente', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(421, 'RegGril4x18Enc', 'R?glette grillag?e 4x18W encastr?e', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(422, 'RegGril2x36App', 'R?glette grillag?e 2x36W apparente', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(423, 'RegGril2x36Enc', 'R?glette grillag?e 2x36W encastr?e', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(424, 'DalLed30x30App', 'Dalle Led 30x30, 20W Apparente', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(425, 'DalLed30x30Enc', 'Dalle Led 30x30, 20W Encastr?e', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(426, 'DalLed30x60App', 'Dalle Led 30x60, 30W Apparente', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(427, 'DalLed30x60Enc', 'Dalle Led 30x60, 30W Encastr?e', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(428, 'DalLed60x60App', 'Dalle Led 60x60, 36W Apparente', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(429, 'DalLed60x60Enc', 'Dalle Led 60x60, 36W Encastr?e', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(430, 'RegOrd1x18', 'R?glette ord. 1x18W TMS, ballast ?lectronique', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(431, 'RegOrd1x18TubLed', 'R?glette ord. 1x0,60 TMS Tube LED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(432, 'RegOrd1x18ledSlim', 'R?glette ord. 1x36W Led Slim ', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(433, 'RegOrd1x36', 'R?glette ord. 1x36W TMS, ballast ?lectronique', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(434, 'RegOrd1x36TubLed', 'R?glette ord. 1x1,20 TMS Tube LED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(435, 'RegOrd2x36', 'R?glette ord. 2x36W TMS, ballast ?lectronique', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(436, 'RegOrd2x36TubLed', 'R?glette ord. 2x1,20 TMS Tube LED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(437, 'RegEtan1x18', 'R?glette ?tanche 1x18W, ballast ?lectronique', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(438, 'RegEtan1x18TubLed', 'R?glette ?tanche 1x18W avec tube LED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(439, 'RegEtan2x18', 'R?glette ?tanche 2x18W, Ballast ?lectronique', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(440, 'RegEtan2x18TubLed', 'R?glette ?tanche 2x18W avec tube LED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(441, 'RegEtan1x36', 'R?glette ?tanche 1x36W, ballast ?lectronique', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(442, 'RegEtan1x36TubLed', 'R?glette ?tanche 1x36W avec tube LED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(443, 'RegEtan1x36RubLed', 'R?glette ?tanche 1x1,20m avec ruban LED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(444, 'RegErd1x36', 'R?glette ?tanche 2x36W, ballast ?lectronique', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(445, 'RegEtan2x36TubLed', 'R?glette ?tanche 2x36W avec tube LED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(446, 'RegEtan2x36RubLed', 'R?glette ?tanche 2x1,20m avec ruban LED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(447, '', 'R?glette ?tanche Applique LED linea 4 & 8W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(448, '', 'R?glette ?tanche Applique LED linea 8W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(449, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(450, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(451, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(452, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(453, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(454, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(455, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(456, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(457, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(458, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(459, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(460, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(461, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(462, '', 'R?GLETTES ?TANCHES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(463, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(464, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(465, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(466, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(467, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(468, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(469, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(470, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(471, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(472, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(473, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(474, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(475, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(476, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(477, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(478, '', 'GLOBES PLAFONNIERS', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(479, '', 'Globe sans d?tecteur de pr?sence sans ampoules', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(480, '', 'Globe avec d?tecteur de pr?sence sans ampoules', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(481, '', 'PIO 2 LED 12W CIRCULAR', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(482, '', 'Globe HAVANA E27 IP66', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(483, '', 'Globe HAVANA E27 IP66, Bleu / Orange', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(484, '', 'Ruban LED (1 Rouleau de 5m)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(485, '', '10 Rubans LED de 5m + Driver 360W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(486, '', '20 Rubans LEDde 5m + 2 Drivers 360W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(487, '', 'Veilleuse 24+6 LED / LED LANTERN', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(488, '', 'Veilleuse 30 LED / LED LANTERN', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(489, '', 'Lampe de bureau MAYA 40W E27 (B/R/V)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(490, '', 'COFFRETS EN POLYESTER', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(491, '', 'Coffret POLY 250X350X150 MM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(492, '', 'Coffret POLY 300X300X180 MM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(493, '', 'Coffret POLY 350X500X200MM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(494, '', 'Coffret POLY 400X500X210 MM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(495, '', 'Coffret POLY 400X600X200MM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(496, '', 'Coffret POLY 500x800x220MM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(497, '', 'PROJECTEURS', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(498, '', 'Projecteur LED  Highbay Sia 100 & 103W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(499, '', 'Projecteur OKTA 58W 36 LED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(500, '', 'Projecteur LIYA 96 LED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(501, '', 'Projecteur PIROLIZ 103W 64 LED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(502, '', 'PROJECTEURS LED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(503, '', 'Projeteur LED 20W FRANKO', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(504, '', 'Projeteur LED 20W avec d?tecteur de pr?sence', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(505, '', 'Projeteur LED 30W FRANKO', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(506, '', 'Projeteur LED FRANKO 50W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(507, '', 'Projecteur LED FRANKO 70W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(508, '', 'Projecteur LED FRANKO 100W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(509, '', 'Projecteur LED FRANKO 150W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(510, '', 'Projecteur LED RIA IP66, 150W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(511, '', 'Projecteur LED FRANKO 200W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(512, '', 'Projecteur LED FRANKO 250W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(513, '', 'Projecteur LED FRANKO 300W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(514, '', 'Projecteur LED FRANKO 400W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(515, '', 'Projecteur INOVALED 3X30W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(516, '', 'PROJECTEURS ORDINAIRES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(517, '', 'Projecteur Elit Lirad 150W- 400W Complet', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(518, '', 'Projecteur ordinaire 250W Complet', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(519, '', 'Projecteur ordinaire 400W Complet', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(520, '', 'Projecteur ordinaire 1000W Complet', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(521, '', 'SPOTS', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(522, '', 'Spot encastr? LED: 3W SMD LED DOWNLIGHT', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(523, '', 'Spot encastr? LED: 5W PLUTON', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(524, '', 'Spot encastr? LED: 6W SMD LED DOWNLIGHT', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(525, '', 'Spot encastr? LED: 9W SMD LED DOWNLIGHT', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(526, '', 'Spot encastr? LED: 12W SMD LED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(527, '', 'Spot encastr? LED: 15W SMD LED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(528, '', 'Spot encastr? LED: 18W SMD LED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(529, '', 'Spot apparent rond LED: 18W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(530, '', 'Spot apparent rond LED: 24W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(531, '', 'Spot rectangulaire encastr?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(532, '', 'Spot Blanc ? douille + MAXIN 3X1W GU10', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(533, '', 'Spot dor? ? douille + MAXIN 3X1W GU10', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(534, '', 'BAES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(535, '', 'Block Autonome de S?curit? 3W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(536, '', 'Fl?che autocollante Block Autonome de S?curit?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(537, '', 'Block Autonome de S?curit? 5W / Lampe', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(538, '', 'LUMINAIRES PELSAN, Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(539, '', 'LAMPADAIRES ORDINAIRES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(540, '', 'Lampadaire ROMA 400W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(541, '', 'Lampadaire SOFIA 250W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(542, '', 'LAMPADAIRES LED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(543, '', 'Lempadaire LED BARI 42W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(544, '', 'Lampadaire LED TALIN 50W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(545, '', 'Lampadaire LED TALIN 80W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(546, '', 'Lampadaire LED TALIN 100W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(547, '', 'Lampadaire LED LIZBON 150W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(548, '', 'INTERRUPTEURS ET PRISES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(549, '', 'Interrupteur simple', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(550, '', 'Interrupteur lumineux', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(551, '', 'Interrupteur va et vient', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(552, '', 'Interrupteur double va et vient', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(553, '', 'Prise avec Terre', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(554, '', 'Prise TV', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(555, '', 'Prise T?l?phone', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(556, '', 'Prise Informatique', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(557, '', 'Fiche M?le / Femelle', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(558, '', 'ACCESSOIRES ELECTRIQUES PELSAN, Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(559, '', 'AMPOULES E27', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(560, '', 'Ampoule 3X1W GU10 LED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(561, '', 'Ampoule Eco Thermo. MAXIN 8, 12, 14 ou 15W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(562, '', 'Ampoule Eco Thermo. MAXIN 45W E27', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(563, '', 'Ampoule Eco Thermo. MAXIN 65W E27', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(564, '', 'Ampoule ? Filament LED E27, 4W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(565, '', 'Ampoule LED E27 5 &7W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(566, '', 'Ampoule LED E27, 9W et 10W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(567, '', 'Ampoule LED RECHARGEABLE E27 9W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(568, '', 'Ampoule projecteur 150W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(569, '', 'Ampoule projecteur / Lampadaire 250W E40', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(570, '', 'Ampoule projecteur  / Lampadaire : 400W E40', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(571, '', 'Ampoule projecteur  / Lampadaire : 1000W E40', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(572, '', 'N?ONS', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(573, '', 'N?on ordinaire 18W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(574, '', 'N?on ordinaire 36W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(575, '', 'N?on LED 0,60m', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(576, '', 'N?on LED 1,20m', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(577, '', 'DRIVERS LED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(578, '', 'Driver pour Spot 3W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(579, '', 'Driver pour Spot 6W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(580, '', 'Driver pour Spot 9W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(581, '', 'Driver pour Spot 12W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(582, '', 'Driver pour Spot 5W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(583, '', 'Driver pour Spot 18W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(584, '', 'Driver pour Spot 24W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(585, '', 'Driver pour r?glettes LED 60x60, 36W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(586, '', 'Driver 60W 12V 5A IP20 LED DRIVER', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(587, '', 'Driver 100W 12V 8.3A IP20 LED DRIVER', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(588, '', 'Driver 200W 12V 16.5A IP20 LED DRIVER', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(589, '', '360W 12V 30A IP20 CONSTANT VOLTAGE', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(590, '', 'BALLASTS', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(591, '', 'Ballast m?canique 18-20W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(592, '', 'Ballast m?canique 36-40W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(593, '', 'Ballast ?lctronique 1X36W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(594, '', 'LUMINAIRES PELSAN, Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(595, '', 'Ballast ?lctronique 2X36W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(596, '', 'Ballast ?lctronique 4x18W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(597, '', 'ACCESSOIRES D\'ALLUMAGE', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(598, '', 'Cellule photo?lectrique ', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(599, '', 'Ignitor (Allumeur) 35-150W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(600, '', 'Ignitor (Allumeur) 70-400W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(601, '', 'Capacitor (condensateur)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(602, '', 'D?tecteur de pr?sence (Apparent et Encastr?)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(603, '', '4-65W STARTER (paquet)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(604, '', '4-22W STARTER (paquet)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(605, '', 'Douille en porcelaine:', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(606, '', 'C& S ELECTRIC, Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(607, '', '1 P?LE (de 2 ? 40A)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(608, '', 'DPN (de 2 ? 40A)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(609, '', '2 P?LES ORDINAIRES (de 2A ? 63A)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(610, '', '2 P?LES ORDINAIRES (80, 100 & 125A)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(611, '', '2 P?LES Diff?rentiels (tout amp?rage 30mA)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(612, '', '2 P?LES Diff?rentiels (tout amp?rage 300mA)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(613, '', '3 P?LES (de 10A ? 63A)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(614, '', '3 P?LES 100A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(615, '', '4 P?LES ORDINAIRES (de 10A ? 63A)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(616, '', '4 P?LES ORDINAIRES 80A & 100A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(617, '', '4 P?LES ORDINAIRES 125A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(618, '', '4 P?LES DIFFERENTIELS (de 10A ? 63A)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(619, '', '4 P?LES DIFFERENTIELS (de 80A ? 125A)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(620, '', 'COMPACTS', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(621, '', 'COMPACTS 2 P?LES de 30 & 60A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(622, '', 'COMPACTS 2 P?LES de 75 & 100A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(623, '', 'COMPACTS 3 P?LES 100 et 125A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(624, '', 'COMPACTS 3 P?LES 175 & 200A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(625, '', 'COMPACTS 3 P?LES 250A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(626, '', 'COMPACTS 3 P?LES 400A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(627, '', 'COMPACTS 3 P?LES 500A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(628, '', 'COMPACTS 4 P?LES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(629, '', 'Compact 4P63A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(630, '', 'Compact 4P63A Ajustable', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(631, '', 'Compact 4P100A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(632, '', 'Compact 4P100A Ajustable', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(633, '', 'Compact 4P125A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(634, '', 'Compact 4P150A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(635, '', 'Compact 4P160A Ajustable', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(636, '', 'Compact 4P175A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(637, '', 'Compact 4P200A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(638, '', 'Compact 4P200A Adjustable', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(639, '', 'Compact 4P250A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(640, '', 'Compact 4P250A Adjustable', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(641, '', 'Compact 4P400A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(642, '', 'Compact 4P400Adjustable', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL);
INSERT INTO `table_produit` (`id`, `Reference_produit`, `Nom_produit`, `ID_fournisseur`, `Quantite_produit`, `Prix_achat_unitaire`, `Prix_vente_unitaire`, `Categorie`, `Type_unite_unitaire`, `Image`, `Description`, `Seuil_minimum`, `Date_perumption`, `Creer_par`, `Creer_le`, `Modifier_par`, `Modifier_le`, `Statut_produit`) VALUES
(643, '', 'Compact 4P630A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(644, '', 'Compact 4P800A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(645, '', 'Compact 4P1000A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(646, '', 'Compact 4P1200A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(647, '', 'Compact 4P1600A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(648, '', 'INVERSEURS EN POLYESTER', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(649, '', 'Inverseur Polyester 4P32A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(650, '', 'Inverseur Polyester4P63A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(651, '', 'Inverseur Polyester4P80A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(652, '', 'Inverseur Polyester4P100A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(653, '', 'C&S ELECTRIC, Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(654, '', 'INVERSEURS AVEC COFFRET METALLIQUE', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(655, '', 'Inverseur m?tal. 4P32A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(656, '', 'Inverseur m?tal. 4P63A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(657, '', 'Inverseur m?tal. 4P100A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(658, '', 'Inverseur m?tal. 4P125A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(659, '', 'Inverseur m?tal. 4P160A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(660, '', 'Inverseur m?tal. 4P200A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(661, '', 'Inverseur m?tal. 4P250A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(662, '', 'Inverseur m?tal. 4P315A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(663, '', 'Inverseur m?tal. 4P400A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(664, '', 'Inverseur m?tal. 4P630A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(665, '', 'Inverseur m?tal. 4P800A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(666, '', 'Inverseur m?tal. 4P1000A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(667, '', 'Inverseur m?tal. 4P1250A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(668, '', 'Inverseur m?tal. 4P1600A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(669, '', 'Inverseur m?tal. 4P2500A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(670, '', 'CONTACTEURS MOTEURS', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(671, '', 'Robusta2 9A (1NO+1NC)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(672, '', 'Robusta2 12A (1NO+1NC)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(673, '', 'Robusta2 18A (1NO+1NC)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(674, '', 'Robusta2 25A (1NO+1NC)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(675, '', 'Robusta2 32A (1NO+1NC)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(676, '', 'CONTACTEURS 3 P?LES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(677, '', 'Contacteur 3P9A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(678, '', 'Contacteur 3P12A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(679, '', 'Contacteur 3P18A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(680, '', 'Contacteur 3P25A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(681, '', 'Contacteur 3P32A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(682, '', 'Contacteur 3P40A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(683, '', 'Contacteur 3P50A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(684, '', 'Contacteur 3P65A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(685, '', 'Contacteur 3P80A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(686, '', 'Contacteur 3P95A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(687, '', 'CONTACTEURS 4 P?LES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(688, '', 'Contacteur 4P12A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(689, '', 'Contacteur 4P18A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(690, '', 'Contacteur 4P25A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(691, '', 'Contacteur 4P40A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(692, '', 'Contacteur 4P50A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(693, '', 'Contacteur 4P65A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(694, '', 'Contacteur 4P80A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(695, '', 'Contacteur 4P95A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(696, '', 'Contacteur 4P115A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(697, '', 'Contacteur 4P150A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(698, '', 'Contacteur 4P265A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(699, '', 'DRT (Tout amp?rage 220 & 415V)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(700, '', 'SECTIONNEURS 3 P?LES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(701, '', 'Sectionnaire indus. 3P160A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(702, '', 'Sectionnaire indus. 3P200A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(703, '', 'Sectionnaire indus. 3P250A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(704, '', 'Sectionnaire indus. 3P315A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(705, '', 'Sectionnaire indus. 3P400A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(706, '', 'Sectionnaire indus. 3P630A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(707, '', 'SECTIONNEURS 4 P?LES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(708, '', 'Sectionnaire indus. 4P160A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(709, '', 'Sectionnaire indus. 4P200A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(710, '', 'Sectionnaire indus. 4P250A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(711, '', 'Sectionnaire indus. 4P315A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(712, '', 'Sectionnaire indus. 4P400A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(713, '', 'Sectionnaire indus. 4P630A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(714, '', 'FICHES INDUSTRIELLES / PAIR', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(715, '', 'Fiche indus. 3P16A Mobile', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(716, '', 'Fiche indus. 3P32A Mobile', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(717, '', 'Fiche indus. 5P16A Mobile', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(718, '', 'Fiche indus. 5P32A Mobile', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(719, '', 'Fiche indus. 3P16A Apparente', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(720, '', 'Fiche indus. 3P32A Apparente', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(721, '', 'Fiche indus. 5P16A Apparente', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(722, '', 'Fiche indus. 5P32A Apparente', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(723, '', 'FUSIBlES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(724, '', 'Fusibles cylindriques (14x51), de 2 ? 10A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(725, '', 'Fusibles cylindriques (14x51), de 16 ? 25A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(726, '', 'Fusibles cylindriques (14x51), 32 & 40A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(727, '', 'Fusibles cylindriques (14x51), 50A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(728, '', 'Fusibles cylindriques (14x51), 63A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(729, '', 'Fusibles EDG 250A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(730, '', 'Fusibles EDG 400A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(731, '', 'LUMINAIRES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(732, '', 'SPOTS', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(733, 'SpotEnCar3W', 'Spot encastr? carr? 3W LED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(734, 'SpotEnCar6W', 'Spot encastr? carr? 6W LED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(735, 'SpotEnCar9W', 'Spot encastr? carr? 9W LED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(736, 'SpotEnCar12W', 'Spot encastr? carr? 12W LED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(737, 'SpotEnCar15W', 'Spot encastr? carr? 16W LED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(738, 'SpotEnCar18W', 'Spot encastr? carr? 18W LED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(739, 'SpotEnCar20W', 'Spot encastr? carr? 20W LED', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(740, 'SpotEncRon3W', 'Spot apparent 3W LED rond ', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(741, 'SpotEncRon6W', 'Spot apparent 6W LED rond ', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(742, 'SpotEncRon9W', 'Spot apparent 9W LED rond ', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(743, 'SpotEncRon12W', 'Spot apparent 12W LED rond ', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(744, 'SpotEncCar3W', 'Spot apparent 3W LED carr?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(745, 'SpotEncCar6W', 'Spot apparent 6W LED carr?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(746, 'SpotEncCar9W', 'Spot apparent 9W LED carr?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(747, 'SpotEncCar12W', 'Spot apparent 12W LED carr?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(748, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(749, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(750, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(751, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(752, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(753, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(754, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(755, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(756, '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(757, '', 'PORJECTEURS  ET LAMPADAIRES C&S ELECTRIC', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(758, '', 'Projecteur 50W LED GoFlo Low voltage', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(759, '', 'Projecteur 100W LED GoFlo Low voltage', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(760, '', 'Projecteur halog?ne 1000W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(761, '', 'Lampadaire ordinaire 250W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(762, '', 'GLOBES PLAFONNIERS', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(763, '', 'Petit globe plafonier ?tanche', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(764, '', 'Globe Plafonier ?tanche', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(765, '', 'REGLETTES STANDARDS', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(766, '', 'R?glette Standard 1m20', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(767, '', 'R?glette Standard 2x1m20', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(768, '', 'ACCESSOIRES ELECTRIQUES C&S ELECTRIC, Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(769, '', 'Interrupteur Eco d\'?nergie', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(770, '', 'LAMPES TEMOINS (Tous coloris)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(771, '', 'Boutons lumineurs (R/J/V/B) sans base NO ou NC', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(772, '', 'Boutons lumineurs (R/J/V/B) avec base NO ou NC', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(773, '', 'Bouton d\'arr?t d\'urgence sans cl?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(774, '', 'Bouton d\'arr?t d\'urgence avec cl?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(775, '', 'Base 1NO ou 1NC simple', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(776, '', 'Auxilliaire Face 1NO+1NC', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(777, '', 'Auxilliaire Face 2NO+2NC', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(778, '', 'Auxilliaire c?t? 1NO+1NC', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(779, '', 'PARAFOUDRES, Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(780, '', '2P40KA, 275V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(781, '', '4P40KA, 420V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(782, '', '4P60KA, 420V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(783, '', '4P80KA, 420V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(784, '', '4P100KA, 420V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(785, '', '4P150KA, 420V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(786, '', '2P40KA, 500V Solaire', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(787, '', '3P40KA, 500V Solaire', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(788, '', '2P40KA, 800V Solaire', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(789, '', '3P40KA, 800V Solaire', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(790, '', '2P40KA, 1000V Solaire', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(791, '', '3P40KA, 1000V Solaire', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(792, '', 'AKIS PLASTIC, Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(793, '', 'COFFRETS APPARENTS / ENCASTR?S', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(794, '', 'Coffret 6 D?parts Plastique', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(795, '', 'Coffret 8 D?parts plastique', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(796, '', 'Coffret 8 D?parts ?tanches', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(797, '', 'Coffret 12 D?parts Plastique', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(798, '', 'Coffret 12 D?parts ?tanches', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(799, '', 'Coffret 12 D?parts, base m?tallique', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(800, '', 'Coffret 15 D?parts ?tanches', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(801, '', 'Coffret 18 D?parts ?tanches', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(802, '', 'Coffret 24 D?parts plastique', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(803, '', 'Coffret 24 D?parts ?tanches', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(804, '', 'Coffret 24 D?parts, base m?tallique', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(805, '', 'Coffret 36 D?parts plastique', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(806, '', 'Coffret 36 D?parts, base m?tallique', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(807, '', 'Coffret 40 D?parts, base m?tallique', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(808, '', 'Coffret 45 D?parts Polycarbone', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(809, '', 'Coffret 45 D?parts, base m?tallique', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(810, '', 'Coffret 54 D?parts, base m?tallique', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(811, '', 'Coffret 60 D?parts, base m?tallique', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(812, '', 'Coffret 63 D?parts, base m?tallique', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(813, '', 'Coffret 72 D?parts, base m?tallique', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(814, '', 'GOULOTTES ORDINAIRES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(815, '', '16x16', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(816, '', '20x10', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(817, '', '25X16', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(818, '', '25X16 autocollant', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(819, '', '25X25', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(820, '', '40X16', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(821, '', '40X25', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(822, '', '40X40', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(823, '', '60X40', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(824, '', '60x40 perfor?es', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(825, '', '60X60', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(826, '', '80X40', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(827, '', '100X40', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(828, '', '100X60', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(829, '', 'AKIS PLASTIC, Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(830, '', 'GOULOTTES MOZA?C & ACCESSOIRES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(831, '', 'Goulotte Moza?c 100X50', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(832, '', 'Prise 2P+T, 45x45', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(833, '', 'Prise Cat5 (45x45)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(834, '', 'Prise Cat6 (45x45)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(835, '', 'S?parateur', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(836, '', 'Raccordement', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(837, '', 'Cadre pour 1 prise 45x45', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(838, '', 'Cadre pour 2 prises 45x45', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(839, '', 'Cadre pour 3 prises 45x45', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(840, '', 'Cadre pour 4 prises 45x45', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(841, '', 'GAINES FLEXIBLES POUR LE PLAFOND (Roul. de 50m)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(842, '', 'Gaine Flex. Plafond D16', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(843, '', 'Gaine Flex. Plafond D21', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(844, '', 'Gaine Flex. Plafond D26', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(845, '', 'Gaine Flex. Plafond D32', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(846, '', 'GAINES FLEXIBLES POUR BETONS (2Roul. 25m ou 1x50m)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(847, '', 'Gaine Flex. B?ton D16', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(848, '', 'Gaine Flex. B?ton D21', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(849, '', 'Gaine Flex. B?ton D26', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(850, '', 'Gaine Flex. B?ton D32', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(851, '', 'TUBES IRO / PPR / PVC, 3 m?tres', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(852, '', 'Tube PPR D16', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(853, '', 'Tube PPR D20', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(854, '', 'Tube PPR D25', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(855, '', 'Tube PPR D32', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(856, '', 'ACCESSOIRES TUYAUX IRO / PPR', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(857, '', 'Coude lin?aire 16 & 20', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(858, '', 'Coude lin?aire 25 & 32', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(859, '', 'Coude 90?, Diam 16 & 20', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(860, '', 'Coude 90?, Diam 25 & 32', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(861, '', 'T, Diam 16', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(862, '', 'T, Diam 20', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(863, '', 'T, Diam 25', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(864, '', 'T, Diam 32', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(865, '', 'Collier mural, Diam 16 & 20', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(866, '', 'Collier mural, Diam 25 & 32', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(867, '', 'COSSES ?TAM?S Akis Plastic', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(868, '', 'Cosse D10', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(869, '', 'Cosse D16', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(870, '', 'Cosse D25', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(871, '', 'Cosse D35', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(872, '', 'Cosse D50', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(873, '', 'Cosse D70', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(874, '', 'Cosse D95', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(875, '', 'Cosse D120', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(876, '', 'Cosse D150', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(877, '', 'Cosse D185', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(878, '', 'Cosse D240', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(879, '', 'AKIS PLASTIC, Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(880, '', 'PRESSE-ETOUPE METALLIQUES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(881, '', 'Presse-?toupe m?tallique D7', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(882, '', 'Presse-?toupe m?tallique D11', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(883, '', 'Presse-?toupe m?tallique D16', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(884, '', 'Presse-?toupe m?tallique D21', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(885, '', 'Presse-?toupe m?tallique D29', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(886, '', 'Presse-?toupe m?tallique D36', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(887, '', 'Presse-?toupe m?tallique D42', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(888, '', 'PRESSE-ETOUPES PLASTIQUES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(889, '', 'Presse-?toupe PG9', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(890, '', 'Presse-?toupe PG11', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(891, '', 'Presse-?toupe PG16', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(892, '', 'Presse-?toupe PG19', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(893, '', 'Presse-?toupe PG25', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(894, '', 'Presse-?toupe PG29', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(895, '', 'Presse-?toupe PG36', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(896, '', 'Presse-?toupe PG42', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(897, '', 'Presse-?toupe PG46', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(898, '', 'Presse-?toupe PG63', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(899, '', 'COLLIER COLSON', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(900, '', 'Collier Colson L 150mm', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(901, '', 'Collier Colson L 200mm', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(902, '', 'Collier Colson L 250mm', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(903, '', 'Collier Colson L 300mm', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(904, '', 'Collier Colson L 400mm', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(905, '', 'Collier Colson L 500mm', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(906, '', 'ASPIRATEURS DE TOILETTES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(907, '', 'Diam. 10', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(908, '', 'Diam. 12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(909, '', 'Diam. 15', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(910, '', 'BOITES ?TANCHES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(911, '', 'Bo?tes 110X110X50', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(912, '', 'Bo?tes 130X230X85', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(913, '', 'Bo?tes 130X230X120', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(914, '', 'Bo?tes  230X310X130', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(915, '', 'Bo?tes 300x400x170', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(916, '', 'Bo?tes 400x600x200', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(917, '', 'Bo?tes 600x800x260', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(918, '', 'BARRES DOMINOS', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(919, '', 'DOMINOS No 16', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(920, '', 'DOMINOS No 25', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(921, '', 'DOMINOS No 35', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(922, '', 'GLOBES ?TANCHES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(923, '', 'Ronds', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(924, '', 'Ovales', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(925, '', 'PANNEAUX SOLAIRES WAAREE , Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(926, '', 'Panneau 100Wp, 12V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(927, '', 'Panneau 150Wp, 12V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(928, '', 'Panneau 250Wp, 24V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(929, '', 'Panneau 260Wp, 12 / 24V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(930, '', 'Panneau 270Wp, 24V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(931, '', 'Panneau 305Wm, 24V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(932, '', 'Panneau 330Wp, 24V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(933, '', 'Panneau 335Wp Pro, 24V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(934, '', 'Panneau 380Wm, 24V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(935, '', 'Panneau 400Wm, 24V, Mono-facial', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(936, '', 'Panneau 400Wm, 24V, Bi-facial', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(937, '', 'Panneau 445Wm, 24V', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(938, '', 'ONDULEURS SOL. PWM  WAAREE, Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(939, '', 'Off Grid Inverter 12V - WEP575 - PWM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(940, '', 'Off Grid Inverter 12V - WEP725 - PWM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(941, '', 'Off Grid Inverter 12V ? WEP975 - PWM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(942, '', 'Off Grid Inverter 12V - WEP1000 -LCD - PWM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(943, '', 'Off Grid Inverter 12V - WEP1050 - PWM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(944, '', 'Off Grid Inverter 12V - WEP1150 -LCD - PWM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(945, '', 'Off Grid Inverter 24V - WEP1650 -LCD - PWM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(946, '', 'Off Grid Inverter 24V - WEP2250 -LCD - PWM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(947, '', 'Off Grid Inverter 24V - WEP2750 -LCD - PWM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(948, '', 'Off Grid Inverter 48V - WEP3000 -LCD - PWM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(949, '', 'Off Grid Inverter 48V - WEP5500 -LCD - PWM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(950, '', 'ONDULEURS SOL. MPPT  WAAREE', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(951, '', 'Off Grid Inverter 48V - WEM3500 - LCD - MPPT', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(952, '', 'Off Grid Inverter 48V - WEM5000 -LCD - MPPT', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(953, '', 'POMPES SOLAIRES ', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(954, '', 'Pompe solaire 0,75HP', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(955, '', 'Pompe solaire 1HP', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(956, '', 'Pompe solaire 1,5HP', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(957, '', 'Pompe 3HP WAAREE (150m --> 2,4M3/H)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(958, '', 'Pompe 5HP WAAREE (150m --> 3M3/H)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(959, '', 'Pompe 7,5HP WAAREE (150m --> 6M3/H)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(960, '', 'Pompe 10HP WAAREE (150m --> 10M3/H)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(961, '', 'BATTERIES SOLAIRES GEL, Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(962, '', 'Batterie ? GEL 100AH', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(963, '', 'Batterie ? GEL 200AH', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(964, '', 'PROJECTEURS SOLAIRES en Kit', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(965, '', 'Projecteur solaire 50W en kit', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(966, '', 'Projecteur solaire 100W en kit', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(967, '', 'PROJECTEURS SOLAIRES de chantier', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(968, '', 'Projecteur solaire 50W chantier', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(969, '', 'Projecteur solaire 100W chantier', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(970, '', 'LAMPADAIRES SOLAIRES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(971, '', 'Lampadaire solaire PELSAN 40W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(972, '', 'Lampadaire solaire PELSAN 60W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(973, '', 'Lampadaire solaire AM 60W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(974, '', 'Lampadaire solaire AM 90W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(975, '', 'Lampadaire solaire Kit AM 200W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(976, '', 'ONDULEURS SOLAIRES (AM), Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(977, '', 'Onduleur AM 300W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(978, '', 'Onduleur AM 400W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(979, '', 'Onduleur AM 500W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(980, '', 'Onduleur AM 600W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(981, '', 'AMPOULES SOLAIRES (12/24V DC), Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(982, '', 'Ampoule 3W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(983, '', 'Ampoule 5W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(984, '', 'Ampoule 7W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(985, '', 'Ampoule 9W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(986, '', 'Ampoule 12W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(987, '', 'Lampe murale solaire', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(988, '', 'CONTR?LEURS DE CHARGE, Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL);
INSERT INTO `table_produit` (`id`, `Reference_produit`, `Nom_produit`, `ID_fournisseur`, `Quantite_produit`, `Prix_achat_unitaire`, `Prix_vente_unitaire`, `Categorie`, `Type_unite_unitaire`, `Image`, `Description`, `Seuil_minimum`, `Date_perumption`, `Creer_par`, `Creer_le`, `Modifier_par`, `Modifier_le`, `Statut_produit`) VALUES
(989, '', 'Contr?leur PWM 12V/24V 20A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(990, '', 'Contr?leur PWM 12V/24V 30A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(991, '', 'Contr?leur PWM12V/24V 40A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(992, '', 'Contr?leur PWM 36V/48V/60V 60A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(993, '', 'Contr?leur MPPT 12/24V 30A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(994, '', 'Contr?leur MPPT  12/24V 40A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(995, '', 'Contr?leur MPPT 12/24V 50A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(996, '', 'Contr?leur MPPT 12/24V 60A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(997, '', 'Contr?leur MPPT 12/24VDC 100A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(998, '', 'Contr?leur MPPT 12V/24V/36V/48V/60V 40A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(999, '', 'Contr?leur MPPT 12V/24V/36V/48V/60V 50A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1000, '', 'Contr?leur MPPT 12V/24V/36V/48V/60V 60A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1001, '', 'Contr?leur MPPT 12V/24V/36V/48V/60V 100A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1002, '', 'Contr?leur MPPT 12V/24V 20A GRIS, Programmable', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1003, '', 'Contr?leur MPPT 12V/24V  30A,  GRIS, Programmable', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1004, '', 'CONNECTEURS SOLAIRES, Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1005, '', 'Connecteur Unipolaire MC4 (Pair)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1006, '', 'Connecteur 2P MC4 avec fiche (Pair)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1007, '', 'Connecteur 3P MC4 sans fiche (Pair)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1008, '', 'Connecteur 3P MC4 avec fiche (Pair)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1009, '', 'Connecteur 4P MC4 sans fiche (Pair)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1010, '', 'AUTRES ACCESSOIRES SOLAIRES, Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1011, '', 'Inverseur automatique 2P/63A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1012, '', 'Pince plastique MC4 (Pair)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1013, '', 'Pince m?tallique MC4 (Pair)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1014, '', 'CONVERTISSEURS DC-DC, Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1015, '', 'Convertiseur 48V-12V, 360W, 30A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1016, '', 'Convertiseur 48V-24V, 360W, 15A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1017, '', 'Convertiseur 48V-12V, 480W, 40A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1018, '', 'Convertiseur 48V-24V, 480W, 20A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1019, '', 'CONVERTISSEURS AC-DC, Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1020, '', 'Convertiseur 220V AC-12V DC, 120W Pelsan', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1021, '', 'Convertiseur 220V AC-12V DC, 120W AM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1022, '', 'Convertiseur 220V AC-12V DC, 150W AM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1023, '', 'Convertiseur 220V AC-12V DC, 200W Pelsan', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1024, '', 'Convertiseur 220V AC-12V DC, 200W AM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1025, '', 'Convertiseur 220V AC-12V DC, 240W AM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1026, '', 'Convertiseur 220V AC-12V DC, 350W AM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1027, '', 'Convertiseur 220V AC-12V DC, 360W Pelsan', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1028, '', 'Convertiseur 220V AC-12V DC, 500W AM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1029, '', 'Convertiseur 220V AC-12V DC, 600W AM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1030, '', 'Convertiseur 220V AC-12V DC, 1000W AM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1031, '', 'Convertiseur 220V AC-12V DC, 1500W AM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1032, '', 'Convertiseur 220V AC-12V DC, 2000W AM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1033, '', 'PARATONNERRES TOPBAS GRUP, Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1034, '', 'UMBRA ECO-15 (32-51m de rayon max, ? 5m)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1035, '', 'Sirius 25 (42-68m de rayon max, install? ? 5m)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1036, '', 'Ionia 40 (58-86m de rayon max, install? ? 5m)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1037, '', 'Ionia 60 (79-108m de rayon max, install? ? 5m)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1038, '', 'Sira (81-112m de rayon max, install? ? 5m)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1039, '', 'Compteurs m?caniques (StrikerOne & StrikerX)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1040, '', 'Compteurs Ares & Saturn', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1041, '', 'Compteur digital (Vega Digital Strike Counter)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1042, '', 'Testers (Test Device T01 & T02)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1043, '', 'ACCESSOIRES SIMPA ELEKTRIK, Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1044, '', 'EMBOUTS SIMPLES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1045, '', 'Embout simple Diam. 1,5mm? SP-IKY/1,5-8', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1046, '', 'Embout simple Diam. 2,5mm?SP-IKY/2,5-8', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1047, '', 'Embout simple Diam. 4mm? SP-IKY/4-10', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1048, '', 'Embout simple Diam. 6mm? SP-IKY/6-12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1049, '', 'Embout simple Diam. 10mm? SP-IKY/10-12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1050, '', 'Embout simple Diam. 16mm? SP-IKY/16-12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1051, '', 'Embout simple Diam. 25mm? SP-IKY/25-15', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1052, '', 'EMBOUTS DOUBLES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1053, '', 'Embout double Diam. 2x1,5mm? SP-IKY/2X0,75-8', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1054, '', 'Embout double Diam. 2x1,5mm? SP-IKY/2X1,5-8', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1055, '', 'Embout double Diam. 2x2,5mm? SP-IKY/2X2,5-10', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1056, '', 'CONNECTEURS ISOLES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1057, '', 'Connecteur 0,5-1,5mm? SP-IEM/251', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1058, '', 'Connecteur 1,5-2,5mm? SP-IEM/252', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1059, '', 'Connecteur 4-6mm? SP-IEM/256', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1060, '', 'COSSES ISOLEES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1061, '', 'Cosse isol?e diam.  No 0,5-1,5mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1062, '', 'Cosse isol?e diam. No 1,5-2,5mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1063, '', 'Cosse isol?e diam. No 4-6mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1064, '', 'COSSES ETAMEES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1065, '', 'Cosse ?tam?e diam. No 10mm? M8', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1066, '', 'Cosse ?tam?e diam. No 16mm? M10', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1067, '', 'Cosse ?tam?e diam. No 25mm? M10', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1068, '', 'Cosse ?tam?e diam. No 35mm? M10', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1069, '', 'Cosse ?tam?e diam. No 50mm? M10', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1070, '', 'Cosse ?tam?e diam. No 70mm? M12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1071, '', 'Cosse ?tam?e diam. No 95mm? M14', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1072, '', 'Cosse ?tam?e diam. No 120mm? M14', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1073, '', 'Cosse ?tam?e diam. No 150mm? M14', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1074, '', 'Cosse ?tam?e diam. No 185mm? M14', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1075, '', 'Cosse ?tam?e diam. No 240mm? M16', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1076, '', 'Cosse ?tam?e diam. No 300mm? M16', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1077, '', 'Cosse ?tam?e diam. No 400mm? M16', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1078, '', 'Cosse ?tam?e diam. No 630mm? M16', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1079, '', 'COSSES BIMETALLIQUES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1080, '', 'Cosse bim?tallique diam. No 50mm? M12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1081, '', 'Cosse bim?tallique diam. No 70mm? M12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1082, '', 'Cosse bim?tallique diam. No 95mm? M12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1083, '', 'Cosse bim?tallique diam. No 120mm? M12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1084, '', 'Cosse bim?tallique diam. No 150mm? M12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1085, '', 'Cosse bim?tallique diam. No 185mm? M12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1086, '', 'Cosse bim?tallique diam. No 240mm? M12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1087, '', 'Cosse bim?tallique diam. No 300mm? M12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1088, '', 'Cosse bim?tallique diam. No 400mm? M12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1089, '', 'Cosse bim?tallique diam. No 630mm? M20', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1090, '', 'PEIGNES ELECTRIQUES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1091, '', 'Peigne unipolaire', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1092, '', 'CONNECTEURS WAGGO (CLIP-IN)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1093, '', 'Clip-in 3x(1-2,5mm?)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1094, '', 'Clip-in 5x(1-2,5mm?)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1095, '', 'BARRES DE REPARTITION DE LA TERRE', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1096, '', 'Barre ?p. 2/31 boulons', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1097, '', 'Barre ?p. 2/61 boulons', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1098, '', 'Barre ?p. 3/31 boulons', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1099, '', 'Barre ?p. 3/61 boulons', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1100, '', 'CHEMINS DE C?BLES, Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1101, '', 'Diam 50, 2,5 m?tres', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1102, '', 'Diam 100, 2,5 m?tres', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1103, '', 'Diam 150, 2,5 m?tres', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1104, '', 'Diam 200, 2,5 m?tres', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1105, '', 'Diam 300, 2,5 m?tres', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1106, '', 'Diam 400, 2,5 m?tres', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1107, '', 'Diam 500, 2,5 m?tres', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1108, '', 'REDUCTEURS DE CHEMINS DE C?BLES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1109, '', 'R?ducteur Ch. C?ble 200', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1110, '', 'R?ducteur Ch. C?ble 300', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1111, '', 'R?ducteur Ch. C?ble 400', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1112, '', 'R?ducteur Ch. C?ble 500', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1113, '', 'TERMINAUX DE CHEMINS DE C?BLES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1114, '', 'Terminal Ch. C?ble 100', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1115, '', 'Terminal Ch. C?ble 200', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1116, '', 'Terminal Ch. C?ble 300', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1117, '', 'Terminal Ch. C?ble 400', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1118, '', 'Terminal Ch. C?ble 500', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1119, '', 'Coude horizontal 90? pour chemins de c?bles diam 100', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1120, '', 'Coude horizontal 90? pour CC diam 150', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1121, '', 'Coude horizontal 90? pour CC diam 200', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1122, '', 'Coude flexible, vertical interne pour CC diam 100', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1123, '', 'Coude flexible, vertical interne pour CC diam 150', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1124, '', 'Coude flexible, vertical interne pour CC diam 200', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1125, '', 'T horizontal pour chemins de c?bles diam 100', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1126, '', 'T horizontal pour chemins de c?bles diam 150', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1127, '', 'T horizontal pour chemins de c?bles diam 200', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1128, '', 'Bande/Plastique de protection CC', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1129, '', 'Support Omega \"L\" Bracket L:130 pour CC 100', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1130, '', 'Support Omega \"L\" Bracket L:180 pour CC 150', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1131, '', 'Support Omega \"L\" Bracket L:230 pour CC 200', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1132, '', 'Support Omega \"L\" Bracket L:330 pour CC 300', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1133, '', 'Support Omega \"L\" Bracket (suspension) L:430', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1134, '', 'Suspension Omega \"L\" Bracket (suspension) L:630', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1135, '', 'Support Omega 3m (Omega Profile  W:60 H:20 L:3000)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1136, '', 'Set de 2 connecteurs + 2 boulons & ?crous (KIT)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1137, '', 'Cover Clamp H:40-PG (clipses) (pair)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1138, '', 'Cover Clamp H:50-PG (clipses) (pair)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1139, '', 'Chevilles m?talliques No 8  pour Dalle', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1140, '', 'Chevilles m?talliques No 10  pour Dalle', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1141, '', 'Fer ? fili?res No 8 (long: 2m)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1142, '', 'Fer ? fili?res No 10 (long: 2m)', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1143, '', 'C channel (Support de fixation pour dalle) 2m', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1144, '', 'Z profile  (Support fixation horiz. & verticale) 2m', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1145, '', 'Rail DIN 35x15, 2m', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1146, '', 'CHEMIN DE CABLES EN TREILLIS', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1147, '', 'Diam 100, 2,5 m?tres', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1148, '', 'Diam 200, 2,5 m?tres', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1149, '', 'Diam 300, 2,5 m?tres', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1150, '', '1 Set de connecteurs U30+U25+boulon No 6 + ?crou', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1151, '', 'Support mural/c?t? (vertical) de treillis', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1152, '', 'Support central/sol (horizontal) de treillis', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1153, '', 'ECHELLE DE CABLES, 3m', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1154, '', 'Echelles de c?ble Diam 100', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1155, '', 'Echelles de c?ble Diam 200', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1156, '', 'Echelles de c?ble Diam 300', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1157, '', 'Echelles de c?ble Diam 400', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1158, '', 'Echelles de c?ble Diam 500', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1159, '', 'Echelles de c?ble Diam 600', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1160, '', 'BARRES EQUIPOTENTIELLES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1161, '', 'Barre ?quipotentielle 30x5x300mm', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1162, '', 'AUTRES MAT. ELEC. FRANCE, Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1163, '', 'Baco 2P tout amp?rage', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1164, '', 'Baco 4P tout amp?rage', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1165, '', 'D?tecteur de fum?es', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1166, '', 'Scotch', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1167, '', 'Kits d\'outils ?lectriciens', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1168, '', 'AUTRES MAT. ELECTRIQUES, Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1169, '', 'VENTILATEURS PLAFONNIERS, Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1170, '', 'Ventilateur 56\" longues h?lices', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1171, '', 'Ventilateur 16\" orbite', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1172, '', 'RUBAN LED 220VAC, Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1173, '', 'Ruban Led Blanc/Bleu/Jaune/vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1174, '', 'Fiche Rubans LED classiques', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1175, '', 'Connecteurs Rubans LED classiques', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1176, '', 'Embouts Rubans LED classiques et multicouleurs', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1177, '', 'Colliers-attaches Rubans LED classiques et multicouleurs', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1178, '', 'Ruban Led Multicolours', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1179, '', 'T?l?commande Ruban Led Multicouleurs', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1180, '', 'Fiche Ruban Led Multicouleurs', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1181, '', 'PROJECTEURS LED AM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1182, '', 'Projecteur led 50W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1183, '', 'Projecteur led 100W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1184, '', 'Projecteur led 150W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1185, '', 'Projecteur led 200W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1186, '', 'Projecteur led 300W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1187, '', 'Projecteur led 400W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1188, '', 'Projecteur led 500W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1189, '', 'PROJECTEURS LED multi-couleurs', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1190, '', 'Projecteur led multi-couleurs 50W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1191, '', 'Projecteur led multi-couleurs 100W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1192, '', 'Projecteur led multi-couleurs 200W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1193, '', 'PROJECTEURS LED avec d?tecteur de pr?sence', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1194, '', 'Projecteur led avec d?tecteur 50W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1195, '', 'Projecteur led avec d?tecteur 100W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1196, '', 'Projecteur led avec d?tecteur 200W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1197, '', 'DISJONCTEURS REGLABLES', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1198, '', '2P63A ajustable ? la hausse et ? la baisse', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1199, '', 'PINCES ', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1200, '', 'Pinces ? sertir 0,5-6mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1201, '', 'AMPOULES LED E27', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1202, '', 'Ampoule LED 5W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1203, '', 'Ampoule LED 7W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1204, '', 'Ampoule LED 9W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1205, '', 'Ampoule LED 12W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1206, '', 'Ampoule LED 15W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1207, '', 'Ampoule LED 15W avec batterie', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1208, '', 'Ampoule LED 18W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1209, '', 'Ampoule LED 30W ronde', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1210, '', 'Ampoule LED 30W plate', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1211, '', 'Ampoule LED 40W ronde', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1212, '', 'Ampoule LED 40W plate', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1213, '', 'Ampoule LED 50W ronde', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1214, '', 'Ampoule LED 50W plate', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1215, '', 'BORNIERS SUR RAIL', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1216, '', 'Bornier No 1,5', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1217, '', 'Bornier No 2,5', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1218, '', 'Bornier No 4', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1219, '', 'Bornier No 6', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1220, '', 'Bornier No 10', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1221, '', 'Bornier No 16', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1222, '', 'Bornier No 25', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1223, '', 'Bornier No 35', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1224, '', 'Bornier No 50', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1225, '', 'Bornier No 70', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1226, '', 'Bornier No 2,5 Jaune-Vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1227, '', 'Bornier No 4 Jaune-Vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1228, '', 'Bornier No 6 Jaune-Vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1229, '', 'Bornier No 10 Jaune-Vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1230, '', 'Bornier No 16 Jaune-Vert', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1231, '', 'COLLE 3M, Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1232, '', '3M VO', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1233, '', '3M LQ', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1234, '', 'R?partiteur ', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1235, '', 'R?partiteur 4P100A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1236, '', 'R?partiteur 4P125A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1237, '', 'R?partiteur 4P160A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1238, '', 'R?partiteur 4P200A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1239, '', 'R?partiteur 4P250A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1240, '', 'R?partiteur 4P400A', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1241, '', 'JOINTS DE C?BLES AVEC DE LA RESINE', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1242, '', 'Joint ? r?sine 4x1,5-10mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1243, '', 'Joint ? r?sine 4x10-25mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1244, '', 'Joint ? r?sine 4x25-50mm?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1245, '', 'BAES, SERIE 2', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1246, '', 'BAES SERIE 2', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1247, '', 'T?l?rupteur ', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1248, '', 'T?l?rupteur Monophas?', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1249, '', 'LUMINAIRES AM, Juillet 2022', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1250, '', 'SPOTS RONDS ENCASTR?S AM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1251, '', 'Spot AM 3W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1252, '', 'Spot AM 6W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1253, '', 'Spot AM 9W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1254, '', 'Spot AM 12W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1255, '', 'Spot AM 15W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1256, '', 'Spot AM 18W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1257, '', 'Spot AM 24W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1258, '', 'SPOTS ORIENTABLES AM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1259, '', 'Spot AM 3W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1260, '', 'Spot AM 5W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1261, '', 'Spot AM 7W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1262, '', 'SPOTS DOUBLE-COULEUR AM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1263, '', 'Spot AM 3+3W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1264, '', 'Spot AM 6+3W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1265, '', 'SPOTS MULTI-COULEURS AM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1266, '', 'Spot AM RGB 3+3W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1267, '', 'Spot AM RGB 6+3W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1268, '', 'COSSES ?TAM?S AM DUBA? / CHINE', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1269, '', 'Cosse AM D10', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1270, '', 'Cosse AM D16', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1271, '', 'Cosse AM D25', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1272, '', 'Cosse AM D35', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1273, '', 'Cosse AM D50', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1274, '', 'Cosse AM D70', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1275, '', 'Cosse AM D95', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1276, '', 'Cosse AM D120', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1277, '', 'Cosse AM D150', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1278, '', 'Cosse AM D185', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1279, '', 'Cosse M D240', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1280, '', 'ASPIRATEURS AM ', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1281, '', 'Aspirateur AM 6\"', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1282, '', 'Aspirateur AM 8\"', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1283, '', 'Aspirateur AM 10\"', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1284, '', 'DRIVERS SPOTS LED  AM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1285, '', 'Driver AM pour Spot 3W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1286, '', 'Driver AM pour Spot 6W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1287, '', 'Driver AM pour Spot 9W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1288, '', 'Driver AM pour Spot 12W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1289, '', 'Driver AM pour Spot 5W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1290, '', 'Driver AM pour Spot 18W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1291, '', 'Driver AM pour Spot 24W', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1292, '', 'COSSES ?TAM?S AM', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1293, '', 'Cosse AM D10', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1294, '', 'Cosse AM D16', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1295, '', 'Cosse AM D25', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1296, '', 'Cosse AM D35', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1297, '', 'Cosse AM D50', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1298, '', 'Cosse AM D70', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1299, '', 'Cosse AM D95', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1300, '', 'Cosse AM D120', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1301, '', 'Cosse AM D150', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1302, '', 'Cosse AM D185', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1303, '', 'Cosse AM D240', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL),
(1305, 'FTH1.5SM', 'Fil TH 1x1,5 mm? Souple Marron', 0, 0, 0, 0, NULL, NULL, '', NULL, 1, '2022-10-31', NULL, '2022-10-31', NULL, '2022-10-31', NULL);

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
(2, 1, 1, 2, 11, '2022-11-02', '2022-11-02', NULL, NULL, NULL),
(3, 1, 1, 3, 7, '2022-11-02', '2022-11-02', NULL, NULL, NULL),
(5, 2, 2, 2, 22, '2022-11-02', '2022-11-02', NULL, NULL, NULL),
(7, 1, 1, 7, 28, '2022-11-02', '2022-11-02', NULL, NULL, NULL),
(8, 1, 1, 16, 0, '2022-11-03', '2022-11-03', NULL, NULL, NULL),
(9, 2, 2, 8, 10, '2022-11-03', '2022-11-03', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `table_utilisateur`
--

CREATE TABLE `table_utilisateur` (
  `id` int(11) NOT NULL,
  `Nom_utilisateur` varchar(100) DEFAULT NULL,
  `Prenom_utilisateur` varchar(100) DEFAULT NULL,
  `Telephone` varchar(100) DEFAULT NULL,
  `Adresse` varchar(100) DEFAULT NULL,
  `Role` varchar(100) DEFAULT NULL,
  `Mot_de_passe` varchar(255) DEFAULT NULL,
  `Photo` varchar(100) DEFAULT NULL,
  `Creer_par` int(11) DEFAULT NULL,
  `Creer_le` date DEFAULT current_timestamp(),
  `Modifier_par` int(11) DEFAULT NULL,
  `Modifier_le` datetime DEFAULT current_timestamp(),
  `Statut_utilisateur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `table_utilisateur`
--

INSERT INTO `table_utilisateur` (`id`, `Nom_utilisateur`, `Prenom_utilisateur`, `Telephone`, `Adresse`, `Role`, `Mot_de_passe`, `Photo`, `Creer_par`, `Creer_le`, `Modifier_par`, `Modifier_le`, `Statut_utilisateur`) VALUES
(1, 'sekouba', 'SEKOUBA KALLO', '625445544', 'KOLOMA', 'utilisateur', '0000', NULL, NULL, '0000-00-00', NULL, '2022-10-31 17:05:06', NULL),
(2, 'user2', 'Utilisateur 2', '623000202', 'kipe', 'utilisateur', '0000', NULL, NULL, '0000-00-00', NULL, '2022-11-01 16:01:46', NULL),
(3, 'Admin', 'Administrateur', '610030302', 'Cite', 'Admin', '1234', NULL, NULL, '0000-00-00', NULL, '2022-11-02 15:07:14', NULL);

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

INSERT INTO `table_vente` (`id`, `Numero_commande`, `ID_client`, `Nom_client`, `Etat_paiement`, `Remise`, `Montant_total`, `Creer_par`, `Creer_le`, `Modifier_par`, `Modifier_le`, `Statut_vente`) VALUES
(55, 1, NULL, NULL, 'Payer', NULL, 75000, 3, '2022-11-03', 3, '2022-11-03 11:38:22', 200),
(56, 2, 2, 'Diallo Mariame Kesso', 'creance', NULL, 75000, 3, '2022-11-03', 3, '2022-11-03 11:44:34', 200),
(58, 3, NULL, NULL, 'Payer', NULL, 160000, 3, '2022-11-04', 3, '2022-11-04 02:32:04', 200);

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

INSERT INTO `table_vente_gerant` (`id`, `Numero_commande`, `ID_client`, `Nom_client`, `Etat_paiement`, `Remise`, `Montant_total`, `Creer_par`, `Creer_le`, `Modifier_par`, `Modifier_le`, `Statut_vente`) VALUES
(22, 1, 1, 'Cherif Imourane', 'creance', 3, 130950, 1, '2022-11-03', 1, '2022-11-03 03:25:34', 200),
(25, 2, NULL, NULL, NULL, 3, 0, 1, '2022-11-03', 1, '2022-11-03 11:52:36', 100),
(26, 3, 4, 'Kaba Aminata', 'creance', NULL, 15000, 2, '2022-11-04', 2, '2022-11-04 04:57:21', 200),
(29, 4, NULL, NULL, 'Payer', 3, 97000, 2, '2022-11-04', 2, '2022-11-04 05:02:54', 200);

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
-- Index pour la table `table_familliale`
--
ALTER TABLE `table_familliale`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `table_fournisseur`
--
ALTER TABLE `table_fournisseur`
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
  ADD UNIQUE KEY `id` (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `table_approvisionnement`
--
ALTER TABLE `table_approvisionnement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `table_appro_magasin`
--
ALTER TABLE `table_appro_magasin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `table_caisse`
--
ALTER TABLE `table_caisse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `table_commande_gerant`
--
ALTER TABLE `table_commande_gerant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `table_configuration`
--
ALTER TABLE `table_configuration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `table_creance`
--
ALTER TABLE `table_creance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `table_familliale`
--
ALTER TABLE `table_familliale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `table_fournisseur`
--
ALTER TABLE `table_fournisseur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `table_magasin`
--
ALTER TABLE `table_magasin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `table_perte`
--
ALTER TABLE `table_perte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `table_produit`
--
ALTER TABLE `table_produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1306;

--
-- AUTO_INCREMENT pour la table `table_stock_magasin`
--
ALTER TABLE `table_stock_magasin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `table_utilisateur`
--
ALTER TABLE `table_utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `table_vente`
--
ALTER TABLE `table_vente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `table_vente_gerant`
--
ALTER TABLE `table_vente_gerant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
-- Contraintes pour la table `table_perte`
--
ALTER TABLE `table_perte`
  ADD CONSTRAINT `FK_Article` FOREIGN KEY (`ID_Produit`) REFERENCES `table_produits` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `table_vente`
--
ALTER TABLE `table_vente`
  ADD CONSTRAINT `FK_client` FOREIGN KEY (`ID_client`) REFERENCES `table_client` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
