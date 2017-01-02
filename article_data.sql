
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Vært: localhost
-- Genereringstid: 02. 01 2017 kl. 21:39:14
-- Serverversion: 10.0.28-MariaDB
-- PHP-version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u597502842_debat`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `Article`
--

CREATE TABLE IF NOT EXISTS `Article` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `heading` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Data dump for tabellen `Article`
--

INSERT INTO `Article` (`ID`, `heading`, `text`, `date`, `user_ID`) VALUES
(1, 'Trumps brug af twitter', 'Under Trumps valgkampagne gjorde han flittigt brug af tweets om alt mellem himmel og jord. Det var populistiske udfald som hurtigt blev delt i både i officielle medier og på sociale medier. Det gav meget opmærksomhed. Og fjernede også fokus fra en egentlig debat. ', '2016-12-27 20:44:27', 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `Comment`
--

CREATE TABLE IF NOT EXISTS `Comment` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `headline` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `article_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Data dump for tabellen `Comment`
--

INSERT INTO `Comment` (`ID`, `headline`, `text`, `date`, `article_id`, `user_id`) VALUES
(1, 'Twitter i kampagner', 'Populistiske udfald i Trumps kampagne overskyggede hurtigt en egentlig debat - ja, men det er medierne der har ansvaret for ikke at flade på halen over disse eksapader ', '2016-12-27 20:47:01', 0, 1),
(2, '', '', '2016-12-28 21:28:34', 0, 0),
(3, '', '', '2016-12-28 21:28:45', 0, 0),
(4, '', '', '2016-12-28 21:28:52', 0, 0),
(5, 'headline for test', 'nisse', '2016-12-28 21:39:49', 0, 0),
(6, 'headline for test', 'Write your asdas d comment', '2016-12-28 21:42:24', 0, 0),
(7, 'headline for comment', 'hello!!', '2016-12-28 21:48:49', 0, 0),
(8, 'headline for comment', 'Det er meget spændende', '2017-01-02 21:09:43', 0, 0);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `User`
--

CREATE TABLE IF NOT EXISTS `User` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `username` (`username`,`password`),
  UNIQUE KEY `username_2` (`username`),
  UNIQUE KEY `username_3` (`username`),
  UNIQUE KEY `password` (`password`),
  UNIQUE KEY `username_4` (`username`,`password`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Data dump for tabellen `User`
--

INSERT INTO `User` (`ID`, `username`, `password`) VALUES
(1, 'rha', 'rhapass'),
(2, 'bob', 'bobpass');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
