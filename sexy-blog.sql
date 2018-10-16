-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 16 oct. 2018 à 01:12
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

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
  `title_post` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content_post` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pictureURL_post` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_tag` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_post`),
  KEY `id_tag` (`id_tag`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`id_post`, `date_post`, `title_post`, `content_post`, `pictureURL_post`, `id_tag`, `id_user`) VALUES
(9, '2018-10-19', ' 1984', 'Our favorite science fiction tends to use the future to illuminate and discuss issues in our present. 1984 is a prime example of this, a dystopian novel where our culture has become the victim of government surveillance and public manipulation. An important read for any age.', 'https://images.penguinrandomhouse.com/cover/9780452284234', 6, 991),
(10, '2018-10-11', 'Hyperion', 'A crew of pilgrims swap stories of love, horror, and religious devotion during a long journey to the home of the Shrike: a spike-covered metal horror worshiped like a god. This science fiction take on The Canterbury Tales is an unforgettable, imaginative work of cross-genre fusion.', 'https://images.penguinrandomhouse.com/cover/9780399178610', 6, 991),
(11, '2018-10-09', ' The Martian Chronicles', 'A group of colonists from Earth attempt to form a colony on Mars, only to find themselves at war with its native inhabitants. Ray BradburyÃ¢??s The Martian Chronicles is the story of a decades-long conflict that leaves both sides devastated. Bradbury was a master storyteller, and The Martian Chronicles is one you shouldnÃ¢??t miss.', 'https://www.unboundworlds.com/wp-content/uploads/2018/08/MartianChronicles.jpg', 6, 991),
(12, '2018-10-25', 'Princess Mononoke', 'Ashitaka, un jeune guerrier japonais, affronte un sanglier gÃ©ant et furieux qui attaque son village. Il tue la bÃªte, mais se retrouve atteint par un mal mystÃ©rieux. Sur le conseil des sages, il part vers l\'Ouest, Ã  la recherche de ce qui a transformÃ© l\'animal en dÃ©mon. Au cours de son pÃ©riple, il rencontre San, une jeune fille qui vit avec les loups. Ashitaka apprend que les humains sont Ã  l\'origine de tous ces maux, car ils dÃ©truisent la forÃªt, qu\'ils exploitent pour alimenter leurs forges.', 'http://montclairfilm.org/wp-content/uploads/2017/07/Princess-Mononoke.jpg', 3, 991),
(13, '2018-10-18', 'Mon voisin Totoro', 'Deux petites filles, Mei, 4 ans, et Satsuki, 10 ans, s\'installent dans une grande maison Ã  la campagne avec leur pÃ¨re pour se rapprocher de l\'hÃ´pital oÃ¹ sÃ©journe leur mÃ¨re. Elles dÃ©couvrent la nature tout autour de la maison et, surtout, l\'existence de crÃ©atures merveilleuses, les Totoros, avec qui elles deviennent trÃ¨s amies.', 'https://cache.cosmopolitan.fr/data/photo/w1000_ci/4w/totoro-dort.jpg', 3, 991),
(14, '2018-10-17', 'FMAB', 'Dans le monde surnaturel de cet anime, les frÃ?Â¨res Edward et Alphonse combattent des forces malfaisantes pour rÃ?Â©cupÃ?Â©rer leurs corps aprÃ?Â¨s avoir souffert dans leur chair.', 'https://vignette.wikia.nocookie.net/fma/images/e/e9/Fmab-poster.png/revision/latest?cb=20131124145205', 3, 991),
(15, '2018-10-11', 'Avatar', 'Aang, l\'Avatar, doit apprendre Ã??Ã?Â  maÃ??Ã?Â®triser les quatre Ã??Ã?Â©lÃ??Ã?Â©ments afin de pouvoir sauver le monde du seigneur du feu et ses sbires, plus dÃ??Ã?Â©cidÃ??Ã?Â©s que jamais Ã??Ã?Â  dÃ??Ã?Â©jouer ses plans. L\'avenir du monde est entre ses mains.', 'https://pmcvariety.files.wordpress.com/2018/09/last-airbender.jpg?w=700', 3, 991),
(16, '2018-10-27', 'The Witcher 3', 'The Witcher 3: Wild Hunt[a] is a 2015 action role-playing game developed and published by CD Projekt. Based on The Witcher series of fantasy novels by Polish author Andrzej Sapkowski, it is the sequel to the 2011 game The Witcher 2: Assassins of Kings. Played in an open world with a third-person perspective, players control protagonist Geralt of Rivia, a monster hunter known as a witcher, who is looking for his missing adopted daughter on the run from the Wild Hunt: an otherworldly force determined to capture and use her powers. Players battle the game\'s many dangers with weapons and magic, interact with non-player characters, and complete main-story and side quests to acquire experience points and gold, which are used to increase Geralt\'s abilities and purchase equipment. Its central story has several endings, determined by the player\'s choices at certain points in the game.\r\n\r\nDevelopment began in 2011 and lasted for three and a half years. Voice recording took over two and a half years. The writing was infused with real-life aspects like moral ambiguity in a deliberate attempt to avoid simplification, impart authenticity, and reflect Sapkowski\'s novels. Europe was the basis of the game\'s open world, with Poland, Amsterdam, and Scandinavia as its primary inspirations. REDengine 3 enabled the developer to create a complex story without compromising the game world. The music was composed by Marcin PrzybyÅ?owicz and performed by the Brandenburg State Orchestra.\r\n\r\nThe Witcher 3: Wild Hunt was released worldwide for Microsoft Windows, PlayStation 4, and Xbox One on 19 May 2015. The game received critical acclaim, with praise of its gameplay, narrative, world design, combat, and visuals, although it received minor criticism due to technical issues, some of which were later patched. It received numerous Game of the Year awards, and is considered to be one of the greatest games of all time. The game was also a commercial success, shipping nearly ten million copies by March 2016. Two expansion packs, Hearts of Stone and Blood and Wine, were also released. A Game of the Year edition, with the base game, expansion packs and all downloadable content, was released in August 2016.', 'https://static.cdprojektred.com/thewitcher.com/media/wallpapers/witcher3/full/witcher3_en_wallpaper_the_witcher_3_wild_hunt_geralt_with_trophies_2560x1600_1449484679.png', 7, 991),
(17, '2018-10-12', 'Call of Duty', 'Call of Duty: Black Ops IIII est un jeu vidÃ©o de tir Ã  la premiÃ¨re personne dÃ©veloppÃ© par Treyarch et Ã©ditÃ© par Activision, sorti le 12 octobre 2018 sur PlayStation 4, Xbox One et Microsoft Windows', 'https://static1.millenium.org/articles/1/29/79/31/@/480179-cod-bo4-art-article_m-1.jpg', 7, 991),
(18, '2018-10-12', 'Cyberpunk 2077', 'Cyberpunk 2077 est un jeu vidÃ©o d\'action-RPG en vue Ã  la premiÃ¨re personne dÃ©veloppÃ© par CD Projekt RED, basÃ© sur la sÃ©rie de jeu de rÃ´le sur table Cyberpunk 2020 crÃ©Ã©e par Mike Pondsmith', 'https://cdn-l-cyberpunk.cdprojektred.com/wallpapers/1080p/v-logotype-en.jpg', 7, 991),
(19, '2018-10-19', 'Pixel 3', 'The Google Pixel 3 has the best smartphone camera you can buy today. Donâ??t let the raw specs fool you: its single 12.2MP rear camera with an f/1.8 aperture is enhanced by machine-learning software, Googleâ??s secret sauce to making your photos better. The phone design doesnâ??t stand out and the battery life is underwhelming, but Google does pack in a 5.5-inch screen and dual front-facing speakers into a one-hand-friendly phone. Itâ??s Googleâ??s best phone in a smaller size.', 'https://ksassets.timeincuk.net/wp/uploads/sites/54/2018/10/DSCF2359-920x613.jpg', 2, 991),
(20, '2018-10-11', 'Why Macs are Shit', 'Iâ??ve been using computers since I was about six years old. My first was an Amiga 500+. I had a lot of fun on that machine, dying on Wing Commander than having to insert a new floppy disk in order to witness my own casket being blasted out into space as part of a futuristic funerary rite.\r\n\r\nWhen PCs came along, they were great. I actually had to type stuff for anything to happen. On Windows 3.1, I remember using a combination of Windows Resource Toolkit and LView Pro to change all the backs of the Solitaire cards to images of Pamela Andersonâ??s vagina.\r\n\r\nWhen Windows 95 came along, this was the turning point whereby anyone with an IQ lower than 110 could suddenly use computers. That was a bad idea, since making things easier for people necessarily lowers intelligence in the long run (just look at socialism as a prime example). The good news was that CD writers still cost about Â£300 each so, as the only middle-class kid at my school, and therefore the only person whose family could afford both a CD writer and a 56K modem, I was the only one who could download and distribute hardcore pornography â?? for a price.\r\n\r\nIn a short space of time, I became a PC â??power userâ?? â?? more time was spent on the keyboard than the mouse, as Windows has intuitive shortcut keys for practically every action imaginable. Using a PC was more akin to playing an instrument than operating a computer. Symphonies could be written and art practically built itself.', 'https://www.personalpowermeditation.com/wp-content/uploads/2016/01/mac-sucks-1-720x340.jpg', 2, 991),
(21, '2018-10-26', 'D-Wave', 'The D-Wave 2000Q system provides a standard Internet API (based on RESTful services), with client libraries available for C/C++, Python, and MATLAB. This interface allows users to access the system either as a cloud resource over a network, or integrated into their high-performance computing (HPC) environments and data centers. Access is also available through D-Waveâ??s hosted cloud service. Using   D-Waveâ??s development tools and client libraries, developers can create algorithms and applications within their existing environments using industry-standard tools. ', 'https://cdn.vox-cdn.com/thumbor/8DqMy_Iz0uhHHKtW0QbcdjDY7EU=/0x0:1280x942/1200x800/filters:focal(538x369:742x573)/cdn.vox-cdn.com/uploads/chorus_image/image/52921525/Screen_Shot_2017_01_25_at_4.28.15_PM.0.png', 2, 991),
(22, '2018-10-31', 'PQ 50th anniversary', 'Le 11 octobre 1968, commenÃ§ait le congrÃ¨s de fondation du Parti quÃ©bÃ©cois. Il cÃ©lÃ¨bre aujourdâ??hui ses cinquante ans, et pour le dire poliment, il ne les fÃªte pas en trÃ¨s bon Ã©tat.\r\n\r\nIl nâ??en demeure pas moins nÃ©cessaire de revenir sur lâ??histoire de ce parti et sur ce que pourrait Ãªtre son avenir.\r\n\r\nGauche\r\n\r\nLa grande figure du PQ, câ??est RenÃ© LÃ©vesque. Tout le monde devrait le savoir, mais les jeunes gÃ©nÃ©rations sâ??imaginent que cet homme exceptionnel est enfermÃ© dans lâ??Ã©poque de la tÃ©lÃ© en noir et blanc. RenÃ© LÃ©vesque est pourtant lâ??homme qui a incarnÃ© le mieux notre dÃ©sir dâ??affirmation nationale. Dans un pays qui ne mÃ©priserait pas son passÃ©, il serait admirÃ©.\r\n\r\nLe PQ nâ??a pas inventÃ© lâ??idÃ©e dâ??indÃ©pendance, qui traverse notre histoire depuis plus de deux siÃ¨cles. Au vingtiÃ¨me siÃ¨cle, elle resurgit Ã  la fin des annÃ©es 1910. Elle apparaÃ®t dans notre vie politique au tout dÃ©but de la RÃ©volution tranquille, comme si les deux Ã©taient indissociables. Mais il faudra que le PQ sâ??en empare, en 1968, pour en faire lâ??idÃ©e centrale du dÃ©bat public.\r\n\r\nSurtout, le PQ sâ??est constituÃ© Ã  la maniÃ¨re dâ??une coalition. Il est nÃ© de lâ??union fÃ©conde entre le Mouvement souverainetÃ©-association de RenÃ© LÃ©vesque et du Ralliement national de Gilles GrÃ©goire, un parti nationaliste de droite. Catherine Fournier, la talentueuse jeune dÃ©putÃ©e de Marie-Victorin, le rappelait dimanche soir Ã  Tout le monde en parle, en disant que son parti rassemblait des souverainistes de gauche et de droite.\r\n\r\nHÃ©las, le PQ nâ??a pas toujours Ã©tÃ© Ã  la hauteur de ses idÃ©aux. Le parti de coalition sâ??est souvent campÃ© Ã  gauche, comme sâ??il Ã©tait dâ??abord progressiste avant dâ??Ãªtre souverainiste. Comme jâ??aime dire, il prÃ©fÃ©rait perdre 100 votes Ã  droite quâ??un vote Ã  gauche. Il sâ??est progressivement fait larguer par les classes moyennes francophones. Dans bien des rÃ©gions, il est dÃ©sormais quatriÃ¨me. Il devra de nouveau leur parler.\r\n\r\nDepuis le dernier rÃ©fÃ©rendum, le PQ a aussi incarnÃ© le paradoxe dâ??un parti souverainiste mal Ã  lâ??aise avec ce quâ??on appelle aujourdâ??hui Â« lâ??identitaire Â». Le PQ a mÃªme flirtÃ© plus dâ??une fois avec le multiculturalisme Ã  la Trudeau. Ã? tout le moins, il Ã©tait tÃ©tanisÃ© par le politiquement correct. RÃ©sultat : la CAQ a occupÃ© Ã  sa place ce crÃ©neau essentiel, ce qui a jouÃ© un grand rÃ´le dans sa victoire. Le PQ peut-il renouer avec ce sujet ?\r\n\r\nIndÃ©pendance\r\n\r\nEnfin, le PQ sâ??est montrÃ© bien inconstant dans la quÃªte de lâ??indÃ©pendance et traitait souvent son propre idÃ©al comme un boulet. Câ??Ã©tait, pour le dire poliment, terriblement contre-productif. Sur le fond des choses, ce parti a Ã©chouÃ© dans sa mission historique. Peut-il renaÃ®tre ?\r\n\r\nCoincÃ© entre lâ??autonomisme de centre-droit de la CAQ et la gauche radicale de QS, le PQ ne devra pas se replier dans un centrisme tiÃ¨de, mais incarner un nationalisme indÃ©pendantiste dÃ©complexÃ©, assumant pleinement lâ??identitÃ© quÃ©bÃ©coise, en remettant la question nationale Ã  lâ??ordre du jour, tout en lâ??adaptant Ã  notre Ã©poque.', 'http://pq-labelle.ca/wp-content/uploads/2018/09/PQ-Couverture_Twitter2.png', 1, 991),
(23, '2018-11-13', 'Universe', 'The Universe is all of space and time[a] and their contents,[10] including planets, stars, galaxies, and all other forms of matter and energy. While the spatial size of the entire Universe is still unknown,[3] it is possible to measure the observable universe.\r\n\r\nThe earliest scientific models of the Universe were developed by ancient Greek and Indian philosophers and were geocentric, placing Earth at the centre of the Universe.[11][12] Over the centuries, more precise astronomical observations led Nicolaus Copernicus to develop the heliocentric model with the Sun at the centre of the Solar System. In developing the law of universal gravitation, Sir Isaac Newton built upon Copernicus\' work as well as observations by Tycho Brahe and Johannes Kepler\'s laws of planetary motion.\r\n\r\nFurther observational improvements led to the realization that our Sun is one of hundreds of billions of stars in a galaxy we call the Milky Way, which is one of at least hundreds of billions of galaxies in the Universe. Many of the stars in our galaxy have planets. At the largest scale galaxies are distributed uniformly and the same in all directions, meaning that the Universe has neither an edge nor a center. At smaller scales, galaxies are distributed in clusters and superclusters which form immense filaments and voids in space, creating a vast foam-like structure.[13] Discoveries in the early 20th century have suggested that the Universe had a beginning and that space has been expanding since then,[14] and is currently still expanding at an increasing rate.[15]', 'https://cdnfr2.img.sputniknews.com/images/102447/27/1024472797.jpg', 2, 991);

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
  `id_tag` int(11) NOT NULL AUTO_INCREMENT,
  `name_tag` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tag`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tag`
--

INSERT INTO `tag` (`id_tag`, `name_tag`) VALUES
(1, 'Politic'),
(2, 'Tech'),
(3, 'Anime'),
(7, 'Video game'),
(6, 'Books');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username_user` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password_user` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email_user` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `connected` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=992 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `username_user`, `password_user`, `email_user`, `connected`) VALUES
(991, 'pascal', 'pourse', 'pascalcanuel@hotmail.com', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
