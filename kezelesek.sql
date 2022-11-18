-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Feb 01. 19:16
-- Kiszolgáló verziója: 10.4.11-MariaDB
-- PHP verzió: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `kezelesek`
--

create database kezelesek;
Use kezelesek;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `beteg`
--

CREATE TABLE `beteg` (
  `tajSzam` int(9) NOT NULL,
  `betegNeve` varchar(25) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `beteg`
--

INSERT INTO `beteg` (`tajSzam`, `betegNeve`) VALUES
(203196397, 'Rózsa Ildikó'),
(411204933, 'Erdei Erika'),
(501016193, 'Nagy Ágota'),
(611264784, 'Barna Barbara'),
(802040343, 'Cseles Andrea'),
(803122657, 'Nagy Éva'),
(807094542, 'Nagy József');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `betegsegek`
--

CREATE TABLE `betegsegek` (
  `bno` varchar(5) COLLATE utf8_hungarian_ci NOT NULL,
  `betegsegNev` varchar(20) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `betegsegek`
--

INSERT INTO `betegsegek` (`bno`, `betegsegNev`) VALUES
('A0290', 'Salmonella fertőzés'),
('B0190', 'Bárányhimlő'),
('B3420', 'Coronavirus fertőzés'),
('B9093', 'TBC'),
('I1590', 'Magasvérnyomás'),
('J0390', 'Mandulagyulladás'),
('J1010', 'Influenza'),
('T6202', 'Gombamérgezés');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kezeles`
--

CREATE TABLE `kezeles` (
  `taj_Beteg` int(9) NOT NULL,
  `kezel_Datum` date NOT NULL,
  `orvosKod` int(2) NOT NULL,
  `bno` varchar(5) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `kezeles`
--

INSERT INTO `kezeles` (`taj_Beteg`, `kezel_Datum`, `orvosKod`, `bno`) VALUES
(411204933, '2022-01-03', 11, 'A0290'),
(807094542, '2022-01-03', 11, 'A0290'),
(501016193, '2022-01-04', 11, 'B3420'),
(803122657, '2022-01-05', 39, 'J0390'),
(807094542, '2022-01-06', 52, 'A0290'),
(807094542, '2022-01-07', 11, 'I1590'),
(501016193, '2022-01-10', 11, 'J1010'),
(802040343, '2022-01-10', 25, 'J1010'),
(802040343, '2022-01-10', 25, 'T6202'),
(411204933, '2022-01-11', 11, 'B0190');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `orvos`
--

CREATE TABLE `orvos` (
  `orvos_id` int(2) NOT NULL,
  `orvosNeve` varchar(25) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `orvos`
--

INSERT INTO `orvos` (`orvos_id`, `orvosNeve`) VALUES
(11, 'dr. Ibrányi László'),
(12, 'dr. Szegedi Sándor'),
(25, 'dr. Péter Ilona'),
(39, 'dr. Rendes Ferenc'),
(52, 'dr. Szertelen Lenke'),
(55, 'dr. Somoskői János');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `beteg`
--
ALTER TABLE `beteg`
  ADD PRIMARY KEY (`tajSzam`);

--
-- A tábla indexei `betegsegek`
--
ALTER TABLE `betegsegek`
  ADD PRIMARY KEY (`bno`);

--
-- A tábla indexei `kezeles`
--
ALTER TABLE `kezeles`
  ADD PRIMARY KEY (`kezel_Datum`,`taj_Beteg`,`orvosKod`,`bno`),
  ADD KEY `taj_Beteg` (`taj_Beteg`),
  ADD KEY `orvosKod` (`orvosKod`),
  ADD KEY `bno` (`bno`) USING BTREE;

--
-- A tábla indexei `orvos`
--
ALTER TABLE `orvos`
  ADD PRIMARY KEY (`orvos_id`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `kezeles`
--
ALTER TABLE `kezeles`
  ADD CONSTRAINT `kezeles_ibfk_1` FOREIGN KEY (`taj_Beteg`) REFERENCES `beteg` (`tajSzam`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kezeles_ibfk_2` FOREIGN KEY (`bno`) REFERENCES `betegsegek` (`bno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kezeles_ibfk_3` FOREIGN KEY (`orvosKod`) REFERENCES `orvos` (`orvos_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
