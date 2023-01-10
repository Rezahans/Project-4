-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jul 2022 pada 07.11
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lib`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `lib`
--

CREATE TABLE `lib` (
  `id` int(15) NOT NULL,
  `img` varchar(250) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `penulis` varchar(50) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `lib`
--

INSERT INTO `lib` (`id`, `img`, `judul`, `penulis`, `genre`, `link`) VALUES
(1, '1CPvdtivn63bJ5BOmSOngFFiMqII6UwCU', 'Algorithm & DS C01', 'ipul', 'Science', '1GgzISEDwLQKtqZ-eW1-9-f6dGiu6P4vq'),
(2, '111g9ruR3cyQ8ipUlVlARn9VeI9jJkNFs', 'Algoritm & DS C02', 'Hans', 'Science', '1GaQHgEGrtN9XMxkV0RgD4tCZTTBLNh_s'),
(3, '1bXKQku0q7_yuuxKROLjAX6ULAiMUJsFZ', 'HTML', 'Ayu', 'Science', '1pNvO9Kz84GhnDn_PlxknrY-QS1N9ceAe');

-- --------------------------------------------------------

--
-- Struktur dari tabel `librarians`
--

CREATE TABLE `librarians` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `librarians`
--

INSERT INTO `librarians` (`id`, `name`, `username`, `password`) VALUES
(2, 'Farhan Dwi O', 'farhan', 'farhan'),
(3, 'Reza Hans L', 'reza', 'reza'),
(4, 'Ezra Ayu R', 'ezra', 'ezra');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reqbook`
--

CREATE TABLE `reqbook` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bookreq` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `reqbook`
--

INSERT INTO `reqbook` (`id`, `name`, `email`, `bookreq`) VALUES
(20, 'Daniel', 'daniel@ezlibrary.com', 'CSS'),
(21, 'Hans', 'rezacrent@gmail.com', 'Css');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reqtd`
--

CREATE TABLE `reqtd` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `booktdreq` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `reqtd`
--

INSERT INTO `reqtd` (`id`, `name`, `email`, `booktdreq`) VALUES
(68, 'Lucky', 'lucky@ezlibrary.com', '3 || HTML'),
(69, 'Ayu', 'ayu@ezlibrary.com', '1 || Algorithm & DS C01');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `lib`
--
ALTER TABLE `lib`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `librarians`
--
ALTER TABLE `librarians`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reqbook`
--
ALTER TABLE `reqbook`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reqtd`
--
ALTER TABLE `reqtd`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `lib`
--
ALTER TABLE `lib`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `librarians`
--
ALTER TABLE `librarians`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `reqbook`
--
ALTER TABLE `reqbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `reqtd`
--
ALTER TABLE `reqtd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
