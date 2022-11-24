-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 24-11-2022 a las 19:15:00
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `caracterizacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
CREATE TABLE IF NOT EXISTS `departamentos` (
  `idDepartamento` int(11) NOT NULL AUTO_INCREMENT,
  `departamento` varchar(60) NOT NULL,
  PRIMARY KEY (`idDepartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`idDepartamento`, `departamento`) VALUES
(2, 'ANTIOQUIA'),
(3, 'ATLÁNTICO'),
(4, 'BOGOTÁ'),
(5, 'BOLÍVAR'),
(6, 'BOYACÁ'),
(7, 'CALDAS'),
(8, 'CAQUETÁ'),
(9, 'CAUCA'),
(10, 'CESAR'),
(11, 'CÓRDOBA'),
(12, 'CUNDINAMARCA'),
(13, 'CHOCÓ'),
(14, 'HUILA'),
(15, 'LA GUAJIRA'),
(16, 'MAGDALENA'),
(17, 'META'),
(18, 'NARIÑO'),
(19, 'NORTE-DE-SANTANDER'),
(20, 'QUINDIO'),
(21, 'RISARALDA'),
(22, 'SANTANDER'),
(23, 'SUCRE'),
(24, 'TOLIMA'),
(25, 'VALLE-DEL-CAUCA'),
(26, 'ARAUCA'),
(27, 'CASANARE'),
(28, 'PUTUMAYO'),
(29, 'ARCHIPIÉLAGO-DE-SAN-ANDRÉS-PROVIDENCIA-Y-SANTA-CATALINA'),
(30, 'AMAZONAS'),
(31, 'GUAINÍA'),
(32, 'GUAVIARE'),
(33, 'VAUPÉS'),
(34, 'VICHADA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

DROP TABLE IF EXISTS `empleado`;
CREATE TABLE IF NOT EXISTS `empleado` (
  `idDocente` int(11) NOT NULL AUTO_INCREMENT,
  `nombreCompleto` varchar(60) DEFAULT NULL,
  `nombreUsuario` varchar(20) DEFAULT NULL,
  `correoE` varchar(50) DEFAULT NULL,
  `contrasenia` varchar(200) DEFAULT NULL,
  `codigoDocente` varchar(30) NOT NULL,
  `idLoc` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDocente`),
  UNIQUE KEY `codigoDocente` (`codigoDocente`),
  UNIQUE KEY `idDocente` (`idDocente`),
  UNIQUE KEY `nombreUsuario` (`nombreUsuario`),
  KEY `localizacion` (`idLoc`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`idDocente`, `nombreCompleto`, `nombreUsuario`, `correoE`, `contrasenia`, `codigoDocente`, `idLoc`) VALUES
(11, 'David hola', 'hola', 'hola@yo.me', '$2b$08$m2v5/dzAYLzT21uHBclAMuyMTwHCv89Bxi8emmC9Zye1pUZT5wDwe', '1564sadfasd', NULL),
(12, 'david t', 'deañg', 'hola@yo.me', '123456', '564asdfsae', NULL),
(13, 'david caro', 'd4vid', 'estoy@yo.me', '123456', '546adfaegj', NULL),
(14, 'sfdadf', 'sdafas', 'dsafsdf', '123456', 'sadfasd', NULL),
(15, 'sdagagfj', 'tutydhbsre', 'sgjhdgfsdf', '123456', 'hjdw', NULL),
(16, 'hmkghm', 'dfgdsfgdf', 'djfuikuy', '123456', 'sgdfgadf', NULL),
(17, 'gdsfgrtjhtyj', 'dfjstrywet', 'gfgajhtrjh', '123456', 'aergferwyg', NULL),
(18, 'sgdfgqaeterwtfdsgsder', 'hsdfgqetweda', 'jheyujetydhtswa', '123456', 'dgfjhtuikhwsgreq', NULL),
(19, 'gfjhdfgwaer', 'shsertwedsgsd', 'sdhsdgf', '123456', 'sfdgsg', NULL),
(20, 'sdfgsdf', 'fdhwt5qrwead', 'asfdwegteyh', '123456', 'hjfgjgbn', NULL),
(21, 'Jennifer', 'Jenni05', 'hola@yo.me', '$2b$08$f5Ca7ivtkJizDprn/e0SN.vENEWXU/hsawIINdJTdH7Lu/vKe3dta', '51asdfas', NULL),
(22, 'hugo tabares', 'huguito', 'hola@yo.me', '$2b$08$HN/xB5MX6ijiHEe6OfRlx.JbyVCmkzLkaWnBfNfAFnjk6HM2G1z4u', '123456', NULL),
(24, 'juand', 'deadmaskt', 'hola@mundo.com', '$2b$08$r.SduME/4fO44c3l3BEAWuxb21wFau2tIk3o0XKX7Osjs0sdhj92m', '964335', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

DROP TABLE IF EXISTS `estudiantes`;
CREATE TABLE IF NOT EXISTS `estudiantes` (
  `idEstudiante` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(60) NOT NULL,
  `nombreCompleto` varchar(50) DEFAULT NULL,
  `correoE` varchar(30) DEFAULT NULL,
  `celular` varchar(10) DEFAULT NULL,
  `idLoc` int(11) DEFAULT NULL,
  `barrio` varchar(20) DEFAULT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  `estratoSocioEconomico` varchar(2) DEFAULT NULL,
  `conviveCon` varchar(80) DEFAULT NULL,
  `ingresos` int(11) DEFAULT NULL,
  `quienCubrePasajes` varchar(20) DEFAULT NULL,
  `profesionPadre` varchar(20) DEFAULT NULL,
  `profesionMadre` varchar(20) DEFAULT NULL,
  `tieneVehiculoPropio` varchar(2) DEFAULT NULL,
  `marcaVehiculo` varchar(20) DEFAULT NULL,
  `tipoVehiculo` varchar(20) DEFAULT NULL,
  `bachilleratoCulminado` varchar(20) DEFAULT NULL,
  `institucionCulmino` varchar(30) DEFAULT NULL,
  `deportePractica` varchar(20) DEFAULT NULL,
  `estudiosSuperiores` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idEstudiante`),
  UNIQUE KEY `Documento` (`documento`),
  KEY `localizacion` (`idLoc`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`idEstudiante`, `documento`, `nombreCompleto`, `correoE`, `celular`, `idLoc`, `barrio`, `direccion`, `estratoSocioEconomico`, `conviveCon`, `ingresos`, `quienCubrePasajes`, `profesionPadre`, `profesionMadre`, `tieneVehiculoPropio`, `marcaVehiculo`, `tipoVehiculo`, `bachilleratoCulminado`, `institucionCulmino`, `deportePractica`, `estudiosSuperiores`) VALUES
(1, 'etjh', 'juan', 'hola@mundo.com', 'ewfsdfsd', 5, 'dfgdsfg', 'sdf', '2', 'sdf', 44234, 'fdgsdf', 'gsdgds', 'sdfsd', 'no', 'sdfsd', 'no', 'sd', 'sdfsd', 'sdfsd', 'fsd'),
(2, 'sdfsdgvadfbgh', 'juan', 'hola@mundo.com', 'uyky', 7, 'dgsr', 'sdffgh', '2', 'jhhg', 4356, 'fhf', 'fdgsdg', 'dfgsd', 'no', 'sdf', 'no', 'dsfs', 'sdfasd', 'fdssaf', 'sdfas'),
(3, '23hjkg', 'juan', 'hola@mundo.com', 'fgjfdgf', 5, 'fdgdf', 'sdf', '2', 'dfgd', 45436, 'fdgds', 'dgsd', 'fdgfd', 'no', 'sf', 'saf', 'fdasf', 'sdfsdf', 'sdfas', 'fsf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localizacion`
--

DROP TABLE IF EXISTS `localizacion`;
CREATE TABLE IF NOT EXISTS `localizacion` (
  `idLoc` int(11) NOT NULL AUTO_INCREMENT,
  `idDepartamento` int(11) NOT NULL,
  `ciudad` varchar(60) NOT NULL,
  PRIMARY KEY (`idLoc`),
  KEY `departamento` (`idDepartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=1125 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `localizacion`
--

INSERT INTO `localizacion` (`idLoc`, `idDepartamento`, `ciudad`) VALUES
(1, 2, 'MEDELLÍN'),
(2, 2, 'ABEJORRAL'),
(3, 2, 'ABRIAQUÍ'),
(4, 2, 'ALEJANDRÍA'),
(5, 2, 'AMAGÁ'),
(6, 2, 'AMALFI'),
(7, 2, 'ANDES'),
(8, 2, 'ANGELÓPOLIS'),
(9, 2, 'ANGOSTURA'),
(10, 2, 'ANORÍ'),
(11, 2, 'SANTA FÉ DE 2'),
(12, 2, 'ANZÁ'),
(13, 2, 'APARTADÓ'),
(14, 2, 'ARBOLETES'),
(15, 2, 'ARGELIA'),
(16, 2, 'ARMENIA'),
(17, 2, 'BARBOSA'),
(18, 2, 'BELMIRA'),
(19, 2, 'BELLO'),
(20, 2, 'BETANIA'),
(21, 2, 'BETULIA'),
(22, 2, 'CIUDAD BOLÍVAR'),
(23, 2, 'BRICEÑO'),
(24, 2, 'BURITICÁ'),
(25, 2, 'CÁCERES'),
(26, 2, 'CAICEDO'),
(27, 2, 'CALDAS'),
(28, 2, 'CAMPAMENTO'),
(29, 2, 'CAÑASGORDAS'),
(30, 2, 'CARACOLÍ'),
(31, 2, 'CARAMANTA'),
(32, 2, 'CAREPA'),
(33, 2, 'EL CARMEN DE VIBORAL'),
(34, 2, 'CAROLINA'),
(35, 2, 'CAUCASIA'),
(36, 2, 'CHIGORODÓ'),
(37, 2, 'CISNEROS'),
(38, 2, 'COCORNÁ'),
(39, 2, 'CONCEPCIÓN'),
(40, 2, 'CONCORDIA'),
(41, 2, 'COPACABANA'),
(42, 2, 'DABEIBA'),
(43, 2, 'DONMATÍAS'),
(44, 2, 'EBÉJICO'),
(45, 2, 'EL BAGRE'),
(46, 2, 'ENTRERRÍOS'),
(47, 2, 'ENVIGADO'),
(48, 2, 'FREDONIA'),
(49, 2, 'FRONTINO'),
(50, 2, 'GIRALDO'),
(51, 2, 'GIRARDOTA'),
(52, 2, 'GÓMEZ PLATA'),
(53, 2, 'GRANADA'),
(54, 2, 'GUADALUPE'),
(55, 2, 'GUARNE'),
(56, 2, 'GUATAPÉ'),
(57, 2, 'HELICONIA'),
(58, 2, 'HISPANIA'),
(59, 2, 'ITAGÜÍ'),
(60, 2, 'ITUANGO'),
(61, 2, 'JARDÍN'),
(62, 2, 'JERICÓ'),
(63, 2, 'LA CEJA'),
(64, 2, 'LA ESTRELLA'),
(65, 2, 'LA PINTADA'),
(66, 2, 'LA UNIÓN'),
(67, 2, 'LIBORINA'),
(68, 2, 'MACEO'),
(69, 2, 'MARINILLA'),
(70, 2, 'MONTEBELLO'),
(71, 2, 'MURINDÓ'),
(72, 2, 'MUTATÁ'),
(73, 2, '18'),
(74, 2, 'NECOCLÍ'),
(75, 2, 'NECHÍ'),
(76, 2, 'OLAYA'),
(77, 2, 'PEÑOL'),
(78, 2, 'PEQUE'),
(79, 2, 'PUEBLORRICO'),
(80, 2, 'PUERTO BERRÍO'),
(81, 2, 'PUERTO NARE'),
(82, 2, 'PUERTO TRIUNFO'),
(83, 2, 'REMEDIOS'),
(84, 2, 'RETIRO'),
(85, 2, 'RIONEGRO'),
(86, 2, 'SABANALARGA'),
(87, 2, 'SABANETA'),
(88, 2, 'SALGAR'),
(89, 2, 'SAN ANDRÉS DE CUERQUÍA'),
(90, 2, 'SAN CARLOS'),
(91, 2, 'SAN FRANCISCO'),
(92, 2, 'SAN JERÓNIMO'),
(93, 2, 'SAN JOSÉ DE LA MONTAÑA'),
(94, 2, 'SAN JUAN DE URABÁ'),
(95, 2, 'SAN LUIS'),
(96, 2, 'SAN PEDRO DE LOS MILAGROS'),
(97, 2, 'SAN PEDRO DE URABÁ'),
(98, 2, 'SAN RAFAEL'),
(99, 2, 'SAN ROQUE'),
(100, 2, 'SAN VICENTE FERRER'),
(101, 2, 'SANTA BÁRBARA'),
(102, 2, 'SANTA ROSA DE OSOS'),
(103, 2, 'SANTO DOMINGO'),
(104, 2, 'EL SANTUARIO'),
(105, 2, 'SEGOVIA'),
(106, 2, 'SONSÓN'),
(107, 2, 'SOPETRÁN'),
(108, 2, 'TÁMESIS'),
(109, 2, 'TARAZÁ'),
(110, 2, 'TARSO'),
(111, 2, 'TITIRIBÍ'),
(112, 2, 'TOLEDO'),
(113, 2, 'TURBO'),
(114, 2, 'URAMITA'),
(115, 2, 'URRAO'),
(116, 2, 'VALDIVIA'),
(117, 2, 'VALPARAÍSO'),
(118, 2, 'VEGACHÍ'),
(119, 2, 'VENECIA'),
(120, 2, 'VIGÍA DEL FUERTE'),
(121, 2, 'YALÍ'),
(122, 2, 'YARUMAL'),
(123, 2, 'YOLOMBÓ'),
(124, 2, 'YONDÓ'),
(125, 2, 'ZARAGOZA'),
(126, 3, 'BARRANQUILLA'),
(127, 3, 'BARANOA'),
(128, 3, 'CAMPO DE LA CRUZ'),
(129, 3, 'CANDELARIA'),
(130, 3, 'GALAPA'),
(131, 3, 'JUAN DE ACOSTA'),
(132, 3, 'LURUACO'),
(133, 3, 'MALAMBO'),
(134, 3, 'MANATÍ'),
(135, 3, 'PALMAR DE VARELA'),
(136, 3, 'PIOJÓ'),
(137, 3, 'POLONUEVO'),
(138, 3, 'PONEDERA'),
(139, 3, 'PUERTO COLOMBIA'),
(140, 3, 'REPELÓN'),
(141, 3, 'SABANAGRANDE'),
(142, 3, 'SABANALARGA'),
(143, 3, 'SANTA LUCÍA'),
(144, 3, 'SANTO TOMÁS'),
(145, 3, 'SOLEDAD'),
(146, 3, 'SUAN'),
(147, 3, 'TUBARÁ'),
(148, 3, 'USIACURÍ'),
(149, 4, 'BOGOTa'),
(150, 5, 'CARTAGENA DE INDIAS'),
(151, 5, 'ACHÍ'),
(152, 5, 'ALTOS DEL ROSARIO'),
(153, 5, 'ARENAL'),
(154, 5, 'ARJONA'),
(155, 5, 'ARROYOHONDO'),
(156, 5, 'BARRANCO DE LOBA'),
(157, 5, 'CALAMAR'),
(158, 5, 'CANTAGALLO'),
(159, 5, 'CICUCO'),
(160, 5, 'CÓRDOBA'),
(161, 5, 'CLEMENCIA'),
(162, 5, 'EL CARMEN DE BOLÍVAR'),
(163, 5, 'EL GUAMO'),
(164, 5, 'EL PEÑÓN'),
(165, 5, 'HATILLO DE LOBA'),
(166, 5, 'MAGANGUÉ'),
(167, 5, 'MAHATES'),
(168, 5, 'MARGARITA'),
(169, 5, 'MARÍA LA BAJA'),
(170, 5, 'MONTECRISTO'),
(171, 5, 'MOMPÓS'),
(172, 5, 'MORALES'),
(173, 5, 'NOROSÍ'),
(174, 5, 'PINILLOS'),
(175, 5, 'REGIDOR'),
(176, 5, 'RÍO VIEJO'),
(177, 5, 'SAN CRISTÓBAL'),
(178, 5, 'SAN ESTANISLAO'),
(179, 5, 'SAN FERNANDO'),
(180, 5, 'SAN JACINTO'),
(181, 5, 'SAN JACINTO DEL CAUCA'),
(182, 5, 'SAN JUAN NEPOMUCENO'),
(183, 5, 'SAN MARTÍN DE LOBA'),
(184, 5, 'SAN PABLO'),
(185, 5, 'SANTA CATALINA'),
(186, 5, 'SANTA ROSA'),
(187, 5, 'SANTA ROSA DEL SUR'),
(188, 5, 'SIMITÍ'),
(189, 5, 'SOPLAVIENTO'),
(190, 5, 'TALAIGUA NUEVO'),
(191, 5, 'TIQUISIO'),
(192, 5, 'TURBACO'),
(193, 5, 'TURBANÁ'),
(194, 5, 'VILLANUEVA'),
(195, 5, 'ZAMBRANO'),
(196, 6, 'TUNJA'),
(197, 6, 'ALMEIDA'),
(198, 6, 'AQUITANIA'),
(199, 6, 'ARCABUCO'),
(200, 6, 'BELÉN'),
(201, 6, 'BERBEO'),
(202, 6, 'BETÉITIVA'),
(203, 6, 'BOAVITA'),
(204, 6, '6'),
(205, 6, 'BRICEÑO'),
(206, 6, 'BUENAVISTA'),
(207, 6, 'BUSBANZÁ'),
(208, 6, 'CALDAS'),
(209, 6, 'CAMPOHERMOSO'),
(210, 6, 'CERINZA'),
(211, 6, 'CHINAVITA'),
(212, 6, 'CHIQUINQUIRÁ'),
(213, 6, 'CHISCAS'),
(214, 6, 'CHITA'),
(215, 6, 'CHITARAQUE'),
(216, 6, 'CHIVATÁ'),
(217, 6, 'CIÉNEGA'),
(218, 6, 'CÓMBITA'),
(219, 6, 'COPER'),
(220, 6, 'CORRALES'),
(221, 6, 'COVARACHÍA'),
(222, 6, 'CUBARÁ'),
(223, 6, 'CUCAITA'),
(224, 6, 'CUÍTIVA'),
(225, 6, 'CHÍQUIZA'),
(226, 6, 'CHIVOR'),
(227, 6, 'DUITAMA'),
(228, 6, 'EL COCUY'),
(229, 6, 'EL ESPINO'),
(230, 6, 'FIRAVITOBA'),
(231, 6, 'FLORESTA'),
(232, 6, 'GACHANTIVÁ'),
(233, 6, 'GÁMEZA'),
(234, 6, 'GARAGOA'),
(235, 6, 'GUACAMAYAS'),
(236, 6, 'GUATEQUE'),
(237, 6, 'GUAYATÁ'),
(238, 6, 'GÜICÁN'),
(239, 6, 'IZA'),
(240, 6, 'JENESANO'),
(241, 6, 'JERICÓ'),
(242, 6, 'LABRANZAGRANDE'),
(243, 6, 'LA CAPILLA'),
(244, 6, 'LA VICTORIA'),
(245, 6, 'LA UVITA'),
(246, 6, 'VILLA DE LEYVA'),
(247, 6, 'MACANAL'),
(248, 6, 'MARIPÍ'),
(249, 6, 'MIRAFLORES'),
(250, 6, 'MONGUA'),
(251, 6, 'MONGUÍ'),
(252, 6, 'MONIQUIRÁ'),
(253, 6, 'MOTAVITA'),
(254, 6, 'MUZO'),
(255, 6, 'NOBSA'),
(256, 6, 'NUEVO COLÓN'),
(257, 6, 'OICATÁ'),
(258, 6, 'OTANCHE'),
(259, 6, 'PACHAVITA'),
(260, 6, 'PÁEZ'),
(261, 6, 'PAIPA'),
(262, 6, 'PAJARITO'),
(263, 6, 'PANQUEBA'),
(264, 6, 'PAUNA'),
(265, 6, 'PAYA'),
(266, 6, 'PAZ DE RÍO'),
(267, 6, 'PESCA'),
(268, 6, 'PISBA'),
(269, 6, 'PUERTO BOYACÁ'),
(270, 6, 'QUÍPAMA'),
(271, 6, 'RAMIRIQUÍ'),
(272, 6, 'RÁQUIRA'),
(273, 6, 'RONDÓN'),
(274, 6, 'SABOYÁ'),
(275, 6, 'SÁCHICA'),
(276, 6, 'SAMACÁ'),
(277, 6, 'SAN EDUARDO'),
(278, 6, 'SAN JOSÉ DE PARE'),
(279, 6, 'SAN LUIS DE GACENO'),
(280, 6, 'SAN MATEO'),
(281, 6, 'SAN MIGUEL DE SEMA'),
(282, 6, 'SAN PABLO DE BORBUR'),
(283, 6, 'SANTANA'),
(284, 6, 'SANTA MARÍA'),
(285, 6, 'SANTA ROSA DE VITERBO'),
(286, 6, 'SANTA SOFÍA'),
(287, 6, 'SATIVANORTE'),
(288, 6, 'SATIVASUR'),
(289, 6, 'SIACHOQUE'),
(290, 6, 'SOATÁ'),
(291, 6, 'SOCOTÁ'),
(292, 6, 'SOCHA'),
(293, 6, 'SOGAMOSO'),
(294, 6, 'SOMONDOCO'),
(295, 6, 'SORA'),
(296, 6, 'SOTAQUIRÁ'),
(297, 6, 'SORACÁ'),
(298, 6, 'SUSACÓN'),
(299, 6, 'SUTAMARCHÁN'),
(300, 6, 'SUTATENZA'),
(301, 6, 'TASCO'),
(302, 6, 'TENZA'),
(303, 6, 'TIBANÁ'),
(304, 6, 'TIBASOSA'),
(305, 6, 'TINJACÁ'),
(306, 6, 'TIPACOQUE'),
(307, 6, 'TOCA'),
(308, 6, 'TOGÜÍ'),
(309, 6, 'TÓPAGA'),
(310, 6, 'TOTA'),
(311, 6, 'TUNUNGUÁ'),
(312, 6, 'TURMEQUÉ'),
(313, 6, 'TUTA'),
(314, 6, 'TUTAZÁ'),
(315, 6, 'ÚMBITA'),
(316, 6, 'VENTAQUEMADA'),
(317, 6, 'VIRACACHÁ'),
(318, 6, 'ZETAQUIRA'),
(319, 7, 'MANIZALES'),
(320, 7, 'AGUADAS'),
(321, 7, 'ANSERMA'),
(322, 7, 'ARANZAZU'),
(323, 7, 'BELALCÁZAR'),
(324, 7, 'CHINCHINÁ'),
(325, 7, 'FILADELFIA'),
(326, 7, 'LA DORADA'),
(327, 7, 'LA MERCED'),
(328, 7, 'MANZANARES'),
(329, 7, 'MARMATO'),
(330, 7, 'MARQUETALIA'),
(331, 7, 'MARULANDA'),
(332, 7, 'NEIRA'),
(333, 7, 'NORCASIA'),
(334, 7, 'PÁCORA'),
(335, 7, 'PALESTINA'),
(336, 7, 'PENSILVANIA'),
(337, 7, 'RIOSUCIO'),
(338, 7, 'RISARALDA'),
(339, 7, 'SALAMINA'),
(340, 7, 'SAMANÁ'),
(341, 7, 'SAN JOSÉ'),
(342, 7, 'SUPÍA'),
(343, 7, 'VICTORIA'),
(344, 7, 'VILLAMARÍA'),
(345, 7, 'VITERBO'),
(346, 8, 'FLORENCIA'),
(347, 8, 'ALBANIA'),
(348, 8, 'BELÉN DE LOS ANDAQUÍES'),
(349, 8, 'CARTAGENA DEL CHAIRÁ'),
(350, 8, 'CURILLO'),
(351, 8, 'EL DONCELLO'),
(352, 8, 'EL PAUJÍL'),
(353, 8, 'LA MONTAÑITA'),
(354, 8, 'MILÁN'),
(355, 8, 'MORELIA'),
(356, 8, 'PUERTO RICO'),
(357, 8, 'SAN JOSÉ DEL FRAGUA'),
(358, 8, 'SAN VICENTE DEL CAGUÁN'),
(359, 8, 'SOLANO'),
(360, 8, 'SOLITA'),
(361, 8, 'VALPARAÍSO'),
(362, 9, 'POPAYÁN'),
(363, 9, 'ALMAGUER'),
(364, 9, 'ARGELIA'),
(365, 9, 'BALBOA'),
(366, 9, 'BOLÍVAR'),
(367, 9, 'BUENOS AIRES'),
(368, 9, 'CAJIBÍO'),
(369, 9, 'CALDONO'),
(370, 9, 'CALOTO'),
(371, 9, 'CORINTO'),
(372, 9, 'EL TAMBO'),
(373, 9, 'FLORENCIA'),
(374, 9, 'GUACHENÉ'),
(375, 9, 'GUAPÍ'),
(376, 9, 'INZÁ'),
(377, 9, 'JAMBALÓ'),
(378, 9, 'LA SIERRA'),
(379, 9, 'LA VEGA'),
(380, 9, 'LÓPEZ DE MICAY'),
(381, 9, 'MERCADERES'),
(382, 9, 'MIRANDA'),
(383, 9, 'MORALES'),
(384, 9, 'PADILLA'),
(385, 9, 'PÁEZ'),
(386, 9, 'PATÍA'),
(387, 9, 'PIAMONTE'),
(388, 9, 'PIENDAMÓ'),
(389, 9, 'PUERTO TEJADA'),
(390, 9, 'PURACÉ'),
(391, 9, 'ROSAS'),
(392, 9, 'SAN SEBASTIÁN'),
(393, 9, 'SANTANDER DE QUILICHAO'),
(394, 9, 'SANTA ROSA'),
(395, 9, 'SILVIA'),
(396, 9, 'SOTARA'),
(397, 9, 'SUÁREZ'),
(398, 9, 'SUCRE'),
(399, 9, 'TIMBÍO'),
(400, 9, 'TIMBIQUÍ'),
(401, 9, 'TORIBÍO'),
(402, 9, 'TOTORÓ'),
(403, 9, 'VILLA RICA'),
(404, 10, 'VALLEDUPAR'),
(405, 10, 'AGUACHICA'),
(406, 10, 'AGUSTÍN CODAZZI'),
(407, 10, 'ASTREA'),
(408, 10, 'BECERRIL'),
(409, 10, 'BOSCONIA'),
(410, 10, 'CHIMICHAGUA'),
(411, 10, 'CHIRIGUANÁ'),
(412, 10, 'CURUMANÍ'),
(413, 10, 'EL COPEY'),
(414, 10, 'EL PASO'),
(415, 10, 'GAMARRA'),
(416, 10, 'GONZÁLEZ'),
(417, 10, 'LA GLORIA'),
(418, 10, 'LA JAGUA DE IBIRICO'),
(419, 10, 'MANAURE BALCÓN DEL CESAR'),
(420, 10, 'PAILITAS'),
(421, 10, 'PELAYA'),
(422, 10, 'PUEBLO BELLO'),
(423, 10, 'RÍO DE ORO'),
(424, 10, 'LA PAZ'),
(425, 10, 'SAN ALBERTO'),
(426, 10, 'SAN DIEGO'),
(427, 10, 'SAN MARTÍN'),
(428, 10, 'TAMALAMEQUE'),
(429, 11, 'MONTERÍA'),
(430, 11, 'AYAPEL'),
(431, 11, 'BUENAVISTA'),
(432, 11, 'CANALETE'),
(433, 11, 'CERETÉ'),
(434, 11, 'CHIMÁ'),
(435, 11, 'CHINÚ'),
(436, 11, 'CIÉNAGA DE ORO'),
(437, 11, 'COTORRA'),
(438, 11, 'LA APARTADA'),
(439, 11, 'LORICA'),
(440, 11, 'LOS CÓRDOBAS'),
(441, 11, 'MOMIL'),
(442, 11, 'MONTELÍBANO'),
(443, 11, 'MOÑITOS'),
(444, 11, 'PLANETA RICA'),
(445, 11, 'PUEBLO NUEVO'),
(446, 11, 'PUERTO ESCONDIDO'),
(447, 11, 'PUERTO LIBERTADOR'),
(448, 11, 'PURÍSIMA DE LA CONCEPCIÓN'),
(449, 11, 'SAHAGÚN'),
(450, 11, 'SAN ANDRÉS DE SOTAVENTO'),
(451, 11, 'SAN ANTERO'),
(452, 11, 'SAN BERNARDO DEL VIENTO'),
(453, 11, 'SAN CARLOS'),
(454, 11, 'SAN JOSÉ DE URÉ'),
(455, 11, 'SAN PELAYO'),
(456, 11, 'TIERRALTA'),
(457, 11, 'TUCHÍN'),
(458, 11, 'VALENCIA'),
(459, 12, 'AGUA DE DIOS'),
(460, 12, 'ALBÁN'),
(461, 12, 'ANAPOIMA'),
(462, 12, 'ANOLAIMA'),
(463, 12, 'ARBELÁEZ'),
(464, 12, 'BELTRÁN'),
(465, 12, 'BITUIMA'),
(466, 12, 'BOJACÁ'),
(467, 12, 'CABRERA'),
(468, 12, 'CACHIPAY'),
(469, 12, 'CAJICÁ'),
(470, 12, 'CAPARRAPÍ'),
(471, 12, 'CÁQUEZA'),
(472, 12, 'CARMEN DE CARUPA'),
(473, 12, 'CHAGUANÍ'),
(474, 12, 'CHÍA'),
(475, 12, 'CHIPAQUE'),
(476, 12, 'CHOACHÍ'),
(477, 12, 'CHOCONTÁ'),
(478, 12, 'COGUA'),
(479, 12, 'COTA'),
(480, 12, 'CUCUNUBÁ'),
(481, 12, 'EL COLEGIO'),
(482, 12, 'EL PEÑÓN'),
(483, 12, 'EL ROSAL'),
(484, 12, 'FACATATIVÁ'),
(485, 12, 'FÓMEQUE'),
(486, 12, 'FOSCA'),
(487, 12, 'FUNZA'),
(488, 12, 'FÚQUENE'),
(489, 12, 'FUSAGASUGÁ'),
(490, 12, 'GACHALÁ'),
(491, 12, 'GACHANCIPÁ'),
(492, 12, 'GACHETÁ'),
(493, 12, 'GAMA'),
(494, 12, 'GIRARDOT'),
(495, 12, 'GRANADA'),
(496, 12, 'GUACHETÁ'),
(497, 12, 'GUADUAS'),
(498, 12, 'GUASCA'),
(499, 12, 'GUATAQUÍ'),
(500, 12, 'GUATAVITA'),
(501, 12, 'GUAYABAL DE SÍQUIMA'),
(502, 12, 'GUAYABETAL'),
(503, 12, 'GUTIÉRREZ'),
(504, 12, 'JERUSALÉN'),
(505, 12, 'JUNÍN'),
(506, 12, 'LA CALERA'),
(507, 12, 'LA MESA'),
(508, 12, 'LA PALMA'),
(509, 12, 'LA PEÑA'),
(510, 12, 'LA VEGA'),
(511, 12, 'LENGUAZAQUE'),
(512, 12, 'MACHETÁ'),
(513, 12, 'MADRID'),
(514, 12, 'MANTA'),
(515, 12, 'MEDINA'),
(516, 12, 'MOSQUERA'),
(517, 12, '18'),
(518, 12, 'NEMOCÓN'),
(519, 12, 'NILO'),
(520, 12, 'NIMAIMA'),
(521, 12, 'NOCAIMA'),
(522, 12, 'VENECIA'),
(523, 12, 'PACHO'),
(524, 12, 'PAIME'),
(525, 12, 'PANDI'),
(526, 12, 'PARATEBUENO'),
(527, 12, 'PASCA'),
(528, 12, 'PUERTO SALGAR'),
(529, 12, 'PULÍ'),
(530, 12, 'QUEBRADANEGRA'),
(531, 12, 'QUETAME'),
(532, 12, 'QUIPILE'),
(533, 12, 'APULO'),
(534, 12, 'RICAURTE'),
(535, 12, 'SAN ANTONIO DEL TEQUENDAMA'),
(536, 12, 'SAN BERNARDO'),
(537, 12, 'SAN CAYETANO'),
(538, 12, 'SAN FRANCISCO'),
(539, 12, 'SAN JUAN DE RIOSECO'),
(540, 12, 'SASAIMA'),
(541, 12, 'SESQUILÉ'),
(542, 12, 'SIBATÉ'),
(543, 12, 'SILVANIA'),
(544, 12, 'SIMIJACA'),
(545, 12, 'SOACHA'),
(546, 12, 'SOPÓ'),
(547, 12, 'SUBACHOQUE'),
(548, 12, 'SUESCA'),
(549, 12, 'SUPATÁ'),
(550, 12, 'SUSA'),
(551, 12, 'SUTATAUSA'),
(552, 12, 'TABIO'),
(553, 12, 'TAUSA'),
(554, 12, 'TENA'),
(555, 12, 'TENJO'),
(556, 12, 'TIBACUY'),
(557, 12, 'TIBIRITA'),
(558, 12, 'TOCAIMA'),
(559, 12, 'TOCANCIPÁ'),
(560, 12, 'TOPAIPÍ'),
(561, 12, 'UBALÁ'),
(562, 12, 'UBAQUE'),
(563, 12, 'VILLA DE SAN DIEGO DE UBATÉ'),
(564, 12, 'UNE'),
(565, 12, 'ÚTICA'),
(566, 12, 'VERGARA'),
(567, 12, 'VIANÍ'),
(568, 12, 'VILLAGÓMEZ'),
(569, 12, 'VILLAPINZÓN'),
(570, 12, 'VILLETA'),
(571, 12, 'VIOTÁ'),
(572, 12, 'YACOPÍ'),
(573, 12, 'ZIPACÓN'),
(574, 12, 'ZIPAQUIRÁ'),
(575, 13, 'QUIBDÓ'),
(576, 13, 'ACANDÍ'),
(577, 13, 'ALTO BAUDÓ'),
(578, 13, 'ATRATO'),
(579, 13, 'BAGADÓ'),
(580, 13, 'BAHÍA SOLANO'),
(581, 13, 'BAJO BAUDÓ'),
(582, 13, 'BOJAYÁ'),
(583, 13, 'EL CANTÓN DEL SAN PABLO'),
(584, 13, 'CARMEN DEL DARIÉN'),
(585, 13, 'CÉRTEGUI'),
(586, 13, 'CONDOTO'),
(587, 13, 'EL CARMEN DE ATRATO'),
(588, 13, 'EL LITORAL DEL SAN JUAN'),
(589, 13, 'ISTMINA'),
(590, 13, 'JURADÓ'),
(591, 13, 'LLORÓ'),
(592, 13, 'MEDIO ATRATO'),
(593, 13, 'MEDIO BAUDÓ'),
(594, 13, 'MEDIO SAN JUAN'),
(595, 13, 'NÓVITA'),
(596, 13, 'NUQUÍ'),
(597, 13, 'RÍO IRÓ'),
(598, 13, 'RÍO QUITO'),
(599, 13, 'RIOSUCIO'),
(600, 13, 'SAN JOSÉ DEL PALMAR'),
(601, 13, 'SIPÍ'),
(602, 13, 'TADÓ'),
(603, 13, 'UNGUÍA'),
(604, 13, 'UNIÓN PANAMERICANA'),
(605, 14, 'NEIVA'),
(606, 14, 'ACEVEDO'),
(607, 14, 'AGRADO'),
(608, 14, 'AIPE'),
(609, 14, 'ALGECIRAS'),
(610, 14, 'ALTAMIRA'),
(611, 14, 'BARAYA'),
(612, 14, 'CAMPOALEGRE'),
(613, 14, 'COLOMBIA'),
(614, 14, 'ELÍAS'),
(615, 14, 'GARZÓN'),
(616, 14, 'GIGANTE'),
(617, 14, 'GUADALUPE'),
(618, 14, 'HOBO'),
(619, 14, 'ÍQUIRA'),
(620, 14, 'ISNOS'),
(621, 14, 'LA ARGENTINA'),
(622, 14, 'LA PLATA'),
(623, 14, 'NÁTAGA'),
(624, 14, 'OPORAPA'),
(625, 14, 'PAICOL'),
(626, 14, 'PALERMO'),
(627, 14, 'PALESTINA'),
(628, 14, 'PITAL'),
(629, 14, 'PITALITO'),
(630, 14, 'RIVERA'),
(631, 14, 'SALADOBLANCO'),
(632, 14, 'SAN AGUSTÍN'),
(633, 14, 'SANTA MARÍA'),
(634, 14, 'SUAZA'),
(635, 14, 'TARQUI'),
(636, 14, 'TESALIA'),
(637, 14, 'TELLO'),
(638, 14, 'TERUEL'),
(639, 14, 'TIMANÁ'),
(640, 14, 'VILLAVIEJA'),
(641, 14, 'YAGUARÁ'),
(642, 15, 'RIOHACHA'),
(643, 15, 'ALBANIA'),
(644, 15, 'BARRANCAS'),
(645, 15, 'DIBULLA'),
(646, 15, 'DISTRACCIÓN'),
(647, 15, 'EL MOLINO'),
(648, 15, 'FONSECA'),
(649, 15, 'HATONUEVO'),
(650, 15, 'LA JAGUA DEL PILAR'),
(651, 15, 'MAICAO'),
(652, 15, 'MANAURE'),
(653, 15, 'SAN JUAN DEL CESAR'),
(654, 15, 'URIBIA'),
(655, 15, 'URUMITA'),
(656, 15, 'VILLANUEVA'),
(657, 16, 'SANTA MARTA'),
(658, 16, 'ALGARROBO'),
(659, 16, 'ARACATACA'),
(660, 16, 'ARIGUANÍ'),
(661, 16, 'CERRO DE SAN ANTONIO'),
(662, 16, 'CHIVOLO'),
(663, 16, 'CIÉNAGA'),
(664, 16, 'CONCORDIA'),
(665, 16, 'EL BANCO'),
(666, 16, 'EL PIÑÓN'),
(667, 16, 'EL RETÉN'),
(668, 16, 'FUNDACIÓN'),
(669, 16, 'GUAMAL'),
(670, 16, 'NUEVA GRANADA'),
(671, 16, 'PEDRAZA'),
(672, 16, 'PIJIÑO DEL CARMEN'),
(673, 16, 'PIVIJAY'),
(674, 16, 'PLATO'),
(675, 16, 'PUEBLOVIEJO'),
(676, 16, 'REMOLINO'),
(677, 16, 'SABANAS DE SAN ÁNGEL'),
(678, 16, 'SALAMINA'),
(679, 16, 'SAN SEBASTIÁN DE BUENAVISTA'),
(680, 16, 'SAN ZENÓN'),
(681, 16, 'SANTA ANA'),
(682, 16, 'SANTA BÁRBARA DE PINTO'),
(683, 16, 'SITIONUEVO'),
(684, 16, 'TENERIFE'),
(685, 16, 'ZAPAYÁN'),
(686, 16, 'ZONA BANANERA'),
(687, 17, 'VILLAVICENCIO'),
(688, 17, 'ACACÍAS'),
(689, 17, 'BARRANCA DE UPÍA'),
(690, 17, 'CABUYARO'),
(691, 17, 'CASTILLA LA NUEVA'),
(692, 17, 'SAN LUIS DE CUBARRAL'),
(693, 17, 'CUMARAL'),
(694, 17, 'EL CALVARIO'),
(695, 17, 'EL CASTILLO'),
(696, 17, 'EL DORADO'),
(697, 17, 'FUENTE DE ORO'),
(698, 17, 'GRANADA'),
(699, 17, 'GUAMAL'),
(700, 17, 'MAPIRIPÁN'),
(701, 17, 'MESETAS'),
(702, 17, 'LA MACARENA'),
(703, 17, 'URIBE'),
(704, 17, 'LEJANÍAS'),
(705, 17, 'PUERTO CONCORDIA'),
(706, 17, 'PUERTO GAITÁN'),
(707, 17, 'PUERTO LÓPEZ'),
(708, 17, 'PUERTO LLERAS'),
(709, 17, 'PUERTO RICO'),
(710, 17, 'RESTREPO'),
(711, 17, 'SAN CARLOS DE GUAROA'),
(712, 17, 'SAN JUAN DE ARAMA'),
(713, 17, 'SAN JUANITO'),
(714, 17, 'SAN MARTÍN'),
(715, 17, 'VISTAHERMOSA'),
(716, 18, 'PASTO'),
(717, 18, 'ALBÁN'),
(718, 18, 'ALDANA'),
(719, 18, 'ANCUYÁ'),
(720, 18, 'ARBOLEDA'),
(721, 18, 'BARBACOAS'),
(722, 18, 'BELÉN'),
(723, 18, 'BUESACO'),
(724, 18, 'COLÓN'),
(725, 18, 'CONSACÁ'),
(726, 18, 'CONTADERO'),
(727, 18, 'CÓRDOBA'),
(728, 18, 'CUASPÚD'),
(729, 18, 'CUMBAL'),
(730, 18, 'CUMBITARA'),
(731, 18, 'CHACHAGÜÍ'),
(732, 18, 'EL CHARCO'),
(733, 18, 'EL PEÑOL'),
(734, 18, 'EL ROSARIO'),
(735, 18, 'EL TABLÓN DE GÓMEZ'),
(736, 18, 'EL TAMBO'),
(737, 18, 'FUNES'),
(738, 18, 'GUACHUCAL'),
(739, 18, 'GUAITARILLA'),
(740, 18, 'GUALMATÁN'),
(741, 18, 'ILES'),
(742, 18, 'IMUÉS'),
(743, 18, 'IPIALES'),
(744, 18, 'LA CRUZ'),
(745, 18, 'LA FLORIDA'),
(746, 18, 'LA LLANADA'),
(747, 18, 'LA TOLA'),
(748, 18, 'LA UNIÓN'),
(749, 18, 'LEIVA'),
(750, 18, 'LINARES'),
(751, 18, 'LOS ANDES'),
(752, 18, 'MAGÜÍ'),
(753, 18, 'MALLAMA'),
(754, 18, 'MOSQUERA'),
(755, 18, '18'),
(756, 18, 'OLAYA HERRERA'),
(757, 18, 'OSPINA'),
(758, 18, 'FRANCISCO PIZARRO'),
(759, 18, 'POLICARPA'),
(760, 18, 'POTOSÍ'),
(761, 18, 'PROVIDENCIA'),
(762, 18, 'PUERRES'),
(763, 18, 'PUPIALES'),
(764, 18, 'RICAURTE'),
(765, 18, 'ROBERTO PAYÁN'),
(766, 18, 'SAMANIEGO'),
(767, 18, 'SANDONÁ'),
(768, 18, 'SAN BERNARDO'),
(769, 18, 'SAN LORENZO'),
(770, 18, 'SAN PABLO'),
(771, 18, 'SAN PEDRO DE CARTAGO'),
(772, 18, 'SANTA BÁRBARA'),
(773, 18, 'SANTACRUZ'),
(774, 18, 'SAPUYES'),
(775, 18, 'TAMINANGO'),
(776, 18, 'TANGUA'),
(777, 18, 'SAN ANDRÉS DE TUMACO'),
(778, 18, 'TÚQUERRES'),
(779, 18, 'YACUANQUER'),
(780, 19, 'CÚCUTA'),
(781, 19, 'ÁBREGO'),
(782, 19, 'ARBOLEDAS'),
(783, 19, 'BOCHALEMA'),
(784, 19, 'BUCARASICA'),
(785, 19, 'CÁCOTA'),
(786, 19, 'CÁCHIRA'),
(787, 19, 'CHINÁCOTA'),
(788, 19, 'CHITAGÁ'),
(789, 19, 'CONVENCIÓN'),
(790, 19, 'CUCUTILLA'),
(791, 19, 'DURANIA'),
(792, 19, 'EL CARMEN'),
(793, 19, 'EL TARRA'),
(794, 19, 'EL ZULIA'),
(795, 19, 'GRAMALOTE'),
(796, 19, 'HACARÍ'),
(797, 19, 'HERRÁN'),
(798, 19, 'LABATECA'),
(799, 19, 'LA ESPERANZA'),
(800, 19, 'LA PLAYA'),
(801, 19, 'LOS PATIOS'),
(802, 19, 'LOURDES'),
(803, 19, 'MUTISCUA'),
(804, 19, 'OCAÑA'),
(805, 19, 'PAMPLONA'),
(806, 19, 'PAMPLONITA'),
(807, 19, 'PUERTO SANTANDER'),
(808, 19, 'RAGONVALIA'),
(809, 19, 'SALAZAR'),
(810, 19, 'SAN CALIXTO'),
(811, 19, 'SAN CAYETANO'),
(812, 19, 'SANTIAGO'),
(813, 19, 'SARDINATA'),
(814, 19, 'SILOS'),
(815, 19, 'TEORAMA'),
(816, 19, 'TIBÚ'),
(817, 19, 'TOLEDO'),
(818, 19, 'VILLA CARO'),
(819, 19, 'VILLA DEL ROSARIO'),
(820, 20, 'ARMENIA'),
(821, 20, 'BUENAVISTA'),
(822, 20, 'CALARCÁ'),
(823, 20, 'CIRCASIA'),
(824, 20, 'CÓRDOBA'),
(825, 20, 'FILANDIA'),
(826, 20, 'GÉNOVA'),
(827, 20, 'LA TEBAIDA'),
(828, 20, 'MONTENEGRO'),
(829, 20, 'PIJAO'),
(830, 20, 'QUIMBAYA'),
(831, 20, 'SALENTO'),
(832, 21, 'PEREIRA'),
(833, 21, 'APÍA'),
(834, 21, 'BALBOA'),
(835, 21, 'BELÉN DE UMBRÍA'),
(836, 21, 'DOSQUEBRADAS'),
(837, 21, 'GUÁTICA'),
(838, 21, 'LA CELIA'),
(839, 21, 'LA VIRGINIA'),
(840, 21, 'MARSELLA'),
(841, 21, 'MISTRATÓ'),
(842, 21, 'PUEBLO RICO'),
(843, 21, 'QUINCHÍA'),
(844, 21, 'SANTA ROSA DE CABAL'),
(845, 21, 'SANTUARIO'),
(846, 22, 'BUCARAMANGA'),
(847, 22, 'AGUADA'),
(848, 22, 'ALBANIA'),
(849, 22, 'ARATOCA'),
(850, 22, 'BARBOSA'),
(851, 22, 'BARICHARA'),
(852, 22, 'BARRANCABERMEJA'),
(853, 22, 'BETULIA'),
(854, 22, 'BOLÍVAR'),
(855, 22, 'CABRERA'),
(856, 22, 'CALIFORNIA'),
(857, 22, 'CAPITANEJO'),
(858, 22, 'CARCASÍ'),
(859, 22, 'CEPITÁ'),
(860, 22, 'CERRITO'),
(861, 22, 'CHARALÁ'),
(862, 22, 'CHARTA'),
(863, 22, 'CHIMA'),
(864, 22, 'CHIPATÁ'),
(865, 22, 'CIMITARRA'),
(866, 22, 'CONCEPCIÓN'),
(867, 22, 'CONFINES'),
(868, 22, 'CONTRATACIÓN'),
(869, 22, 'COROMORO'),
(870, 22, 'CURITÍ'),
(871, 22, 'EL CARMEN DE CHUCURÍ'),
(872, 22, 'EL GUACAMAYO'),
(873, 22, 'EL PEÑÓN'),
(874, 22, 'EL PLAYÓN'),
(875, 22, 'ENCINO'),
(876, 22, 'ENCISO'),
(877, 22, 'FLORIÁN'),
(878, 22, 'FLORIDABLANCA'),
(879, 22, 'GALÁN'),
(880, 22, 'GÁMBITA'),
(881, 22, 'GIRÓN'),
(882, 22, 'GUACA'),
(883, 22, 'GUADALUPE'),
(884, 22, 'GUAPOTÁ'),
(885, 22, 'GUAVATÁ'),
(886, 22, 'GÜEPSA'),
(887, 22, 'HATO'),
(888, 22, 'JESÚS MARÍA'),
(889, 22, 'JORDÁN'),
(890, 22, 'LA BELLEZA'),
(891, 22, 'LANDÁZURI'),
(892, 22, 'LA PAZ'),
(893, 22, 'LEBRIJA'),
(894, 22, 'LOS SANTOS'),
(895, 22, 'MACARAVITA'),
(896, 22, 'MÁLAGA'),
(897, 22, 'MATANZA'),
(898, 22, 'MOGOTES'),
(899, 22, 'MOLAGAVITA'),
(900, 22, 'OCAMONTE'),
(901, 22, 'OIBA'),
(902, 22, 'ONZAGA'),
(903, 22, 'PALMAR'),
(904, 22, 'PALMAS DEL SOCORRO'),
(905, 22, 'PÁRAMO'),
(906, 22, 'PIEDECUESTA'),
(907, 22, 'PINCHOTE'),
(908, 22, 'PUENTE NACIONAL'),
(909, 22, 'PUERTO PARRA'),
(910, 22, 'PUERTO WILCHES'),
(911, 22, 'RIONEGRO'),
(912, 22, 'SABANA DE TORRES'),
(913, 22, 'SAN ANDRÉS'),
(914, 22, 'SAN BENITO'),
(915, 22, 'SAN GIL'),
(916, 22, 'SAN JOAQUÍN'),
(917, 22, 'SAN JOSÉ DE MIRANDA'),
(918, 22, 'SAN MIGUEL'),
(919, 22, 'SAN VICENTE DE CHUCURÍ'),
(920, 22, 'SANTA BÁRBARA'),
(921, 22, 'SANTA HELENA DEL OPÓN'),
(922, 22, 'SIMACOTA'),
(923, 22, 'SOCORRO'),
(924, 22, 'SUAITA'),
(925, 22, 'SUCRE'),
(926, 22, 'SURATÁ'),
(927, 22, 'TONA'),
(928, 22, 'VALLE DE SAN JOSÉ'),
(929, 22, 'VÉLEZ'),
(930, 22, 'VETAS'),
(931, 22, 'VILLANUEVA'),
(932, 22, 'ZAPATOCA'),
(933, 23, 'SINCELEJO'),
(934, 23, 'BUENAVISTA'),
(935, 23, 'CAIMITO'),
(936, 23, 'COLOSO'),
(937, 23, 'COROZAL'),
(938, 23, 'COVEÑAS'),
(939, 23, 'CHALÁN'),
(940, 23, 'EL ROBLE'),
(941, 23, 'GALERAS'),
(942, 23, 'GUARANDA'),
(943, 23, 'LA UNIÓN'),
(944, 23, 'LOS PALMITOS'),
(945, 23, 'MAJAGUAL'),
(946, 23, 'MORROA'),
(947, 23, 'OVEJAS'),
(948, 23, 'PALMITO'),
(949, 23, 'SAMPUÉS'),
(950, 23, 'SAN BENITO ABAD'),
(951, 23, 'SAN JUAN DE BETULIA'),
(952, 23, 'SAN MARCOS'),
(953, 23, 'SAN ONOFRE'),
(954, 23, 'SAN PEDRO'),
(955, 23, 'SAN LUIS DE SINCÉ'),
(956, 23, 'SUCRE'),
(957, 23, 'SANTIAGO DE TOLÚ'),
(958, 23, 'TOLÚ VIEJO'),
(959, 24, 'IBAGUÉ'),
(960, 24, 'ALPUJARRA'),
(961, 24, 'ALVARADO'),
(962, 24, 'AMBALEMA'),
(963, 24, 'ANZOÁTEGUI'),
(964, 24, 'ARMERO GUAYABAL'),
(965, 24, 'ATACO'),
(966, 24, 'CAJAMARCA'),
(967, 24, 'CARMEN DE APICALÁ'),
(968, 24, 'CASABIANCA'),
(969, 24, 'CHAPARRAL'),
(970, 24, 'COELLO'),
(971, 24, 'COYAIMA'),
(972, 24, 'CUNDAY'),
(973, 24, 'DOLORES'),
(974, 24, 'ESPINAL'),
(975, 24, 'FALAN'),
(976, 24, 'FLANDES'),
(977, 24, 'FRESNO'),
(978, 24, 'GUAMO'),
(979, 24, 'HERVEO'),
(980, 24, 'HONDA'),
(981, 24, 'ICONONZO'),
(982, 24, 'LÉRIDA'),
(983, 24, 'LÍBANO'),
(984, 24, 'SAN SEBASTIÁN DE MARIQUITA'),
(985, 24, 'MELGAR'),
(986, 24, 'MURILLO'),
(987, 24, 'NATAGAIMA'),
(988, 24, 'ORTEGA'),
(989, 24, 'PALOCABILDO'),
(990, 24, 'PIEDRAS'),
(991, 24, 'PLANADAS'),
(992, 24, 'PRADO'),
(993, 24, 'PURIFICACIÓN'),
(994, 24, 'RIOBLANCO'),
(995, 24, 'RONCESVALLES'),
(996, 24, 'ROVIRA'),
(997, 24, 'SALDAÑA'),
(998, 24, 'SAN ANTONIO'),
(999, 24, 'SAN LUIS'),
(1000, 24, 'SANTA ISABEL'),
(1001, 24, 'SUÁREZ'),
(1002, 24, 'VALLE DE SAN JUAN'),
(1003, 24, 'VENADILLO'),
(1004, 24, 'VILLAHERMOSA'),
(1005, 24, 'VILLARRICA'),
(1006, 25, 'CALI'),
(1007, 25, 'ALCALÁ'),
(1008, 25, 'ANDALUCÍA'),
(1009, 25, 'ANSERMANUEVO'),
(1010, 25, 'ARGELIA'),
(1011, 25, 'BOLÍVAR,'),
(1012, 25, 'BUENAVENTURA'),
(1013, 25, 'GUADALAJARA DE BUGA'),
(1014, 25, 'BUGALAGRANDE'),
(1015, 25, 'CAICEDONIA'),
(1016, 25, 'CALIMA'),
(1017, 25, 'CANDELARIA'),
(1018, 25, 'CARTAGO'),
(1019, 25, 'DAGUA'),
(1020, 25, 'EL ÁGUILA'),
(1021, 25, 'EL CAIRO'),
(1022, 25, 'EL CERRITO'),
(1023, 25, 'EL DOVIO'),
(1024, 25, 'FLORIDA'),
(1025, 25, 'GINEBRA'),
(1026, 25, 'GUACARÍ'),
(1027, 25, 'JAMUNDÍ'),
(1028, 25, 'LA CUMBRE'),
(1029, 25, 'LA UNIÓN'),
(1030, 25, 'LA VICTORIA'),
(1031, 25, 'OBANDO'),
(1032, 25, 'PALMIRA'),
(1033, 25, 'PRADERA'),
(1034, 25, 'RESTREPO'),
(1035, 25, 'RIOFRÍO'),
(1036, 25, 'ROLDANILLO'),
(1037, 25, 'SAN PEDRO'),
(1038, 25, 'SEVILLA'),
(1039, 25, 'TORO'),
(1040, 25, 'TRUJILLO'),
(1041, 25, 'TULUÁ'),
(1042, 25, 'ULLOA'),
(1043, 25, 'VERSALLES'),
(1044, 25, 'VIJES'),
(1045, 25, 'YOTOCO'),
(1046, 25, 'YUMBO'),
(1047, 25, 'ZARZAL'),
(1048, 26, 'ARAUCA'),
(1049, 26, 'ARAUQUITA'),
(1050, 26, 'CRAVO NORTE'),
(1051, 26, 'FORTUL'),
(1052, 26, 'PUERTO RONDÓN'),
(1053, 26, 'SARAVENA'),
(1054, 26, 'TAME'),
(1055, 27, 'YOPAL'),
(1056, 27, 'AGUAZUL'),
(1057, 27, 'CHÁMEZA'),
(1058, 27, 'HATO COROZAL'),
(1059, 27, 'LA SALINA'),
(1060, 27, 'MANÍ'),
(1061, 27, 'MONTERREY'),
(1062, 27, 'NUNCHÍA'),
(1063, 27, 'OROCUÉ'),
(1064, 27, 'PAZ DE ARIPORO'),
(1065, 27, 'PORE'),
(1066, 27, 'RECETOR'),
(1067, 27, 'SABANALARGA'),
(1068, 27, 'SÁCAMA'),
(1069, 27, 'SAN LUIS DE PALENQUE'),
(1070, 27, 'TÁMARA'),
(1071, 27, 'TAURAMENA'),
(1072, 27, 'TRINIDAD'),
(1073, 27, 'VILLANUEVA'),
(1074, 28, 'MOCOA'),
(1075, 28, 'COLÓN'),
(1076, 28, 'ORITO'),
(1077, 28, 'PUERTO ASÍS'),
(1078, 28, 'PUERTO CAICEDO'),
(1079, 28, 'PUERTO GUZMÁN'),
(1080, 28, 'PUERTO LEGUÍZAMO'),
(1081, 28, 'SIBUNDOY'),
(1082, 28, 'SAN FRANCISCO'),
(1083, 28, 'SAN MIGUEL'),
(1084, 28, 'SANTIAGO'),
(1085, 28, 'VALLE DEL GUAMUEZ'),
(1086, 28, 'VILLAGARZÓN'),
(1087, 29, 'SAN ANDRÉS'),
(1088, 29, 'PROVIDENCIA'),
(1089, 30, 'LETICIA'),
(1090, 30, 'EL ENCANTO'),
(1091, 30, 'LA CHORRERA'),
(1092, 30, 'LA PEDRERA'),
(1093, 30, 'LA VICTORIA'),
(1094, 30, 'MIRITÍ-PARANÁ'),
(1095, 30, 'PUERTO ALEGRÍA'),
(1096, 30, 'PUERTO ARICA'),
(1097, 30, 'PUERTO NARIÑO'),
(1098, 30, 'PUERTO SANTANDER'),
(1099, 30, 'TARAPACÁ'),
(1100, 31, 'INÍRIDA'),
(1101, 31, 'BARRANCO MINAS'),
(1102, 31, 'MAPIRIPANA'),
(1103, 31, 'SAN FELIPE'),
(1104, 31, 'PUERTO COLOMBIA'),
(1105, 31, 'LA GUADALUPE'),
(1106, 31, 'CACAHUAL'),
(1107, 31, 'PANA PANA'),
(1108, 31, 'MORICHAL'),
(1109, 32, 'SAN JOSÉ DEL GUAVIARE'),
(1110, 32, 'CALAMAR'),
(1111, 32, 'EL RETORNO'),
(1112, 32, 'MIRAFLORES'),
(1113, 33, 'MITÚ'),
(1114, 33, 'CARURÚ'),
(1115, 33, 'PACOA'),
(1116, 33, 'TARAIRA'),
(1117, 33, 'PAPUNAUA'),
(1118, 33, 'YAVARATÉ'),
(1119, 34, 'PUERTO CARREÑO'),
(1120, 34, 'LA PRIMAVERA'),
(1121, 34, 'SANTA ROSALÍA'),
(1122, 34, 'CUMARIBO');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`idLoc`) REFERENCES `localizacion` (`idLoc`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_ibfk_1` FOREIGN KEY (`idLoc`) REFERENCES `localizacion` (`idLoc`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `localizacion`
--
ALTER TABLE `localizacion`
  ADD CONSTRAINT `localizacion_ibfk_1` FOREIGN KEY (`idDepartamento`) REFERENCES `departamentos` (`idDepartamento`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
