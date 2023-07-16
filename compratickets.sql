-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-07-2023 a las 03:37:17
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mibase`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compratickets`
--

CREATE TABLE `compratickets` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Apellido` varchar(40) NOT NULL,
  `Correo` varchar(40) NOT NULL,
  `Entradas` int(10) NOT NULL,
  `Categoria` varchar(30) NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compratickets`
--

INSERT INTO `compratickets` (`id`, `Nombre`, `Apellido`, `Correo`, `Entradas`, `Categoria`, `total`) VALUES
(14, 'Victoria', 'Aristegui', 'victoria.aristegui@hotmail.com', 4, 'student', 500),
(15, 'Merlina', 'Di Virgilio', 'princesam@gmail.com', 2, 'general', 500),
(16, 'Samanta', 'Rosales', 's.meulen@gmail.com', 5, 'student', 500),
(17, 'Franco', 'Bottini', 'bottini.f@hotmail.com', 2, 'general', 500),
(18, 'Isis', 'Aristegui', 'reinaisis@gmail.com', 6, 'junior', 500);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compratickets`
--
ALTER TABLE `compratickets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compratickets`
--
ALTER TABLE `compratickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
