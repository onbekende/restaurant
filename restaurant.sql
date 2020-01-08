-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 08 jan 2020 om 20:28
-- Serverversie: 10.1.38-MariaDB
-- PHP-versie: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ordertable`
--

CREATE TABLE `ordertable` (
  `orderId` int(11) NOT NULL,
  `reservated` smallint(6) NOT NULL DEFAULT '0',
  `tableId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `ordertable`
--

INSERT INTO `ordertable` (`orderId`, `reservated`, `tableId`) VALUES
(5, 1, 1),
(6, 1, 1),
(7, 1, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ordertableproduct`
--

CREATE TABLE `ordertableproduct` (
  `id` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `ordertableproduct`
--

INSERT INTO `ordertableproduct` (`id`, `orderId`, `productId`) VALUES
(14, 5, 2),
(15, 5, 2),
(16, 5, 2),
(17, 5, 1),
(18, 5, 1),
(19, 7, 1),
(20, 7, 1),
(21, 7, 2),
(22, 7, 2),
(23, 7, 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `product`
--

INSERT INTO `product` (`id`, `name`, `price`) VALUES
(1, 'Pasta carbonara', 5),
(2, 'Pasta Arabiata', 5.5);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `restauranttable`
--

CREATE TABLE `restauranttable` (
  `tableid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `restauranttable`
--

INSERT INTO `restauranttable` (`tableid`, `name`, `seats`) VALUES
(1, 'tafel 9', 4);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `ordertable`
--
ALTER TABLE `ordertable`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexen voor tabel `ordertableproduct`
--
ALTER TABLE `ordertableproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `restauranttable`
--
ALTER TABLE `restauranttable`
  ADD PRIMARY KEY (`tableid`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `ordertable`
--
ALTER TABLE `ordertable`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT voor een tabel `ordertableproduct`
--
ALTER TABLE `ordertableproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT voor een tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `restauranttable`
--
ALTER TABLE `restauranttable`
  MODIFY `tableid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
