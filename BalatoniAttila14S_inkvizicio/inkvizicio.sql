-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3307
-- Létrehozás ideje: 2019. Nov 29. 16:26
-- Kiszolgáló verziója: 10.1.34-MariaDB
-- PHP verzió: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `inkvizicio`
--
CREATE DATABASE IF NOT EXISTS `inkvizicio` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `inkvizicio`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `allapot`
--

CREATE TABLE `allapot` (
  `id` int(11) NOT NULL,
  `allapot` varchar(150) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci COMMENT='Az elfogott személyek egészségi állapotának törzsadatai';

--
-- A tábla adatainak kiíratása `allapot`
--

INSERT INTO `allapot` (`id`, `allapot`) VALUES
(1, 'egészséges, erős szervezet, allergia nincs'),
(2, 'gyenge testalkat, egészséges');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `bun`
--

CREATE TABLE `bun` (
  `id` int(11) NOT NULL,
  `bun` varchar(150) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci COMMENT='Az elfogott személyek bűneinek törzsadatai';

--
-- A tábla adatainak kiíratása `bun`
--

INSERT INTO `bun` (`id`, `bun`) VALUES
(1, 'boszorkányság'),
(2, 'kuruzslás, ellenzéki tevékenység');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eredmeny`
--

CREATE TABLE `eredmeny` (
  `id` int(11) NOT NULL,
  `eredmeny` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci COMMENT='Az elfogott személyek vallatásának eredményeinek törzsadatai';

--
-- A tábla adatainak kiíratása `eredmeny`
--

INSERT INTO `eredmeny` (`id`, `eredmeny`) VALUES
(1, 'bűneit megvallotta, bűnbánatot gyakorolt'),
(2, 'bűneit megvallotta, bűnbánatot nem gyakorolt');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `intezkedes`
--

CREATE TABLE `intezkedes` (
  `id` int(11) NOT NULL,
  `intezkedes` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci COMMENT='Az elfogottak elleni vallatás utáni intézkedések törzsadatai';

--
-- A tábla adatainak kiíratása `intezkedes`
--

INSERT INTO `intezkedes` (`id`, `intezkedes`) VALUES
(1, 'bíróságnak átadva'),
(2, 'nyelve kivágva, bíróságnak átadva');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `modszer`
--

CREATE TABLE `modszer` (
  `id` int(11) NOT NULL,
  `modszer` varchar(150) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci COMMENT='Az elfogott személyek vallatásának módszereinek törzsadatai';

--
-- A tábla adatainak kiíratása `modszer`
--

INSERT INTO `modszer` (`id`, `modszer`) VALUES
(1, 'eretnekek villája'),
(2, 'térdaprító');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szemely`
--

CREATE TABLE `szemely` (
  `id` int(11) NOT NULL,
  `nev` varchar(60) COLLATE utf8_hungarian_ci NOT NULL,
  `kor` int(11) NOT NULL,
  `suly` int(11) NOT NULL,
  `magassag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci COMMENT='Az elfogott személyek törzsadatait tartalmazza';

--
-- A tábla adatainak kiíratása `szemely`
--

INSERT INTO `szemely` (`id`, `nev`, `kor`, `suly`, `magassag`) VALUES
(1, 'Gipsz Jakab', 17, 69, 168),
(55, 'Borsika Örzsébet', 46, 69, 162);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vallatasi_ido`
--

CREATE TABLE `vallatasi_ido` (
  `id` int(11) NOT NULL,
  `kezdete` datetime NOT NULL,
  `vege` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci COMMENT='Az elfogott személyek valatásának hosszának törzsadatai';

--
-- A tábla adatainak kiíratása `vallatasi_ido`
--

INSERT INTO `vallatasi_ido` (`id`, `kezdete`, `vege`) VALUES
(1, '2017-03-11 14:00:00', '2017-03-14 14:00:00'),
(2, '2018-03-13 00:00:00', '2018-03-15 06:00:00');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `allapot`
--
ALTER TABLE `allapot`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `bun`
--
ALTER TABLE `bun`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `eredmeny`
--
ALTER TABLE `eredmeny`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `intezkedes`
--
ALTER TABLE `intezkedes`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `modszer`
--
ALTER TABLE `modszer`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `szemely`
--
ALTER TABLE `szemely`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `vallatasi_ido`
--
ALTER TABLE `vallatasi_ido`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `allapot`
--
ALTER TABLE `allapot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `bun`
--
ALTER TABLE `bun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `eredmeny`
--
ALTER TABLE `eredmeny`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `intezkedes`
--
ALTER TABLE `intezkedes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `modszer`
--
ALTER TABLE `modszer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `szemely`
--
ALTER TABLE `szemely`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT a táblához `vallatasi_ido`
--
ALTER TABLE `vallatasi_ido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
