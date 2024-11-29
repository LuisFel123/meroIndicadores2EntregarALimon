-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2024 a las 21:56:12
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
-- Base de datos: `salud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medida`
--

CREATE TABLE `medida` (
  `id_medida` int(11) NOT NULL,
  `id_persona` int(11) DEFAULT NULL,
  `peso` int(11) DEFAULT NULL,
  `cintura` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medida`
--

INSERT INTO `medida` (`id_medida`, `id_persona`, `peso`, `cintura`, `fecha`) VALUES
(1, NULL, 67, 45, '2001-09-06'),
(2, NULL, 78, 89, '0005-09-07'),
(3, NULL, 78, 56, '2001-08-08'),
(4, NULL, 78, 89, '2001-09-09'),
(5, NULL, 78, 89, '2022-07-11'),
(6, NULL, 89, 67, '2001-09-05'),
(7, NULL, 78, 56, '2001-08-01'),
(8, NULL, 90, 91, '2001-09-06'),
(9, NULL, 85, 86, '2001-07-01'),
(10, NULL, 67, 89, '2001-09-06'),
(11, NULL, 78, 90, '2001-09-07'),
(12, NULL, 89, 67, '2006-09-07'),
(13, NULL, 181, 78, '2001-03-01'),
(14, NULL, 90, 67, '2001-09-09'),
(15, NULL, 90, 78, '2022-09-09'),
(16, NULL, 90, 89, '2024-11-29'),
(17, NULL, 80, 55, '2024-11-29'),
(18, NULL, 89, 78, '2024-11-29'),
(19, NULL, 67, 68, '2024-11-29'),
(20, NULL, 90, 67, '2024-11-29'),
(21, NULL, 60, 78, '2024-11-29'),
(22, NULL, 89, 90, '2024-11-29'),
(23, NULL, 89, 90, '2024-11-29'),
(24, NULL, 86, 87, '2024-11-29'),
(25, 140, 78, 67, '2024-11-29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id_persona` int(11) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fecha_nac` date DEFAULT NULL,
  `estatura` double DEFAULT NULL,
  `genero` char(1) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `edad` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id_persona`, `usuario`, `password`, `fecha_nac`, `estatura`, `genero`, `nombre`, `edad`) VALUES
(136, 'felpo', '1234', '2027-08-09', 1.56, 'M', 'felipe', 0),
(137, 'galos', '45456', '2000-08-07', 1.56, 'M', 'felipe', 24),
(138, 'admin', '1234', '0009-06-09', 1.78, 'M', 'pedro', 2015),
(139, 'osorio', '1234534', '2001-08-09', 1.67, 'F', 'admin12', 23),
(140, 'luisfel', '1234', '2001-04-07', 1.56, 'F', 'felpo', 23),
(141, 'luisfel22', '1234', '2004-08-09', 1.67, 'M', 'yolis', 20),
(142, 'domi', '1234', '2024-05-09', 1.67, 'M', 'domingo', 0),
(143, 'soro1', '1234', '2001-05-09', 1.89, 'M', 'soro', 23),
(144, 'usu1', '1234', '2001-10-09', 1.56, 'M', 'roberto', 23),
(145, 'azu1', '1234', '2001-08-09', 1.67, 'M', 'azucena', 23),
(146, 'chena', '1234', '1998-09-09', 1.67, 'M', 'chena', 26),
(147, 'uli1', '1234', '2001-08-09', 1.78, 'F', 'ulises', 23),
(148, 'pancho1', '9876', '1999-04-09', 1.78, 'M', 'pancho', 25),
(149, 'gadiel1', '1234', '2000-09-05', 1.67, 'M', 'gadiel', 24),
(150, 'fer90', '1234', '2001-06-09', 1.89, 'M', 'fernando', 23),
(152, 'yan1', '1234', '1999-08-09', 1.78, 'M', 'yani', 25);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `medida`
--
ALTER TABLE `medida`
  ADD PRIMARY KEY (`id_medida`),
  ADD KEY `id_persona` (`id_persona`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id_persona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `medida`
--
ALTER TABLE `medida`
  MODIFY `id_medida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id_persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `medida`
--
ALTER TABLE `medida`
  ADD CONSTRAINT `medida_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
