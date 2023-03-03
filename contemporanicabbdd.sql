-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-03-2023 a las 10:16:57
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

CREATE TABLE `compositor` (
  `id_compositor` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `biografia` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `compositor`:
--

--
-- Volcado de datos para la tabla `compositor`
--

INSERT INTO `compositor` (`id_compositor`, `nombre`, `biografia`) VALUES
(1, 'admin', 'este es el admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familia`
--

CREATE TABLE `familia` (
  `id_familia` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `familia`:
--

--
-- Volcado de datos para la tabla `familia`
--

INSERT INTO `familia` (`id_familia`, `nombre`) VALUES
(1, 'Cuerda'),
(2, 'Viento'),
(3, 'Percusion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instrumento`
--

CREATE TABLE `instrumento` (
  `id_instrumento` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `id_familia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `instrumento`:
--

--
-- Volcado de datos para la tabla `instrumento`
--

INSERT INTO `instrumento` (`id_instrumento`, `nombre`, `id_familia`) VALUES
(1, 'Bajo', 1),
(2, 'Violin', 1),
(3, 'Flauta', 2),
(4, 'Trompeta', 2),
(5, 'Tambor', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pieza`
--

CREATE TABLE `pieza` (
  `id_pieza` int(11) NOT NULL,
  `id_compositor` int(11) NOT NULL,
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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compositor`
--
ALTER TABLE `compositor`
  ADD PRIMARY KEY (`id_compositor`);

--
-- Indices de la tabla `familia`
--
ALTER TABLE `familia`
  ADD PRIMARY KEY (`id_familia`);

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
  ADD PRIMARY KEY (`id_pieza`,`id_instrumento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compositor`
--
ALTER TABLE `compositor`
  MODIFY `id_compositor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `familia`
--
ALTER TABLE `familia`
  MODIFY `id_familia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `instrumento`
--
ALTER TABLE `instrumento`
  MODIFY `id_instrumento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `pieza`
--
ALTER TABLE `pieza`
  MODIFY `id_pieza` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;
