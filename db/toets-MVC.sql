-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 01 jun 2023 om 12:18
-- Serverversie: 5.7.36
-- PHP-versie: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toets-MVC`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Examen`
--

DROP TABLE IF EXISTS `Examen`;
CREATE TABLE IF NOT EXISTS `Examen` (
  `Id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `StudentId` varchar(20) NOT NULL,
  `Rijschool` varchar(50) NOT NULL,
  `Stad` varchar(20) NOT NULL,
  `Rijbewijscategorie` varchar(10) NOT NULL,
  `Datum` date NOT NULL,
  `Uitslag` varchar(20) NOT NULL,
  `IsActief` bit(1) NOT NULL DEFAULT b'1',
  `OpMerkingen` varchar(250) DEFAULT NULL,
  `DatumAanGemaakt` datetime(6) NOT NULL,
  `DatumGewijzigd` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `Examen`
--

INSERT INTO `Examen` (`Id`, `StudentId`, `Rijschool`, `Stad`, `Rijbewijscategorie`, `Datum`, `Uitslag`, `IsActief`, `OpMerkingen`, `DatumAanGemaakt`, `DatumGewijzigd`) VALUES
(1, '100234', 'VolGasVooruit', 'Rotterdam', 'B', '2023-04-03', 'Geslaagd', b'1', NULL, '2023-06-01 14:18:01.438769', '2023-06-01 14:18:01.438773'),
(2, '123432', 'InZijnVierDoorDeBocht', 'Sliedrecht', 'C', '2023-03-01', 'Geslaagd', b'1', NULL, '2023-06-01 14:18:01.494802', '2023-06-01 14:18:01.494807'),
(3, '103234', 'LinksomRechtsom', 'Dordrecht', 'D', '2023-05-15', 'Geslaagd', b'1', NULL, '2023-06-01 14:18:01.541848', '2023-06-01 14:18:01.541852'),
(4, '106452', 'OpDeVluchtStrook', 'Zwijndrecht', 'AM', '2023-05-08', 'Gezakt', b'1', NULL, '2023-06-01 14:18:01.588589', '2023-06-01 14:18:01.588594'),
(5, '104546', 'RechtDoorEnGaan', 'Rotterdam', 'B', '2023-04-17', 'Gezakt', b'1', NULL, '2023-06-01 14:18:01.636327', '2023-06-01 14:18:01.636333'),
(6, '100333', 'AltijdGeslaagd', 'Dordrecht', 'B', '2023-05-12', 'Geslaagd', b'1', NULL, '2023-06-01 14:18:01.685288', '2023-06-01 14:18:01.685292'),
(7, '124444', 'RijlesVoorJou', 'Rotterdam', 'B', '2023-04-12', 'Geslaagd', b'1', NULL, '2023-06-01 14:18:01.735706', '2023-06-01 14:18:01.735711');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ExamenPerExaminator`
--

DROP TABLE IF EXISTS `ExamenPerExaminator`;
CREATE TABLE IF NOT EXISTS `ExamenPerExaminator` (
  `Id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ExamenId` tinyint(3) UNSIGNED NOT NULL,
  `ExaminatorId` tinyint(3) UNSIGNED NOT NULL,
  `IsActief` bit(1) NOT NULL DEFAULT b'1',
  `OpMerkingen` varchar(250) DEFAULT NULL,
  `DatumAanGemaakt` datetime(6) NOT NULL,
  `DatumGewijzigd` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `ExamenId` (`ExamenId`),
  KEY `ExaminatorId` (`ExaminatorId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `ExamenPerExaminator`
--

INSERT INTO `ExamenPerExaminator` (`Id`, `ExamenId`, `ExaminatorId`, `IsActief`, `OpMerkingen`, `DatumAanGemaakt`, `DatumGewijzigd`) VALUES
(1, 1, 3, b'1', NULL, '2023-06-01 14:18:01.972945', '2023-06-01 14:18:01.972949'),
(2, 3, 3, b'1', NULL, '2023-06-01 14:18:02.009750', '2023-06-01 14:18:02.009754'),
(3, 2, 2, b'1', NULL, '2023-06-01 14:18:02.050989', '2023-06-01 14:18:02.050994'),
(4, 4, 1, b'1', NULL, '2023-06-01 14:18:02.084764', '2023-06-01 14:18:02.084769'),
(5, 7, 3, b'1', NULL, '2023-06-01 14:18:02.125106', '2023-06-01 14:18:02.125112'),
(6, 6, 2, b'1', NULL, '2023-06-01 14:18:02.166950', '2023-06-01 14:18:02.166956'),
(7, 5, 4, b'1', NULL, '2023-06-01 14:18:02.210617', '2023-06-01 14:18:02.210623');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Examinator`
--

DROP TABLE IF EXISTS `Examinator`;
CREATE TABLE IF NOT EXISTS `Examinator` (
  `Id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Naam` varchar(30) NOT NULL,
  `Mobiel` varchar(30) NOT NULL,
  `IsActief` bit(1) NOT NULL DEFAULT b'1',
  `OpMerkingen` varchar(250) DEFAULT NULL,
  `DatumAanGemaakt` datetime(6) NOT NULL,
  `DatumGewijzigd` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `Examinator`
--

INSERT INTO `Examinator` (`Id`, `Naam`, `Mobiel`, `IsActief`, `OpMerkingen`, `DatumAanGemaakt`, `DatumGewijzigd`) VALUES
(1, 'Manuel van Meerkeren', '06-28493823', b'1', NULL, '2023-06-01 14:18:01.793930', '2023-06-01 14:18:01.793937'),
(2, 'Lissette den Dongen', '06-24383299', b'1', NULL, '2023-06-01 14:18:01.838123', '2023-06-01 14:18:01.838127'),
(3, 'Jurswailly Luciano', '06-48293846', b'1', NULL, '2023-06-01 14:18:01.887142', '2023-06-01 14:18:01.887148'),
(4, 'Naswha Salawi', '06-34291219', b'1', NULL, '2023-06-01 14:18:01.930938', '2023-06-01 14:18:01.930942');

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `ExamenPerExaminator`
--
ALTER TABLE `ExamenPerExaminator`
  ADD CONSTRAINT `examenperexaminator_ibfk_1` FOREIGN KEY (`ExamenId`) REFERENCES `Examen` (`Id`),
  ADD CONSTRAINT `examenperexaminator_ibfk_2` FOREIGN KEY (`ExaminatorId`) REFERENCES `Examinator` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
