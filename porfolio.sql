-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-02-2023 a las 19:01:36
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
-- Base de datos: `porfolio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `educacion`
--

CREATE TABLE `educacion` (
  `idEducacion` int(11) NOT NULL,
  `Persona_idtable1` int(11) NOT NULL,
  `Nombre_Estudio` varchar(45) DEFAULT NULL,
  `FechaInicio` date DEFAULT NULL,
  `FechaFin` date DEFAULT NULL,
  `Lugar_Estudio` varchar(45) DEFAULT NULL,
  `SigueCursando` tinyint(4) DEFAULT NULL,
  `TipoEstudio_idTipoEstudio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `educacion`
--

INSERT INTO `educacion` (`idEducacion`, `Persona_idtable1`, `Nombre_Estudio`, `FechaInicio`, `FechaFin`, `Lugar_Estudio`, `SigueCursando`, `TipoEstudio_idTipoEstudio`) VALUES
(1, 1, 'Instituto San José de Calasanz', '2010-03-08', '2012-12-10', 'Juana Azurduy 201, Villa Tesei, Provincia de ', 0, 3),
(2, 1, 'Escuela De Educación Secundaria Nº2 \"Gral. Ju', '2013-03-08', '2017-12-07', 'Valencia y, Moisés Lebenshon 827, Hurlingham,', 0, 1),
(3, 1, 'English House - Instituto de Inglés', '2017-03-09', '2017-12-16', 'Wolf Schcolnik 79, Villa Tesei, Provincia de ', 0, 10),
(4, 1, 'Curso especializado en Marketing Digital (Dig', '2022-05-09', '2022-06-16', 'Virtual', 0, 10),
(5, 1, 'Curso #SePrograma (Argentina Progama)', '2022-06-21', '2022-08-17', 'Virtual', 0, 10),
(6, 1, 'Curso especializado en Comercio Digital y E-c', '2022-07-18', '2022-08-22', 'Virtual', 0, 10),
(7, 1, 'Curso de Programación Especializado en Java (', '2022-08-16', '2022-12-20', 'Virtual', 0, 10),
(8, 1, 'Curso #YoProgramo (Argentina Programa 4.0)', '2022-10-18', NULL, 'Virtual', 1, 10),
(9, 1, 'Unity de Codo a Codo 4.0', '2023-02-28', NULL, 'Virtual', 1, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia`
--

CREATE TABLE `experiencia` (
  `idExperiencia` int(11) NOT NULL,
  `Empresa` varchar(45) DEFAULT NULL,
  `esTrabajoActual` tinyint(4) DEFAULT NULL,
  `FechaInicio` date DEFAULT NULL,
  `FechaFin` date DEFAULT NULL,
  `Descripcion` varchar(245) DEFAULT NULL,
  `Persona_idtable1` int(11) NOT NULL,
  `TipoEmpleo_idTipoEmpleo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `experiencia`
--

INSERT INTO `experiencia` (`idExperiencia`, `Empresa`, `esTrabajoActual`, `FechaInicio`, `FechaFin`, `Descripcion`, `Persona_idtable1`, `TipoEmpleo_idTipoEmpleo`) VALUES
(1, 'Papelera “El Gaucho” (Empresa Familiar)', 0, '2014-04-14', '2017-02-20', 'Las tareas que realizaba eran:\r\nAtención al Cliente\r\nReposición\r\nLimpieza\r\nCajera', 1, 1),
(2, 'Lomitos Beto’s', 0, '2017-07-10', '2018-03-19', 'Lugar de Trabajo: Av. Brig. Gral. Juan Manuel de Rosas 658, Morón\r\nLas tareas que realizaba eran:\r\nAtención al Cliente\r\nReposición\r\nLimpieza\r\nCajera\r\nGambusera', 1, 2),
(3, 'Distribuidora “Abuelito Dime tu” (Empresa Pro', 0, '2018-05-14', '2021-02-05', 'Las tareas que realizaba eran:\r\nAtención al Cliente\r\nReposición\r\nDelivery', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idtable1` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apeliido` varchar(45) DEFAULT NULL,
  `Domicilio` varchar(45) DEFAULT NULL,
  `Edad` int(11) DEFAULT NULL,
  `Fecha de Nacimiento` date DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Correo` varchar(45) DEFAULT NULL,
  `Foto-Url` varchar(245) DEFAULT NULL,
  `Sobre_MiI` varchar(245) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idtable1`, `Nombre`, `Apeliido`, `Domicilio`, `Edad`, `Fecha de Nacimiento`, `Telefono`, `Correo`, `Foto-Url`, `Sobre_MiI`) VALUES
(1, 'Alejandra Belén', 'Ramirez Tolosa', 'Alcalde M Torrees 3840', 25, '1998-02-15', '1151571908', 'belu.tolosa14@gmail.com', 'https://www.facebook.com/photo.php?fbid=172587923292840&set=pb.100016249007511.-2207520000.&type=3', 'Soy una estudiante de Programación Web, Full-Stack Java y a futuro de Desarrollo de Software.\r\nTambien hice curso de Diseño Grafico, Marketing e Ingles (Intermediatle).\r\nY aunque no tenga experiencia laboral con estos respectivos temas, espero a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoempleo`
--

CREATE TABLE `tipoempleo` (
  `idTipoEmpleo` int(11) NOT NULL,
  `Nombre_Tipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipoempleo`
--

INSERT INTO `tipoempleo` (`idTipoEmpleo`, `Nombre_Tipo`) VALUES
(1, 'Part-Time'),
(2, 'Full-Time'),
(3, 'Freelance'),
(4, 'Emprendedor'),
(5, 'Monotributista'),
(6, 'Otro'),
(7, 'Informal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoestudio`
--

CREATE TABLE `tipoestudio` (
  `idTipoEstudio` int(11) NOT NULL,
  `Nombre_Tipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipoestudio`
--

INSERT INTO `tipoestudio` (`idTipoEstudio`, `Nombre_Tipo`) VALUES
(1, 'Secundario completo'),
(2, 'Secundario en curso'),
(3, 'Secundario Incompleto'),
(4, 'Terciario completo'),
(5, 'Terciario en curso'),
(6, 'Terciario Incompleto'),
(7, 'Universitario Completo'),
(8, 'Universitario Incompleto'),
(9, 'Universitario en Curso'),
(10, 'Otro');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `educacion`
--
ALTER TABLE `educacion`
  ADD PRIMARY KEY (`idEducacion`,`Persona_idtable1`,`TipoEstudio_idTipoEstudio`),
  ADD KEY `fk_Educacion_Persona1` (`Persona_idtable1`),
  ADD KEY `fk_Educacion_TipoEstudio1` (`TipoEstudio_idTipoEstudio`);

--
-- Indices de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`idExperiencia`,`Persona_idtable1`,`TipoEmpleo_idTipoEmpleo`),
  ADD KEY `fk_Experiencia_Persona1` (`Persona_idtable1`),
  ADD KEY `fk_Experiencia_TipoEmpleo1` (`TipoEmpleo_idTipoEmpleo`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idtable1`);

--
-- Indices de la tabla `tipoempleo`
--
ALTER TABLE `tipoempleo`
  ADD PRIMARY KEY (`idTipoEmpleo`);

--
-- Indices de la tabla `tipoestudio`
--
ALTER TABLE `tipoestudio`
  ADD PRIMARY KEY (`idTipoEstudio`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `educacion`
--
ALTER TABLE `educacion`
  ADD CONSTRAINT `fk_Educacion_Persona1` FOREIGN KEY (`Persona_idtable1`) REFERENCES `persona` (`idtable1`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Educacion_TipoEstudio1` FOREIGN KEY (`TipoEstudio_idTipoEstudio`) REFERENCES `tipoestudio` (`idTipoEstudio`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD CONSTRAINT `fk_Experiencia_Persona1` FOREIGN KEY (`Persona_idtable1`) REFERENCES `persona` (`idtable1`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Experiencia_TipoEmpleo1` FOREIGN KEY (`TipoEmpleo_idTipoEmpleo`) REFERENCES `tipoempleo` (`idTipoEmpleo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
