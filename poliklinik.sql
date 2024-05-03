-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Bulan Mei 2024 pada 16.31
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poliklinik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_hp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`id`, `nama`, `alamat`, `no_hp`) VALUES
(3, 'aryadilaaa', 'jl arwana ', '0812323132131'),
(5, 'AGUNG', 'jl cendrawasih', '081290159603');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_hp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id`, `nama`, `alamat`, `no_hp`) VALUES
(5, 'reyhan', 'jl jomblo selama', '08110901'),
(7, 'kuliah', 'kuliahraya', '0871234523');

-- --------------------------------------------------------

--
-- Struktur dari tabel `periksa`
--

CREATE TABLE `periksa` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_pasien` int(11) UNSIGNED DEFAULT NULL,
  `id_dokter` int(11) UNSIGNED DEFAULT NULL,
  `tgl_periksa` datetime DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `obat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `periksa`
--

INSERT INTO `periksa` (`id`, `id_pasien`, `id_dokter`, `tgl_periksa`, `catatan`, `obat`) VALUES
(8, 5, 3, '2024-12-25 13:00:00', 'patah hati', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `usertable`
--

CREATE TABLE `usertable` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `usertable`
--

INSERT INTO `usertable` (`id`, `username`, `password`, `code`, `status`) VALUES
(18, 'reyhan ismail', '$2y$10$WW/0x/7gbol9vw1KDO9Nlubod9Km0wno6Zlfd3DFwotWZibAluV3y', 0, ''),
(19, 'reyhannn', '$2y$10$iRoAQuONhRt3Cwmof6bBPOhqRrmW3sWOFURDntqRAF8kpplPR46..', 0, ''),
(20, 'agungpandu', '$2y$10$2EXL7cTKhZczmyFDt5vN6eSwrH8sbiHLvww2K1XZAWDOQB4GC1SOC', 0, ''),
(21, 'agungpan', '$2y$10$LuzdJoLDzGYKRs1u9rvNtekZQMYd78OnWRrLa5rjD.dvcpswwIo0y', 0, ''),
(22, 'agungpandu123', '$2y$10$ybXvBmssEYHwlVy6PfzRUOvoOjUaLcpoD8djkNHQvf0j6AzABwhei', 0, ''),
(23, 'king', '$2y$10$BDLkWVSUwkzVHH8FgrcvfuV5MKHFJuBOaQkP6tLDS5ItWgAjl3zy.', 0, ''),
(24, 'king12', '$2y$10$io3DnerFLevk5bAzUzWOreBiNZxcnYt4NH1xGB6htMtvrnUxBGy5a', 0, ''),
(26, 'king123', '$2y$10$1wS9oVl2iPKgMuRCN7POVeERaEZ2yyrS9T4ZbIOnJLytaabFyzm4O', 0, ''),
(27, 'user', '$2y$10$UXdQox.TvP3Xf1pd.mNzUuZLrQMTBsDmBp5UeCZ5U8WrVwKrLf2Lq', 0, ''),
(28, 'KONG', '$2y$10$QM7fLzORQmGMPH1dG4rmP.FzYLYU/DJyprXP.Rh0ZzOPlHgRa4otq', 0, ''),
(29, 'kingo', '$2y$10$SoOLisbaYmzaBzD.0RxEnOeqDt3r7iduhaI.77jAZLTApe.Q5Zfzi', 0, ''),
(30, 'loba', '$2y$10$y/LQZie7Y/72ll2AodwzGeQiJbxUhQrL7ZBJwQ.rN.QpJJXunTtpa', 0, ''),
(31, 'loba1', '$2y$10$b5l.DbyVrLiZ0o0MWKTuUOGv8U/8KjUgggKbmSYYro2pi0TumoHsm', 0, ''),
(32, 'kinga', '$2y$10$/0ML8UNRHTY.QNH5A7/j9.Lc9.JSRErKQpsfsUTP8TAf6ZEdWobTy', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `periksa`
--
ALTER TABLE `periksa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pasien` (`id_pasien`),
  ADD KEY `id_dokter` (`id_dokter`);

--
-- Indeks untuk tabel `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `periksa`
--
ALTER TABLE `periksa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `periksa`
--
ALTER TABLE `periksa`
  ADD CONSTRAINT `periksa_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id`),
  ADD CONSTRAINT `periksa_ibfk_2` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
