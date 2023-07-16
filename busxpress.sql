-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-07-2023 a las 23:56:46
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `busxpress`
--
CREATE DATABASE IF NOT EXISTS `busxpress` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `busxpress`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `g_terminal`
--

CREATE TABLE `g_terminal` (
  `ID_Terminal` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `ID_State` int(11) NOT NULL,
  `ID_User` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `g_terminal`
--

INSERT INTO `g_terminal` (`ID_Terminal`, `Name`, `ID_State`, `ID_User`, `Date`) VALUES
(1, 'Terminal de San Salvador', 6, 'gsorto', '2023-07-04 00:21:23'),
(2, 'Terminal Cd. de Guatemala', 20, 'gsorto', '2023-07-04 00:21:23'),
(3, 'Terminal de Tegucigalpa', 39, 'gsorto', '2023-07-04 00:21:23'),
(4, 'Terminal de Managua', 56, 'gsorto', '2023-07-04 00:21:23'),
(5, 'Terminal de San Jose', 63, 'gsorto', '2023-07-04 00:21:23'),
(6, 'Terminal Cd. de Panama', 77, 'gsorto', '2023-07-04 00:21:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment`
--

CREATE TABLE `payment` (
  `ID_Card` int(11) NOT NULL,
  `validcard` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `expirationcard` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `cvc` int(5) NOT NULL,
  `cardowner` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

CREATE TABLE `ticket` (
  `ID_Ticket` int(11) NOT NULL,
  `Status` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `Number_of_Passengers` int(11) NOT NULL,
  `Value` decimal(8,2) NOT NULL,
  `Terminal_from` int(5) NOT NULL,
  `Terminal_to` int(5) NOT NULL,
  `Departure_D` date NOT NULL,
  `Return_D` date NOT NULL,
  `ID_User` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ticket`
--

INSERT INTO `ticket` (`ID_Ticket`, `Status`, `Number_of_Passengers`, `Value`, `Terminal_from`, `Terminal_to`, `Departure_D`, `Return_D`, `ID_User`) VALUES
(29, 'a', 2, '0.00', 2, 5, '2023-07-14', '2023-07-19', '1'),
(30, 'a', 5, '0.00', 1, 4, '2023-07-15', '2023-07-19', '1'),
(31, 'a', 5, '0.00', 3, 1, '2023-08-03', '2023-07-12', '1'),
(32, 'a', 5, '0.00', 6, 4, '2023-07-06', '2023-07-20', '3'),
(33, 'a', 1, '0.00', 2, 4, '2023-07-15', '2023-07-18', '1'),
(34, 'a', 1, '0.00', 1, 4, '2023-07-21', '2023-07-24', '4'),
(35, 'a', 1, '0.00', 2, 4, '2023-07-12', '2023-07-21', '1'),
(36, 'a', 1, '0.00', 1, 3, '2023-07-15', '2023-07-19', '1'),
(37, 'a', 3, '0.00', 2, 4, '2023-07-21', '2023-07-28', '1'),
(38, 'a', 1, '0.00', 2, 4, '2023-07-15', '2023-07-22', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `User_ID` int(10) NOT NULL,
  `First_Names` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Last_Names` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `ID_Gender` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `Username` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Email` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `Password` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `Role` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`User_ID`, `First_Names`, `Last_Names`, `ID_Gender`, `Username`, `Email`, `Password`, `Role`) VALUES
(1, 'Kevin', 'Reyes', '', 'kevin7', 'kevin@gmail.com', 'iEf/23dT54Pcx7r5KDzoQw==', 'Client'),
(3, 'Kamaron', 'Mejia', '', '123', 'Josemiguel@santacecilia.edu.sv', 'iEf/23dT54Pcx7r5KDzoQw==', ''),
(4, 'Benito', 'Martinez', '', 'Benedeto@', 'benitomartinez97@gmail.com', 'iEf/23dT54Pcx7r5KDzoQw==', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `u_role`
--

CREATE TABLE `u_role` (
  `ID_Role` int(11) NOT NULL,
  `Name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Description` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `ID_User` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `u_role`
--

INSERT INTO `u_role` (`ID_Role`, `Name`, `Description`, `ID_User`, `Date`) VALUES
(1, 'Administrator', '', 'gsorto', '2023-07-02 19:36:27'),
(2, 'Client', '', 'dmorales', '2023-07-02 19:36:27'),
(3, 'Driver', '', 'jmiguel', '2023-07-02 19:36:27');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `g_terminal`
--
ALTER TABLE `g_terminal`
  ADD PRIMARY KEY (`ID_Terminal`);

--
-- Indices de la tabla `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`ID_Card`);

--
-- Indices de la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ID_Ticket`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indices de la tabla `u_role`
--
ALTER TABLE `u_role`
  ADD PRIMARY KEY (`ID_Role`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `g_terminal`
--
ALTER TABLE `g_terminal`
  MODIFY `ID_Terminal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `payment`
--
ALTER TABLE `payment`
  MODIFY `ID_Card` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ID_Ticket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `User_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `u_role`
--
ALTER TABLE `u_role`
  MODIFY `ID_Role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
