-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-09-2018 a las 17:12:14
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebas`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `ADD_US` (IN `_Name` VARCHAR(15), IN `_Name1` VARCHAR(15), IN `_LaName` VARCHAR(15), IN `_LaName1` VARCHAR(15), IN `_Age` INT, IN `_Gender` VARCHAR(15), IN `_Maill` VARCHAR(75), IN `_NaUs` VARCHAR(15))  BEGIN
     	INSERT INTO users(Name,Name1,LaName,LaName1,Age,Genders,Maill,nauser)
        	VALUES(_Name,_Name1,_LaName,_LaName1,_Age,_Gender,_Maill,_NaUs);
     END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `Id_Us` int(11) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `Name1` varchar(15) NOT NULL,
  `LaName` varchar(15) NOT NULL,
  `LaName1` varchar(15) NOT NULL,
  `Nauser` varchar(20) NOT NULL,
  `Maill` varchar(70) NOT NULL,
  `Age` int(11) NOT NULL,
  `Genders` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`Id_Us`, `Name`, `Name1`, `LaName`, `LaName1`, `Nauser`, `Maill`, `Age`, `Genders`) VALUES
(2, 'Julieta', 'Camila', 'Peña', 'Nieto', 'juliHermosa', 'JuliHermosa@gmail.com', 22, 'Femenino'),
(4, 'Maria', 'Fernanda', 'Yepes', 'Romero', 'Mafehermosa', 'mafe@gmail.com', 35, 'Femenino'),
(7, 'dfs', 'dsf', 'sdf', 'sdf', 'undefined', 'undefined', 4, 'Femenino'),
(8, 'lisa', 'Carolin', 'Cerati', 'Amenabar', 'LisaCerati', 'lisa@gmail.com', 10, 'Femenino'),
(9, 'Diana', 'Marcela', 'Roldan', 'estrada', 'Dianass', 'diani@gmail.com', 13, 'Femenino'),
(11, 'Andrea', 'Julieta', 'Solorzano', 'Gomez', 'Juanas', 'Juanita@gmail.com', 12, 'Femenino'),
(14, 'Daniela', 'Andrea', 'sanchez', 'NiÃ±o', 'DaSan', 'Danioo@gmail.com', 6, 'Femenino'),
(15, 'dania', 'joana', 'sanchez', 'gonzales', 'dante', 'daniaaanmn@gmail.com', 6, 'Femenino'),
(16, 'paticia', 'andrea', 'barbon', 'barbon', 'pati', 'pati@gmail.com', 5, 'Femenino');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id_Us`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `Id_Us` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
