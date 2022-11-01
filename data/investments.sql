-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: oct. 31, 2022 la 06:03 PM
-- Versiune server: 10.4.25-MariaDB
-- Versiune PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `investments`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `investments`
--

CREATE TABLE `investments` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `symbol` text NOT NULL,
  `openD` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `openP` int(11) NOT NULL,
  `marketP` int(11) NOT NULL,
  `domain` text NOT NULL,
  `dividendD` date NOT NULL,
  `earningD` date NOT NULL,
  `corporation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `investments`
--

INSERT INTO `investments` (`id`, `name`, `symbol`, `openD`, `quantity`, `openP`, `marketP`, `domain`, `dividendD`, `earningD`, `corporation`) VALUES
(2, 'NVIDIA CORP', 'NVDA', '2022-10-27', 6, 125, 127, 'semiconductors', '2022-11-03', '2022-11-05', 'https://www.youtube.com/watch?v=DJJi9HpT9Zw'),
(3, 'Moderna Inc', 'MRNA', '2022-10-29', 3, 138, 151, 'biotechnology', '2022-10-29', '2022-11-03', 'https://www.tradingview.com/symbols/NASDAQ-MRNA/'),
(4, 'Palantir Technologies', 'PLTR', '2022-10-29', 25, 7, 9, 'software', '2022-10-29', '2022-11-07', 'https://www.tradingview.com/symbols/NYSE-PLTR/');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `investments`
--
ALTER TABLE `investments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `investments`
--
ALTER TABLE `investments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
