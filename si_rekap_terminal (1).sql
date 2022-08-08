-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Agu 2022 pada 00.13
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `si_rekap_terminal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `keberangkatan_kendaraan`
--

CREATE TABLE `keberangkatan_kendaraan` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_keberangkatan` time NOT NULL,
  `jumlah_penumpang` varchar(25) NOT NULL,
  `tujuan_keberangkatan` varchar(20) NOT NULL,
  `no_polisi` varchar(10) NOT NULL,
  `jenis` varchar(15) NOT NULL,
  `nama_po` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keberangkatan_kendaraan`
--

INSERT INTO `keberangkatan_kendaraan` (`id`, `tanggal`, `jam_keberangkatan`, `jumlah_penumpang`, `tujuan_keberangkatan`, `no_polisi`, `jenis`, `nama_po`) VALUES
(1, '2022-11-06', '11:20:00', '8', 'LINTAU-RENGAT', 'BA 7739 EU', 'AKAP', 'DORIS ABADI'),
(2, '2022-11-06', '11:52:00', '6', 'JAMBI-PADANG', 'BA 7852 KU', 'AKAP', 'AMANAH'),
(3, '2022-11-06', '13:25:00', '10', 'JAMBI-PADANG', 'BA 7851 KU', 'AKAP', 'AMANAH'),
(4, '2022-11-06', '13:30:00', '10', 'PADANG-RENGAT', 'BA 7817 KU', 'AKAP', 'TAMPALO'),
(5, '2022-11-06', '13:35:00', '12', 'RENGAT-PADANG', 'BA 7808 KU', 'AKAP', 'TAMPALO'),
(6, '2022-11-06', '14:32:00', '30', 'BUKITTINGGI-JAKARTA', 'BA 7025 NU', 'AKAP', 'NPM'),
(7, '2022-11-06', '14:30:00', '36', 'PARIAMAN-JAKARTA', 'BA 7259 RC', 'AKAP', 'TRANSPORT'),
(8, '2022-11-06', '14:31:00', '40', 'JAKARTA-PARIAMAN', 'BA 7016 QU', 'AKAP', 'TRANSPORT'),
(9, '2022-11-06', '14:42:00', '33', 'PADANG-JAKARTA', 'BA 7111 QU', 'AKAP', 'MPM'),
(10, '2022-11-06', '14:52:00', '44', 'MEDAN-JAKARTA', 'BK 7294 UA', 'AKAP', 'ALS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kedatangan_kendaraan`
--

CREATE TABLE `kedatangan_kendaraan` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_kedatangan` time NOT NULL,
  `jumlah_penumpang` varchar(25) NOT NULL,
  `tujuan_asal` varchar(20) NOT NULL,
  `no_polisi` varchar(10) NOT NULL,
  `jenis` varchar(15) NOT NULL,
  `nama_po` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kedatangan_kendaraan`
--

INSERT INTO `kedatangan_kendaraan` (`id`, `tanggal`, `jam_kedatangan`, `jumlah_penumpang`, `tujuan_asal`, `no_polisi`, `jenis`, `nama_po`) VALUES
(5, '2022-11-06', '11:16:00', '8', 'LINTAU-RENGAT', 'BA 7739 EU', 'AKAP', 'DORIS ABADI'),
(6, '2022-11-06', '11:49:00', '6', 'JAMBI-PADANG', 'BA 7852 KU', 'AKAP', 'AMANAH'),
(7, '2022-11-06', '13:20:00', '8', 'JAMBI-PADANG', 'BA 7851 KU', 'AKAP', 'AMANAH'),
(8, '2022-11-06', '13:26:00', '12', 'PADANG-RENGAT', 'BA 7817 KU', 'AKAP', 'TAMPALO'),
(9, '2022-11-06', '13:31:00', '12', 'RENGAT-PADANG', 'BA 7808 KU', 'AKAP', 'TAMPALO'),
(10, '2022-11-06', '14:29:00', '30', 'BUKITTINGGI-JAKARTA', 'BA 7025 NU', 'AKAP', 'NPM'),
(11, '2022-11-06', '14:30:00', '36', 'PARIAMAN-JAKARTA', 'BA 7259 RC', 'AKAP', 'TRANSPORT'),
(12, '2022-11-06', '14:31:00', '40', 'JAKARTA-PARIAMAN', 'BA 7016 QU', 'AKAP', 'TRANSPORT'),
(13, '2022-11-06', '14:42:00', '33', 'PADANG-JAKARTA', 'BA 7111 QU', 'AKAP', 'MPM'),
(14, '2022-11-06', '14:48:00', '44', 'MEDAN-JAKARTA', 'BK 7294 UA', 'AKAP', 'ALS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(3) NOT NULL,
  `nama_lengkap` varchar(15) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama_lengkap`, `username`, `password`) VALUES
(2, 'Felia S Azzany', 'admin', 'admin'),
(4, 'zany', 'USER', 'USER');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `keberangkatan_kendaraan`
--
ALTER TABLE `keberangkatan_kendaraan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kedatangan_kendaraan`
--
ALTER TABLE `kedatangan_kendaraan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `keberangkatan_kendaraan`
--
ALTER TABLE `keberangkatan_kendaraan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `kedatangan_kendaraan`
--
ALTER TABLE `kedatangan_kendaraan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
