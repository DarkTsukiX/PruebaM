-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-06-2017 a las 19:17:15
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `id` int(10) NOT NULL,
  `titulo` varchar(50) COLLATE utf8_swedish_ci DEFAULT NULL,
  `imagen` varchar(50) COLLATE utf8_swedish_ci DEFAULT NULL,
  `descripcion` varchar(50) COLLATE utf8_swedish_ci DEFAULT NULL,
  `contenido` varchar(120) COLLATE utf8_swedish_ci DEFAULT NULL,
  `gusta` int(10) DEFAULT NULL,
  `fecha_publi` date DEFAULT NULL,
  `fecha_modi` date DEFAULT NULL,
  `autor` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`id`, `titulo`, `imagen`, `descripcion`, `contenido`, `gusta`, `fecha_publi`, `fecha_modi`, `autor`) VALUES
(1, 'Hola Mundo', 'hola.jpg', 'lorem akj kuufios sioffua aoao', 'Una vez iniciada la sesión, un usuario o un autor pueden darle me gusta a un artículo, comentar el', 5, '2017-06-02', '2017-06-06', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `id_au` int(10) NOT NULL,
  `nombre_au` varchar(50) COLLATE utf8_swedish_ci DEFAULT NULL,
  `foto_au` varchar(50) COLLATE utf8_swedish_ci DEFAULT NULL,
  `correo_au` varchar(50) COLLATE utf8_swedish_ci DEFAULT NULL,
  `contraseña_au` varchar(50) COLLATE utf8_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`id_au`, `nombre_au`, `foto_au`, `correo_au`, `contraseña_au`) VALUES
(1, 'carlos', 'carlos.jpg', 'carlun1407@gmail.com', 'luna');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `id` int(10) NOT NULL,
  `usuario` int(10) DEFAULT NULL,
  `fecha_comen` date DEFAULT NULL,
  `gusta` int(10) DEFAULT NULL,
  `no_gusta` int(10) DEFAULT NULL,
  `articulo` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(10) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_swedish_ci DEFAULT NULL,
  `foto` varchar(50) COLLATE utf8_swedish_ci DEFAULT NULL,
  `fecha_naci` date DEFAULT NULL,
  `correo` varchar(50) COLLATE utf8_swedish_ci DEFAULT NULL,
  `contraseña` varchar(50) COLLATE utf8_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autor` (`autor`);

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`id_au`);

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articulo` (`articulo`),
  ADD KEY `usuario` (`usuario`);

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD CONSTRAINT `articulo_ibfk_1` FOREIGN KEY (`autor`) REFERENCES `autores` (`id_au`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`articulo`) REFERENCES `articulo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
