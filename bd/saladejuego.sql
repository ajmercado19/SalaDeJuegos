-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-09-2015 a las 16:25:35
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `saladejuego`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultado`
--

CREATE TABLE IF NOT EXISTS `resultado` (
  `id` int(11) DEFAULT NULL,
  `usuario` varchar(100) NOT NULL,
  `juego` varchar(100) NOT NULL,
  `resultado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `resultado`
--

INSERT INTO `resultado` (`id`, `usuario`, `juego`, `resultado`) VALUES
(NULL, 'usuarioejemplo1', 'JuegoEjemplo1', 'resultadoEjemplo1'),
(NULL, 'usuarioejemplo2', 'JuegoEjemplo2', 'resultadoEjemplo2'),
(NULL, 'usuarioejemplo1', 'JuegoEjemplo1', 'resultadoEjemplo1'),
(NULL, 'usuarioejemplo2', 'JuegoEjemplo2', 'resultadoEjemplo2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
`id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `legajo` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `direccion` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fecha` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `mail` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `foto` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `clave` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido`, `legajo`, `direccion`, `fecha`, `mail`, `foto`, `clave`) VALUES
(3, 'maria', 'quispe', '123123', 'lalala 1320', '2015-01-01', 'quispe@ymail.com', 'quispe@ymail.com.jpg', ''),
(4, 'maria', 'quispe', '123123', 'lalala 1320', '2014-01-30', 'quispe@ymail.com', 'quispe@ymail.com.gif', 'qweqwe'),
(5, 'maria', 'quispe', '123123', 'lalala 1320', '2015-01-01', 'quispe@ymail.com', 'quispe@ymail.com.gif', 'qweqwe');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
