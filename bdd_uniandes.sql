-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-03-2020 a las 00:46:58
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdd_uniandes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estudiante`
--

CREATE TABLE `tbl_estudiante` (
  `ced_Estudiante` varchar(15) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Ape_Estudiante` varchar(80) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Nom_Estudiante` varchar(80) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Dir_Estudiante` varchar(180) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Tel_Estudiante` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Mai_Estudiante` varchar(230) COLLATE utf8mb4_spanish_ci NOT NULL,
  `ciudad` varchar(80) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_estudiante`
--

INSERT INTO `tbl_estudiante` (`ced_Estudiante`, `Ape_Estudiante`, `Nom_Estudiante`, `Dir_Estudiante`, `Tel_Estudiante`, `Mai_Estudiante`, `ciudad`) VALUES
('', '', 'MAria elena', '', '0227867', 'ass', 'Quito'),
('1122', 'asas', 'Adriel  Fernado', '', '0227867', 'ass', 'Quito'),
('12', 'qw', 'Jared Alexander', '', '', '', 'Guayaquil'),
('1221', 'qw', 'Roberto luis', '', '', '', 'Guayaquil'),
('1250145586', 'De la Cruz Bustamante', 'Jesus Antonio', 'AV.Tsafiqui', '0995380235', 'jdelacruzbustamante.com', 'Quito'),
('1713274577', 'mena', 'Segundo', 'Las palmeras', '022878495', 'samsoft21@hotmail.com', 'Santo domingo'),
('1723053987', 'Corrales Muñoz ', 'Viviana Dayana', 'Av la Lorema', '0969166597', 'vidacomuhotmail.com', 'Guayaquil'),
('230050033', 'Quimbiulco', 'Farid', 'Coop. Las playas', '0993443074', 'erk_0108@hotmail.com', 'Santo domingo'),
('2300771140', 'Vasquez Alcivar', 'Rossi Briggith', 'Los Angeles', '0991509820', 'brigg.1207cigmail.com', 'Guayaquil'),
('2350487894', 'Lara', 'Luis Angel', 'Los Rosales 4 etapa', '0984811262', 'luisangel_97@hotmail.es', 'Santo domingo');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_ciudad`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_ciudad` (
`Total` bigint(21)
,`ciudad` varchar(80)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_estudiante`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_estudiante` (
`ced_Estudiante` varchar(15)
,`Estudiante` varchar(161)
,`Dir_Estudiante` varchar(180)
,`Tel_Estudiante` varchar(20)
,`Mai_Estudiante` varchar(230)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `v_ciudad`
--
DROP TABLE IF EXISTS `v_ciudad`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ciudad`  AS  select count(`tbl_estudiante`.`ciudad`) AS `Total`,`tbl_estudiante`.`ciudad` AS `ciudad` from `tbl_estudiante` group by `tbl_estudiante`.`ciudad` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_estudiante`
--
DROP TABLE IF EXISTS `v_estudiante`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_estudiante`  AS  select `tbl_estudiante`.`ced_Estudiante` AS `ced_Estudiante`,concat(`tbl_estudiante`.`Ape_Estudiante`,' ',`tbl_estudiante`.`Nom_Estudiante`) AS `Estudiante`,`tbl_estudiante`.`Dir_Estudiante` AS `Dir_Estudiante`,`tbl_estudiante`.`Tel_Estudiante` AS `Tel_Estudiante`,`tbl_estudiante`.`Mai_Estudiante` AS `Mai_Estudiante` from `tbl_estudiante` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_estudiante`
--
ALTER TABLE `tbl_estudiante`
  ADD PRIMARY KEY (`ced_Estudiante`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
