-- phpMyAdmin SQL Dump
-- version 5.2.1-dev+20220606.5f9d467ce1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-06-2022 a las 22:35:23
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
(137, 'The', 'sadsadsad', 'bedf.jpg', 1, '21-06-22'),
(145, 'Red Dead Redemption 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At lectus urna duis convallis convallis tellus id interdum velit. Mollis aliquam ut porttitor leo a. Ultrices neque ornare aenean euismod elementum nisi. Nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit. Vestibulum rhoncus est pellentesque elit. Ultricies integer quis auctor elit sed vulputate mi. Proin nibh nisl condimentum id venenatis a condimentum vitae. Senectus et netus et malesuada fames ac turpis egestas maecenas. Magna eget est lorem ipsum dolor. Sapien et ligula ullamcorper malesuada proin libero nunc. Morbi quis commodo odio aenean sed. Sit amet venenatis urna cursus eget nunc scelerisque viverra mauris. Pharetra pharetra massa massa ultricies mi quis hendrerit. Id leo in vitae turpis massa sed elementum tempus egestas. Nulla aliquet porttitor lacus luctus. Feugiat nisl pretium fusce id velit ut. Congue nisi vitae suscipit tellus mauris a.', 'Hpl5MtwQgOVF9vJqlfui6SDB5Jl4oBSq.jpg', 0, '21-06-22'),
(146, 'GTA V', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At lectus urna duis convallis convallis tellus id interdum velit. Mollis aliquam ut porttitor leo a. Ultrices neque ornare aenean euismod elementum nisi. Nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit. Vestibulum rhoncus est pellentesque elit. Ultricies integer quis auctor elit sed vulputate mi. Proin nibh nisl condimentum id venenatis a condimentum vitae. Senectus et netus et malesuada fames ac turpis egestas maecenas. Magna eget est lorem ipsum dolor. Sapien et ligula ullamcorper malesuada proin libero nunc. Morbi quis commodo odio aenean sed. Sit amet venenatis urna cursus eget nunc scelerisque viverra mauris. Pharetra pharetra massa massa ultricies mi quis hendrerit. Id leo in vitae turpis massa sed elementum tempus egestas. Nulla aliquet porttitor lacus luctus. Feugiat nisl pretium fusce id velit ut. Congue nisi vitae suscipit tellus mauris a.', '59a05cd4bc90a814ee52dceb30d70de2c1946953.jpg', 1, '21-06-22'),
(147, 'GTA Trilogy Definitive', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At lectus urna duis convallis convallis tellus id interdum velit. Mollis aliquam ut porttitor leo a. Ultrices neque ornare aenean euismod elementum nisi. Nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit. Vestibulum rhoncus est pellentesque elit. Ultricies integer quis auctor elit sed vulputate mi. Proin nibh nisl condimentum id venenatis a condimentum vitae. Senectus et netus et malesuada fames ac turpis egestas maecenas. Magna eget est lorem ipsum dolor. Sapien et ligula ullamcorper malesuada proin libero nunc. Morbi quis commodo odio aenean sed. Sit amet venenatis urna cursus eget nunc scelerisque viverra mauris. Pharetra pharetra massa massa ultricies mi quis hendrerit. Id leo in vitae turpis massa sed elementum tempus egestas. Nulla aliquet porttitor lacus luctus. Feugiat nisl pretium fusce id velit ut. Congue nisi vitae suscipit tellus mauris a.', 'QQE3HT3CRZHVHM5EXXPSVWIJO4.jpg', 0, '21-06-22'),
(148, 'Minecraft', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At lectus urna duis convallis convallis tellus id interdum velit. Mollis aliquam ut porttitor leo a. Ultrices neque ornare aenean euismod elementum nisi. Nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit. Vestibulum rhoncus est pellentesque elit. Ultricies integer quis auctor elit sed vulputate mi. Proin nibh nisl condimentum id venenatis a condimentum vitae. Senectus et netus et malesuada fames ac turpis egestas maecenas. Magna eget est lorem ipsum dolor. Sapien et ligula ullamcorper malesuada proin libero nunc. Morbi quis commodo odio aenean sed. Sit amet venenatis urna cursus eget nunc scelerisque viverra mauris. Pharetra pharetra massa massa ultricies mi quis hendrerit. Id leo in vitae turpis massa sed elementum tempus egestas. Nulla aliquet porttitor lacus luctus. Feugiat nisl pretium fusce id velit ut. Congue nisi vitae suscipit tellus mauris a.', 'minecraft.webp', 0, '21-06-22'),
(150, 'Uncharted Collection', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At lectus urna duis convallis convallis tellus id interdum velit. Mollis aliquam ut porttitor leo a. Ultrices neque ornare aenean euismod elementum nisi. Nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit. Vestibulum rhoncus est pellentesque elit. Ultricies integer quis auctor elit sed vulputate mi. Proin nibh nisl condimentum id venenatis a condimentum vitae. Senectus et netus et malesuada fames ac turpis egestas maecenas. Magna eget est lorem ipsum dolor. Sapien et ligula ullamcorper malesuada proin libero nunc. Morbi quis commodo odio aenean sed. Sit amet venenatis urna cursus eget nunc scelerisque viverra mauris. Pharetra pharetra massa massa ultricies mi quis hendrerit. Id leo in vitae turpis massa sed elementum tempus egestas. Nulla aliquet porttitor lacus luctus. Feugiat nisl pretium fusce id velit ut. Congue nisi vitae suscipit tellus mauris a.', 'ry4VLjdf1G2u47FcmJtgVsFq.jpg', 0, '21-06-22'),
(151, 'God of War', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At lectus urna duis convallis convallis tellus id interdum velit. Mollis aliquam ut porttitor leo a. Ultrices neque ornare aenean euismod elementum nisi. Nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit. Vestibulum rhoncus est pellentesque elit. Ultricies integer quis auctor elit sed vulputate mi. Proin nibh nisl condimentum id venenatis a condimentum vitae. Senectus et netus et malesuada fames ac turpis egestas maecenas. Magna eget est lorem ipsum dolor. Sapien et ligula ullamcorper malesuada proin libero nunc. Morbi quis commodo odio aenean sed. Sit amet venenatis urna cursus eget nunc scelerisque viverra mauris. Pharetra pharetra massa massa ultricies mi quis hendrerit. Id leo in vitae turpis massa sed elementum tempus egestas. Nulla aliquet porttitor lacus luctus. Feugiat nisl pretium fusce id velit ut. Congue nisi vitae suscipit tellus mauris a.', '20203218232519_1.jpg', 1, '21-06-22'),
(152, 'Age of Empires II', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At lectus urna duis convallis convallis tellus id interdum velit. Mollis aliquam ut porttitor leo a. Ultrices neque ornare aenean euismod elementum nisi. Nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit. Vestibulum rhoncus est pellentesque elit. Ultricies integer quis auctor elit sed vulputate mi. Proin nibh nisl condimentum id venenatis a condimentum vitae. Senectus et netus et malesuada fames ac turpis egestas maecenas. Magna eget est lorem ipsum dolor. Sapien et ligula ullamcorper malesuada proin libero nunc. Morbi quis commodo odio aenean sed. Sit amet venenatis urna cursus eget nunc scelerisque viverra mauris. Pharetra pharetra massa massa ultricies mi quis hendrerit. Id leo in vitae turpis massa sed elementum tempus egestas. Nulla aliquet porttitor lacus luctus. Feugiat nisl pretium fusce id velit ut. Congue nisi vitae suscipit tellus mauris a.', 'age-of-empires-2-2016105171919_1.jpg', 0, '21-06-22'),
(153, 'Fifa 2022', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At lectus urna duis convallis convallis tellus id interdum velit. Mollis aliquam ut porttitor leo a. Ultrices neque ornare aenean euismod elementum nisi. Nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit. Vestibulum rhoncus est pellentesque elit. Ultricies integer quis auctor elit sed vulputate mi. Proin nibh nisl condimentum id venenatis a condimentum vitae. Senectus et netus et malesuada fames ac turpis egestas maecenas. Magna eget est lorem ipsum dolor. Sapien et ligula ullamcorper malesuada proin libero nunc. Morbi quis commodo odio aenean sed. Sit amet venenatis urna cursus eget nunc scelerisque viverra mauris. Pharetra pharetra massa massa ultricies mi quis hendrerit. Id leo in vitae turpis massa sed elementum tempus egestas. Nulla aliquet porttitor lacus luctus. Feugiat nisl pretium fusce id velit ut. Congue nisi vitae suscipit tellus mauris a.', 'kylian-mbappe-fifa-22_1440x810_wmk.jpg', 0, '21-06-22'),
(154, 'COD Vanguard', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At lectus urna duis convallis convallis tellus id interdum velit. Mollis aliquam ut porttitor leo a. Ultrices neque ornare aenean euismod elementum nisi. Nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit. Vestibulum rhoncus est pellentesque elit. Ultricies integer quis auctor elit sed vulputate mi. Proin nibh nisl condimentum id venenatis a condimentum vitae. Senectus et netus et malesuada fames ac turpis egestas maecenas. Magna eget est lorem ipsum dolor. Sapien et ligula ullamcorper malesuada proin libero nunc. Morbi quis commodo odio aenean sed. Sit amet venenatis urna cursus eget nunc scelerisque viverra mauris. Pharetra pharetra massa massa ultricies mi quis hendrerit. Id leo in vitae turpis massa sed elementum tempus egestas. Nulla aliquet porttitor lacus luctus. Feugiat nisl pretium fusce id velit ut. Congue nisi vitae suscipit tellus mauris a.', '586980431629399225.jpg', 1, '21-06-22'),
(155, 'Warzone', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. At lectus urna duis convallis convallis tellus id interdum velit. Mollis aliquam ut porttitor leo a. Ultrices neque ornare aenean euismod elementum nisi. Nisl nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit. Vestibulum rhoncus est pellentesque elit. Ultricies integer quis auctor elit sed vulputate mi. Proin nibh nisl condimentum id venenatis a condimentum vitae. Senectus et netus et malesuada fames ac turpis egestas maecenas. Magna eget est lorem ipsum dolor. Sapien et ligula ullamcorper malesuada proin libero nunc. Morbi quis commodo odio aenean sed. Sit amet venenatis urna cursus eget nunc scelerisque viverra mauris. Pharetra pharetra massa massa ultricies mi quis hendrerit. Id leo in vitae turpis massa sed elementum tempus egestas. Nulla aliquet porttitor lacus luctus. Feugiat nisl pretium fusce id velit ut. Congue nisi vitae suscipit tellus mauris a.', 'call-of-duty-warzone-20203102215835_1.jpg', 1, '21-06-22');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
