-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Час створення: Жов 15 2012 р., 22:23
-- Версія сервера: 5.5.24-log
-- Версія PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- БД: `mcheck`
--

-- --------------------------------------------------------

--
-- Структура таблиці `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `date` date NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `amount` float NOT NULL,
  `comments` text,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `amount` (`amount`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп даних таблиці `register`
--

INSERT INTO `register` (`id`, `created_at`, `updated_at`, `date`, `description`, `amount`, `comments`) VALUES
(1, '2012-10-15 20:12:51', '0000-00-00 00:00:00', '2012-10-15', 'Тестовая запись', 400.5, 'Коментарий тестовой записи'),
(2, '2012-10-15 21:45:22', '0000-00-00 00:00:00', '2012-10-16', 'Еще одна тестовая запись', 111.55, 'Коментарий еще одной тестовой записи');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
