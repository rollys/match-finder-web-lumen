-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 07, 2019 at 02:11 PM
-- Server version: 10.3.14-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id4413490_matchfinder`
--
CREATE DATABASE IF NOT EXISTS `id4413490_matchfinder` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id4413490_matchfinder`;

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `id` int(12) NOT NULL,
  `business_type` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `logo` varchar(150) NOT NULL,
  `description` varchar(250) NOT NULL,
  `price` varchar(5) NOT NULL,
  `seating` int(10) NOT NULL,
  `latitude` varchar(15) NOT NULL,
  `longitude` varchar(15) NOT NULL,
  `opening_days` varchar(150) NOT NULL,
  `init_hour` varchar(10) NOT NULL,
  `fin_hour` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `businesses`
--

INSERT INTO `businesses` (`id`, `business_type`, `name`, `logo`, `description`, `price`, `seating`, `latitude`, `longitude`, `opening_days`, `init_hour`, `fin_hour`) VALUES
(1, 'lancenter', 'good game', '/images/etc.jpg', 'juega limpio, juega bien', '1.50', 15, '-12.0673542', '-77.0384829', 'lunes, martes, miercoles, jueves, viernes, sabado, domingo', '07:00AM', '23:00PM'),
(2, 'lancenter', 'casonitanet', 'c', 'lancenter donde puedes comer', '1.50', 12, '-12.0661749', '-77.0358227', 's', 'a', 'b'),
(3, 'lancenter', 'valkyrianet', 'c', 'La 6ta hora es gratis', '2.50', 13, '-12.0678373', '-77.0358406', 's', 'a', 'b'),
(4, 'lancenter', 'marinet', 'c', 'd', '1.50', 25, '-12.0674589', '-77.0380403', 's', 'a', 'b');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(12) NOT NULL,
  `game_type` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `game_type`, `name`, `logo`, `description`) VALUES
(1, 'MOBA', 'Dota 2', '/images/dota-2.jpg', 'Lorem ipsum'),
(3, 'asd', 'sad', '/images/dota-2.jpg', 'Lorem ipsum'),
(4, 'MOBA', 'league of legends', '/images/lol.jpg', 'videojuego de multijugadores en línea'),
(5, 'Battle Royale', 'PlayerUnknowns', '/images/PlayerUnknowns.jpg', 'videojuego de acción en el cual hasta 100 jugadores pelean en una Batalla Real'),
(6, 'Battle Royale', 'Fornite', '/images/Fornite.jpg', 'videojuego de acción en el cual hasta 100 jugadores pelean en una Batalla Real'),
(7, 'RTS', 'starcraft II', '/images/starcraft.jpg', 'videojuego de estrategia en tiempo real de ciencia ficción militar');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(12) NOT NULL,
  `business_id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL,
  `date_time` varchar(10) NOT NULL,
  `init_hour` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `business_id`, `user_id`, `date_time`, `init_hour`) VALUES
(1, 1, 1, '25/18/2018', '04:00PM'),
(2, 1, 1, '25/18/2018', '05:00PM'),
(4, 1, 1, '25/18/2018', '05:00PM'),
(5, 1, 1, 'android.su', 'android.su'),
(6, 1, 1, 'android.su', 'android.su'),
(7, 1, 1, 'android.su', 'android.su'),
(8, 1, 1, 'android.su', 'android.su');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(12) NOT NULL,
  `rol` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `birthday` varchar(25) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `sex` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `rol`, `username`, `password`, `name`, `lastname`, `birthday`, `mail`, `sex`) VALUES
(1, 'administrador', 'administrador', '123456789', 'test', 'test', '01/12/18', 'asas@mail.com', 'masculino'),
(3, 'usuario', 'jeanhush', 'a123', 'jean', 'alfaro', '09/13/97', 'alfaro@gmail.com', 'masculino'),
(4, 'usuario', 'sideral', 'b123', 'jesus', 'hinoztroza', '05/05/93', 'jesus@gmail.com', 'masculino'),
(5, 'usuario', 'smasho', 'c123', 'freddy', 'sina', '11/07/94', 'freddy@gmail.com', 'masculino');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
