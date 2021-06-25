-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 25 juin 2021 à 01:52
-- Version du serveur :  5.7.24
-- Version de PHP :  7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `tbase`
--

-- --------------------------------------------------------

--
-- Structure de la table `ajustement_physique`
--

DROP TABLE IF EXISTS `ajustement_physique`;
CREATE TABLE IF NOT EXISTS `ajustement_physique` (
  `aj_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `annee_aj` varchar(255) DEFAULT NULL,
  `avancement_aj` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aj_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `ajustement_physique`
--

INSERT INTO `ajustement_physique` (`aj_id`, `annee_aj`, `avancement_aj`) VALUES
(1, 'anne1', '10%'),
(2, 'anné2', '50%'),
(3, 'anné3', '40%');

-- --------------------------------------------------------

--
-- Structure de la table `appel_offre`
--

DROP TABLE IF EXISTS `appel_offre`;
CREATE TABLE IF NOT EXISTS `appel_offre` (
  `appel_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`appel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

DROP TABLE IF EXISTS `facture`;
CREATE TABLE IF NOT EXISTS `facture` (
  `facture_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_facture` datetime DEFAULT NULL,
  `date_paiement` datetime DEFAULT NULL,
  `nom_client` varchar(255) DEFAULT NULL,
  `nom_facture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`facture_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `facture`
--

INSERT INTO `facture` (`facture_id`, `date_facture`, `date_paiement`, `nom_client`, `nom_facture`) VALUES
(1, '2021-05-11 13:08:39', '2021-05-06 13:08:39', 'smith', 'facture N2'),
(3, NULL, '2021-06-27 01:00:00', 'Smith', 'vc'),
(4, NULL, '2021-06-27 01:00:00', 'Imed', 'ffxx'),
(5, NULL, '2021-06-27 01:00:00', 'Pascal', 'x'),
(6, NULL, '2021-06-27 01:00:00', 'Pascal', 'ddddd');

-- --------------------------------------------------------

--
-- Structure de la table `fonction`
--

DROP TABLE IF EXISTS `fonction`;
CREATE TABLE IF NOT EXISTS `fonction` (
  `id_fonction` bigint(20) NOT NULL AUTO_INCREMENT,
  `nom_fonction` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_fonction`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fonction`
--

INSERT INTO `fonction` (`id_fonction`, `nom_fonction`) VALUES
(1, 'financier'),
(2, 'chef projet'),
(4, 'admin'),
(5, 'responsable technique'),
(6, 'responsable marché');

-- --------------------------------------------------------

--
-- Structure de la table `marche`
--

DROP TABLE IF EXISTS `marche`;
CREATE TABLE IF NOT EXISTS `marche` (
  `marche_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nom_fournisseur` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`marche_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `plannfication_physique`
--

DROP TABLE IF EXISTS `plannfication_physique`;
CREATE TABLE IF NOT EXISTS `plannfication_physique` (
  `pl_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `annee_pl` varchar(255) DEFAULT NULL,
  `avancement_pl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `plannfication_physique`
--

INSERT INTO `plannfication_physique` (`pl_id`, `annee_pl`, `avancement_pl`) VALUES
(1, 'ann1', '10%');

-- --------------------------------------------------------

--
-- Structure de la table `plan_initial_financier`
--

DROP TABLE IF EXISTS `plan_initial_financier`;
CREATE TABLE IF NOT EXISTS `plan_initial_financier` (
  `pif_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `annee_pif` varchar(255) DEFAULT NULL,
  `engagement_pif` bigint(20) DEFAULT NULL,
  `paiement_pif` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`pif_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `plan_initial_financier`
--

INSERT INTO `plan_initial_financier` (`pif_id`, `annee_pif`, `engagement_pif`, `paiement_pif`) VALUES
(1, '2001', 200000, 200);

-- --------------------------------------------------------

--
-- Structure de la table `plan_passation_marche`
--

DROP TABLE IF EXISTS `plan_passation_marche`;
CREATE TABLE IF NOT EXISTS `plan_passation_marche` (
  `ppm_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_lancement_ao` datetime DEFAULT NULL,
  `titre_ao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ppm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `plan_travail_financier`
--

DROP TABLE IF EXISTS `plan_travail_financier`;
CREATE TABLE IF NOT EXISTS `plan_travail_financier` (
  `ptf_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `annee_ptf` varchar(255) DEFAULT NULL,
  `engagement_ptf` bigint(20) DEFAULT NULL,
  `paiement_ptf` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ptf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `plan_travail_financier`
--

INSERT INTO `plan_travail_financier` (`ptf_id`, `annee_ptf`, `engagement_ptf`, `paiement_ptf`) VALUES
(1, '2005', 50000, 5266);

-- --------------------------------------------------------

--
-- Structure de la table `profil`
--

DROP TABLE IF EXISTS `profil`;
CREATE TABLE IF NOT EXISTS `profil` (
  `id_profil` bigint(20) NOT NULL AUTO_INCREMENT,
  `nom_profil` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_profil`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `profil`
--

INSERT INTO `profil` (`id_profil`, `nom_profil`) VALUES
(1, 'P1'),
(2, 'P2'),
(3, 'P3'),
(4, 'P4'),
(5, 'P5'),
(6, 'p12'),
(7, NULL),
(8, NULL),
(9, NULL),
(10, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `profil_fonctions`
--

DROP TABLE IF EXISTS `profil_fonctions`;
CREATE TABLE IF NOT EXISTS `profil_fonctions` (
  `profil_id_profil` bigint(20) NOT NULL,
  `fonctions_id_fonction` bigint(20) NOT NULL,
  PRIMARY KEY (`profil_id_profil`,`fonctions_id_fonction`),
  UNIQUE KEY `UK_oow2vsf7le0u6sx6nrnon1m1q` (`fonctions_id_fonction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `profil_fonctions`
--

INSERT INTO `profil_fonctions` (`profil_id_profil`, `fonctions_id_fonction`) VALUES
(2, 2),
(1, 4);

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

DROP TABLE IF EXISTS `projet`;
CREATE TABLE IF NOT EXISTS `projet` (
  `projet_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `en_difficulte` bit(1) NOT NULL,
  `cout` bigint(20) NOT NULL,
  `date_ajout` datetime DEFAULT NULL,
  `date_mise_ajour` datetime DEFAULT NULL,
  `datedebut` datetime DEFAULT NULL,
  `datefin` datetime DEFAULT NULL,
  `difficulte` varchar(255) DEFAULT NULL,
  `intitule` varchar(255) DEFAULT NULL,
  `stade` varchar(255) DEFAULT NULL,
  `ajp_aj_id` bigint(20) DEFAULT NULL,
  `plp_pl_id` bigint(20) DEFAULT NULL,
  `ppm_ppm_id` bigint(20) DEFAULT NULL,
  `rap_re_id` bigint(20) DEFAULT NULL,
  `marche_marche_id` bigint(20) DEFAULT NULL,
  `pif_pif_id` bigint(20) DEFAULT NULL,
  `ptf_ptf_id` bigint(20) DEFAULT NULL,
  `localisation` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`projet_id`),
  KEY `FKbcte9r4dh5eld01984wrx2d4b` (`ajp_aj_id`),
  KEY `FKnr7ldxjwj7a89hsm12lb68ral` (`plp_pl_id`),
  KEY `FK8oyy8yfcgcnupbi554prue13t` (`ppm_ppm_id`),
  KEY `FKc18831ouqgqh9mo8bxa8q6vet` (`rap_re_id`),
  KEY `FKmlb8xk7gk9aegjlmsj92481a7` (`marche_marche_id`),
  KEY `FKsvanh5mcuhi77m3qxapat0ima` (`pif_pif_id`),
  KEY `FK1vc54n5g04xscd54db17o450v` (`ptf_ptf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `projet`
--

INSERT INTO `projet` (`projet_id`, `en_difficulte`, `cout`, `date_ajout`, `date_mise_ajour`, `datedebut`, `datefin`, `difficulte`, `intitule`, `stade`, `ajp_aj_id`, `plp_pl_id`, `ppm_ppm_id`, `rap_re_id`, `marche_marche_id`, `pif_pif_id`, `ptf_ptf_id`, `localisation`, `user_id`) VALUES
(1, b'0', 0, NULL, NULL, '2021-06-16 07:26:24', '2021-06-17 07:26:33', NULL, 'Steg projet', 'avancement', 1, 1, NULL, 1, NULL, 1, 1, NULL, 3),
(2, b'0', 0, NULL, NULL, NULL, NULL, NULL, 'Hopital projett', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(3, b'0', 1223, NULL, NULL, '2020-02-22 01:00:00', '2013-02-02 01:00:00', 'ccc', 'cv_NadiaAbdellatif', 'Colturé', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(4, b'0', 12, NULL, NULL, '2020-02-22 01:00:00', '2022-02-02 01:00:00', 'ff', 'cv_NadiaAbdellatif', 'en cours', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(5, b'0', 555, NULL, NULL, '2020-05-05 01:00:00', '2022-02-02 01:00:00', 'gg', 'jjjj', 'en cours', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(6, b'0', 12, NULL, NULL, '2020-05-12 01:00:00', '2023-02-20 01:00:00', 'dd', 'was', 'Colturé', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(7, b'0', 11, NULL, NULL, '2020-02-12 01:00:00', '2020-02-12 01:00:00', 'dd', 'ff', 'en cours', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(8, b'0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(9, b'0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10, b'0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `projet_appel_offre`
--

DROP TABLE IF EXISTS `projet_appel_offre`;
CREATE TABLE IF NOT EXISTS `projet_appel_offre` (
  `projet_projet_id` bigint(20) NOT NULL,
  `appel_offre_appel_id` bigint(20) NOT NULL,
  PRIMARY KEY (`projet_projet_id`,`appel_offre_appel_id`),
  UNIQUE KEY `UK_sjktvigqjo4wdluyuvaw4383v` (`appel_offre_appel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `projet_factures`
--

DROP TABLE IF EXISTS `projet_factures`;
CREATE TABLE IF NOT EXISTS `projet_factures` (
  `projet_projet_id` bigint(20) NOT NULL,
  `factures_facture_id` bigint(20) NOT NULL,
  PRIMARY KEY (`projet_projet_id`,`factures_facture_id`),
  UNIQUE KEY `UK_2wp327pgdwarvqobe7e2t05gk` (`factures_facture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `projet_factures`
--

INSERT INTO `projet_factures` (`projet_projet_id`, `factures_facture_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `realisation_physique`
--

DROP TABLE IF EXISTS `realisation_physique`;
CREATE TABLE IF NOT EXISTS `realisation_physique` (
  `re_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `annee_re` varchar(255) DEFAULT NULL,
  `avancement_re` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`re_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `realisation_physique`
--

INSERT INTO `realisation_physique` (`re_id`, `annee_re`, `avancement_re`) VALUES
(1, 'ann1', '10%');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `utilisateur_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `datenaissance` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mot_de_passe` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `nom_utilisateur` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `structure` varchar(255) DEFAULT NULL,
  `telephone` bigint(20) DEFAULT NULL,
  `profil_id_profil` bigint(20) DEFAULT NULL,
  `fonction_id` int(11) NOT NULL,
  `chef_projet` bit(1) NOT NULL,
  PRIMARY KEY (`utilisateur_id`),
  KEY `FK5mm3qltw954x5a8p4v86hc05n` (`profil_id_profil`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`utilisateur_id`, `datenaissance`, `email`, `mot_de_passe`, `nom`, `nom_utilisateur`, `prenom`, `structure`, `telephone`, `profil_id_profil`, `fonction_id`, `chef_projet`) VALUES
(1, '2021-06-26 01:00:00', 'sliva@gmail.com', 'sliva123', 'Slivaaaa', 'Sliva2', 'France', 'CNI', 77881122, 1, 2, b'0'),
(2, '1992-05-21 01:00:00', 'smith@gmail.com', 'sm123', 'Smith', 'smith', 'Alg', 'STEG', 28520312, 2, 1, b'0'),
(3, '1983-10-14 01:00:00', 'Pascalth2@hotmail.com', 'pr223', 'Pascal', 'pascal', 'Thimothé', 'CNI', 77888121, 3, 6, b'0'),
(4, '1981-02-05 01:00:00', 'belhsanimed@yahoo.fr', 'imed@123', 'Imed', 'imed_belhssan', 'Bel hssan', 'STEG', 28956898, 4, 1, b'0'),
(5, '1987-03-06 01:00:00', 'Alex655@yahoo.fr', 'aa123', 'Alex', 'Alex', 'BK', 'STEG', 96782000, 5, 1, b'0'),
(6, '2021-06-20 01:00:00', 'arijbelguith99@gmail.com', 'ch123', 'Chakib', 'Belguith Chakib', 'Belguith', 'STEG', 29713521, 6, 1, b'0'),
(7, '2021-06-12 01:00:00', 'aaaa @hotmail.com', 'amal20', 'amal', 'amal', 'njeimi', 'STEG', 23565121, 2, 5, b'0'),
(8, '2021-06-13 01:00:00', 'bel@gmail.com', 'arij12', 'arij', 'arij', 'belg', 'CNI', 23565898, 6, 2, b'0');

-- --------------------------------------------------------

--
-- Structure de la table `user_projet`
--

DROP TABLE IF EXISTS `user_projet`;
CREATE TABLE IF NOT EXISTS `user_projet` (
  `utilisateur_id` bigint(20) NOT NULL,
  `projet_id` bigint(20) NOT NULL,
  PRIMARY KEY (`utilisateur_id`,`projet_id`),
  KEY `FKlcmfje77esrmu5c07w515upvn` (`projet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user_projet`
--

INSERT INTO `user_projet` (`utilisateur_id`, `projet_id`) VALUES
(3, 1),
(4, 1),
(2, 2),
(5, 2),
(2, 4);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `profil_fonctions`
--
ALTER TABLE `profil_fonctions`
  ADD CONSTRAINT `FK3em4e16vq26lrm5cd5tv00p3s` FOREIGN KEY (`fonctions_id_fonction`) REFERENCES `fonction` (`id_fonction`),
  ADD CONSTRAINT `FKsxyit3ocrw0aq1fwtljbex3ju` FOREIGN KEY (`profil_id_profil`) REFERENCES `profil` (`id_profil`);

--
-- Contraintes pour la table `projet`
--
ALTER TABLE `projet`
  ADD CONSTRAINT `FK1vc54n5g04xscd54db17o450v` FOREIGN KEY (`ptf_ptf_id`) REFERENCES `plan_travail_financier` (`ptf_id`),
  ADD CONSTRAINT `FK8oyy8yfcgcnupbi554prue13t` FOREIGN KEY (`ppm_ppm_id`) REFERENCES `plan_passation_marche` (`ppm_id`),
  ADD CONSTRAINT `FKbcte9r4dh5eld01984wrx2d4b` FOREIGN KEY (`ajp_aj_id`) REFERENCES `ajustement_physique` (`aj_id`),
  ADD CONSTRAINT `FKc18831ouqgqh9mo8bxa8q6vet` FOREIGN KEY (`rap_re_id`) REFERENCES `realisation_physique` (`re_id`),
  ADD CONSTRAINT `FKmlb8xk7gk9aegjlmsj92481a7` FOREIGN KEY (`marche_marche_id`) REFERENCES `marche` (`marche_id`),
  ADD CONSTRAINT `FKnr7ldxjwj7a89hsm12lb68ral` FOREIGN KEY (`plp_pl_id`) REFERENCES `plannfication_physique` (`pl_id`),
  ADD CONSTRAINT `FKsvanh5mcuhi77m3qxapat0ima` FOREIGN KEY (`pif_pif_id`) REFERENCES `plan_initial_financier` (`pif_id`);

--
-- Contraintes pour la table `projet_appel_offre`
--
ALTER TABLE `projet_appel_offre`
  ADD CONSTRAINT `FKc0e8tqairth48mvul6c788ybh` FOREIGN KEY (`appel_offre_appel_id`) REFERENCES `appel_offre` (`appel_id`),
  ADD CONSTRAINT `FKmp62v37eu0n5jxig3t5obwfby` FOREIGN KEY (`projet_projet_id`) REFERENCES `projet` (`projet_id`);

--
-- Contraintes pour la table `projet_factures`
--
ALTER TABLE `projet_factures`
  ADD CONSTRAINT `FK2nb66ke4b2cjio49bttkwpd5w` FOREIGN KEY (`projet_projet_id`) REFERENCES `projet` (`projet_id`),
  ADD CONSTRAINT `FK8ns5yda51qqq01bok3j7rlfn7` FOREIGN KEY (`factures_facture_id`) REFERENCES `facture` (`facture_id`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK5mm3qltw954x5a8p4v86hc05n` FOREIGN KEY (`profil_id_profil`) REFERENCES `profil` (`id_profil`);

--
-- Contraintes pour la table `user_projet`
--
ALTER TABLE `user_projet`
  ADD CONSTRAINT `FKeug6udtaer5t246sw7v6apq74` FOREIGN KEY (`utilisateur_id`) REFERENCES `user` (`utilisateur_id`),
  ADD CONSTRAINT `FKlcmfje77esrmu5c07w515upvn` FOREIGN KEY (`projet_id`) REFERENCES `projet` (`projet_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
