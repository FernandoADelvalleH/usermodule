-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-09-2020 a las 06:02:11
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ejemplos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_sistema`
--

CREATE TABLE `menu_sistema` (
  `ID` int(11) NOT NULL,
  `DESCRIPCION` varchar(50) NOT NULL,
  `IMAGEN` varchar(50) NOT NULL DEFAULT 'imagenes/not_found.png',
  `URL` varchar(50) DEFAULT NULL,
  `ORDENAMIENTO` int(11) NOT NULL DEFAULT 0,
  `ESTATUS` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `menu_sistema`
--

INSERT INTO `menu_sistema` (`ID`, `DESCRIPCION`, `IMAGEN`, `URL`, `ORDENAMIENTO`, `ESTATUS`) VALUES
(1, 'Inicio', 'imagenes/Customer.png', '#', 1, 0),
(2, 'Agregar Usuarios', 'imagenes/Proveedores.png', '/usuarios/nuevo', 3, 0),
(3, 'Listar Usuarios', 'imagenes/Product.png', '/usuarios', 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisosmenu`
--

CREATE TABLE `permisosmenu` (
  `ID` int(11) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `ID_MENU` int(11) NOT NULL,
  `ESTATUS` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `permisosmenu`
--

INSERT INTO `permisosmenu` (`ID`, `ID_USUARIO`, `ID_MENU`, `ESTATUS`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 1),
(3, 1, 3, 0),
(5, 2, 1, 0),
(6, 2, 3, 0),
(7, 2, 2, 1),
(8, 3, 1, 0),
(9, 3, 3, 0),
(10, 3, 2, 0),
(11, 4, 1, 0),
(12, 4, 3, 0),
(13, 4, 2, 0),
(14, 5, 1, 0),
(15, 5, 3, 0),
(16, 5, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `APELLIDOS` varchar(100) NOT NULL,
  `TELEFONO` varchar(15) DEFAULT NULL,
  `SNETWORKS` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `FECHA_REGISTRO` varchar(20) NOT NULL,
  `ESTATUS` int(11) NOT NULL DEFAULT 0,
  `TIPO` varchar(20) NOT NULL DEFAULT 'Invitado',
  `PASSWORD` varchar(50) DEFAULT '123'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `NOMBRE`, `APELLIDOS`, `TELEFONO`, `SNETWORKS`, `EMAIL`, `FECHA_REGISTRO`, `ESTATUS`, `TIPO`, `PASSWORD`) VALUES
(1, 'Codeigniter', 'PHP 7.2', '2147483647', 'twitter.com', 'ejemplo@gmail.com', '2014-07-30 14:39:06', 1, 'Invitado', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'Fernando', 'Del valle', '5511490471', 'instagram.com', 'fernando.adelvalleh@gmail.com', '2020-09-16 20:22:21', 0, 'Administrador', 'e10adc3949ba59abbe56e057f20f883e'),
(4, 'Alonso', 'Hernandez', '5689001122', 'facebook.com', 'fercho-0992@live.com.mx', '2020-09-17 10:42:51', 0, 'Administrador', '123'),
(5, 'Alejandro', 'Rojas Pastrana', '2147483647', 'google.com', 'fernando@gmail.com', '2020-09-17 13:15:48', 0, 'Invitado', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `menu_sistema`
--
ALTER TABLE `menu_sistema`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `permisosmenu`
--
ALTER TABLE `permisosmenu`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `menu_sistema`
--
ALTER TABLE `menu_sistema`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `permisosmenu`
--
ALTER TABLE `permisosmenu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
