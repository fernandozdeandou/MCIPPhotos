-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  sam. 13 juin 2020 à 17:38
-- Version du serveur :  10.1.31-MariaDB
-- Version de PHP :  7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `maincouranteinformatiseepolice`
--

-- --------------------------------------------------------

--
-- Structure de la table `evenement`
--

CREATE TABLE `evenement` (
  `id_evenement` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `heure` time DEFAULT NULL,
  `lieu_evenement` varchar(255) DEFAULT NULL,
  `nom_evenement` varchar(255) DEFAULT NULL,
  `saisine` varchar(255) DEFAULT NULL,
  `personnel_id` varchar(15) DEFAULT NULL,
  `requerent_id` bigint(20) DEFAULT NULL,
  `heure_evenement` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `evenement`
--

INSERT INTO `evenement` (`id_evenement`, `date`, `heure`, `lieu_evenement`, `nom_evenement`, `saisine`, `personnel_id`, `requerent_id`, `heure_evenement`) VALUES
(1, NULL, NULL, 'aaaaaaaa', 'aaaaaaaaa', NULL, '703495-M', 1, NULL),
(2, NULL, NULL, 'aaaaaaaa', 'bbbbbbbbb', 'appel', '703495-M', 2, NULL),
(3, NULL, NULL, 'ccccccca', 'dddddddddd', 'correspondance', '703495-M', 3, NULL),
(4, NULL, NULL, 'eeeeeeee', 'eeeeeeeee', 'correspondance', '703495-M', 3, NULL),
(5, NULL, NULL, 'domayo', 'vol', 'plainte', '703495-M', 3, '10H20MIN'),
(6, NULL, NULL, 'Makaba', 'viol', 'plainte', '703495-M', 1, '12H20MIN'),
(7, NULL, NULL, 'Makaba', 'viol', 'plainte', '703495-M', 1, '12H20MIN');

-- --------------------------------------------------------

--
-- Structure de la table `mention`
--

CREATE TABLE `mention` (
  `numero_mention` bigint(20) NOT NULL,
  `commentaire` varchar(255) DEFAULT NULL,
  `date_mention` date DEFAULT NULL,
  `heure_mention` time DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `id_evenement` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `mention`
--

INSERT INTO `mention` (`numero_mention`, `commentaire`, `date_mention`, `heure_mention`, `titre`, `id_evenement`) VALUES
(1, 'azzzzzzezaaaaaaaazeeeeeeeeeeeeeazzzzzzzzzzeeeeeeeeeeeeea', '2020-04-09', '20:10:33', 'aaaaaaaa', 1),
(2, 'azdddddddddddddddeeeeerrsssssss', '2020-04-09', '20:17:25', 'bbbbbbbbbb', NULL),
(3, 'azdddddddddddddddeeeeerrsssssss', '2020-04-09', '20:17:54', 'bbbbbbbbbb', NULL),
(4, 'ccccccccccccccccdddddddersfzefffffffffffffffffffffffeeeeerrsssssss', '2020-04-09', '20:18:23', 'ccccccccccccccccccc', NULL),
(5, 'ccccccccccccccccdddddddersfzefffffffffffffffffffffffeeeeerrsssssss', '2020-04-09', '20:28:53', 'ddddddddddddddddd', NULL),
(6, 'ccccccccccccccccdddddddersfzefffffffffffffffffffffffeeeeerrsssssss', '2020-04-09', '20:29:05', 'eeeeeeeeeeeeeee', NULL),
(7, 'cccccccccccfffdddezzzzzzzzzzzzzzzzfffffffffeeeeerrsssssss', '2020-04-09', '20:29:26', 'ffffffffffffffffff', NULL),
(8, 'ggggggggggggggdaaaaaaaaaaaaaaaffdddezzzzzzzzzzzzzzzzfffffffffeeeeerrsssssss', '2020-04-09', '20:29:55', 'gggggggggggggggggggg', NULL),
(9, 'hhhhhhhhhhhhhhhhgggdaaaaaaaaaaaaaaaffdddezzzzzzzzzzzzzzzzfffffffffeeeeerrsssssss', '2020-04-09', '20:30:28', 'hhhhhhhhhhhhhhhhhh', NULL),
(10, 'hhhhhhhhhhhhhhhhgggdaaaaaaaaaaaaaaaffdddezzzzzzzzzzzzzzzzfffffffffeeeeerrsssssss', '2020-04-09', '20:30:34', 'hhhhhhhhhhhhhhhhhh', NULL),
(11, 'iiiiiiiiiiiiiihhhhhgggdaaaaaaaaaaaaaaaffdddezzzzzzzzzzzzzzzzfffffffffeeeeerrsssssss', '2020-04-09', '20:30:56', 'iiiiiiiiiiiiiiiii', NULL),
(12, 'jjjjjjjjjjjjiiiiiiihhhhhgffffffzzzzzzzzzzaaffdddezzzzzzzzzzzzzzzzfffffffffeeeeerrsssssss', '2020-04-09', '20:31:41', 'jjjjjjjjjjjjjjjjjj', NULL),
(13, 'kkkkkkkkkkiiiiiiihhhhhgffffffzzzzzzzzzzaaffdddezzzzzzzzzzzzzzzzfffffffffeeeeerrsssssss', '2020-04-09', '20:32:06', 'kkkkkkkkkkk', NULL),
(14, 'lllllllllllllllllllllllkiiiiiiihhhhhgffffffzzzzzzzzzzaaffdddezzzzzzzzzzzzzzzzfffffffffeeeeerrsssssss', '2020-04-09', '20:32:27', 'lllllllllllllllllllllll', NULL),
(15, 'mmmmmmmmmmmmmmmmmmllllllllllllllllkiiiiiiihhhhhgffffffzzzzzzzzzzaaffdddezzzzzzzzzzzzzzzzfffffffffeeeeerrsssssss', '2020-04-09', '20:33:24', 'mmmmmmmmmmmmm', NULL),
(16, 'mmnnnnnnnnnnnnnnnnnnnnnllllllllllllllllkiiiiiiihhhhhgffffffzzzzzzzzzzaaffdddezzzzzzzzzzzzzzzzfffffffffeeeeerrsssssss', '2020-04-09', '20:33:51', 'nnnnnnnnnn', NULL),
(17, 'oooooooooooppppppppppnnnnnnnnnllllllllllllllllkiiiiiiihhhhhgffffffzzzzzzzzzzaaffdddezzzzzzzzzzzzzzzzfffffffffeeeeerrsssssss', '2020-04-09', '20:34:15', 'ooooooooooooooooo', NULL),
(18, 'oooppppppppppnnnnnnnnnllllllllllllllllkiiiiiiihhhhhgffffffzzzzzzzzzzaaffdddezzzzzzzzzzzzzzzzfffffffffeeeeerrsssssss', '2020-04-09', '20:35:32', 'ppppppppppp', NULL),
(19, 'qqqqqqqqqqqqqqqqqqqppppppppppnnnnnnnnnllllllllllllllllkiiiiiiihhhhhgffffffzzzzzzzzzzaaffdddezzzzzzzzzzzzzzzzfffffffffeeeeerrsssssss', '2020-04-09', '20:35:48', 'qqqqqqqqqqqqqq', NULL),
(20, 'rrsssssssssssssssssspppppppnnnnnnnnnllllllllllllllllkiiiiiiihhhhhgffffffzzzzzzzzzzaaffdddezzzzzzzzzzzzzzzzfffffffffeeeeerrsssssss', '2020-04-09', '20:36:28', 'sssssssssss', NULL),
(21, 'rrsstttttttttttttttttssssspppppppnnnnnnnnnllllllllllllllllkiiiiiiihhhhhgffffffzzzzzzzzzzaaffdddezzzzzzzzzzzzzzzzfffffffffeeeeerrsssssss', '2020-04-09', '20:36:43', 'ttttttttttttttttt', NULL),
(22, 'fdfcdcfdc dfdcsdcvdscv vfsvdfsvfsdvdfsv frfrzfefzrger zfrzfrzfzrfrzgrzgf rfzrfzrgtrrzgrz ', '2020-04-19', '12:36:44', 'ferdi', NULL),
(23, 'fdfcdcfdc dfdcsdcvdscv vfsvdfsvfsdvdfsv frfrzfefzrger zfrzfrzfzrfrzgrzgf rfzrfzrgtrrzgrz ', '2020-04-19', '13:20:05', 'qgggggggggggggegffffffffffff', NULL),
(24, 'scsdqdzdefe plc:sm:mc:sqc:s ccclc;lclc;c vddcfddpdzpzpd dlsd;d;dld;sl;ls;sd;sds;dsm;dmsdle;l;c pdzdl;zpdl;zpdl;zpdl;zpld;zpdlzdl', '2020-04-19', '13:23:54', 'aderstrfdv', NULL),
(25, 'aaaaaaaaaaaa eeeeeeeee dddddddddddddd ssssssssss ccccccccccccccc vvvvvvvvvvvvvvvvv cccccccccccc ddd s fffffffffff fffffffffffffffffffff ffffffffffffffffffffffff', '2020-04-19', '13:30:05', 'aaaaaaaaaaaaeeeeeeerd', NULL),
(26, 'dccqcddcdcfdqfd ddqfdqfqdfdqf dfdfdqfqdfqdfqd  defqdfqdfqddqfqdfdq fqdfqdfqdfvcvsf ffdfqdfdfr rsfdfvdqvdvfs dcfqdfqdfqdf dqcfqdcqdcqdfqdv vdfdqvcqddqvqdc dqfqdvqdfvqdvdq dqdvqdvqdf dqfqdfqddqfcqddqfqdfqdf qdvqd   dvdqvqdvqdd qdvqdqd ', '2020-04-19', '13:35:14', 'zzzzeeeeaaaaa', NULL),
(27, 'otooçgigigigiii', '2020-04-19', '13:55:26', 'ssssssssssssssssss', NULL),
(28, 'fsvfsvfsvfsv fvfvfvfbvfbfbf', '2020-04-19', '14:41:44', 'tretrretre', NULL),
(29, 'ddc;dcd;m  mopfzfeioeefgfcbbvbicdc op ', '2020-04-19', '14:43:52', 'bmlopolmpp', NULL),
(30, 'dczfaefefgrcvzbr rvrvdfvdsvsdvs vbgrzllqrkr qkrkrgfglkfvf  pirposkpforkfprsof pfrsprsgpsrpgospgrpgfr sgfpsrpgsrpgr grsgposgsfgq ôkrg ^fsk', '2020-04-19', '14:55:28', 'bdfgsdfeferfae', NULL),
(31, 'pddmfk^fle$dfle$fple^fke^fk   okfêkfêfêdoepf$e efo$lo     $pef$epfl$ele$f^le fe$^fle$pfl$efle$fle )eof$efl$efle$flef $epl$efle$fel$el$ef ^pelf$efle$fe$ê$f^lef e elefle$fel', '2020-04-19', '14:59:15', 'kdfmclkdmvkdpo', NULL),
(33, NULL, '2020-04-19', '15:24:44', NULL, NULL),
(34, 'je suis entrain d\'évoluer dans mon application petit à petit par la grâce de Dieu! Oh que Dieu est grand', '2020-04-22', '12:26:49', 'titre de la mention', NULL),
(35, 'A chaque jour suffi sa peine. Bénit soit l\'Eternel pour cette magnifique journée pleinement accompli dans sa présence', '2020-04-22', '21:38:18', 'allez dormir', NULL),
(36, 'je suis entrain d\'évoluer dans mon application petit à petit par la grâce de Dieu! Oh que Dieu est grand', '2020-04-23', '21:54:08', 'titre de la mention', NULL),
(37, 'efeeedaed e e e e aefaefae ae ae faefae f aefaefae  e ae fae  aeaea eaeaefa e e ae fae a e ae e ae fae f efe f aef aef ae fae faefae f aedae faef ef ae fae e fae ae f ef ae fea  ef ef aea  ea e ', '2020-04-27', '14:33:07', 'fefefefefefefe', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `observation`
--

CREATE TABLE `observation` (
  `id_observation` bigint(20) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `mention_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `observation`
--

INSERT INTO `observation` (`id_observation`, `message`, `mention_id`) VALUES
(5, 'me voir', NULL),
(6, 'G4 pour suivi et CR', 2),
(7, 'ge pr CR', 33),
(9, 'G4 rrrrrrr rCR', 31),
(10, 'G4 rrrrrrr rCR', 30),
(11, 'G4  rCR', 29),
(12, 'aaaaaaaaaaa', 11),
(13, 'merci', 21),
(14, 'merci Seigneur!', 34),
(15, 'me voir', 28),
(16, 'bio', 27),
(17, 'aaaaaaaaaaaaaaaaaa', 26),
(18, 'sasasasas', 7),
(19, 'azeeeee', 36),
(20, 'derazezzrrr', 35),
(21, 'aezrt', 3),
(22, 'addsdaedaefeafe', 5),
(23, 'addsdaedaefeafe', 5),
(24, 'dedededed', 15);

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

CREATE TABLE `personnel` (
  `matricule` varchar(15) NOT NULL,
  `date_naissance` date DEFAULT NULL,
  `date_prise_service` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fonction` varchar(50) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `lieu_domicile` varchar(30) DEFAULT NULL,
  `nom_prenom` varchar(70) DEFAULT NULL,
  `numero_telephone` varchar(20) DEFAULT NULL,
  `numero_cni` varchar(30) DEFAULT NULL,
  `photo_profil` varchar(255) DEFAULT NULL,
  `sexe` varchar(255) DEFAULT NULL,
  `statut` varchar(255) DEFAULT NULL,
  `roles_id_role` int(11) DEFAULT NULL,
  `date_affectation` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personnel`
--

INSERT INTO `personnel` (`matricule`, `date_naissance`, `date_prise_service`, `email`, `fonction`, `grade`, `lieu_domicile`, `nom_prenom`, `numero_telephone`, `numero_cni`, `photo_profil`, `sexe`, `statut`, `roles_id_role`, `date_affectation`) VALUES
('703495-M', NULL, NULL, NULL, NULL, 'OPP', 'DJARENGOL', 'ANDOU', '672292233 ', '23334213', 'IMG_20200305_171244_2.jpg', 'masculin', 'EN CONGE', NULL, NULL),
('111495-M', NULL, NULL, NULL, NULL, 'CP', 'DJARENGOL', 'Aaaaaaaa', '6722233 ', '11111134213', 'IMG_20190411_133345_7.jpg', 'masculin', 'PERMISSIONNAIRE', NULL, NULL),
('123495-M', NULL, NULL, NULL, NULL, 'IPP', 'dddddddL', 'ddddddddd', '672212233 ', '111113', 'unknown.jpg', 'fémin', 'MALADE', NULL, NULL),
('323495-M', NULL, NULL, NULL, NULL, 'IP2', 'dddddddL', 'qerrrreeqre', '67221223 ', '11121113', 'IMG_20190501_102521_9.jpg', 'fémin', 'EN SERVICE', NULL, NULL),
('323485-M', NULL, NULL, NULL, 'cdt deCie', 'IP2', 'dsessesdses', 'EAEAEAEAEA', '672232423 ', '121113', 'unknown.jpg', 'fémin', 'MALADE', NULL, NULL),
('789 876-A', NULL, '2020-04-26', NULL, 'adjoint central', 'CP', NULL, 'AAAAAAAAAA DDDDDDDDF FFFFF', NULL, '123212323', 'unknown.jpg', 'masculin', 'PERMISSIONNAIRE', NULL, NULL),
('789 276-A', NULL, '2020-04-26', NULL, 'elmt', 'IPP', NULL, 'XDSQZERBBBAAA DDDD FFFFF', NULL, '123222343', 'unknown.jpg', 'FEMININ', 'MALADE', NULL, NULL),
('789 246-A', NULL, '2020-04-26', NULL, 'elmt', 'IP2', NULL, 'XDSQZ DAEDSZ FFFFF', NULL, '123343', 'unknown.jpg', 'FEMININ', 'EN CONGE', NULL, NULL),
('719 236-B', NULL, '2020-04-26', NULL, 'elmt', 'IP2', NULL, 'AEDS DFRQZ DAEDSZ FFFFF', NULL, '1233423143', 'unknown.jpg', 'FEMININ', 'EN SERVICE', NULL, NULL),
('123 4225-K', '1991-03-11', '2020-05-07', 'ferdinandguy_nkomozooandou@yahoo.com', 'chef', 'OP1', 'Maroua-Djarengol', 'Ntsama Ritha Yolande', '691158923', NULL, 'unknown.jpg', 'FEMININ', 'EN SERVICE', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `personnel_roles`
--

CREATE TABLE `personnel_roles` (
  `personnel_matricule` varchar(15) NOT NULL,
  `roles_id_role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `requrent`
--

CREATE TABLE `requrent` (
  `id_requerent` bigint(20) NOT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `nom_prenom` varchar(255) DEFAULT NULL,
  `numero_cni` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `requrent`
--

INSERT INTO `requrent` (`id_requerent`, `adresse`, `nom_prenom`, `numero_cni`, `telephone`, `email`) VALUES
(1, 'BP RRRRRRRR eee', 'zzzzzzzz', '1234321', '342543', NULL),
(2, 'BP aaaaaaaaaa, Rue: aaaaaaaa', 'aaaaaaaaaaa', '1244444431', '342543232', NULL),
(3, 'BP aaesdza, Rue: erdsca', 'aaaaaadeza', '1244444', '34321232', NULL),
(4, 'BP aaesd, Rue: erdsca', 'aaaezrdf', '12498984', '343212354', NULL),
(5, 'BP aaesd, Rue: erdsca', 'aaaezrdf', '12432584', '343212354', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id_role` int(11) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `role2`
--

CREATE TABLE `role2` (
  `id_role` int(11) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `suspect`
--

CREATE TABLE `suspect` (
  `id_suspect` bigint(20) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `distinction_honorifique` varchar(255) DEFAULT NULL,
  `ethnie` varchar(255) DEFAULT NULL,
  `lieu_domicile` varchar(255) DEFAULT NULL,
  `lieu_naissance` varchar(255) DEFAULT NULL,
  `nationalite` varchar(255) DEFAULT NULL,
  `nom_mere` varchar(255) DEFAULT NULL,
  `nom_pere` varchar(255) DEFAULT NULL,
  `nom_prenom` varchar(255) DEFAULT NULL,
  `nombre_enfant` int(11) NOT NULL,
  `numero_cni` varchar(255) DEFAULT NULL,
  `numero_telephone` varchar(255) DEFAULT NULL,
  `photo_entiere` varchar(255) DEFAULT NULL,
  `photo_face` varchar(255) DEFAULT NULL,
  `photo_profil` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `sexe` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `antecedent_judiciaire` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `suspect`
--

INSERT INTO `suspect` (`id_suspect`, `alias`, `date_naissance`, `distinction_honorifique`, `ethnie`, `lieu_domicile`, `lieu_naissance`, `nationalite`, `nom_mere`, `nom_pere`, `nom_prenom`, `nombre_enfant`, `numero_cni`, `numero_telephone`, `photo_entiere`, `photo_face`, `photo_profil`, `profession`, `sexe`, `position`, `antecedent_judiciaire`) VALUES
(1, 'AAAAAA', NULL, NULL, NULL, 'aaaaaaa', 'aaaaa', NULL, 'aaaaaaaa', 'aaaaaaaa', 'AAAAAAAAAAAAaaaaaaaa', 0, '111111111', '222221111', 'IMG_20190512_162235_7.jpg', 'IMG_20190512_093601_5.jpg', 'IMG_20190407_181212_2.jpg', 'aaaaaaaaa', 'masculin', 'DEFERER', NULL),
(2, 'BBBBBBBBBBBB', NULL, NULL, NULL, 'SSSSSSSSS', NULL, NULL, 'BBBBBBB', 'BBBBBBBBBB', 'BBBBBBBBBBBb', 0, '222111111', '345231', 'IMG_20190414_153525_2.jpg', 'IMG_20190406_195119_8.jpg', 'IMG_20190512_155216_3.jpg', 'bbbbbbbfresds', 'feminin', 'GARDER A VUE', NULL),
(3, 'CCCCCCCCCCCC', NULL, NULL, NULL, 'SSSSSSSSS', 'QQQQQQ', NULL, 'CCCCCCCCCC', 'CCCCCCCCCC', 'CCCCCCCCCC', 0, '223311111', '345231', 'IMG_20190421_131046_0.jpg', 'photoFace.jpg', 'photoProfil.png', 'bbbbbbbfresds', 'feminin', 'DEFERER', NULL),
(4, 'CCCCCCCCCCCC', NULL, NULL, NULL, 'SSSSSSSSS', 'QQQQQQ', NULL, 'CCCCCCCCCC', 'CCCCCCCCCC', 'CCCCCCCCCC ', 0, '221311111', '345231', 'photoEntiere.png', 'photoFace.jpg', 'photoProfil.png', 'bbbbbbbfresds', 'feminin', 'GARDER A VUE', NULL),
(5, 'CCCCCCCCCCCC', NULL, NULL, NULL, 'SSSSSSSSS', 'QQQQQQ', NULL, 'CCCCCCCCCC', 'CCCCCCCCCC', 'CCCCCCCCCC ', 0, '22111111', '345231', 'photoEntiere.png', 'IMG_20190501_102521_9.jpg', 'photoProfil.png', 'bbbbbbbfresds', 'feminin', 'DEFERER', NULL),
(6, 'dddddddddd', NULL, NULL, NULL, 'SSSSSSSSS', 'DDDDDDDDDD', NULL, 'DDDDDDDDDDD', 'DDDDDDDDDDD', 'DDDDDDDDDDDD', 0, '22111231', '345231', 'photoEntiere.png', 'photoFace.jpg', 'photoProfil.png', 'dddddddddd', 'masculin', 'LIBRE', NULL),
(7, 'le lion', '1999-06-12', '', 'Peulhs', NULL, 'Maroua', 'Camerounaise', 'MAMMA', 'Bahirou', 'Amadou bachirou', 3, '1232109800', NULL, 'photoEntiere.png', 'photoFace.jpg', 'photoProfil.png', 'maçon', 'MASCULIN', 'LIBRE', NULL),
(8, NULL, '1993-08-03', NULL, NULL, 'Maroua-Djarengol', NULL, NULL, NULL, NULL, 'Ntsama Ritha Yolande', 0, '12093299', '691158923', 'photoEntiere.png', 'photoFace.jpg', 'photoProfil.png', NULL, 'FEMININ', 'LIBRE', NULL),
(9, NULL, '1994-04-13', NULL, NULL, 'Maroua-Djarengol', NULL, NULL, NULL, NULL, 'Ntsama Ritha Yolande', 0, '1120021300', '691158923', 'photoEntiere.png', 'photoFace.jpg', 'photoProfil.png', NULL, 'FEMININ', 'LIBRE', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `suspect_events`
--

CREATE TABLE `suspect_events` (
  `susp_id` bigint(20) NOT NULL,
  `event_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `suspect_events`
--

INSERT INTO `suspect_events` (`susp_id`, `event_id`) VALUES
(1, 1),
(1, 1),
(1, 2),
(3, 3),
(3, 1),
(2, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `evenement`
--
ALTER TABLE `evenement`
  ADD PRIMARY KEY (`id_evenement`),
  ADD KEY `FKiqlox1berbvemnf6o0db6lf5g` (`personnel_id`),
  ADD KEY `FKkb03nn1x417gy8v13rps2g100` (`requerent_id`);

--
-- Index pour la table `mention`
--
ALTER TABLE `mention`
  ADD PRIMARY KEY (`numero_mention`),
  ADD KEY `FKagcvrjpdqrao03v3u8kuvpd7l` (`id_evenement`);

--
-- Index pour la table `observation`
--
ALTER TABLE `observation`
  ADD PRIMARY KEY (`id_observation`),
  ADD KEY `FKmllc4uotnopuwswrl7phry5ae` (`mention_id`);

--
-- Index pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`matricule`),
  ADD UNIQUE KEY `UK_spw3be4srpjk4419oma5k7uki` (`email`),
  ADD UNIQUE KEY `UK_12eym0dhm1acykuwswjkc1sk4` (`numero_cni`),
  ADD KEY `FKg6g06ubgiwcu0vcqka3y8etig` (`roles_id_role`);

--
-- Index pour la table `personnel_roles`
--
ALTER TABLE `personnel_roles`
  ADD UNIQUE KEY `UK_8levrk24o39momudxhbpn1j8s` (`roles_id_role`),
  ADD KEY `FKncwn6ll5ho4u8cehjem4wj44x` (`personnel_matricule`);

--
-- Index pour la table `requrent`
--
ALTER TABLE `requrent`
  ADD PRIMARY KEY (`id_requerent`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Index pour la table `role2`
--
ALTER TABLE `role2`
  ADD PRIMARY KEY (`id_role`);

--
-- Index pour la table `suspect`
--
ALTER TABLE `suspect`
  ADD PRIMARY KEY (`id_suspect`),
  ADD UNIQUE KEY `UK_d65qy6djt5eyjhlt0te6bu3m6` (`numero_cni`);

--
-- Index pour la table `suspect_events`
--
ALTER TABLE `suspect_events`
  ADD KEY `FK5qhrg80wuu3gvierslg3rkun9` (`event_id`),
  ADD KEY `FKlrc73tao71bha49rba1l3a7xm` (`susp_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `evenement`
--
ALTER TABLE `evenement`
  MODIFY `id_evenement` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `mention`
--
ALTER TABLE `mention`
  MODIFY `numero_mention` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `observation`
--
ALTER TABLE `observation`
  MODIFY `id_observation` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `requrent`
--
ALTER TABLE `requrent`
  MODIFY `id_requerent` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `role2`
--
ALTER TABLE `role2`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `suspect`
--
ALTER TABLE `suspect`
  MODIFY `id_suspect` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
