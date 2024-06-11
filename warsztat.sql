-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 11, 2024 at 11:13 AM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `warsztat4`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwisko` varchar(20) NOT NULL,
  `imie` varchar(15) NOT NULL,
  `imie2` varchar(15) DEFAULT NULL,
  `data_ur` date NOT NULL,
  `pesel` char(11) DEFAULT NULL,
  `ulica` varchar(25) DEFAULT NULL,
  `nr_d` varchar(10) DEFAULT NULL,
  `kod_pocz` varchar(12) DEFAULT NULL,
  `miasto` varchar(30) NOT NULL,
  `kraj` varchar(15) DEFAULT NULL,
  `narodowosc` varchar(15) DEFAULT NULL,
  `stanowisko` varchar(30) NOT NULL,
  `plec` enum('M','K') NOT NULL,
  `zarobki` decimal(10,0) NOT NULL,
  `data_zatr` date NOT NULL,
  `data_zw` date DEFAULT NULL,
  `okr_zatr` varchar(15) DEFAULT NULL,
  `nr_tel` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `wykszt` varchar(15) NOT NULL,
  `zawod_wy` varchar(30) DEFAULT NULL,
  `uzytk` varchar(12) DEFAULT NULL,
  `hash` varchar(60) DEFAULT NULL,
  `depart` varchar(15) DEFAULT NULL,
  `szef_id` int(11) UNSIGNED DEFAULT NULL,
  `warsztat_id` int(10) UNSIGNED NOT NULL,
  `nr_dow` varchar(12) DEFAULT NULL,
  `wydany` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `pracownicy`
--

INSERT INTO `pracownicy` (`id`, `nazwisko`, `imie`, `imie2`, `data_ur`, `pesel`, `ulica`, `nr_d`, `kod_pocz`, `miasto`, `kraj`, `narodowosc`, `stanowisko`, `plec`, `zarobki`, `data_zatr`, `data_zw`, `okr_zatr`, `nr_tel`, `email`, `wykszt`, `zawod_wy`, `uzytk`, `hash`, `depart`, `szef_id`, `warsztat_id`, `nr_dow`, `wydany`) VALUES
(1, 'Nowak', 'Jan', 'Bonifacy', '0000-00-00', NULL, NULL, NULL, NULL, '', NULL, NULL, 'Elektryk', 'M', 0, '0000-00-00', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stanowisko` (`stanowisko`),
  ADD KEY `szef_id` (`szef_id`),
  ADD KEY `warsztat_id` (`warsztat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD CONSTRAINT `pracownicy_ibfk_1` FOREIGN KEY (`stanowisko`) REFERENCES `stanowiska` (`nazwa`),
  ADD CONSTRAINT `pracownicy_ibfk_2` FOREIGN KEY (`szef_id`) REFERENCES `pracownicy` (`id`),
  ADD CONSTRAINT `pracownicy_ibfk_3` FOREIGN KEY (`warsztat_id`) REFERENCES `warsztat` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
