-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Jún 01. 00:32
-- Kiszolgáló verziója: 10.4.22-MariaDB
-- PHP verzió: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `munkatarsak`
--
CREATE DATABASE IF NOT EXISTS `munkatarsak`
	CHARACTER SET = utf8 COLLATE = utf8_hungarian_ci;
USE `munkatarsak`;
-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `dolgozo`
--

CREATE TABLE `dolgozo` (
  `szemelyiSz` bigint(11) NOT NULL,
  `dolgozoNeve` varchar(25) COLLATE utf8_hungarian_ci NOT NULL,
  `telepKod` int(1) NOT NULL,
  `belepettDatum` date NOT NULL,
  `fizetes` int(7) DEFAULT NULL,
  `irSzam` int(4) NOT NULL,
  `utcaHzszEm` varchar(30) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `dolgozo`
--

INSERT INTO `dolgozo` (`szemelyiSz`, `dolgozoNeve`, `telepKod`, `belepettDatum`, `fizetes`, `irSzam`, `utcaHzszEm`) VALUES
(16708207931, 'Nagy József', 2, '2003-01-01', 252000, 4400, 'Kórház út 1. fsz. 1.'),
(16709177491, 'Iski Géza', 2, '2003-01-01', NULL, 4400, 'Rákóczi út 23. II/13.'),
(16804169270, 'Szakács Péter', 3, '2003-04-01', 200000, 4461, 'Kossuth u. 12.'),
(16807094542, 'Nagyváradi József', 2, '2003-01-01', 200000, 4400, 'Böszörményi út 84.'),
(16901165047, 'Liptai József', 2, '2003-01-01', 216000, 4400, 'Bogáti út 14.'),
(16902053502, 'Déri Balázs', 3, '2000-01-01', 217000, 4482, 'Hadobás utca 1.'),
(16909049881, 'Hadobás László', 3, '2003-04-01', 260000, 4400, 'Fő út 29.'),
(16911137336, 'Fodor Dávid', 1, '2003-01-01', 203000, 4821, 'Izabella utca 127/a.'),
(17005232053, 'Kiss János', 3, '2003-04-01', 242000, 4326, 'Szalag út 25.'),
(17211162216, 'Tóth Sándor', 4, '2003-04-01', 442000, 4400, 'Madár utca 22.'),
(17301029597, 'Lippai Miklós', 3, '2003-01-01', 248000, 4400, 'Ungvár sétány 32. I/3.'),
(17503143761, 'Tárnoki Attila', 3, '2003-04-01', 207000, 4400, 'Északi krt. 20. IV/20.'),
(17505028740, 'Nagy József', 1, '2003-01-01', 205600, 4450, 'Debreceni út 14.'),
(17711153356, 'Molnár Bertalan', 1, '2000-01-01', 207000, 4400, 'Árpád út 85. I/6.'),
(17712239170, 'Molnár József', 1, '2000-01-01', 260000, 4484, 'Kiserdő út 1.'),
(17811111632, 'Nagyerdesi József', 1, '2000-01-01', 207000, 4482, 'Árpád út 67.'),
(17911038513, 'Bódvai Zsolt', 2, '2000-01-01', 207000, 4484, 'Bábota utca 37.'),
(17912153542, 'Nagy Géza', 2, '2003-03-03', 207000, 4621, 'Béke tér 3.'),
(18002032117, 'Karászi Zsolt', 2, '2003-03-03', 204000, 4561, 'Kerítés u. 69.'),
(18108022696, 'Balázs Tamás', 2, '2003-03-03', 246000, 4244, 'Nefelejcs út 82.'),
(18311156935, 'Bartha János', 2, '2003-03-03', 450000, 4400, 'Május 1 tér 13. V/31.'),
(25004128283, 'Vattamány Ilona', 3, '2003-04-01', 314000, 4484, 'Espán-tava utca 16.'),
(25206177588, 'Kovács Julianna', 3, '2003-06-01', 218000, 4965, 'Ferenc körút 29.'),
(25806132056, 'Sallai Margit', 3, '2003-01-01', 222000, 4432, 'Kisfaludy utca 8/a.'),
(25910161405, 'Bertli Mária', 2, '2003-05-01', 280000, 4484, 'Dergita út 5.'),
(26102243349, 'Sütő Krisztina', 2, '2003-11-01', 200000, 4491, 'Nagy út 35.'),
(26405173647, 'Simkó Katalin', 2, '2003-01-01', 246000, 4965, 'Tölgyes út 2.'),
(26411204933, 'Elek Erika', 2, '2003-04-01', 218000, 4400, 'Ságvári E. út 50.'),
(26502086347, 'Horváth Piroska', 2, '2003-01-01', 219000, 4465, 'Nyíregyházi út 32.'),
(26604268231, 'Dobsi Angéla', 1, '2003-04-01', 220000, 4450, 'Fejedelem útja 33.'),
(26606115755, 'Polgári Éva', 1, '2003-01-01', 221000, 4516, 'Margaretta út 22/b'),
(26610260542, 'Miskolczi Erzsébet', 1, '2003-01-01', 222000, 4482, 'Bazsalikom út 5.'),
(26707089953, 'Gajdos Ilona', 1, '2003-04-01', NULL, 4501, 'Felszabadulás tér'),
(26711048633, 'Papp Gabriella', 1, '2003-01-01', 205000, 4434, 'Béke út 9.'),
(26763578631, 'Bakk Andrea', 3, '2003-01-01', 302000, 4517, 'Árpád út 17.'),
(26805302341, 'Szabó Tünde', 1, '2003-01-01', 210000, 4481, 'Sugár utca 32.'),
(26903057234, 'Fekete Anikó', 1, '2000-01-01', 209000, 4485, 'Csörsz-árok utca 31.'),
(26905169916, 'Kálmán Ágnes', 1, '2000-01-01', 234000, 4400, 'Viola utca 3.'),
(26906153710, 'Doka Julianna', 3, '2000-01-01', 215000, 4625, 'Rákóczi út 95.'),
(27005312002, 'Pataki Lujza', 3, '2000-01-01', 220000, 4516, 'Fő út 51.'),
(27007238902, 'Bényei Enikő', 3, '2021-01-01', 225000, 4517, 'Sugár út 132.'),
(27104229338, 'Sebestyén Erzsébet', 3, '2000-01-01', 233000, 4440, 'Táncsics u. 9/a.'),
(27108185787, 'Popovics Veronika', 3, '2000-01-01', 222000, 4400, 'Fazekas János tér 1.'),
(27164235665, 'Gincsai Lilla', 3, '2003-01-01', 222000, 4400, 'Tisza út 34.'),
(27203196397, 'Racskó Ildikó', 3, '2000-01-01', 230000, 4532, 'Epreskert út 60.'),
(27204057947, 'Szabó Csilla', 3, '2002-06-01', 221000, 4461, 'Csillag út 16. I/4.'),
(27206298770, 'Kálmán Zsuzsa', 1, '2002-06-01', 222000, 4432, 'Kőműves út 56.'),
(27212259322, 'Szarka Olga', 1, '2002-06-01', 235000, 4541, 'Kossuth út 53. VIII/25.'),
(27303178818, 'Szilvási Brigitta', 1, '2002-06-01', 240000, 4400, 'Ipari út 32.'),
(27304151778, 'Hanyecz Anikó', 1, '2002-06-01', 222000, 4400, 'Jósa András út 16.'),
(27307092273, 'Horváth Marianna', 1, '2002-06-01', 221000, 4482, 'Ferenc körút 27. IV/13.'),
(27308096326, 'Pelyvás Judit', 2, '2002-06-01', 222000, 4405, 'Kölcsey út 10.'),
(27309269639, 'Pach Ildikó', 2, '2002-06-01', 218000, 4400, 'Bóbita utca 33.'),
(27403041476, 'Mogyorósi Henrietta', 2, '2002-06-01', 238900, 4405, 'Etel köz 6.'),
(27403054306, 'Gyurján Jolán', 4, '2002-06-01', 200000, 4400, 'Szabadság út 54.'),
(27407271071, 'Borcsik Barbara', 4, '2022-06-01', 235000, 4484, 'Kiserdő u. 24.'),
(27409054801, 'Morovszki Ilona', 4, '2002-06-01', 234000, 4482, 'Vasvári Pál út 13.'),
(27412112619, 'Varga Enikő', 4, '2002-06-01', 233000, 4400, 'Szent István út 46.'),
(27501016193, 'Nagy Ágota', 4, '2002-06-01', 200000, 4400, 'Család út 140.'),
(27502139330, 'Komáry Eszter', 4, '2002-06-01', 207000, 4463, 'Orgona út 38.'),
(27503123421, 'Darabos Boglárka', 4, '2005-03-01', 218000, 4484, 'Megyer halom utca 6.'),
(27503163922, 'Gyüre Edina', 4, '2005-03-01', 245400, 4320, 'Dohány utca 7. 4/13.'),
(27506154778, 'Kovács Enikő', 4, '2005-03-01', 265000, 4432, 'Új Ernő u. 24/a.'),
(27507092933, 'Halasi Adrienn', 4, '2005-03-01', 302000, 4484, 'Esbó halom u. 9.'),
(27510102835, 'Pusztafi Szilvia', 4, '2009-01-01', 214200, 4400, 'Báthory utca 7.'),
(27512040339, 'Kenyeres Nóra', 2, '2005-03-01', 302000, 4561, 'Váci Mihály utca 62.'),
(27602110224, 'Tóth Erzsébet', 2, '2005-03-01', 244000, 4400, 'Ungvár sétány 6. VIII/50.'),
(27605282868, 'Bujdosó Barbara', 2, '2005-03-01', 218000, 4400, 'Kórház út 5.'),
(27606163216, 'Tóth Anikó', 4, '2005-03-01', 306000, 4487, 'Etel köz 7.'),
(27606269755, 'Kovács Irén', 4, '2002-06-01', 302000, 4600, 'Ferenc út 2.'),
(27609073249, 'Molnár Edina', 4, '2005-03-01', 298000, 4484, 'Apát szeg u. 1.'),
(27609175036, 'Déri Zsuzsa', 4, '2005-03-01', 226500, 4484, 'Égett érfark út 48.'),
(27611191058, 'Ács Ágnes', 4, '2005-03-01', 330000, 4484, 'Jalapár u. 14.'),
(27612142500, 'Kaselák Bernadett', 1, '2005-03-01', 222000, 4400, 'Szabadság út 72.'),
(27612164535, 'Kovács Enikő', 1, '2009-01-01', 218000, 4482, 'Tulipán u. 29.'),
(27701058706, 'Kovács Enikő', 1, '2005-03-01', 244000, 4400, 'Arany J. u. 87.'),
(27702033096, 'Szarka Tímea', 2, '2005-03-01', 318000, 4934, 'Ószőlő út 98.'),
(27703025974, 'Krajcsovics Ibolya', 2, '2005-03-01', 243000, 4400, 'Úttörő utca 5.'),
(27703035970, 'Busák Andrea', 2, '2005-03-01', 218000, 4832, 'Ady Endre út 21.'),
(27703084269, 'Batta Rita', 4, '2008-01-01', 360000, 4484, 'Pogány-sziget 32.'),
(27704054311, 'Imre Rita', 4, '2010-01-01', 229500, 4485, 'Ördög-árok u. 67.'),
(27704252289, 'Radó Eszter', 1, '2010-01-01', 314000, 4400, 'Dózsa Gy.u.'),
(27705022069, 'Balogh Gyöngyi', 1, '2010-01-01', 310000, 4400, 'Négyes huszárok útja 2.'),
(27706156598, 'Király Krisztina', 2, '2010-01-01', 235000, 4461, 'Család út 73.'),
(27709220365, 'Tolvaj Csilla', 2, '2010-01-01', 234000, 4516, 'Arany János utca 42.'),
(27801243675, 'Orosz Ildikó', 2, '2010-01-01', 233000, 4501, 'Dózsa Gy. út 67.'),
(27802040343, 'Csegény Andrea', 2, '2010-01-01', 245400, 4911, 'Vörös rózsa utca 9.'),
(27803122657, 'Bodó Éva', 4, '2010-01-01', 294000, 4551, 'Szent István út 9.'),
(27805171958, 'Dudás Bernadett', 4, '2010-01-01', 245400, 4400, 'Stadion út 32. 2/11.'),
(27809094423, 'Vida Rózsa', 4, '2010-01-01', 326000, 4484, 'Templomszeg utca 9.'),
(27904154849, 'Mihály Mária', 4, '2010-01-01', 322000, 4484, 'Nagyerdő út 34.'),
(27910148472, 'Kohán Angéla', 4, '2010-01-01', 245400, 4400, 'Ifjúság utca 11/a.'),
(27912032195, 'Juhász Mária', 4, '2010-01-01', 302000, 4400, 'Árpád út 33.'),
(28003308882, 'Balogh Edina', 1, '2010-01-01', 460000, 4400, 'Dessewffy utca 25.'),
(28007081653, 'Dombrádi Krisztina', 3, '2010-01-01', 489000, 4551, 'Szabadság bokor 1/a.'),
(30109259266, 'Kenyeres Péter', 1, '2003-01-01', 220000, 4400, 'Rozmaring út 2/a.'),
(30302124397, 'Szabad Bence', 1, '2003-04-01', 216000, 4244, 'Pipacs út 6.'),
(40101066067, 'Hernádi Ibolya', 3, '2003-04-01', 275000, 4400, 'Kossuth út 50.'),
(40211264784, 'Barna Mária', 3, '2003-01-01', 302000, 4300, 'Lukács Ödön út 23.'),
(40311013061, 'Jobbágy Erzsébet', 3, '2003-01-01', 333000, 4532, 'Honfoglalás út');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `irszamok`
--

CREATE TABLE `irszamok` (
  `irSzam` int(4) NOT NULL,
  `varos` varchar(25) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `irszamok`
--

INSERT INTO `irszamok` (`irSzam`, `varos`) VALUES
(4087, 'Hajdúdorog'),
(4244, 'Újfehértó'),
(4300, 'Nyírbátor'),
(4320, 'Nagykálló'),
(4326, 'Máriapócs'),
(4327, 'Pócspetri'),
(4400, 'Nyíregyháza'),
(4405, 'Nyíregyháza (Borbánya)'),
(4413, 'Nyíregyháza (Jósaváros)'),
(4431, 'Nyíregyháza (Sóstófürdő)'),
(4432, 'Nyíregyháza (Nyírszőlős)'),
(4433, 'Nyíregyháza (Felsősima)'),
(4434, 'Kálmánháza'),
(4440, 'Tiszavasvári'),
(4450, 'Tiszalök'),
(4461, 'Nyírtelek'),
(4463, 'Tiszanagyfalu'),
(4465, 'Rakamaz'),
(4481, 'Nyíregyháza (Sóstóhegy)'),
(4482, 'Kótaj'),
(4484, 'Ibrány'),
(4485, 'Nagyhalász'),
(4487, 'Tiszatelek'),
(4491, 'Újdombrád'),
(4501, 'Kemecse'),
(4516, 'Demecser'),
(4517, 'Gégény'),
(4532, 'Nyírtura'),
(4541, 'Nyírjákó'),
(4551, 'Nyíregyháza (Oros)'),
(4561, 'Baktalórántháza'),
(4600, 'Kisvárda'),
(4621, 'Fényeslitke'),
(4625, 'Záhony'),
(4821, 'Ópályi'),
(4832, 'Tiszavid'),
(4911, 'Nábrád'),
(4934, 'Beregdaróc'),
(4965, 'Kölcse');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `telep`
--

CREATE TABLE `telep` (
  `telepKod` int(1) NOT NULL,
  `telepNeve` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `igazgatoSzSz` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `telep`
--

INSERT INTO `telep` (`telepKod`, `telepNeve`, `igazgatoSzSz`) VALUES
(1, 'Kótaji Telep', 28003308882),
(2, 'Nyírtelki Telep', 18311156935),
(3, 'Orosi Telep', 28007081653),
(4, 'Ibrányi Telep', 17211162216),
(5, 'Szivattúház', 28003308882);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `dolgozo`
--
ALTER TABLE `dolgozo`
  ADD PRIMARY KEY (`szemelyiSz`),
  ADD KEY `irSzam` (`irSzam`),
  ADD KEY `telepKod` (`telepKod`);

--
-- A tábla indexei `irszamok`
--
ALTER TABLE `irszamok`
  ADD PRIMARY KEY (`irSzam`);

--
-- A tábla indexei `telep`
--
ALTER TABLE `telep`
  ADD PRIMARY KEY (`telepKod`),
  ADD KEY `telep_ibfk_1` (`igazgatoSzSz`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `dolgozo`
--
ALTER TABLE `dolgozo`
  ADD CONSTRAINT `dolgozo_ibfk_1` FOREIGN KEY (`irSzam`) REFERENCES `irszamok` (`irSzam`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dolgozo_ibfk_2` FOREIGN KEY (`telepKod`) REFERENCES `telep` (`telepKod`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `telep`
--
ALTER TABLE `telep`
  ADD CONSTRAINT `telep_ibfk_1` FOREIGN KEY (`igazgatoSzSz`) REFERENCES `dolgozo` (`szemelyiSz`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
