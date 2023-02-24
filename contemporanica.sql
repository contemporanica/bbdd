-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-02-2023 a las 12:18:14
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
-- Estructura de tabla para la tabla `compositor`
--

DROP TABLE IF EXISTS `compositor`;
CREATE TABLE IF NOT EXISTS `compositor` (
  `id_compositor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `biografia` varchar(150) NOT NULL,
  PRIMARY KEY (`id_compositor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `compositor`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familia`
--

DROP TABLE IF EXISTS `familia`;
CREATE TABLE IF NOT EXISTS `familia` (
  `id_familia` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id_familia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `familia`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instrumento`
--

DROP TABLE IF EXISTS `instrumento`;
CREATE TABLE IF NOT EXISTS `instrumento` (
  `id_instrumento` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `id_familia` int(11) NOT NULL,
  PRIMARY KEY (`id_instrumento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `instrumento`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pieza`
--

DROP TABLE IF EXISTS `pieza`;
CREATE TABLE IF NOT EXISTS `pieza` (
  `id_pieza` int(11) NOT NULL AUTO_INCREMENT,
  `id_compositor` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `datos` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pieza`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `pieza`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pieza_instrumento`
--

DROP TABLE IF EXISTS `pieza_instrumento`;
CREATE TABLE IF NOT EXISTS `pieza_instrumento` (
  `id_pieza` int(11) NOT NULL,
  `id_instrumento` int(11) NOT NULL,
  PRIMARY KEY (`id_pieza`,`id_instrumento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `pieza_instrumento`:
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
