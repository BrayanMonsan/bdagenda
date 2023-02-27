-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 23, 2023 at 05:10 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdagenda`
--

-- --------------------------------------------------------

--
-- Table structure for table `carrera`
--

CREATE TABLE `carrera` (
  `idcarrera` varchar(4) COLLATE utf8_spanish2_ci NOT NULL,
  `nom-carrera` varchar(70) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `carrera`
--

INSERT INTO `carrera` (`idcarrera`, `nom-carrera`) VALUES
('', NULL),
('LITS', 'LICENCIATURA EN INGENIERIA EN TECNOLOGIAS DE SOFTWARE'),
('LSC', 'LICENCIATURA EN SISTEMAS COMPUTACIONALES');

-- --------------------------------------------------------

--
-- Table structure for table `lugar`
--

CREATE TABLE `lugar` (
  `idlugar` varchar(4) COLLATE utf8_spanish2_ci NOT NULL,
  `nom-lugar` varchar(35) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `lugar`
--

INSERT INTO `lugar` (`idlugar`, `nom-lugar`) VALUES
('1', 'Salón de clases A1'),
('2', 'Salón de clases A1'),
('3', 'Sala de cómputo'),
('4', 'Sala de cómputo'),
('5', 'Salón de clases A1');

-- --------------------------------------------------------

--
-- Table structure for table `materia`
--

CREATE TABLE `materia` (
  `idmateria` varchar(4) COLLATE utf8_spanish2_ci NOT NULL,
  `nom-materia` varchar(35) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `materia`
--

INSERT INTO `materia` (`idmateria`, `nom-materia`) VALUES
('1', 'Administración de base de datos'),
('2', 'Compiladores'),
('3', 'Programación de aplicaciones web'),
('4', 'Redes y servicios de comunicaciones'),
('5', 'Investigación de operaciones II');

-- --------------------------------------------------------

--
-- Table structure for table `profesor`
--

CREATE TABLE `profesor` (
  `idprofesor` varchar(4) COLLATE utf8_spanish2_ci NOT NULL,
  `nom-profesor` varchar(35) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `profesor`
--

INSERT INTO `profesor` (`idprofesor`, `nom-profesor`) VALUES
('1', 'Hector Roberto Nuricumbo Castro'),
('2', 'Juan José Tevera Mandujano'),
('3', 'Rigoberto Pérez Ovando'),
('4', 'Vicente Hernández Reyes'),
('5', 'Sabino Velázquez Trujillo');

-- --------------------------------------------------------

--
-- Table structure for table `registro`
--

CREATE TABLE `registro` (
  `idcalendario` int(5) NOT NULL,
  `idmateria` varchar(4) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `idprofesor` varchar(4) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `idlugar` varchar(4) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `temas` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `gradogrupo` varchar(2) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `idcarrera` varchar(4) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `idusuario` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `registro`
--

INSERT INTO `registro` (`idcalendario`, `idmateria`, `idprofesor`, `idlugar`, `temas`, `gradogrupo`, `idcarrera`, `idusuario`) VALUES
(1, '1', '1', '1', 'Conexión de base de datos', '5J', 'LSC', 1),
(2, '2', '2', '2', 'Analizador Léxico', '5J', 'LSC', 2),
(3, '3', '3', '3', 'NIF A-4', '5J', 'LSC', 3),
(4, '4', '4', '4', 'Protocolos TCP/IP', '5J', 'LSC', 4),
(5, '5', '5', '5', 'Método simplex y Gran M', '5J', 'LSC', 5);

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(7) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`idusuario`, `usuario`, `pass`) VALUES
(1, 'Brayan', '12345'),
(2, 'Kevin', '12345'),
(3, 'Brenda', '12345'),
(4, 'Johan', '12345'),
(5, 'Vannesa', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`idcarrera`);

--
-- Indexes for table `lugar`
--
ALTER TABLE `lugar`
  ADD PRIMARY KEY (`idlugar`);

--
-- Indexes for table `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`idmateria`);

--
-- Indexes for table `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`idprofesor`);

--
-- Indexes for table `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`idcalendario`),
  ADD KEY `idlugar` (`idlugar`),
  ADD KEY `idmateria` (`idmateria`),
  ADD KEY `idprofesor` (`idprofesor`),
  ADD KEY `idcarrera` (`idcarrera`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registro`
--
ALTER TABLE `registro`
  MODIFY `idcalendario` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `registro`
--
ALTER TABLE `registro`
  ADD CONSTRAINT `registro_ibfk_1` FOREIGN KEY (`idlugar`) REFERENCES `lugar` (`idlugar`),
  ADD CONSTRAINT `registro_ibfk_2` FOREIGN KEY (`idmateria`) REFERENCES `materia` (`idmateria`),
  ADD CONSTRAINT `registro_ibfk_3` FOREIGN KEY (`idprofesor`) REFERENCES `profesor` (`idprofesor`),
  ADD CONSTRAINT `registro_ibfk_4` FOREIGN KEY (`idcarrera`) REFERENCES `carrera` (`idcarrera`),
  ADD CONSTRAINT `registro_ibfk_5` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
