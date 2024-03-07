-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 12 Lis 2020, 23:09
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `egzamin4`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wycieczki`
--

CREATE TABLE `wycieczki` (
  `id` int(11) NOT NULL,
  `zdjecia_id` int(11) NOT NULL,
  `dataWyjazdu` date NOT NULL,
  `cel` text NOT NULL,
  `cena` double NOT NULL,
  `dostepna` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `wycieczki`
--

INSERT INTO `wycieczki` (`id`, `zdjecia_id`, `dataWyjazdu`, `cel`, `cena`, `dostepna`) VALUES
(1, 3, '2020-11-16', 'Francja, Paryż', 1350, 0),
(2, 2, '2020-11-25', 'Grecja, Ateny', 1250, 0),
(3, 1, '2020-11-28', 'Włochy, Rzym', 1650, 0),
(4, 5, '2020-11-30', 'Polska, Warszawa', 350, 1),
(5, 6, '2020-11-28', 'Polska, Poznań', 320, 1),
(6, 7, '2020-11-15', 'Chorwacja, Dubrovnik', 1410, 1),
(7, 8, '2020-12-23', 'Węgry, Budapeszt', 1320, 1),
(8, 9, '2020-12-14', 'Rzym, Wenecja', 2100, 1),
(9, 4, '2020-12-22', 'Czechy, Praga', 1450, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zdjecia`
--

CREATE TABLE `zdjecia` (
  `id` int(11) NOT NULL,
  `nazwaPliku` text NOT NULL,
  `podpis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `zdjecia`
--

INSERT INTO `zdjecia` (`id`, `nazwaPliku`, `podpis`) VALUES
(1, '1', 'Rzym, Koloseum'),
(2, '2', 'Grecja, Ateny'),
(3, '3', 'Francja, Paryż'),
(4, '4', 'Czechy, Praga'),
(5, '5', 'Polska, Warszawa'),
(6, '6', 'Polska, Poznań'),
(7, '7', 'Chorwacja, Dubrovnik'),
(8, '8', 'Węgry, Budapeszt'),
(9, '9', 'Włochy, Wenecja');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `wycieczki`
--
ALTER TABLE `wycieczki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zdjecia`
--
ALTER TABLE `zdjecia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `wycieczki`
--
ALTER TABLE `wycieczki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `zdjecia`
--
ALTER TABLE `zdjecia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
