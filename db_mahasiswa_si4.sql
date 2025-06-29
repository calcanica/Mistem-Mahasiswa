-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2025 at 12:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mahasiswa_si4`
--

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
(1, 'Sistem Informasi'),
(2, 'Teknik Informatika'),
(3, 'Teknik Mesin');

-- --------------------------------------------------------

--
-- Table structure for table `log_aktivitas`
--

CREATE TABLE `log_aktivitas` (
  `id_log` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `aksi` enum('INSERT','UPDATE','DELETE') NOT NULL,
  `tabel` varchar(50) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `waktu` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `log_aktivitas`
--

INSERT INTO `log_aktivitas` (`id_log`, `id_user`, `aksi`, `tabel`, `deskripsi`, `waktu`) VALUES
(1, 1, 'UPDATE', 'mahasiswa', 'Edit mahasiswa: M. Azka Wildan (23130300039)', '2025-06-20 17:56:14'),
(2, 1, 'UPDATE', 'mahasiswa', 'Edit mahasiswa: M. Azka Wildan Mahendra P (23130300039)', '2025-06-20 17:57:16'),
(3, 1, 'UPDATE', 'mahasiswa', 'Edit mahasiswa: Achmad Nabilla A. (23130300094)', '2025-06-20 17:57:51'),
(4, 1, 'UPDATE', 'mahasiswa', 'Edit mahasiswa: Achmad Nabilla A. (23130300094)', '2025-06-20 17:58:08'),
(5, 1, 'UPDATE', 'mahasiswa', 'Edit mahasiswa: Achmad Nabilla A. (23130300094)', '2025-06-20 17:58:11'),
(6, 1, 'UPDATE', 'mahasiswa', 'Edit mahasiswa: M. Azka Wildan Mahendra P (23130300039)', '2025-06-20 18:01:29'),
(7, 1, 'UPDATE', 'mahasiswa', 'Edit mahasiswa: Achmad Nabilla A. (23130300094)', '2025-06-20 18:02:07'),
(8, 1, 'UPDATE', 'mahasiswa', 'Edit mahasiswa: Achmad Nabilla A. (23130300094)', '2025-06-20 18:02:20'),
(9, 1, 'INSERT', 'mahasiswa', 'Tambah mahasiswa: Arbet Rama  (2313030243)', '2025-06-24 21:42:32'),
(10, 1, 'DELETE', 'mahasiswa', 'Hapus mahasiswa: Arbet Rama  (2313030243)', '2025-06-24 21:43:39');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nim` varchar(15) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `id_semester` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nama`, `nim`, `id_jurusan`, `id_semester`, `email`, `jenis_kelamin`, `alamat`) VALUES
(1, 'Salsabila Khairunnisa', '2313030011', 1, 1, 'salsa.kh@mail.com', 'Perempuan', 'Jl. Mawar No. 1'),
(2, 'Salsabila Thereza P.T.', '2313030031', 1, 1, 'salsa.tp@mail.com', 'Perempuan', 'Jl. Melati No. 2'),
(3, 'Riza Ayu Umami', '2313030035', 1, 1, 'riza.umami@mail.com', 'Perempuan', 'Jl. Kenanga No. 3'),
(4, 'Vema Aulia', '2313030097', 1, 1, 'vema.aulia@mail.com', 'Perempuan', 'Jl. Dahlia No. 4'),
(5, 'Achmad Nabilla A.', '23130300094', 3, 1, 'nabillaaabas@mail.com', 'Laki-laki', 'Jl. Cempaka No. 54'),
(6, 'M. Azka Wildan Mahendra P', '23130300039', 2, 1, 'azkawildan@mail.com', 'Laki-laki', 'Jl. Anggrek No. 6');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id_semester` int(11) NOT NULL,
  `nama_semester` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id_semester`, `nama_semester`) VALUES
(1, 'Semester 4'),
(2, 'Semester 1'),
(3, 'Semester 2'),
(4, 'Semester 3'),
(5, 'Semester 5'),
(6, 'Semester 6'),
(7, 'Semester 7'),
(8, 'Semester 8');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` char(64) NOT NULL,
  `nama_pengguna` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `nama_pengguna`) VALUES
(1, 'admin', '240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9', 'Admin Sistem');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`),
  ADD UNIQUE KEY `nim` (`nim`),
  ADD KEY `id_jurusan` (`id_jurusan`),
  ADD KEY `id_semester` (`id_semester`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id_semester`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id_semester` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  ADD CONSTRAINT `log_aktivitas_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE SET NULL;

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`),
  ADD CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`id_semester`) REFERENCES `semester` (`id_semester`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
