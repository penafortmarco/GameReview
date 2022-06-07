-- phpMyAdmin SQL Dump
-- version 5.2.1-dev+20220606.5f9d467ce1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-06-2022 a las 19:54:25
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gamereview`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `text` varchar(1000) NOT NULL,
  `image` varchar(50) NOT NULL,
  `spoiler` tinyint(1) NOT NULL,
  `date` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reviews`
--

INSERT INTO `reviews` (`id`, `title`, `text`, `image`, `spoiler`, `date`) VALUES
(86, 'Red Dead Redemption', 'Red Dead Redemption es un videojuego no lineal de acción-aventura wéstern desarrollado por Rockstar San Diego. El videojuego fue anunciado oficialmente el 4 de febrero de 2009, y se lanzó el 18 de mayo de 2010 en Norteamérica y el 21 de mayo en Europa y Australia para Xbox 360 y PlayStation 3.2​ Es considerado el sucesor espiritual de Red Dead Revolver, lanzado en 2004.3​  La historia de Red Dead Redemption transcurre en los últimos años del lejano oeste estadounidense, en 1911, y narra la historia del antiguo bandido John Marston, que es chantajeado por los agentes federales que tienen amenazada a su familia para que ayude a imponer la ley en la frontera mexicano-estadounidense y capture a su antiguo compañero, y actual bandido, Bill Williamson. La acción del videojuego se sitúa en los estados ficticios de New Austin, Nuevo Paraíso y West Elizabeth.  Desde su lanzamiento, Red Dead Redemption ha disfrutado del aplauso unánime de la crítica, pues cuenta con una puntuación de 95/100 en l', '', 1, '04-06-22'),
(87, 'The Fallen Order', 'Red Dead Redemption es un videojuego no lineal de acción-aventura wéstern desarrollado por Rockstar San Diego. El videojuego fue anunciado oficialmente el 4 de febrero de 2009, y se lanzó el 18 de mayo de 2010 en Norteamérica y el 21 de mayo en Europa y Australia para Xbox 360 y PlayStation 3.2​ Es considerado el sucesor espiritual de Red Dead Revolver, lanzado en 2004.3​  La historia de Red Dead Redemption transcurre en los últimos años del lejano oeste estadounidense, en 1911, y narra la historia del antiguo bandido John Marston, que es chantajeado por los agentes federales que tienen amenazada a su familia para que ayude a imponer la ley en la frontera mexicano-estadounidense y capture a su antiguo compañero, y actual bandido, Bill Williamson. La acción del videojuego se sitúa en los estados ficticios de New Austin, Nuevo Paraíso y West Elizabeth.  Desde su lanzamiento, Red Dead Redemption ha disfrutado del aplauso unánime de la crítica, pues cuenta con una puntuación de 95/100 en l', '', 0, '04-06-22'),
(89, 'Fifa 2023', 'Red Dead Redemption es un videojuego no lineal de acción-aventura wéstern desarrollado por Rockstar San Diego. El videojuego fue anunciado oficialmente el 4 de febrero de 2009, y se lanzó el 18 de mayo de 2010 en Norteamérica y el 21 de mayo en Europa y Australia para Xbox 360 y PlayStation 3.2​ Es considerado el sucesor espiritual de Red Dead Revolver, lanzado en 2004.3​  La historia de Red Dead Redemption transcurre en los últimos años del lejano oeste estadounidense, en 1911, y narra la historia del antiguo bandido John Marston, que es chantajeado por los agentes federales que tienen amenazada a su familia para que ayude a imponer la ley en la frontera mexicano-estadounidense y capture a su antiguo compañero, y actual bandido, Bill Williamson. La acción del videojuego se sitúa en los estados ficticios de New Austin, Nuevo Paraíso y West Elizabeth.  Desde su lanzamiento, Red Dead Redemption ha disfrutado del aplauso unánime de la crítica, pues cuenta con una puntuación de 95/100 en l', '', 0, '05-06-22'),
(92, 'Uncharted 4', 'Red Dead Redemption es un videojuego no lineal de acción-aventura wéstern desarrollado por Rockstar San Diego. El videojuego fue anunciado oficialmente el 4 de febrero de 2009, y se lanzó el 18 de mayo de 2010 en Norteamérica y el 21 de mayo en Europa y Australia para Xbox 360 y PlayStation 3.2​ Es considerado el sucesor espiritual de Red Dead Revolver, lanzado en 2004.3​  La historia de Red Dead Redemption transcurre en los últimos años del lejano oeste estadounidense, en 1911, y narra la historia del antiguo bandido John Marston, que es chantajeado por los agentes federales que tienen amenazada a su familia para que ayude a imponer la ley en la frontera mexicano-estadounidense y capture a su antiguo compañero, y actual bandido, Bill Williamson. La acción del videojuego se sitúa en los estados ficticios de New Austin, Nuevo Paraíso y West Elizabeth.  Desde su lanzamiento, Red Dead Redemption ha disfrutado del aplauso unánime de la crítica, pues cuenta con una puntuación de 95/100 en l', '', 0, '05-06-22'),
(93, 'Age of Empires IV', 'Red Dead Redemption es un videojuego no lineal de acción-aventura wéstern desarrollado por Rockstar San Diego. El videojuego fue anunciado oficialmente el 4 de febrero de 2009, y se lanzó el 18 de mayo de 2010 en Norteamérica y el 21 de mayo en Europa y Australia para Xbox 360 y PlayStation 3.2​ Es considerado el sucesor espiritual de Red Dead Revolver, lanzado en 2004.3​  La historia de Red Dead Redemption transcurre en los últimos años del lejano oeste estadounidense, en 1911, y narra la historia del antiguo bandido John Marston, que es chantajeado por los agentes federales que tienen amenazada a su familia para que ayude a imponer la ley en la frontera mexicano-estadounidense y capture a su antiguo compañero, y actual bandido, Bill Williamson. La acción del videojuego se sitúa en los estados ficticios de New Austin, Nuevo Paraíso y West Elizabeth.  Desde su lanzamiento, Red Dead Redemption ha disfrutado del aplauso unánime de la crítica, pues cuenta con una puntuación de 95/100 en l', '', 0, '05-06-22'),
(94, 'Crash Bandicoot Remake', 'Red Dead Redemption es un videojuego no lineal de acción-aventura wéstern desarrollado por Rockstar San Diego. El videojuego fue anunciado oficialmente el 4 de febrero de 2009, y se lanzó el 18 de mayo de 2010 en Norteamérica y el 21 de mayo en Europa y Australia para Xbox 360 y PlayStation 3.2​ Es considerado el sucesor espiritual de Red Dead Revolver, lanzado en 2004.3​  La historia de Red Dead Redemption transcurre en los últimos años del lejano oeste estadounidense, en 1911, y narra la historia del antiguo bandido John Marston, que es chantajeado por los agentes federales que tienen amenazada a su familia para que ayude a imponer la ley en la frontera mexicano-estadounidense y capture a su antiguo compañero, y actual bandido, Bill Williamson. La acción del videojuego se sitúa en los estados ficticios de New Austin, Nuevo Paraíso y West Elizabeth.  Desde su lanzamiento, Red Dead Redemption ha disfrutado del aplauso unánime de la crítica, pues cuenta con una puntuación de 95/100 en l', '', 1, '05-06-22'),
(95, 'Carlos Maslatón-El videojuego', 'Red Dead Redemption es un videojuego no lineal de acción-aventura wéstern desarrollado por Rockstar San Diego. El videojuego fue anunciado oficialmente el 4 de febrero de 2009, y se lanzó el 18 de mayo de 2010 en Norteamérica y el 21 de mayo en Europa y Australia para Xbox 360 y PlayStation 3.2​ Es considerado el sucesor espiritual de Red Dead Revolver, lanzado en 2004.3​  La historia de Red Dead Redemption transcurre en los últimos años del lejano oeste estadounidense, en 1911, y narra la historia del antiguo bandido John Marston, que es chantajeado por los agentes federales que tienen amenazada a su familia para que ayude a imponer la ley en la frontera mexicano-estadounidense y capture a su antiguo compañero, y actual bandido, Bill Williamson. La acción del videojuego se sitúa en los estados ficticios de New Austin, Nuevo Paraíso y West Elizabeth.  Desde su lanzamiento, Red Dead Redemption ha disfrutado del aplauso unánime de la crítica, pues cuenta con una puntuación de 95/100 en l', '', 0, '05-06-22'),
(96, 'Resident Evil 5', 'Red Dead Redemption es un videojuego no lineal de acción-aventura wéstern desarrollado por Rockstar San Diego. El videojuego fue anunciado oficialmente el 4 de febrero de 2009, y se lanzó el 18 de mayo de 2010 en Norteamérica y el 21 de mayo en Europa y Australia para Xbox 360 y PlayStation 3.2​ Es considerado el sucesor espiritual de Red Dead Revolver, lanzado en 2004.3​  La historia de Red Dead Redemption transcurre en los últimos años del lejano oeste estadounidense, en 1911, y narra la historia del antiguo bandido John Marston, que es chantajeado por los agentes federales que tienen amenazada a su familia para que ayude a imponer la ley en la frontera mexicano-estadounidense y capture a su antiguo compañero, y actual bandido, Bill Williamson. La acción del videojuego se sitúa en los estados ficticios de New Austin, Nuevo Paraíso y West Elizabeth.  Desde su lanzamiento, Red Dead Redemption ha disfrutado del aplauso unánime de la crítica, pues cuenta con una puntuación de 95/100 en l', '', 0, '05-06-22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `useradmin`
--

CREATE TABLE `useradmin` (
  `id` int(5) NOT NULL,
  `user` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(15) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `useradmin`
--

INSERT INTO `useradmin` (`id`, `user`, `password`) VALUES
(1, 'admin', '123456789');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `useradmin`
--
ALTER TABLE `useradmin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
