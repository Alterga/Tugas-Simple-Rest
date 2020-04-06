-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 06 Apr 2020 pada 19.14
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id11925560_testdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `k_pesan`
--

CREATE TABLE `k_pesan` (
  `id` int(11) NOT NULL,
  `fullname` varchar(25) NOT NULL,
  `gender` enum('Laki-Laki','Perempuan') NOT NULL,
  `address` varchar(30) NOT NULL,
  `kesan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `makanan`
--

CREATE TABLE `makanan` (
  `no` int(11) NOT NULL,
  `nama_makanan` varchar(30) NOT NULL,
  `asal_makanan` varchar(30) NOT NULL,
  `harga_makanan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `minuman`
--

CREATE TABLE `minuman` (
  `no` int(10) NOT NULL,
  `nama_minuman` varchar(30) NOT NULL,
  `perusahaan` varchar(30) NOT NULL,
  `netto` varchar(10) NOT NULL,
  `sedotan` varchar(10) NOT NULL,
  `tempat` varchar(30) NOT NULL,
  `nama_pemesan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `gender` enum('Laki-Laki','Perempuan') NOT NULL,
  `address` varchar(100) NOT NULL,
  `telp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `k_pesan`
--
ALTER TABLE `k_pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `minuman`
--
ALTER TABLE `minuman`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `k_pesan`
--
ALTER TABLE `k_pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `makanan`
--
ALTER TABLE `makanan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `minuman`
--
ALTER TABLE `minuman`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
