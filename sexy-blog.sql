-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 15 oct. 2018 à 18:31
-- Version du serveur :  5.7.21
-- Version de PHP :  5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `sexy-blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `id_post` int(5) NOT NULL AUTO_INCREMENT,
  `date_post` date NOT NULL,
  `title_post` text NOT NULL,
  `content_post` text NOT NULL,
  `pictureURL_post` text NOT NULL,
  `id_tag` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_post`),
  KEY `id_tag` (`id_tag`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`id_post`, `date_post`, `title_post`, `content_post`, `pictureURL_post`, `id_tag`, `id_user`) VALUES
(4, '2018-10-23', 'Naruto', 'Penis', 'https://images-eds-ssl.xboxlive.com/image?url=8Oaj9Ryq1G1_p3lLnXlsaZgGzAie6Mnu24_PawYuDYIoH77pJ.X5Z.MqQPibUVTcD6_9tZmktQPfD3l2zLG1stNoC_xhUOjzW7haNAkBZrwSGk6XRouxvDmiq2KcT3Lb5h4hB4QPEEo6n5Ry7aOYZXuC0AeK53ye8UfZvGdQyIbZ.LJKJsbQUFxcyIIP4iJ0dHscO1M4mjMRuexsKGKlT7pB_BUgDrUcOFpjsOM2s3M-&h=1080&w=1920&format=jpg', 0, 382),
(5, '2018-10-16', 'L\'histoire des pourses', 'C\'est l\'histoire d\'un pourse, fin.', 'https://cdn.images.express.co.uk/img/dynamic/143/590x/Black-Ops-4-1029828.jpg?r=1539243619586', 2, 989),
(6, '2018-10-25', 'Une guitare', 'Voici une guitare\r\n', 'https://www.sciencesetavenir.fr/assets/img/2016/09/26/cover-r4x3w1000-57f5653a04f54-yamaha.jpg', 1, 382),
(7, '2018-10-17', 'React', 'React est une librairie de UI qui se base sur JS', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/512px-React-icon.svg.png', 0, 259),
(8, '2018-10-20', 'Voici un beau post', 'Is this the real life?\r\nIs this just fantasy?\r\nCaught in a landslide\r\nNo escape from reality\r\nOpen your eyes\r\nLook up to the skies and see\r\nI\'m just a poor boy, I need no sympathy\r\nBecause I\'m easy come, easy go\r\nA little high, little low\r\nAnyway the wind blows, doesn\'t really matter to me, to me\r\nMama, just killed a man\r\nPut a gun against his head\r\nPulled my trigger, now he\'s dead\r\nMama, life had just begun\r\nBut now I\'ve gone and thrown it all away\r\nMama, ooo\r\nDidn\'t mean to make you cry\r\nIf I\'m not back again this time tomorrow\r\nCarry on, carry on, as if nothing really matters\r\nToo late, my time has come\r\nSends shivers down my spine\r\nBody\'s aching all the time\r\nGoodbye everybody I\'ve got to go\r\nGotta leave you all behind and face the truth\r\nMama, ooo (anyway the wind blows)', 'http://radio-sofaia-altitude.com/uploads/pics/Test-Computer-Key-by-Stuart-Miles.jpg', 3, 259);

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
  `id_tag` int(11) NOT NULL,
  `name_tag` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tag`
--

INSERT INTO `tag` (`id_tag`, `name_tag`) VALUES
(0, 'ANIME'),
(1, 'MUSIC'),
(2, 'LOLI'),
(3, 'PROGRAMMING');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username_user` text NOT NULL,
  `password_user` text NOT NULL,
  `email_user` text NOT NULL,
  `connected` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=991 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `username_user`, `password_user`, `email_user`, `connected`) VALUES
(989, 'william', 'password', 'willi_garn@hotmail.com', 1),
(382, 'pascal', 'password', 'pascal@hotmail.com', 0),
(679, 'Penis', 'penis', 'pascalcanuel@hotmail.com', 0),
(259, 'William', 'password', 'will@hotmail.com', 0),
(990, 'pourse', 'password', 'pourse@hotmail.com', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
