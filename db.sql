-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 10. Nov 2020 um 14:34
-- Server-Version: 10.4.14-MariaDB
-- PHP-Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `funda_db`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `content` varchar(128) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `entries`
--

CREATE TABLE `entries` (
  `entry_id` int(11) NOT NULL,
  `subject_id` varchar(30) DEFAULT NULL,
  `user_id` varchar(20) NOT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `entries`
--

INSERT INTO `entries` (`entry_id`, `subject_id`, `user_id`, `question`, `answer`, `created_at`) VALUES
(100, 'BIOS & UEFI', 'X', 'Was ist ein BIOS?', 'Basic Input/Output System\r\nDas ursprüngliche PC-BIOS erschien 1981 mit dem ersten IBM-PC. Die Abkürzung BIOS steht für Basic Input Output System, zu Deutsch grundlegendes Ein- und Ausgabesystem. Die eigentliche Aufgabe des BIOS ist es, den PC in einen betriebsbereiten Zustand zu versetzen. \r\n\r\nDazu bringt es den Computer in einen festgelegten Anfangszustand, prüft mit dem Power-On Self Test die Funktionstüchtigkeit und übergibt dann die Kontrolle über den PC an das Betriebssystem oder ein bootfähiges Medium.\r\n', '2020-11-05 15:31:15'),
(101, 'BIOS & UEFI', 'X', 'Wie greife ich auf das BIOS zu?', 'Es gibt verschiedene Möglichkeiten.\r\n\r\nBeim starten des Computers wird meist auf dem ersten Bildschirm angezeigt wie man ins BIOS gelangt z.B. F2, F12, ENTF oder ESC.\r\n', '2020-11-05 15:31:15');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `grades`
--

CREATE TABLE `grades` (
  `grade_id` int(11) NOT NULL,
  `grade` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `note` varchar(128) NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rates`
--

CREATE TABLE `rates` (
  `rating_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `subjects`
--

INSERT INTO `subjects` (`subject_id`, `title`, `description`) VALUES
(1, 'BIOS & UEFI', ''),
(2, 'CPU', ''),
(3, 'Festplatten', ''),
(4, 'Binärsystem', ''),
(5, 'Grafikkarten', ''),
(6, 'Netzwerktechnik', ''),
(7, 'RAM', ''),
(8, 'Bluetooth', ''),
(9, 'Multimedia', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `role` enum('admin','teacher','student','') NOT NULL,
  `username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `password`, `role`, `username`) VALUES
(1, 'Robin', 'Leber', 'robin.leber@itacsoftware.com', 'BED128365216C019988915ED3ADD75', 'student', 'robinl'),
(2, 'Max', 'Mustermann', 'max.mm@provider.de', 'E22A63FB76874C99488435F26B117E', 'admin', 'maxm'),
(3, 'Erika', 'Mustermann', 'erika.mm@provider.de', '5F4DCC3B5AA765D61D8327DEB882CF', 'teacher', 'erikam'),
(4, 'John', 'Doe', 'john.doe@provider.de', '6C074FA94C98638DFE3E3B74240573', 'student', 'johnd'),
(119, 'Lukas', 'Belz', 'lukas.belz@itacsoftware.de', NULL, 'admin', 'lukasb'),
(121, 'Robin', 'Leber', 'leber.beselich@web.de', NULL, 'admin', 'robinl'),
(122, 'Klaus', 'Leber', 'klausleber@yahoo.de', NULL, 'admin', 'klausl'),
(123, 'Kimberley', 'Leber', 'kimberley.leber@gmail.com', NULL, 'student', 'kimbel');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indizes für die Tabelle `entries`
--
ALTER TABLE `entries`
  ADD PRIMARY KEY (`entry_id`);

--
-- Indizes für die Tabelle `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indizes für die Tabelle `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indizes für die Tabelle `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `entries`
--
ALTER TABLE `entries`
  MODIFY `entry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT für Tabelle `grades`
--
ALTER TABLE `grades`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `rates`
--
ALTER TABLE `rates`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
