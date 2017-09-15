DROP DATABASE IF EXISTS `custom_shirt`;



CREATE DATABASE `custom_shirt` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `custom_shirt`;


-- --------------------------------------------------------

--
-- Structure de la table `bouton`
--

CREATE TABLE `bouton` (
  `id_bouton` int(5) NOT NULL,
  `stock` int(4) NOT NULL,
  `description_bouton` text NOT NULL,
  `photo_bouton` varchar(255) NOT NULL,
  `prix_bouton` int(4) NOT NULL,
  `titre_bouton` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `bouton`
--

INSERT INTO `bouton` (`id_bouton`, `stock`, `description_bouton`, `photo_bouton`, `prix_bouton`, `titre_bouton`) VALUES
(1, 10, 'Bouton Ivoire élégant', 'http://www.cottonsociety.com/modules/cs_shirtgenerator/design/img/choix/120/bouton-chemise-Ivoire.png', 20, 'Bouton Ivoire'),
(2, 10, 'Bouton Bleu raffiné', 'http://www.cottonsociety.com/modules/cs_shirtgenerator/design/img/choix/120/bouton-chemise-Bleu.png', 20, 'Bouton bleu'),
(3, 15, 'Bouton rose fushia, pour une style assumé !', 'http://www.cottonsociety.com/modules/cs_shirtgenerator/design/img/choix/120/bouton-chemise-Rose-Fushia.png', 5, 'Bouton rose'),
(4, 5, 'Bouton bleu azur', 'http://www.cottonsociety.com/modules/cs_shirtgenerator/design/img/choix/120/bouton-chemise-Bleu.png', 2, 'Bouton Bleu'),
(5, 15, 'Bouton en bois de hêtre.', 'http://www.cottonsociety.com/modules/cs_shirtgenerator/design/img/choix/120/bouton-chemise-Bois-clair.png', 0, 'Bouton en bois');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `categorie` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`id`, `categorie`) VALUES
(1, 'chemise-pret-a-porter'),
(2, 'chemise-sur-mesure'),
(3, 'accessoire');

-- --------------------------------------------------------

--
-- Structure de la table `col`
--

CREATE TABLE `col` (
  `id_col` int(5) NOT NULL,
  `stock` int(4) NOT NULL,
  `description_col` text NOT NULL,
  `photo_col` varchar(255) NOT NULL,
  `prix_col` int(4) NOT NULL,
  `titre_col` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `col`
--

INSERT INTO `col` (`id_col`, `stock`, `description_col`, `photo_col`, `prix_col`, `titre_col`) VALUES
(1, 15, 'Col Business Standard', 'http://www.cottonsociety.com/modules/cs_shirtgenerator/design/img/choix/219/Col-Business-chemise.jpg', 0, 'Bol Business Standard'),
(2, 15, 'Col Business Italien', 'http://www.cottonsociety.com/modules/cs_shirtgenerator/design/img/choix/219/Col-Italien-chemise.jpg', 0, 'Col Italien'),
(3, 15, 'Col classique rond', 'http://www.cottonsociety.com/modules/cs_shirtgenerator/design/img/choix/219/Col-Classique-Rond-chemise.jpg', 0, 'Col classique rond'),
(4, 10, 'Col officier élégant', 'http://www.cottonsociety.com/modules/cs_shirtgenerator/design/img/choix/219/Col-Officier-chemise.jpg', 15, 'Col officier');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id_commande` int(5) NOT NULL,
  `user_id` int(5) DEFAULT NULL,
  `prix_livraison` int(3) NOT NULL,
  `total` int(5) NOT NULL,
  `date_commande` date NOT NULL,
  `etat` enum('en préparation','expédié','en livraison','livré','retour') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `commande`
--

INSERT INTO `commande` (`id_commande`, `user_id`, `prix_livraison`, `total`, `date_commande`, `etat`) VALUES
(2, 1, 6, 150, '2017-07-10', 'expédié'),
(3, 1, 10, 90, '2017-07-10', 'en livraison'),
(4, 3, 5, 45, '2017-07-19', 'en préparation'),
(5, 4, 10, 200, '2017-07-19', 'en préparation'),
(6, 1, 56, 1450, '2017-07-19', 'livré'),
(7, 1, 55, 5555, '2017-07-19', 'retour'),
(8, 1, 12, 1212, '2017-07-19', 'en préparation'),
(10, 28, 15, 1015, '2017-07-27', 'en livraison'),
(11, 27, 15, 165, '2017-07-27', 'en préparation');

-- --------------------------------------------------------

--
-- Structure de la table `coupe`
--

CREATE TABLE `coupe` (
  `id_coupe` int(11) NOT NULL,
  `description_coupe` varchar(255) NOT NULL,
  `photo_coupe` varchar(255) NOT NULL,
  `titre_coupe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `coupe`
--

INSERT INTO `coupe` (`id_coupe`, `description_coupe`, `photo_coupe`, `titre_coupe`) VALUES
(1, 'Coupe Ajustée (Standard)', 'https://mosaic01.ztat.net/vgs/media/pdp-zoom/HU/72/2D/04/DA/11/HU722D04D-A11@10.jpg', 'Coupe Ajustée'),
(2, 'Coupe Large', 'https://mosaic01.ztat.net/vgs/media/pdp-gallery/JE/02/2D/00/EK/11/JE022D00E-K11@10.jpg', 'Coupe Large'),
(3, 'Coupe Droite', 'https://mosaic01.ztat.net/vgs/media/pdp-zoom/PO/22/2D/08/6K/11/PO222D086-K11@12.jpg', 'Coupe Droite');

-- --------------------------------------------------------

--
-- Structure de la table `coupe_tissu`
--

CREATE TABLE `coupe_tissu` (
  `id_tissu` int(11) NOT NULL,
  `id_coupe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `coupe_tissu`
--

INSERT INTO `coupe_tissu` (`id_tissu`, `id_coupe`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 2),
(7, 3),
(8, 1),
(8, 2),
(8, 3),
(9, 1),
(9, 2),
(9, 3);

-- --------------------------------------------------------

--
-- Structure de la table `custom`
--

CREATE TABLE `custom` (
  `id_custom` int(5) NOT NULL,
  `titre_custom` varchar(255) NOT NULL,
  `tissu_id` int(5) DEFAULT NULL,
  `bouton_id` int(5) DEFAULT NULL,
  `col_id` varchar(255) NOT NULL,
  `coupe_id` varchar(255) NOT NULL,
  `prix` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `custom`
--

INSERT INTO `custom` (`id_custom`, `titre_custom`, `tissu_id`, `bouton_id`, `col_id`, `coupe_id`, `prix`) VALUES
(1, 'custom-shirtGuillaume', 9, 5, '4', '1', 0),
(2, 'custom-shirtuser', 2, 1, '2', '3', 0);

-- --------------------------------------------------------

--
-- Structure de la table `detail_commande`
--

CREATE TABLE `detail_commande` (
  `id_detail_commande` int(11) NOT NULL,
  `commande_id` int(11) NOT NULL,
  `produit_id` int(11) DEFAULT NULL,
  `custom_id` int(11) DEFAULT NULL,
  `quantite` int(11) NOT NULL,
  `prix` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `detail_commande`
--

INSERT INTO `detail_commande` (`id_detail_commande`, `commande_id`, `produit_id`, `custom_id`, `quantite`, `prix`) VALUES
(1, 9, 1, NULL, 1, 136),
(2, 10, NULL, 2, 2, 109),
(3, 10, 5, NULL, 1, 254),
(4, 10, 10, NULL, 3, 176),
(5, 11, 1, NULL, 1, 150);

-- --------------------------------------------------------

--
-- Structure de la table `photo_bundle`
--

CREATE TABLE `photo_bundle` (
  `id` int(11) NOT NULL,
  `photo1` varchar(200) DEFAULT NULL,
  `photo2` varchar(200) DEFAULT NULL,
  `photo3` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `tissu_id` int(11) DEFAULT NULL,
  `titre` varchar(45) DEFAULT NULL,
  `description` text,
  `reference` varchar(45) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `sexe` enum('m','f','mixte') DEFAULT NULL,
  `prix` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`id`, `type_id`, `tissu_id`, `titre`, `description`, `reference`, `photo`, `sexe`, `prix`) VALUES
(1, 2, 1, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'ch._1.jpg', 'm', 150),
(2, 1, 2, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'ch._2.jpg', 'm', 133),
(3, 1, 3, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'ch._3.jpg', 'm', 117),
(4, 1, 4, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'ch._4.jpg', 'm', 215),
(5, 1, 5, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'ch._5.jpg', 'm', 254),
(6, 1, 6, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'ch._6.jpg', 'm', 52),
(7, 1, 7, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'ch._7.jpg', 'm', 273),
(8, 1, 8, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'ch._8.jpg', 'm', 44),
(9, 1, 9, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'ch._9.jpg', 'm', 277),
(10, 2, 1, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'ch._1.jpg', 'm', 176),
(11, 2, 2, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'ch._2.jpg', 'm', 136),
(12, 2, 3, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'ch._3.jpg', 'm', 117),
(13, 2, 4, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'ch._4.jpg', 'm', 70),
(14, 2, 5, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'ch._5.jpg', 'm', 237),
(15, 2, 6, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'ch._6.jpg', 'm', 143),
(16, 2, 7, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'ch._7.jpg', 'm', 49),
(17, 2, 8, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'ch._8.jpg', 'm', 111),
(18, 2, 9, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'ch._9.jpg', 'm', 274),
(19, 3, 1, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'ch._1.jpg', 'm', 154),
(20, 3, 2, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'ch._2.jpg', 'm', 118),
(21, 3, 3, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'ch._3.jpg', 'm', 26),
(22, 3, 4, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'ch._4.jpg', 'm', 83),
(23, 3, 5, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'ch._5.jpg', 'm', 62),
(24, 3, 6, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'ch._6.jpg', 'm', 228),
(25, 3, 7, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'ch._7.jpg', 'm', 265),
(26, 3, 8, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'ch._8.jpg', 'm', 84),
(27, 3, 9, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'ch._9.jpg', 'm', 149),
(28, 1, 1, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chf._1.jpg', 'f', 52),
(29, 1, 2, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chf._2.jpg', 'f', 214),
(30, 1, 3, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chf._3.jpg', 'f', 273),
(31, 1, 4, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chf._4.jpg', 'f', 251),
(32, 1, 5, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chf._5.jpg', 'f', 62),
(33, 1, 6, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chf._6.jpg', 'f', 200),
(34, 1, 7, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chf._7.jpg', 'f', 252),
(35, 1, 8, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chf._8.jpg', 'f', 25),
(36, 1, 9, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chf._9.jpg', 'f', 39),
(37, 2, 1, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chf._1.jpg', 'f', 153),
(38, 2, 2, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chf._2.jpg', 'f', 198),
(39, 2, 3, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chf._3.jpg', 'f', 67),
(40, 2, 4, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chf._4.jpg', 'f', 168),
(41, 2, 5, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chf._5.jpg', 'f', 93),
(42, 2, 6, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chf._6.jpg', 'f', 27),
(43, 2, 7, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chf._7.jpg', 'f', 46),
(44, 2, 8, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chf._8.jpg', 'f', 33),
(45, 2, 9, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chf._9.jpg', 'f', 285),
(46, 3, 1, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chf._1.jpg', 'f', 119),
(47, 3, 2, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chf._2.jpg', 'f', 213),
(48, 3, 3, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chf._3.jpg', 'f', 126),
(49, 3, 4, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chf._4.jpg', 'f', 135),
(50, 3, 5, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chf._5.jpg', 'f', 243),
(51, 3, 6, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chf._6.jpg', 'f', 66),
(52, 3, 7, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chf._7.jpg', 'f', 177),
(53, 3, 8, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chf._8.jpg', 'f', 263),
(54, 3, 9, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chf._9.jpg', 'f', 232),
(55, 1, 1, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chmx._1.jpg', 'mixte', 274),
(56, 1, 2, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chmx._2.jpg', 'mixte', 128),
(57, 1, 3, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chmx._3.jpg', 'mixte', 74),
(58, 1, 4, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chmx._4.jpg', 'mixte', 241),
(59, 1, 5, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chmx._5.jpg', 'mixte', 180),
(60, 1, 6, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chmx._6.jpg', 'mixte', 40),
(61, 1, 7, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chmx._7.jpg', 'mixte', 251),
(62, 1, 8, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chmx._8.jpg', 'mixte', 267),
(63, 1, 9, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chmx._9.jpg', 'mixte', 180),
(64, 2, 1, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chmx._1.jpg', 'mixte', 248),
(65, 2, 2, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chmx._2.jpg', 'mixte', 31),
(66, 2, 3, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chmx._3.jpg', 'mixte', 205),
(67, 2, 4, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chmx._4.jpg', 'mixte', 294),
(68, 2, 5, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chmx._5.jpg', 'mixte', 177),
(69, 2, 6, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chmx._6.jpg', 'mixte', 150),
(70, 2, 7, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chmx._7.jpg', 'mixte', 172),
(71, 2, 8, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chmx._8.jpg', 'mixte', 71),
(72, 2, 9, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chmx._9.jpg', 'mixte', 241),
(73, 3, 1, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chmx._1.jpg', 'mixte', 63),
(74, 3, 2, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chmx._2.jpg', 'mixte', 61),
(75, 3, 3, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chmx._3.jpg', 'mixte', 57),
(76, 3, 4, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chmx._4.jpg', 'mixte', 203),
(77, 3, 5, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chmx._5.jpg', 'mixte', 275),
(78, 3, 6, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chmx._6.jpg', 'mixte', 178),
(79, 3, 7, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chmx._7.jpg', 'mixte', 253),
(80, 3, 8, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chmx._8.jpg', 'mixte', 176),
(81, 3, 9, 'Chemise', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda recusandae reiciendis eius odio, voluptatem harum eveniet minus ipsa, nobis quaerat et debitis modi quo', 'Chcxxx1', 'chmx._9.jpg', 'mixte', 102),
(92, 1, 8, 'xdykdty', 'dtuyktu', 'erh', 'xdykdty_42096-hi-Bugs_Bunny.jpg', 'f', 1456);

-- --------------------------------------------------------

--
-- Structure de la table `produit_taille`
--

CREATE TABLE `produit_taille` (
  `produit_id` int(11) NOT NULL,
  `taille_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `produit_taille`
--

INSERT INTO `produit_taille` (`produit_id`, `taille_id`, `stock`) VALUES
(1, 1, 1),
(1, 2, 2),
(1, 3, 5),
(1, 4, 0),
(1, 5, 1),
(2, 1, 0),
(2, 2, 92),
(2, 3, 67),
(2, 4, 11),
(2, 5, 44),
(3, 1, 53),
(3, 2, 98),
(3, 3, 48),
(3, 4, 46),
(3, 5, 17),
(4, 1, 48),
(4, 2, 45),
(4, 3, 74),
(4, 4, 69),
(4, 5, 65),
(5, 1, 56),
(5, 2, 90),
(5, 3, 39),
(5, 4, 17),
(5, 5, 70),
(6, 1, 61),
(6, 2, 61),
(6, 3, 67),
(6, 4, 85),
(6, 5, 52),
(7, 1, 84),
(7, 2, 93),
(7, 3, 93),
(7, 4, 58),
(7, 5, 13),
(8, 1, 50),
(8, 2, 23),
(8, 3, 74),
(8, 4, 56),
(8, 5, 31),
(9, 1, 14),
(9, 2, 31),
(9, 3, 46),
(9, 4, 68),
(9, 5, 95),
(10, 1, 94),
(10, 2, 28),
(10, 3, 89),
(10, 4, 17),
(10, 5, 18),
(11, 1, 79),
(11, 2, 70),
(11, 3, 46),
(11, 4, 97),
(11, 5, 62),
(12, 1, 95),
(12, 2, 88),
(12, 3, 68),
(12, 4, 56),
(12, 5, 79),
(13, 1, 70),
(13, 2, 26),
(13, 3, 54),
(13, 4, 32),
(13, 5, 19),
(14, 1, 16),
(14, 2, 50),
(14, 3, 83),
(14, 4, 30),
(14, 5, 16),
(15, 1, 59),
(15, 2, 76),
(15, 3, 16),
(15, 4, 43),
(15, 5, 74),
(16, 1, 87),
(16, 2, 65),
(16, 3, 70),
(16, 4, 75),
(16, 5, 34),
(17, 1, 14),
(17, 2, 63),
(17, 3, 85),
(17, 4, 17),
(17, 5, 58),
(18, 1, 42),
(18, 2, 19),
(18, 3, 14),
(18, 4, 53),
(18, 5, 96),
(19, 1, 21),
(19, 2, 88),
(19, 3, 41),
(19, 4, 38),
(19, 5, 14),
(20, 1, 94),
(20, 2, 53),
(20, 3, 92),
(20, 4, 23),
(20, 5, 28),
(21, 1, 80),
(21, 2, 38),
(21, 3, 25),
(21, 4, 87),
(21, 5, 79),
(22, 1, 91),
(22, 2, 70),
(22, 3, 75),
(22, 4, 74),
(22, 5, 78),
(23, 1, 80),
(23, 2, 79),
(23, 3, 71),
(23, 4, 94),
(23, 5, 97),
(24, 1, 99),
(24, 2, 19),
(24, 3, 25),
(24, 4, 10),
(24, 5, 91),
(25, 1, 68),
(25, 2, 28),
(25, 3, 56),
(25, 4, 69),
(25, 5, 54),
(26, 1, 73),
(26, 2, 14),
(26, 3, 98),
(26, 4, 32),
(26, 5, 59),
(27, 1, 14),
(27, 2, 56),
(27, 3, 82),
(27, 4, 93),
(27, 5, 67),
(28, 1, 43),
(28, 2, 26),
(28, 3, 10),
(28, 4, 47),
(28, 5, 40),
(29, 1, 98),
(29, 2, 32),
(29, 3, 38),
(29, 4, 63),
(29, 5, 63),
(30, 1, 54),
(30, 2, 69),
(30, 3, 11),
(30, 4, 75),
(30, 5, 76),
(31, 1, 13),
(31, 2, 67),
(31, 3, 67),
(31, 4, 93),
(31, 5, 82),
(32, 1, 90),
(32, 2, 92),
(32, 3, 66),
(32, 4, 29),
(32, 5, 44),
(33, 1, 72),
(33, 2, 24),
(33, 3, 82),
(33, 4, 34),
(33, 5, 73),
(34, 1, 63),
(34, 2, 66),
(34, 3, 82),
(34, 4, 77),
(34, 5, 77),
(35, 1, 76),
(35, 2, 14),
(35, 3, 47),
(35, 4, 61),
(35, 5, 52),
(36, 1, 74),
(36, 2, 74),
(36, 3, 21),
(36, 4, 88),
(36, 5, 73),
(37, 1, 69),
(37, 2, 12),
(37, 3, 10),
(37, 4, 32),
(37, 5, 62),
(38, 1, 72),
(38, 2, 15),
(38, 3, 87),
(38, 4, 35),
(38, 5, 50),
(39, 1, 54),
(39, 2, 21),
(39, 3, 80),
(39, 4, 12),
(39, 5, 69),
(40, 1, 63),
(40, 2, 76),
(40, 3, 25),
(40, 4, 62),
(40, 5, 51),
(41, 1, 63),
(41, 2, 58),
(41, 3, 93),
(41, 4, 61),
(41, 5, 88),
(42, 1, 76),
(42, 2, 66),
(42, 3, 23),
(42, 4, 94),
(42, 5, 95),
(43, 1, 26),
(43, 2, 67),
(43, 3, 59),
(43, 4, 22),
(43, 5, 12),
(44, 1, 55),
(44, 2, 56),
(44, 3, 57),
(44, 4, 16),
(44, 5, 84),
(45, 1, 55),
(45, 2, 46),
(45, 3, 85),
(45, 4, 56),
(45, 5, 11),
(46, 1, 78),
(46, 2, 32),
(46, 3, 38),
(46, 4, 19),
(46, 5, 62),
(47, 1, 44),
(47, 2, 35),
(47, 3, 59),
(47, 4, 60),
(47, 5, 19),
(48, 1, 50),
(48, 2, 22),
(48, 3, 63),
(48, 4, 65),
(48, 5, 30),
(49, 1, 13),
(49, 2, 87),
(49, 3, 92),
(49, 4, 54),
(49, 5, 50),
(50, 1, 65),
(50, 2, 100),
(50, 3, 46),
(50, 4, 66),
(50, 5, 22),
(51, 1, 32),
(51, 2, 20),
(51, 3, 13),
(51, 4, 28),
(51, 5, 16),
(52, 1, 48),
(52, 2, 18),
(52, 3, 39),
(52, 4, 64),
(52, 5, 82),
(53, 1, 65),
(53, 2, 48),
(53, 3, 91),
(53, 4, 55),
(53, 5, 65),
(54, 1, 61),
(54, 2, 65),
(54, 3, 45),
(54, 4, 89),
(54, 5, 97),
(55, 1, 83),
(55, 2, 86),
(55, 3, 83),
(55, 4, 83),
(55, 5, 37),
(56, 1, 16),
(56, 2, 77),
(56, 3, 48),
(56, 4, 49),
(56, 5, 91),
(57, 1, 44),
(57, 2, 62),
(57, 3, 39),
(57, 4, 85),
(57, 5, 20),
(58, 1, 93),
(58, 2, 70),
(58, 3, 78),
(58, 4, 55),
(58, 5, 99),
(59, 1, 34),
(59, 2, 62),
(59, 3, 86),
(59, 4, 85),
(59, 5, 15),
(60, 1, 72),
(60, 2, 48),
(60, 3, 52),
(60, 4, 10),
(60, 5, 32),
(61, 1, 88),
(61, 2, 40),
(61, 3, 50),
(61, 4, 84),
(61, 5, 23),
(62, 1, 81),
(62, 2, 63),
(62, 3, 83),
(62, 4, 56),
(62, 5, 38),
(63, 1, 73),
(63, 2, 27),
(63, 3, 98),
(63, 4, 75),
(63, 5, 97),
(64, 1, 57),
(64, 2, 20),
(64, 3, 54),
(64, 4, 80),
(64, 5, 80),
(65, 1, 88),
(65, 2, 88),
(65, 3, 88),
(65, 4, 27),
(65, 5, 95),
(66, 1, 84),
(66, 2, 21),
(66, 3, 59),
(66, 4, 30),
(66, 5, 71),
(67, 1, 54),
(67, 2, 53),
(67, 3, 67),
(67, 4, 14),
(67, 5, 49),
(68, 1, 15),
(68, 2, 89),
(68, 3, 63),
(68, 4, 15),
(68, 5, 75),
(69, 1, 92),
(69, 2, 79),
(69, 3, 38),
(69, 4, 63),
(69, 5, 41),
(70, 1, 69),
(70, 2, 14),
(70, 3, 87),
(70, 4, 38),
(70, 5, 45),
(71, 1, 68),
(71, 2, 85),
(71, 3, 72),
(71, 4, 14),
(71, 5, 72),
(72, 1, 66),
(72, 2, 51),
(72, 3, 32),
(72, 4, 99),
(72, 5, 82),
(73, 1, 90),
(73, 2, 16),
(73, 3, 38),
(73, 4, 42),
(73, 5, 66),
(74, 1, 100),
(74, 2, 87),
(74, 3, 37),
(74, 4, 59),
(74, 5, 58),
(75, 1, 69),
(75, 2, 91),
(75, 3, 75),
(75, 4, 31),
(75, 5, 76),
(76, 1, 23),
(76, 2, 87),
(76, 3, 60),
(76, 4, 66),
(76, 5, 49),
(77, 1, 54),
(77, 2, 24),
(77, 3, 18),
(77, 4, 74),
(77, 5, 11),
(78, 1, 26),
(78, 2, 59),
(78, 3, 64),
(78, 4, 96),
(78, 5, 42),
(79, 1, 24),
(79, 2, 72),
(79, 3, 80),
(79, 4, 86),
(79, 5, 41),
(80, 1, 96),
(80, 2, 54),
(80, 3, 25),
(80, 4, 59),
(80, 5, 53),
(81, 1, 56),
(81, 2, 88),
(81, 3, 28),
(81, 4, 91),
(81, 5, 85),
(92, 1, 0),
(92, 2, 0),
(92, 3, 0),
(92, 4, 0),
(92, 5, 0);

-- --------------------------------------------------------

--
-- Structure de la table `taille`
--

CREATE TABLE `taille` (
  `id` int(11) NOT NULL,
  `taille` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `taille`
--

INSERT INTO `taille` (`id`, `taille`) VALUES
(1, 'XS'),
(2, 'S'),
(3, 'M'),
(4, 'L'),
(5, 'XL');

-- --------------------------------------------------------

--
-- Structure de la table `tissu`
--

CREATE TABLE `tissu` (
  `id` int(11) NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `descr` text,
  `photo` varchar(255) DEFAULT NULL,
  `prix` varchar(45) DEFAULT NULL,
  `composition` varchar(45) DEFAULT NULL,
  `grammage` varchar(45) DEFAULT NULL,
  `tirage` varchar(45) DEFAULT NULL,
  `stock` int(10) NOT NULL,
  `fil` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tissu`
--

INSERT INTO `tissu` (`id`, `nom`, `descr`, `photo`, `prix`, `composition`, `grammage`, `tirage`, `stock`, `fil`) VALUES
(1, 'POPELINE CARREAUX VERT', 'Tissu fil simple 50 S 100% coton. Une popeline à carreaux vichy verts (taille 3mm). Un motif remis au goûts du jour pour une chemise homme chic et décontractée ! La légèreté de cette popeline vous assure un confort idéal que vous la portiez sous un pull, ou sous une veste.', 'http://www.cottonsociety.com/10941-thickbox_default/popeline-carreaux-vert.jpg', '79', '100% Coton', '104 gr/m²50/1 50/1s', '50/1 50/1s', 0, 'simple'),
(2, 'POPELINE RAYÉ BLEU', 'Popeline à fines rayures bleu (3mm) d''une qualité exceptionnelle. Un grand clasique dans les garde-robes business.', 'http://www.cottonsociety.com/10952-thickbox_default/popeline-raye-bleu.jpg', '89', '100% Coton', '111 gr/m²', '140/2*70s', 0, 'simple'),
(3, 'POPELINE CARREAUX BLEU', 'Tissu fil simple 50 S 100% coton. Une popeline à gros carreaux bleu foncé (taille 2,9cm). Un motif remis au goûts du jour pour une chemise homme chic et décontractée ! La légèreté de cette popeline vous assure un confort idéal que vous la portiez sous un pull, ou sous une veste.', 'http://www.cottonsociety.com/10953-thickbox_default/popeline-carreaux-bleu-et-marron.jpg', '69', '100% Coton', '104 gr/m²', '50/1 50/1s', 0, 'double'),
(4, 'POPELINE CARREAUX BLEU ET MARRON', 'Tissu fil simple 50 S 100% coton. Une popeline à carreaux vichy bleus et marrons (taille 3mm). Un motif remis au goûts du jour pour une chemise homme chic et décontractée ! La légèreté de cette popeline vous assure un confort idéal que vous la portiez sous un pull, ou sous une veste.', 'http://www.cottonsociety.com/205-thickbox_default/chemise-sur-mesure-popeline-rayee-rose.jpg', '69', '100% Coton', '116 gr/m²', '50/1 50/1s', 0, 'simple'),
(5, 'POPELINE RAYÉ ROSE', 'Belle popeline douce et confortable pour une rayure feutre rose de 0.35cm de large. Un motif qui ira aussi bien sur vos chemises de weekend, comme au boulot.', 'http://www.cottonsociety.com/1069-thickbox_default/popeline-uni-noir.jpg', '79', '100% Coton', '114 gr/m²', '60/1s', 0, 'double'),
(6, 'POPELINE UNI NOIR', 'Popeline 100% coton à carreaux noirs. Un motif très classique sur un tissu 50s léger, souple et doux. Personnalisez votre chemise sur mesure avec ce tissu de qualité pour une chemise moderne et élégante. Taille des carreaux: 5mm.', 'http://www.cottonsociety.com/42628-thickbox/Twill-Carreaux-Bleu.jpg', '69', '100% Coton', '104 gr/m²', '50/1 50/1s', 0, 'simple'),
(7, 'TWILL CARREAUX BLEU', 'Fin twill compact, fluide doux et avec une bonne tenu. Idéal pour une chemise élégante qui change d''un carreau classique', 'http://www.cottonsociety.com/837-thickbox_default/chemise-blanche-sur-mesure-pin-point-double-retors-.jpg', '79', '100% Coton', '121 gr/m²', '60/1s', 0, 'simple'),
(8, 'PIN-POINT UNI BLANC', 'Tissu 100% coton Egyptien 100s double retors. Un tissage résistant et agréable pour une chemise blanche à l''épreuve des vicissitudes professionnelles !', 'http://www.cottonsociety.com/837-thickbox_default/chemise-blanche-sur-mesure-pin-point-double-retors-.jpg', '69', '100% Coton', '135 gr/m²', '80/2s', 0, 'double'),
(9, 'CHAMBRAY UNI BLEU', 'Un tissu Chambray bleu clair pour une chemise casual un brin rock. Avec l''apparence d''un jean et la legèreté d''une popeline, cette toile est parfaite pour les journées ensoleillées. Le col sera plus souple que pour une chemise claissque.', 'http://www.cottonsociety.com/49752-thickbox_default/Chambray-Uni-Bleu.jpg', '59', '100% Coton', '111 gr/m²', '50/1 50/1s', 0, 'simple');

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `type` varchar(45) NOT NULL,
  `categorie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `type`
--

INSERT INTO `type` (`id`, `type`, `categorie_id`) VALUES
(1, 'cintre', 1),
(2, 'm_longue', 1),
(3, 'm_courte', 1),
(4, 'cintre', 2),
(5, 'm_longue', 2),
(6, 'm_courte', 2),
(7, 'cintre', 3),
(8, 'm_longue', 3),
(9, 'm_courte', 3);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` int(5) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `date_naissance` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `complement_adresse` varchar(255) NOT NULL,
  `code_postal` int(5) NOT NULL,
  `ville` varchar(60) NOT NULL,
  `tel` int(15) NOT NULL,
  `sexe` enum('m','f') NOT NULL,
  `statut` enum('user','admin') NOT NULL,
  `taille` int(3) DEFAULT NULL,
  `poids` int(3) DEFAULT NULL,
  `tour_cou` int(3) DEFAULT NULL,
  `tour_poitrine` int(3) DEFAULT NULL,
  `tour_taille` int(3) DEFAULT NULL,
  `tour_bassin` int(3) DEFAULT NULL,
  `manche_droite` int(3) DEFAULT NULL,
  `manche_gauche` int(3) DEFAULT NULL,
  `poignet_droit` int(3) DEFAULT NULL,
  `poignet_gauche` int(3) DEFAULT NULL,
  `carrure` int(3) DEFAULT NULL,
  `dos` int(3) DEFAULT NULL,
  `epaule_gauche` int(3) DEFAULT NULL,
  `epaule_droite` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id_user`, `prenom`, `nom`, `date_naissance`, `email`, `password`, `adresse`, `complement_adresse`, `code_postal`, `ville`, `tel`, `sexe`, `statut`, `taille`, `poids`, `tour_cou`, `tour_poitrine`, `tour_taille`, `tour_bassin`, `manche_droite`, `manche_gauche`, `poignet_droit`, `poignet_gauche`, `carrure`, `dos`, `epaule_gauche`, `epaule_droite`) VALUES
(22, 'Guillaume', 'DRUET', '0000-00-00', 'gdruet@gmail.com', '$2y$10$wdZlZX22PrKI6EOnpCstaep8p36EvfkEGK4SzZT3QnDe.WC83gTJG', '1236 vevr', 'vraezvr', 75018, 'PARIS', 101001, 'm', 'admin', 190, 80, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50),
(23, 'Guillaume', 'DRUET', '1983-10-25', 'helloworld@admin.com', '$2y$10$/AhNlPVlgAPx.AMJxTNB4.4nlEP1bEvb7/s4D0ehv9ovXi/TksLcm', '75 rue des cinqs diamants', '', 75018, 'PARIS', 2147483647, '', '', 190, 60, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50),
(26, 'Doe', 'John', '1983-10-25', 'gdruet@gmail.es', '$2y$10$wTLo0gJut8saOZiQhLeFkele9JWGXjWV0HMi8TwDyG2kxdfc7POo6', '25 rue des cinsq', '', 75018, 'PARIS', 10101, 'm', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Administrateur', 'Administrateur', '2017-07-27', 'admin@custom-shirt.com', '$2y$10$dhFCLqa5bFyBwuJHWBt3f.TdolaB0g/WbYPxr891.SxJ7.I/5L2hi', '82 avenue denfert rochereau', '', 75014, 'Paris', 2147483647, 'm', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'ADMIN', 'ADMIN', '2005-02-12', 'Usertest@Usertest.fr', '$2y$10$bXmoQV.9KTDVrWJ7uOTXv..iKbzvo8j/KNNi4KvqqskYni/1oROxC', '82 avenue denfert rochereau', '', 75014, 'PARIS', 10101011, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `bouton`
--
ALTER TABLE `bouton`
  ADD PRIMARY KEY (`id_bouton`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `col`
--
ALTER TABLE `col`
  ADD PRIMARY KEY (`id_col`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_commande`),
  ADD KEY `id_user` (`user_id`);

--
-- Index pour la table `coupe`
--
ALTER TABLE `coupe`
  ADD PRIMARY KEY (`id_coupe`);

--
-- Index pour la table `coupe_tissu`
--
ALTER TABLE `coupe_tissu`
  ADD KEY `fk_coupe_tissu_has_coupe_idx` (`id_coupe`),
  ADD KEY `fk_coupe_tissu_has_tissu_idx` (`id_tissu`);

--
-- Index pour la table `custom`
--
ALTER TABLE `custom`
  ADD PRIMARY KEY (`id_custom`);

--
-- Index pour la table `detail_commande`
--
ALTER TABLE `detail_commande`
  ADD PRIMARY KEY (`id_detail_commande`);

--
-- Index pour la table `photo_bundle`
--
ALTER TABLE `photo_bundle`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_produit_type_idx` (`type_id`),
  ADD KEY `fk_produit_tissu` (`tissu_id`);

--
-- Index pour la table `produit_taille`
--
ALTER TABLE `produit_taille`
  ADD KEY `fk_produit_has_taille_taille1_idx` (`taille_id`),
  ADD KEY `fk_produit_has_taille_produit1_idx` (`produit_id`);

--
-- Index pour la table `taille`
--
ALTER TABLE `taille`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tissu`
--
ALTER TABLE `tissu`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_type_categorie_idx` (`categorie_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `bouton`
--
ALTER TABLE `bouton`
  MODIFY `id_bouton` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `col`
--
ALTER TABLE `col`
  MODIFY `id_col` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id_commande` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `coupe`
--
ALTER TABLE `coupe`
  MODIFY `id_coupe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `custom`
--
ALTER TABLE `custom`
  MODIFY `id_custom` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `detail_commande`
--
ALTER TABLE `detail_commande`
  MODIFY `id_detail_commande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `photo_bundle`
--
ALTER TABLE `photo_bundle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT pour la table `taille`
--
ALTER TABLE `taille`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `tissu`
--
ALTER TABLE `tissu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `coupe_tissu`
--
ALTER TABLE `coupe_tissu`
  ADD CONSTRAINT `fk_coupe_tissu_has_tissu` FOREIGN KEY (`id_tissu`) REFERENCES `tissu` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `fk_produit_tissu` FOREIGN KEY (`tissu_id`) REFERENCES `tissu` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_produit_type` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `produit_taille`
--
ALTER TABLE `produit_taille`
  ADD CONSTRAINT `fk_produit_taille_has_taille` FOREIGN KEY (`taille_id`) REFERENCES `taille` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `type`
--
ALTER TABLE `type`
  ADD CONSTRAINT `fk_type_categorie` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
