-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 30 Eyl 2019, 12:05:37
-- Sunucu sürümü: 10.1.37-MariaDB
-- PHP Sürümü: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `huaweiapp`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dependency`
--

CREATE TABLE `dependency` (
  `id` bigint(20) NOT NULL,
  `item` bigint(20) NOT NULL,
  `precondition` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `todoitems`
--

CREATE TABLE `todoitems` (
  `id` bigint(20) NOT NULL,
  `todolistid` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `createdate` date NOT NULL,
  `deadline` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `todoitems`
--

INSERT INTO `todoitems` (`id`, `todolistid`, `name`, `status`, `createdate`, `deadline`) VALUES
(4, 39, 'Filmi Kaçırma', 'completed', '2019-09-29', '2019-10-03'),
(5, 39, 'Doktor randevu', 'pending', '2019-09-29', '2019-10-05'),
(6, 39, 'Yemek var', 'completed', '2019-09-29', '2019-10-16'),
(7, 39, 'IELTS sınavı', 'completed', '2019-09-29', '2019-10-24'),
(11, 49, 'test', 'pending', '2019-09-29', '2020-01-09'),
(15, 39, 'Dinlen!', 'expired', '2019-09-29', '2019-09-11');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `todolist`
--

CREATE TABLE `todolist` (
  `id` bigint(20) NOT NULL,
  `ownerid` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `todolist`
--

INSERT INTO `todolist` (`id`, `ownerid`, `name`, `date`) VALUES
(39, 1, 'Haftaya Yapacaklarım', '2019-09-29'),
(49, 4, 'test', '2019-09-29');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'safagundogdu', '12345'),
(2, 'sedefgundogdu', '6789'),
(3, 'mrbiyik', '123456'),
(4, 'test', 'test'),
(5, '', ''),
(7, 'test1', 'test');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `dependency`
--
ALTER TABLE `dependency`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `todoitems`
--
ALTER TABLE `todoitems`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `todolist`
--
ALTER TABLE `todolist`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `dependency`
--
ALTER TABLE `dependency`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `todoitems`
--
ALTER TABLE `todoitems`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `todolist`
--
ALTER TABLE `todolist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
