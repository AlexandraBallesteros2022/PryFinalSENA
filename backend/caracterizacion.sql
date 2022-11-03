-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 03-11-2022 a las 01:14:53
-- Versión del servidor: 8.0.27
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
-- Estructura de tabla para la tabla `empleado`
--

DROP TABLE IF EXISTS `empleado`;
CREATE TABLE IF NOT EXISTS `empleado` (
  `idDocente` int NOT NULL AUTO_INCREMENT,
  `nombreCompleto` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nombreUsuario` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `correoE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `contrasenia` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `codigoDocente` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`idDocente`),
  UNIQUE KEY `codigoDocente` (`codigoDocente`),
  UNIQUE KEY `idDocente` (`idDocente`),
  UNIQUE KEY `nombreUsuario` (`nombreUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`idDocente`, `nombreCompleto`, `nombreUsuario`, `correoE`, `contrasenia`, `codigoDocente`) VALUES
(11, 'David hola', 'hola', 'hola@yo.me', '$2b$08$m2v5/dzAYLzT21uHBclAMuyMTwHCv89Bxi8emmC9Zye1pUZT5wDwe', '1564sadfasd'),
(12, 'david t', 'deañg', 'hola@yo.me', '123456', '564asdfsae'),
(13, 'david caro', 'd4vid', 'estoy@yo.me', '123456', '546adfaegj'),
(14, 'sfdadf', 'sdafas', 'dsafsdf', '123456', 'sadfasd'),
(15, 'sdagagfj', 'tutydhbsre', 'sgjhdgfsdf', '123456', 'hjdw'),
(16, 'hmkghm', 'dfgdsfgdf', 'djfuikuy', '123456', 'sgdfgadf'),
(17, 'gdsfgrtjhtyj', 'dfjstrywet', 'gfgajhtrjh', '123456', 'aergferwyg'),
(18, 'sgdfgqaeterwtfdsgsder', 'hsdfgqetweda', 'jheyujetydhtswa', '123456', 'dgfjhtuikhwsgreq'),
(19, 'gfjhdfgwaer', 'shsertwedsgsd', 'sdhsdgf', '123456', 'sfdgsg'),
(20, 'sdfgsdf', 'fdhwt5qrwead', 'asfdwegteyh', '123456', 'hjfgjgbn'),
(21, 'Jennifer', 'Jenni05', 'hola@yo.me', '$2b$08$f5Ca7ivtkJizDprn/e0SN.vENEWXU/hsawIINdJTdH7Lu/vKe3dta', '51asdfas'),
(22, 'hugo tabares', 'huguito', 'hola@yo.me', '$2b$08$HN/xB5MX6ijiHEe6OfRlx.JbyVCmkzLkaWnBfNfAFnjk6HM2G1z4u', '123456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

DROP TABLE IF EXISTS `estudiantes`;
CREATE TABLE IF NOT EXISTS `estudiantes` (
  `idEstudiante` int NOT NULL AUTO_INCREMENT,
  `documento` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nombreCompleto` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `correoE` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `celular` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ciudad` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `departamento` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `barrio` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `direccion` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `estratoSocioEconomico` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `conviveCon` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ingresos` int DEFAULT NULL,
  `quienCubrePasajes` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `profesionPadre` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `profesionMadre` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tieneVehiculoPropio` varchar(2) DEFAULT NULL,
  `marcaVehiculo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tipoVehiculo` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bachilleratoCulminado` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `institucionCulmino` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `deportePractica` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `estudiosSuperiores` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`idEstudiante`),
  UNIQUE KEY `Documento` (`documento`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`idEstudiante`, `documento`, `nombreCompleto`, `correoE`, `celular`, `ciudad`, `departamento`, `barrio`, `direccion`, `estratoSocioEconomico`, `conviveCon`, `ingresos`, `quienCubrePasajes`, `profesionPadre`, `profesionMadre`, `tieneVehiculoPropio`, `marcaVehiculo`, `tipoVehiculo`, `bachilleratoCulminado`, `institucionCulmino`, `deportePractica`, `estudiosSuperiores`) VALUES
(1, 'vcstgcvcx', 'agaqert', 'etyjt', 'sdgsdf', 'ghs', 'thewart', 'dsrgtewr', 'shrth', '3', 'xczvxcv', 1851564, 'dssdfgsdf', 'cxvzv', 'xcvxzcv', 'si', 'xczvraewg', 'jghjfg', 'asdf', 'jdfhw', 'dfger', 'gdsfgsd'),
(4, 'gfghshtyj', 'fsdaf', 'tjjty', 'jhgfywer', 'rtghdf', 'jyjyrikhgj', 'sfgsdfg', 'yujtyhfd', '2', 'gdsjeytjsdfg', 5453123, 'gdsfgdsfg', 'gdgjyt', 'yoluyiklhg', 'si', 'swyqert', 'dfgwer', 'ghsdfuykjtyj', 'retdsgsd', 'wtrgsd', 'gdsfdsgwe2wrewa'),
(5, 'cxvzxcv', 'cxvzxcv', 'cxvxzc', 'vcxzvzx', 'xcvxzcv', 'xcvxzc', 'vcxzvzx', 'cxvvzxcv', '2', 'cxzvzxcv', 556445, 'xczvzxcv', 'vcxzvxzc', 'agsdfas', '3', 'fdsafasd', 'sdfsda', 'dsfsad', 'fsdaf', 'sdafsad', 'sdafsa'),
(6, 'dag54ad', 'asdgfasdf', 'asfgasdfds', 'sdgdfg', 'sadfasd', 'dhgdfsg', 'fsdafsad', 'fsdsad', '2', 'asdfasd', NULL, 'ffasdfsadg', 'gasdgfasd', 'sdafsadfa', 'no', 'asdfadsf', 'sadgsdafgasd', 'sdafasdf', 'sdfadsaf', 'sadfsadf', 'sdafsadf'),
(7, 'hdrtjhd', 'agsdfg', 'fdh', 'gretg', 'hdtrh', 'ghdf', 'gfdgdsf', 'gdsfg', '2', 'sgsdf', NULL, 'dfgdsf', 'sdfgsdf', 'gdsfgsd', 'no', 'dsfgsdfg', 'sdfhsghd', 'fgdshdfh', 'gsdgewryjuyk', 'kyusrtsr', 'yerjutk'),
(8, 'g', 'g', 'g', 'g', 'g', 'g', 'g', 'g', 'g', 'g', NULL, 'g', 'g', 'g', 'g', 'g', 'g', 'g', 'g', 'g', 'g'),
(16, 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', NULL, 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'),
(17, 'ad', 'ad', 'df', 'ad', 'q', 'q', 'q', 'q', 'q', 'q', NULL, 'q', 'q', 'q', 'q', 'q', 'q', 'q', 'q', 'qq', 'q'),
(18, 'e', 'e', 'e', 'e', 'e', 'e', 'e', 'e', 'e', 'e', NULL, 'e', 'e', 'e', 'e', 'e', 'e', 'e', 'e', 'e', 'e'),
(19, 'j', 'jk', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', NULL, 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j', 'j'),
(20, '123456789', 'juan', 'hola@yo.me', '135254656', 'medellin', 'antioquia', 'belen', 'cra 547 a -152', '2', 'padres', 100000, 'padres', 'bachiller', 'ama de casa', 'no', 'mazda', 'carro', 'si', 'col mayor', 'no', 'no');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
