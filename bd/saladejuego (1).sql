-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-09-2015 a las 17:11:01
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `saladejuego`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `traerTodosLosResultados`()
    NO SQL
select * from resultado$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `traerTodosLosUsuarios`()
    NO SQL
SELECT * FROM usuario$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `validarUsuario`(IN `pnombre` INT(50), IN `pclave` INT(50))
    NO SQL
select * from usuario where correo=pnombre and clave=pclave$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultado`
--

CREATE TABLE IF NOT EXISTS `resultado` (
  `id` int(11) DEFAULT NULL,
  `usuario` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `juego` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `resultado` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `resultado`
--

INSERT INTO `resultado` (`id`, `usuario`, `juego`, `resultado`) VALUES
(NULL, 'usuarioejemplo1', 'JuegoEjemplo1', 'resultadoEjemplo1'),
(NULL, 'usuarioejemplo2', 'JuegoEjemplo2', 'resultadoEjemplo2'),
(NULL, 'usuarioNuevo', 'JuegoNuevo', 'resultadooNuevo'),
(NULL, 'usuarioNuevo', 'JuegoNuevo', 'resultadooNuevo'),
(NULL, 'usuarioNuevo', 'JuegoNuevo', 'resultadooNuevo'),
(NULL, 'usuarioNuevo', 'JuegoNuevo', 'resultadooNuevo'),
(NULL, 'usuarioNuevo', 'JuegoNuevo', 'resultadooNuevo'),
(NULL, 'usuarioNuevo', 'JuegoNuevo', 'resultadooNuevo'),
(NULL, 'usuarioNuevo', 'JuegoNuevo', 'resultadooNuevo'),
(NULL, 'usuarioNuevo', 'JuegoNuevo', 'resultadooNuevo'),
(NULL, ' octavio    ', 'JuegoNuevo', 'resultadooNuevo'),
(NULL, ' octavio    ', 'JuegoNuevo', 'resultadooNuevo'),
(NULL, ' octavio    ', 'JuegoNuevo', 'resultadooNuevo'),
(NULL, ' octavio    ', 'JuegoNuevo', 'resultadooNuevo'),
(NULL, ' octavio    ', 'JuegoNuevo', 'resultadooNuevo'),
(NULL, ' octavio    ', 'JuegoNuevo', 'resultadooNuevo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` bigint(20) unsigned NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `legajo` varchar(50) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `provincia` varchar(50) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `localidad` varchar(50) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `calle` varchar(50) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `fechaNac` varchar(50) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `colegio` varchar(50) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `clave` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `foto` varchar(50) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido`, `correo`, `legajo`, `provincia`, `localidad`, `calle`, `fechaNac`, `colegio`, `clave`, `foto`) VALUES
(1, 'octavio', 'villegas', 'octavio@admin.com.ar', NULL, NULL, NULL, NULL, NULL, NULL, '1234', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
