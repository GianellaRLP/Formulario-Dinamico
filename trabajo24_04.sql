-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-04-2024 a las 00:52:01
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `trabajo24_04`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aptitudes`
--

CREATE TABLE `aptitudes` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `aptitud` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aptitudes`
--

INSERT INTO `aptitudes` (`id`, `usuario_id`, `aptitud`) VALUES
(256, 144, 'aSDEFGTYUIO'),
(257, 144, 'asdfghjklñ{');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia_laboral`
--

CREATE TABLE `experiencia_laboral` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cargo` varchar(100) NOT NULL,
  `empresa` varchar(100) NOT NULL,
  `inicio` date NOT NULL,
  `fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formacion_academica`
--

CREATE TABLE `formacion_academica` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `institucion` varchar(100) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `inicio` date NOT NULL,
  `fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `formacion_academica`
--

INSERT INTO `formacion_academica` (`id`, `usuario_id`, `institucion`, `titulo`, `inicio`, `fin`) VALUES
(139, 144, 'ASDFGTYUIOP', 'asdfghjkl', '2024-04-25', '2024-04-26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idiomas`
--

CREATE TABLE `idiomas` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `idioma` varchar(100) NOT NULL,
  `nivel` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `idiomas`
--

INSERT INTO `idiomas` (`id`, `usuario_id`, `idioma`, `nivel`) VALUES
(140, 144, 'ingles', 'intermedio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `telefono`, `email`) VALUES
(144, 'Gianella', 'Rosas', '979797979', 'asdfghjk@sdfghj');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aptitudes`
--
ALTER TABLE `aptitudes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_aptitudes_usuarios` (`usuario_id`);

--
-- Indices de la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_experiencia_laboral_usuarios` (`usuario_id`);

--
-- Indices de la tabla `formacion_academica`
--
ALTER TABLE `formacion_academica`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_formacion_academica_usuarios` (`usuario_id`);

--
-- Indices de la tabla `idiomas`
--
ALTER TABLE `idiomas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idiomas_usuarios` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aptitudes`
--
ALTER TABLE `aptitudes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT de la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT de la tabla `formacion_academica`
--
ALTER TABLE `formacion_academica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT de la tabla `idiomas`
--
ALTER TABLE `idiomas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aptitudes`
--
ALTER TABLE `aptitudes`
  ADD CONSTRAINT `fk_aptitudes_usuarios` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  ADD CONSTRAINT `fk_experiencia_laboral_usuarios` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `formacion_academica`
--
ALTER TABLE `formacion_academica`
  ADD CONSTRAINT `fk_formacion_academica_usuarios` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `idiomas`
--
ALTER TABLE `idiomas`
  ADD CONSTRAINT `fk_idiomas_usuarios` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
