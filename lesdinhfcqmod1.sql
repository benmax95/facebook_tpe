-- phpMyAdmin SQL Dump
-- version 4.1.9
-- http://www.phpmyadmin.net
--
-- Client :  mysql51-128.perso
-- Généré le :  Mer 20 Mai 2015 à 08:05
-- Version du serveur :  5.1.73-2+squeeze+build1+1-log
-- Version de PHP :  5.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `lesdinhfcqmod1`
--

-- --------------------------------------------------------

--
-- Structure de la table `conversation`
--

CREATE TABLE IF NOT EXISTS `conversation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `envoie` int(11) NOT NULL,
  `receveur` int(11) NOT NULL,
  `lu_envoi` int(11) NOT NULL,
  `lu_receveur` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `conversation`
--

INSERT INTO `conversation` (`id`, `envoie`, `receveur`, `lu_envoi`, `lu_receveur`) VALUES
(5, 1, 6, 1, 1),
(2, 2, 3, 0, 0),
(3, 1, 2, 1, 1),
(4, 7, 1, 1, 0),
(6, 1, 8, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `friend`
--

CREATE TABLE IF NOT EXISTS `friend` (
  `demande` int(11) NOT NULL,
  `id_demande` int(11) NOT NULL,
  `receveur` int(11) NOT NULL,
  `id_receveur` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- Contenu de la table `friend`
--

INSERT INTO `friend` (`demande`, `id_demande`, `receveur`, `id_receveur`, `id`) VALUES
(1, 8, 1, 1, 52),
(1, 1, 1, 5, 38),
(1, 1, 1, 6, 51),
(1, 1, 1, 4, 37),
(1, 7, 1, 1, 41);

-- --------------------------------------------------------

--
-- Structure de la table `liked`
--

CREATE TABLE IF NOT EXISTS `liked` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_photo` varchar(200) NOT NULL,
  `id_users` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=112 ;

--
-- Contenu de la table `liked`
--

INSERT INTO `liked` (`id`, `id_photo`, `id_users`) VALUES
(104, '833970211221679202_223077058', '223077058'),
(105, '495187148255801278_223077058', '223077058'),
(106, '821793656999521785_223077058', '223077058'),
(107, '657816937285299360_223077058', '223077058'),
(108, '642150746688597229_223077058', '223077058'),
(109, '623903426968824956_223077058', '223077058'),
(110, '551442464836169690_223077058', '223077058'),
(111, '614683086900178596_223077058', '223077058');

-- --------------------------------------------------------

--
-- Structure de la table `photo`
--

CREATE TABLE IF NOT EXISTS `photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_posteur` int(11) NOT NULL,
  `conf` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `loc` text NOT NULL,
  `titre` longtext NOT NULL,
  `legende` longtext NOT NULL,
  `nom` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Contenu de la table `photo`
--

INSERT INTO `photo` (`id`, `id_posteur`, `conf`, `date`, `loc`, `titre`, `legende`, `nom`) VALUES
(14, 6, 1, 1431726024, 'fichier/photo/p8scw6w1am0f5ni65i070p4p76g3s7u8dca8gwyqipvdbch6l8bjvd719dtsieqmpqk5likux667gdbsjda5g8vpjnfts4efsxa4.jpg', '', '', 'p8scw6w1am0f5ni65i070p4p76g3s7u8dca8gwyqipvdbch6l8bjvd719dtsieqmpqk5likux667gdbsjda5g8vpjnfts4efsxa4.jpg'),
(15, 1, 1, 1431761247, 'fichier/photo/usaxrcpr02xntvjnqabuni2hv0yscxu5n42degv4grq8c8l2gmuu4vaqk0gvv9qh3hk7we9bvp97vly27ruacvqvt5gec6u6d5b9.jpg', '', '', 'usaxrcpr02xntvjnqabuni2hv0yscxu5n42degv4grq8c8l2gmuu4vaqk0gvv9qh3hk7we9bvp97vly27ruacvqvt5gec6u6d5b9.jpg'),
(13, 1, 1, 1431721299, 'fichier/photo/h8mhagpfnnrfeixnkcnsmshejsivc3sj1d11tn67awde591fcf7xxeaf5i97brq24g1mu6jusv7vvy9646t0it5eb5jku0lnec9y.jpg', '', '', 'h8mhagpfnnrfeixnkcnsmshejsivc3sj1d11tn67awde591fcf7xxeaf5i97brq24g1mu6jusv7vvy9646t0it5eb5jku0lnec9y.jpg'),
(0, 0, 1, 0, 'fichier/photo/profile-42914_640.png', '', '', 'profile-42914_640.png'),
(12, 1, 1, 1431721274, 'fichier/photo/sty36aektu68ke9sx8jwl30rpan05nyvfvpbv2lmuqldvtvr1ddc7btuc7jftg973w8wntag9ujud6k49w6eyx093helpdiq9qcm.jpg', '', '', 'sty36aektu68ke9sx8jwl30rpan05nyvfvpbv2lmuqldvtvr1ddc7btuc7jftg973w8wntag9ujud6k49w6eyx093helpdiq9qcm.jpg'),
(10, 1, 1, 1431717798, 'fichier/photo/c3f4iw8a5i1u1nbptau9nnqk6t63cxyeydg70egunffmug3dpmc392mdtieve4037e8wjeq6kvidajgy5r0cicf2tkv6mkysq6m8.jpg', '', '', 'c3f4iw8a5i1u1nbptau9nnqk6t63cxyeydg70egunffmug3dpmc392mdtieve4037e8wjeq6kvidajgy5r0cicf2tkv6mkysq6m8.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `id_posteur` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `tchat`
--

CREATE TABLE IF NOT EXISTS `tchat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` longtext NOT NULL,
  `id_envoie` varchar(200) NOT NULL,
  `id_recue` int(11) NOT NULL,
  `heure` varchar(200) NOT NULL,
  `id_conv` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Contenu de la table `tchat`
--

INSERT INTO `tchat` (`id`, `message`, `id_envoie`, `id_recue`, `heure`, `id_conv`) VALUES
(1, 'd', '1', 0, 'mardi 19 mai 17h41:58', 5),
(2, 'sqd', '1', 0, 'mardi 19 mai 17h42:01', 5),
(3, 'qdf', '1', 0, 'mardi 19 mai 17h42:04', 5),
(4, 'df', '1', 0, 'mardi 19 mai 17h42:13', 5),
(5, 's', '1', 0, 'mardi 19 mai 17h45:22', 4),
(6, 'erqgher', '7', 0, 'mardi 19 mai 18h04:15', 4),
(7, 'C''est lourd', '7', 0, 'mardi 19 mai 18h04:21', 4),
(8, 'Mais le vert est pas beau :/', '7', 0, 'mardi 19 mai 18h04:30', 4),
(9, 'Je t''aime', '8', 0, 'mardi 19 mai 19h39:39', 6),
(10, 'Yy', '1', 0, 'mardi 19 mai 19h39:42', 6),
(11, 'Je t''aime aussi â™¡', '1', 0, 'mardi 19 mai 19h39:58', 6);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `genre` varchar(1) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `photo_profil` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `genre`, `nom`, `prenom`, `photo_profil`) VALUES
(1, 'benjamin.dinh@free.Fr', '12345', 'M', 'Dinh', 'Benjamin', 15),
(2, 'test', '12345', 'M', 'dsqsdq', 'benjamin', 0),
(3, 'ben@free.fr', '1', 'M', 'ben', 'max', 0),
(4, 'gg@gg.gg', 'a', 'M', 'a', 'az', 0),
(5, 'gg@gg.fr', 'a', 'M', 'a', 'az', 0),
(6, 'nathalie.dinh@free.fr', '12345', 'F', 'Nathalie', 'Dinh', 14),
(7, 'A@a.fr', 'a', 'M', 'A', 'Z', 0),
(8, 'Lara@free.fr', 'azer', 'F', 'Puerto', 'Lara', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
