-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-02-2023 a las 11:00:57
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `contemporanica`
--
CREATE DATABASE IF NOT EXISTS `contemporanica` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `contemporanica`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instrumento`
--

CREATE TABLE `instrumento` (
  `id_instrumento` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `familia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `instrumento`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pieza`
--

CREATE TABLE `pieza` (
  `id_pieza` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `datos` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `pieza`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pieza_instrumento`
--

CREATE TABLE `pieza_instrumento` (
  `id_pieza` int(11) NOT NULL,
  `id_instrumento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `pieza_instrumento`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `biografia` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `usuario`:
--

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `instrumento`
--
ALTER TABLE `instrumento`
  ADD PRIMARY KEY (`id_instrumento`);

--
-- Indices de la tabla `pieza`
--
ALTER TABLE `pieza`
  ADD PRIMARY KEY (`id_pieza`);

--
-- Indices de la tabla `pieza_instrumento`
--
ALTER TABLE `pieza_instrumento`
  ADD PRIMARY KEY (`id_pieza`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `instrumento`
--
ALTER TABLE `instrumento`
  MODIFY `id_instrumento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pieza`
--
ALTER TABLE `pieza`
  MODIFY `id_pieza` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
