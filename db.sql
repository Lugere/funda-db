-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 17. Nov 2020 um 21:54
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
  `subject_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `question` varchar(128) DEFAULT NULL,
  `answer` varchar(128) DEFAULT NULL,
  `hint` varchar(128) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `entries`
--

INSERT INTO `entries` (`entry_id`, `subject_id`, `user_id`, `question`, `answer`, `hint`, `created_at`) VALUES
(1, 1, 1, 'Was ist ein BIOS?', 'Basic Input/Output System\r\nDas ursprüngliche PC-BIOS erschien 1981 mit dem ersten IBM-PC. Die Abkürzung BIOS steht für Basic Inp', '', '2020-11-05 15:31:15'),
(2, 1, 1, 'Gibt es einen Nachfolger des EFI?', 'Zur Werbung und Weiterentwicklung von EFI wurde 2005 das Unified EFI Forum gegründet. Daran sind außer Intel auch AMD, Microsoft', 'Aus EFI wird ... . \r\n', '2020-11-05 15:31:15'),
(3, 1, 1, 'Gibt es Sicherheitslücken bei dem neuen UEFI?', 'Extreme Privilege Escalation\r\nLaut Intel könnten Angreifer mit Hilfe der zwei Schwachstellen Zugriff auf den Rechner erhal-ten. ', NULL, '2020-11-05 15:31:15'),
(4, 2, 1, 'Was ist eine CPU?', 'Ein Prozessor ist die zentrale Recheneinheit(Central Processing Unit) eines Computers, wel-che andere elektrische Schaltungen st', 'Er steuert die elektrische Schaltung.', '2020-11-05 15:31:15'),
(5, 2, 1, 'Wie ist ein Intel - CPU aufgebaut?', 'Kerne, Cache-Speicher, Grafikchip, System Agent und Memory Controller\r\n\r\n\r\nIntel-Prozessoren bestehen am Beispiel eines sog. San', NULL, '2020-11-05 15:31:15'),
(6, 2, 1, 'Was ist eine Fertigungsgröße/Strukturbreite?', 'Die Fertigungsgröße beschreibt den halben Abstand zweier Leiterbahnen.\r\n\r\nWenn die Strukturbreite sinkt, können mehr Transistore', NULL, '2020-11-05 15:31:15'),
(7, 2, 1, 'Was ist eine Taktfrequenz?', 'Die Taktfrequenz gibt die einfachen Befehlsoperationen pro Sekunde wieder, wie z.B. eine Addition. Ein Takt ist die Ausführung e', 'Es handelt sich bei einer Taktfrequenz um eine Einheit pro Sekunde.', '2020-11-05 15:31:15'),
(8, 2, 1, 'Was leistet eine CPU (damals vs. heute, CPU-Verbund bzw. Supercomputer)?', 'Die Leistungsfähigkeit hat sich seit ihren Anfängen kontinuierlich gesteigert und er-reicht heute mit den Supercomputern ihren d', NULL, '2020-11-05 15:31:15'),
(9, 2, 1, 'Gibt es neue Fertigungsarten/Wird es neue Fertigungsarten geben?', 'Neue Fertigungsarten können nur durch neue Stoffe in der Prozessorentwicklung entwickelt werden, da nach dem Moore’schen Gesetz ', NULL, '2020-11-05 15:31:15'),
(10, 2, 1, 'Was sind Quantencomputer?', 'Völlig neue Art der Erstellung und des Betriebs von Rechnern.\r\n\r\n„Er soll es ermöglichen, Berechnungen anzustellen, die mit dem ', NULL, '2020-11-05 15:31:15'),
(11, 2, 1, 'Neue Stoffe statt Silicium?', 'Graphit, die natürliche Erscheinungsform von Kohlenstoff, besitzt auch Halbleiterei-genschaften (Halbleiter leiten je nach ihrem', NULL, '2020-11-05 15:31:15'),
(12, 3, 1, 'Was ist eine Festplatte (HDD)?', 'Ein Massenspeicher!\r\nEine Festplatte auch HDD (Hard Disk Drive) abgekürzt, besteht aus vielen einzelnen Teilen. Der Plattenstape', NULL, '2020-11-05 15:31:15'),
(13, 3, 1, 'Wie ist der Aufbau einer Festplatte (HDD)?', 'Platten, Drehachse, Schreib-Lese-Kopf, Zugriffskamm, Schrittmotor\r\n\r\nDer Achsenmotor sitzt an der Drehachse und dreht die Platte', NULL, '2020-11-05 15:31:15'),
(14, 3, 1, 'Wie funktioniert eine Festplatte (HDD)?', 'Die runden Plattenoberflächen werden magnetisiert!\r\n\r\nDie Platten im Plattenstapel sind mit einer Magnetschicht versehen. Im Bet', NULL, '2020-11-05 15:31:15'),
(15, 3, 1, 'Was ist der Cache einer Festplatte?', 'Der Puffer-Speicher (Zwischen-Speicher) der Festplatte!\r\nDer Cache führt drei Aufgaben aus.\r\nWenn ein Block von der Festplatte a', NULL, '2020-11-05 15:31:15'),
(16, 3, 1, 'Welche Unterschiede gibt es bei HDD-Festplatten?', '2,5“-Festplatten, 3,5“-Festplatten, 5400 U/min, 7200 U/min, Speicherkapazität.\r\nNeben den zwei gängigen Baugrößen von 2,5“ und 3', NULL, '2020-11-05 15:31:15'),
(17, 3, 1, 'Was ist eine Solid – State – Disk (SSD)?', 'Ein Halbleiterlaufwerk mit schnellem Datenzugriff!\r\n\r\nIn der Elektronik beschreibt der Begriff „solid state“ eine Verwendung von', NULL, '2020-11-05 15:31:15'),
(18, 3, 1, 'Was kann man für seine Festplatte tun?', 'Frühzeitig austauschen. Ansonsten droht ein Ausfall (Ein Crash der Festplatte).', NULL, '2020-11-05 15:31:15'),
(19, 3, 1, 'Was führt zur einer Entlastung der Festplatte?', 'Im Ruhezustand hat eine Festplatte überhaupt keine Belastung. Aber die Möglichkeit wäre eine größere Festplatte oder eine Hybrid', NULL, '2020-11-05 15:31:15'),
(20, 3, 1, 'Was ist Defragmentierung? ', 'Defragmentierung= Analysiert die auf der Festplatte verstreuten Daten und ordnet die Daten durch Kopieren an einem Stück.\r\n\r\nDas', NULL, '2020-11-05 15:31:15'),
(21, 3, 1, 'Was ist eine HDD (Hybridfestplatte)?', 'Bei einer Hybridfestplatte wird die herkömmliche Festplatte mit einer SSD(Solid- Sta-te- Speicher) kombiniert.\r\n \r\nDie Hybridfes', NULL, '2020-11-05 15:31:15'),
(22, 3, 1, 'Was ist ein NAS (Network Attached Storage)? ', 'Nas bezeichnet einfach zu verwaltende Datei- Sever. Allgemein wird NAS eingesetzt um ohne Hohen Aufwand Dateien vom Sever für da', NULL, '2020-11-05 15:31:15'),
(23, 3, 1, 'Was ist die Funktion eines NAS?', 'Die Funktion von einem Datei Sever liegt darin Dateien zu speichern, zusichern und bereit zustellen für alle Netzwerkteilnehmer.', NULL, '2020-11-05 15:31:15'),
(24, 4, 1, 'Was ist das Binärsystem?', 'Das Binärsystem ist ein Zahlensystem, mit dem hauptsächlich in der Digitaltechnik gearbeitet wird, das aus zwei Ziffern besteht,', NULL, '2020-11-05 15:31:15'),
(25, 4, 1, 'Welche Zahlensysteme gibt es noch?', 'Es gibt eine ganze Reihe von weiteren Zahlensystemen, die wichtigsten heutzutage sind das Binärsystem (Zweiersystem), Oktalsyste', NULL, '2020-11-05 15:31:15'),
(26, 4, 1, 'Warum benutzen Rechner nicht das Dezimalsystem?', 'Theoretisch gesehen wäre es sogar möglich, allerdings ist dies zu Kostenintensiv und die Fehlerrate bei Rechenoperationen ist en', NULL, '2020-11-05 15:31:15'),
(27, 4, 1, 'Was ist ein Bit bzw. ein Byte?', 'Ein Bit ist die Bezeichnung für eine Stelle einer Binärzahl, welche zwei Zustände \r\neinnehmen kann. Ein Byte sind acht Bit hinte', NULL, '2020-11-05 15:31:15'),
(28, 4, 1, 'Wie rechnet man Binärzahlen in andere Zahlensysteme um?', 'Hier spricht man auch von einem Zahlenbasiswechsel. Man verwendet verschiedene Algorithmen, um eine Zahl von der einen, in das a', NULL, '2020-11-05 15:31:15'),
(29, 4, 1, 'Wie rechnet man andere Zahlensysteme ins Binärsystem um?', 'Die Umrechnung von anderen Zahlensystemen ins Binärsystem funktioniert \r\ngenauso, nur werden hier unterschiedliche Algorithmen v', NULL, '2020-11-05 15:31:15'),
(30, 4, 1, 'Was ist ein Binärcode?', 'Ein Binärcode ist ein Code, in dem Informationen durch eine Reihenfolge von zwei Symbolen (z.B. „1“ / „0“, „wahr“ / „falsch“) da', NULL, '2020-11-11 11:48:56'),
(31, 5, 1, 'Wie wird eine Grafikkarte gekühlt?', 'Aktive und passive Möglichkeiten\r\nPassiv:	Eine Passive Kühlung hat den Vorteil das Sie lautlos arbeitet aber die Nachteile sind ', NULL, '2020-11-11 11:48:56'),
(32, 5, 1, 'Welche Anschlüsse haben Grafikkarten?', 'Möglichkeiten, die Grafikkarte mit dem Monitor zu verbinden\r\nVGA:	Ist eine veraltete Variante und ist die analoge Variante. Sie ', NULL, '2020-11-11 11:48:56'),
(33, 5, 1, 'Welche Anschlussarten gibt es zwischen Mainboard und Grafikkarte?', 'Steckplätze!\r\nOnboard:\r\nMan spricht oft auch von integrierten Grafikkarte. Diese Art der Grafikkarte ist schon sehr veraltet abe', NULL, '2020-11-11 11:48:56'),
(34, 5, 1, 'Welche Komponenten beinhaltet die Grafikkarte?', 'Denken Sie an die Einheiten die Bildinformationen verarbeitet.\r\nBus Interface:	Ist für die Kommunikation zwischen dem Mainboard ', NULL, '2020-11-11 11:48:56'),
(35, 5, 1, 'Was ist Crossfire/Sli?', 'Verbindung mehrerer Grafikkarten\r\nSLI ist eine von 2 Varianten zwei oder mehrere Grafikkarten in einen PC zu verbinden und gemei', NULL, '2020-11-11 11:48:56'),
(36, 5, 1, 'Welche Software/Treiber gibt es und was ist ihre Zuständigkeit?', 'Sie müssen den Treiber für Spiele und andere Anwendungen immer auf den Aktu-ellsten standhalten.  \r\nDirectX:	Bildet die Schnitts', NULL, '2020-11-11 11:48:56'),
(37, 6, 1, 'Was genau ist  Netzwerktechnik?', 'Verbindungen, Datenaustausch, Betriebssystem.\r\nEin Netzwerk besteht aus Verbindungen mehrere Computer oder Server zueinander.\r\nD', NULL, '2020-11-11 11:48:56'),
(38, 6, 1, 'Wie werden die Daten im Netzwerk übertragen?', 'Verbindungsorientierte-Datenübertragung,Verbindungslose-Datenübertragung\r\nEs gibt zwei Arten der Datenübertragung und zwar verbi', NULL, '2020-11-11 11:48:56'),
(39, 6, 1, 'Was ist eine Netzwerkarchitektur und welche Arten gibt es?', 'Peer-to-Peer-Architektur, Server-Architektur, Mainframe-Architektur, \r\nPeer-to-Peer-Architektur\r\nJeder Computer die in Peer-to-P', NULL, '2020-11-11 11:48:56'),
(40, 6, 1, 'Was bedeutet Netzwerk-Topologie und welche Arten gibt es?', 'Planmäßiges Aufbau der Stationen, Bus-Topologie, Ring-Topologie, Stern-Topologie, Baum-Topologie, Vermaschte-Topologie\r\nNetzwerk', NULL, '2020-11-11 11:48:56'),
(41, 6, 1, 'Was ist ein LAN?', 'Definition für Local-Area-Network\r\nLAN heißt Local-Area-Network und ist ein lokales Netzwerk, sie nimmt alle Computer und Periph', NULL, '2020-11-11 11:48:56'),
(42, 6, 1, 'Wie sieht eine LAN Aufbau aus?', 'Zwei Computer eine Verbindung\r\nEinfaches lokales Netzwerk:\r\nEs besteht mindesten aus 2 Computern und wird mit einer Direktverbin', NULL, '2020-11-11 11:48:56'),
(43, 6, 1, 'Welche Komponenten werden für ein Netzwerk gebraucht?', 'Passive und aktive Bestandteile eines Netzwerks\r\nZu den Komponenten gehören Passiv und Aktive Teile und sie dienen zur Kopplung ', NULL, '2020-11-11 11:48:56'),
(44, 7, 1, 'Was ist RAM?', 'Arbeitsspeicher. Ein kurzzeitiger Speicher.\r\nRAM = Random – Access - Memory -> Arbeitsspeicher.\r\nBeschleunigt die Ausführung der', NULL, '2020-11-11 11:48:56'),
(45, 7, 1, 'Wie lange bleiben die Daten auf dem RAM erhalten?', 'Bis die Stromzufuhr unterbricht.\r\nDie Daten bleiben auf dem RAM gespeichert solange die Stromzufuhr nicht unterbrochen wird. Die', NULL, '2020-11-11 11:48:56'),
(46, 7, 1, 'Welche Arten von RAM gibt es? ', 'DRAM und SRAM\r\nEs gibt den 	Dynamischen - Random - Access - Memory = DRAM\r\nUnd den 	Statischen RAM = SRAM\r\n• RAM (Random Access ', NULL, '2020-11-11 11:48:56'),
(47, 7, 1, 'Wie funktioniert DRAM?', 'Auf einem Kondensator werden durch elektrische Ladungen Informationen gespei-chert\r\nAuf dem DRAM werden Signale in Form von elek', NULL, '2020-11-11 11:48:56'),
(48, 7, 1, 'Wie nennt man dieses „lesen“? ', 'Zerstörendes lesen\r\nDie Kondensatoren geben ihre Ladung / Speicherstand ab und dadurch wird diese von den Kondensatoren gelöscht', NULL, '2020-11-11 11:48:56'),
(49, 7, 1, 'Wie lange dauert ein lesen-und-wiederherstellen Zyklus?', 'Ein Zyklus dauert etwa 10 Nano-Sekunden\r\nEin lesen-und-wiederherstellen Zyklus dauert etwa 10 Nano-Sekunden (1 sec = 1.000.000.0', NULL, '2020-11-11 11:48:56'),
(50, 7, 1, 'Was sind Kondensatoren?', 'Passives elektrisches Bauelement\r\nEin Kondensator ist ein passives elektrisches Bauelement, das die Fähigkeit hat in einem Gleic', NULL, '2020-11-11 11:48:56'),
(51, 7, 1, 'Welche DRAM’s gibt es?', 'DDR1, 2, 3\r\nDie ersten DDR Module kamen 1999 raus. DDR steht für Doppelte Daten Rate, das heißt es werden pro Speichertakt 2x Da', NULL, '2020-11-11 11:48:56'),
(52, 7, 1, 'Wann wird welcher RAM / DDR gebraucht?', 'Das ist vom Mainboard abhängig\r\nOb DDR1, 2 oder 3 gebraucht wird hängt von der Hauptplatine (Mainboard) ab. Die RAM-Typen haben ', NULL, '2020-11-11 11:48:56'),
(53, 7, 1, 'Was ist SRAM ? ', 'SRAM ist eine andere Variante des Arbeitsspeichers\r\nSRAM > Statischer RAM ist ein viel komplexerer Arbeitsspeicher als der DRAM.', NULL, '2020-11-11 11:48:56'),
(54, 7, 1, 'Wie funktioniert die SRAM?', 'SRAM ist benötig Transistoren für seine Funktionalität er ist dadurch ca. x schnel-ler als DRAM. \r\nDer SRAM benötigt pro Speiche', NULL, '2020-11-11 11:48:56'),
(55, 7, 1, 'Was sind Transistoren? ', 'Ein elektrisches Halbleiter-Bauelement\r\nDer Transistor ist ein elektrisches Halbleiter-Bauelement und wird zum Steuern meist nie', NULL, '2020-11-11 11:48:56'),
(56, 7, 1, 'Wieso wird der SRAM nicht als Standard Arbeitsspeicher verwendet?', 'Es ist zu teuer in der Produktion und in der Benutzung.\r\nEin SRAM mit 1 GB Kapazität würde einige Tausend Euro kosten. Desweiter', NULL, '2020-11-11 11:48:56'),
(57, 8, 1, 'Was ist der Hauptzweck von Bluetooth?', 'Hauptzweck von Bluetooth ist das Ersetzen von Kabelverbindungen zwischen Gerä-ten auf geringer Reichweite (1-10m).\r\nBluetooth wi', NULL, '2020-11-11 11:48:56'),
(58, 8, 1, 'Wie Funktioniert der Verbindungsaufbau zwischen Bluetooth-Geräten?', 'Das eingeschaltete Gerät identifiziert sich als „Master“ und sucht nach anderen Gerä-ten, den sog. „Slave“.\r\nNachdem ein Bluetoo', NULL, '2020-11-11 11:48:56'),
(59, 8, 1, 'Welche Sicherheitsmodi besitzt Bluetooth?', 'Die Sicherheit von Bluetooth besteht aus 3 verschiedenen Sicherheitsstufen\r\nModus 1 (Non-Secure Mode): Bis auf einen regelmäßige', NULL, '2020-11-11 11:48:56'),
(60, 9, 1, 'Was findet bei einer Digitalisierung statt?', 'AD/DA-Wandler, Bitrate..\r\n- Die Abkürzung AD-Wandler steht für einen Analog-Digital-Wandler. Dieser wandelt eine analoge Größe, ', NULL, '2020-11-11 11:48:56'),
(61, 9, 1, 'Wie geht die Digitalisierung des Mikrofonsignals genau vor sich?', 'Amplitude, Samplingrat..\r\nDie Amplitude =>(die Distanz zwischen der Mitte und dem oberen oder unteren Maximum einer Schwingung, ', NULL, '2020-11-11 11:48:56'),
(62, 9, 1, 'Wofür brauche ich eine Soundkarte?', 'Umwandlung von Analogsignal in digitale Daten..\r\nIn der Ausgaberichtung erzeugt die Soundkarte Töne aus digitalen Daten, die aus', NULL, '2020-11-11 11:48:56'),
(63, 1, 1, 'Wie greife ich auf das BIOS zu?', 'Es gibt verschiedene Möglichkeiten.\r\n\r\nBeim starten des Computers wird meist auf dem ersten Bildschirm angezeigt wie man ins BIO', '', '2020-11-05 15:31:15');

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
-- Tabellenstruktur für Tabelle `quizzes`
--

CREATE TABLE `quizzes` (
  `quiz_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `quiz_entries`
--

CREATE TABLE `quiz_entries` (
  `quiz_entry_id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL
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
(123, 'Kimberley', 'Leber', 'kimberley.leber@gmail.com', NULL, 'student', 'kimbel'),
(124, 'Test', 'Test', 'test@test.de', NULL, 'admin', 'testt'),
(125, 'asfasfas', 'asfasf', 'fasfasf', NULL, 'admin', 'asfasa');

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
-- Indizes für die Tabelle `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Indizes für die Tabelle `quiz_entries`
--
ALTER TABLE `quiz_entries`
  ADD PRIMARY KEY (`quiz_entry_id`);

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
  MODIFY `entry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT für Tabelle `grades`
--
ALTER TABLE `grades`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `quiz_entries`
--
ALTER TABLE `quiz_entries`
  MODIFY `quiz_entry_id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
