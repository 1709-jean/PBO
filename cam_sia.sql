-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Agu 2021 pada 13.42
-- Versi server: 10.4.16-MariaDB
-- Versi PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cam_sia`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen0352`
--

CREATE TABLE `dosen0352` (
  `nik` char(8) NOT NULL,
  `namaDosen` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dosen0352`
--

INSERT INTO `dosen0352` (`nik`, `namaDosen`) VALUES
('014E292', 'Nugroho Agus Haryono., SSi.,M.Si'),
('017BI06', 'TEAM PPBI'),
('017BI08', 'Dosen Pembimbing'),
('064E320', 'Paulus Widiatmoko, S.Pd.,M.A'),
('074E324', 'Erick Kurniawan, S.Kom.,M.Kom.'),
('084E325', 'Gloria Virginia, S.Kom.,MAI, Ph.D'),
('084KE072', 'Andronicus Riyono, ST., MT'),
('094E339', 'Rosa Delima, S.Kom, M.Kom'),
('094KE079', 'Hendro Setiadi, ST, M.M., MEngSc.'),
('094KE080', 'Petrus Paryono, M.Si, Dr'),
('094TT004', 'Ignatia Dhian EKR, S.Kom., M.Eng'),
('104E341', 'Willy Sudiarto Raharjo, S.Kom., M.C'),
('104E342', 'Antonius Rachmat Chrismanto, S.Kom,'),
('104E344', 'Jong Jek Siang, Drs, M.Sc'),
('154E401', 'Yuan Lukito, S.Kom., M.Cs.'),
('154E402', 'Kristian Adiugraha, S.Kom., M.T.'),
('164E416', 'Ignatia Dhian E.K.R., S.Kom., M.Eng'),
('164E417', 'Laurentius Kuncoro Probo S, ST., M.'),
('164E427', 'Aditya Wikan Mahastama, S.Kom., M.C'),
('164E428', 'Danny Sebastian, S.Kom., M.M., M.T.'),
('20121205', 'Aniek Juliarini, Ir., MSi.'),
('20122301', 'Heryno, S.Kom.'),
('2012SI01', 'Niken Damayanti, S.Si'),
('22TI002', 'Tim KKN - LPPM'),
('2307TT01', 'Hendra Sentono, S.Kom.'),
('874E065', 'Harianto Kristanto, Ir., MM, MT'),
('894E090', 'Wimmie Handiwidjojo, Drs., MIT.'),
('894E091', 'Dr., Ir. Sri Suwarno, M.Eng.'),
('924E193', 'Widi Hapsari, Dra, MT.'),
('924E194', 'Jeanny Dhewayani, Dra.,MA,Ph.D.'),
('924E195', 'Henry Feriadi, Ir., M.Sc., Ph.D.'),
('934E206', 'Endah Setyowati, Dra., M.Si., M.A.'),
('944E217', 'Budi Sutedjo DO, SKom, MM.'),
('944E219', 'Yetli Oslan, S.Kom, M.T.'),
('944E220', 'Katon Wijana, S.Kom, M.T.'),
('944E227', 'Dr. Lucia Dwi Krisnawati, SS.,M.A.'),
('944E228', 'Gani Indriyanto, Ir, MT.'),
('944E229', 'Prihadi Beny Waluyo, S.Si.,MT'),
('964E239', 'Joko Purwadi, S.Kom., M.Kom'),
('964E241', 'Junius Karel, S.Si, MT.'),
('984E249', 'Budi Susanto, S.Kom.,MT.'),
('994E266', 'Mega Wati, Dra., M.Pd.'),
('994NE264', 'Lussy Ernawati, S.Kom., M.Acc.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal0352`
--

CREATE TABLE `jadwal0352` (
  `idJadwal` int(11) NOT NULL,
  `hari` varchar(6) NOT NULL,
  `jamMulai` char(5) NOT NULL,
  `jamSelesai` char(5) NOT NULL,
  `kodeMK` char(6) NOT NULL,
  `grup` varchar(6) NOT NULL,
  `nik` char(8) NOT NULL,
  `ruang` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jadwal0352`
--

INSERT INTO `jadwal0352` (`idJadwal`, `hari`, `jamMulai`, `jamSelesai`, `kodeMK`, `grup`, `nik`, `ruang`) VALUES
(1, 'Senin', '07:30', '10:00', 'MH1063', 'A', '994NE264', '31'),
(2, 'Senin', '10:30', '13:00', 'MH1063', 'B', '994NE264', '31'),
(3, 'Selasa', '10:00', '12:30', 'SI2313', 'A', '104E344', '31'),
(4, 'Kamis', '10:30', '13:00', 'SI2313', 'B', '104E344', '31'),
(5, 'Rabu', '07:30', '10:00', 'SI1413', 'A', '104E344', '31'),
(6, 'Jumat', '10:30', '13:00', 'SI1413', 'B', '104E344', '31'),
(7, 'Selasa', '08:30', '11:00', 'SI1423', 'A', '944E220', '32'),
(8, 'Selasa', '11:30', '14:00', 'PR1423', 'A', '944E220', '32'),
(9, 'Rabu', '07:30', '10:00', 'SI1423', 'B', '944E220', '32'),
(10, 'Rabu', '10:30', '13:00', 'PR1423', 'B', '944E220', '32'),
(11, 'Rabu', '10:30', '13:00', 'SI1443', 'A', '944E219', '31'),
(12, 'Rabu', '13:30', '16:00', 'PR1443', 'A', '944E219', '32'),
(13, 'Kamis', '13:30', '16:00', 'SI1443', 'B', '944E219', '32'),
(14, 'Kamis', '16:30', '19:00', 'PR1443', 'B', '944E219', '31'),
(15, 'Selasa', '13:30', '16:00', 'SI1453', 'A', '874E065', '31'),
(16, 'Kamis', '10:30', '13:00', 'SI1453', 'B', '874E065', '32'),
(17, 'Senin', '10:30', '13:00', 'SI3433', 'A', '944E219', '32'),
(18, 'Senin', '13:30', '16:00', 'SI3433', 'B', '944E219', '32'),
(19, 'Kamis', '10:30', '13:00', 'SI2423', 'A', '084E325', '33'),
(20, 'Kamis', '13:30', '16:00', 'SI2423', 'B', '084E325', '33'),
(21, 'Jumat', '10:30', '13:00', 'SI2443', 'A', '064E320', '33'),
(22, 'Kamis', '07:00', '09:30', 'SI2443', 'B', '064E320', '33'),
(23, 'Senin', '13:30', '16:00', 'SI2453', 'A', '2307TT01', '31'),
(24, 'Jumat', '07:30', '10:00', 'SI2453', 'B', '2307TT01', '33'),
(25, 'Senin', '08:30', '11:00', 'SI2463', 'A', '074E324', '33'),
(26, 'Kamis', '10:30', '13:00', 'SI2463', 'B', '074E324', '34'),
(27, 'Selasa', '07:30', '10:00', 'MH1033', 'A', '944E227', '31'),
(28, 'Kamis', '07:30', '10:00', 'MH1033', 'B', '944E227', '31'),
(29, 'Kamis', '13:30', '16:00', 'SI2413', 'A', '074E324', '31'),
(30, 'Senin', '13:30', '16:00', 'SI2413', 'B', '074E324', '33'),
(31, 'Jumat', '07:30', '10:00', 'SI3413', 'A', '944E217', '31'),
(32, 'Kamis', '10:30', '13:00', 'SI3413', 'B', '944E217', '35'),
(33, 'Senin', '07:30', '10:00', 'SI4323', 'A', '094E339', '35'),
(34, 'Selasa', '10:30', '13:00', 'SI4323', 'B', '094E339', '35'),
(35, 'Rabu', '07:30', '10:00', 'SP5323', 'A', '094E339', '35'),
(36, 'Rabu', '10:30', '13:00', 'SP5343', 'A', '20122301', '36'),
(37, 'Kamis', '07:30', '10:00', 'SP5413', 'A', '894E090', '35'),
(38, 'Rabu', '16:30', '19:00', 'SP5373', 'A', '944E220', '36'),
(39, 'Jumat', '15:30', '18:00', 'PR5373', 'A', '944E220', '36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `krskhs0352`
--

CREATE TABLE `krskhs0352` (
  `idkrs` int(11) NOT NULL,
  `noReg` int(11) NOT NULL,
  `idjadwal` int(11) NOT NULL,
  `nilai` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `krskhs0352`
--

INSERT INTO `krskhs0352` (`idkrs`, `noReg`, `idjadwal`, `nilai`) VALUES
(1, 1, 11, 'A-'),
(2, 1, 31, 'A-'),
(3, 1, 15, 'A-'),
(4, 1, 17, 'B-'),
(5, 2, 19, 'A'),
(6, 2, 15, 'B+'),
(7, 2, 23, 'C+'),
(8, 2, 35, 'B+'),
(9, 3, 27, 'B+'),
(10, 3, 19, 'B'),
(11, 3, 1, 'B'),
(12, 3, 23, 'B'),
(13, 3, 35, 'E'),
(14, 3, 27, 'B'),
(15, 4, 19, 'B+'),
(16, 4, 31, 'E'),
(17, 4, 23, 'E'),
(18, 4, 15, 'A'),
(19, 4, 17, 'A'),
(20, 5, 19, 'A-'),
(21, 5, 12, 'A-'),
(22, 5, 33, 'A-'),
(23, 5, 15, 'A-'),
(24, 5, 7, 'A-'),
(25, 6, 9, 'A'),
(26, 6, 1, 'B+'),
(27, 6, 3, 'B+'),
(28, 6, 25, 'B+'),
(29, 6, 17, 'B+'),
(30, 7, 29, 'B'),
(31, 7, 11, 'B'),
(32, 7, 13, 'D'),
(33, 7, 15, 'B'),
(34, 7, 27, 'B'),
(35, 8, 19, 'B-'),
(36, 8, 21, 'B-'),
(37, 8, 3, 'B-'),
(38, 8, 5, 'B-'),
(39, 8, 7, 'B-'),
(40, 9, 9, 'C'),
(41, 9, 1, 'C+'),
(42, 9, 3, 'C+'),
(43, 9, 15, 'C+'),
(44, 9, 17, 'C+'),
(45, 10, 29, 'B-'),
(46, 10, 1, 'B-'),
(47, 10, 23, 'B-'),
(48, 10, 25, 'B-'),
(49, 10, 37, 'B-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa0352`
--

CREATE TABLE `mahasiswa0352` (
  `nim` char(8) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `bahasa` varchar(60) DEFAULT NULL,
  `warga_negara` varchar(25) DEFAULT NULL,
  `alamat` varchar(75) DEFAULT NULL,
  `kota` varchar(25) NOT NULL,
  `foto` varchar(20) DEFAULT 'Yogyakarta',
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa0352`
--

INSERT INTO `mahasiswa0352` (`nim`, `nama`, `tgl_lahir`, `gender`, `bahasa`, `warga_negara`, `alamat`, `kota`, `foto`, `password`) VALUES
('72180001', 'Felix Rivaldo', '2000-01-19', b'1', 'Indonesia, Inggris', 'Indonesia', 'Jalan Mawar No 38 Perum Villa Indah', 'Bengkulu', NULL, 'rahasia'),
('72180002', 'Magdalena Evelyn', '2000-02-12', b'1', 'Indonesia, Inggris, German', 'Indonesia', 'Gang Ursula No 210', 'Yogyakarta', '', 'rahasia'),
('72180003', 'Nadia Angelica', '2000-02-14', b'1', 'Indonesia, Inggris, Mandarin', 'Indonesia', 'Jalan Gelas No 123 A', 'Palembang', '', 'rahasia'),
('72180004', 'Nathanna Illene', '2000-02-29', b'1', 'Indonesia, Inggris', 'Indonesia', 'Jalan Persatuan Indonesia No 231', 'Yogyakarta', '', 'rahasia'),
('72180005', 'Andreas Susilo', '2000-03-02', b'0', 'Indonesia, Inggris, German', 'Indonesia', 'Perumahan Tasbi Indah No 902 Blok A', 'Yogyakarta', '', 'rahasia'),
('72180006', 'Lidia Kandau', '2000-03-10', b'1', 'Indonesia, Inggris, German', 'Indonesia', 'Perumahan Flaminggo Seri A Blok C# No 22 ', 'Yogyakarta', '', 'rahasia'),
('72180007', 'Budi Sutedjo', '1962-04-01', b'0', 'Indonesia, Inggris, Rumania', 'Indonesia', 'Jalan Gng. Bromo No 200', 'Semarang', '', 'rahasia'),
('72180008', 'Andy Kurniawan', '1990-04-08', b'0', 'Indonesia, Inggris', 'Indonesia', 'Jalan Sunset Blok O Perumahan Green Valley', 'Palembang', '', 'rahasia'),
('72180009', 'Mega Proyek', '2001-05-01', b'1', 'Indonesia, Inggris, Mandarin', 'Indonesia', 'Jalan Wajan No 324', 'Yogyakarta', '', 'rahasia'),
('72180010', 'Joko Poerwanto', '2000-06-21', b'0', 'Indonesia, Inggris, Rumania', 'Indonesia', 'Jalan Kemerdekaan No 210', 'Yogyakarta', '', 'rahasia'),
('72180011', 'Selamat Datang', '2000-07-28', b'1', 'Indonesia, Inggris, Mandarin', 'Indonesia', 'Jalan Haji Misbah No 987', 'Yogyakarta', '', 'rahasia'),
('72180012', 'Jean Purba', '2001-01-01', b'1', 'Indonesia, Inggris, German', 'Indonesia', 'Jalan Kera Sakti No 308', 'Makassar', NULL, 'rahasia'),
('72180013', 'Flo Purba', '2002-02-02', b'1', 'Indonesia, German', 'Indonesia', 'Jalan Wajan No 30 B', 'Batang', NULL, 'rahasia'),
('72180014', 'Tia Purba', '2003-03-03', b'1', 'Indonesia, Mandarin, Korea', 'Indonesia', 'Jalan Karton No 123 A', 'Siantar', NULL, 'rahasia'),
('72180015', 'Rio Dewangga', '2004-04-04', b'1', 'Indonesia, Jepang, Inggris', 'Indonesia', 'Jalan Ala Kaki No 1023 A', 'Siantar', NULL, 'rahasia'),
('72190121', 'Arina Harun', '2001-02-02', b'1', NULL, NULL, 'Jalan Semi No.32', 'Jakarta', 'Yogyakarta', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah0352`
--

CREATE TABLE `matakuliah0352` (
  `kodeMK` char(6) NOT NULL,
  `namaMK` varchar(40) DEFAULT NULL,
  `sks` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `matakuliah0352`
--

INSERT INTO `matakuliah0352` (`kodeMK`, `namaMK`, `sks`, `harga`) VALUES
('MH1033', 'BAHASA INDONESIA', 3, 6),
('MH1063', 'PENDIDIKAN PANCASILA DAN KEWARGANEGARAAN', 3, 3),
('MH2023', 'APRESIASI SENI', 3, 3),
('MH2033', 'APRESIASI SENI MUSIK', 3, 3),
('MH2043', 'PENDIDIKAN HAM DAN DEMOKRASI', 3, 3),
('MH2053', 'PENDIDIKAN PERDAMAIAN', 3, 3),
('PB5033', 'ENGLISH FOR JOB HUNTING', 3, 4),
('PB5043', 'TOEFL PREPARATION', 3, 3),
('PB5053', 'ENGLISH FOR INTERNATIONAL COMMUNICATION', 0, 3),
('PR1313', 'PRAKTIKUM DASAR-DASAR PEMROGRAMAN', 0, 3),
('PR1423', 'PRAKTIKUM ALGORITMA DAN STRUKTUR DATA', 0, 3),
('PR1443', 'PRAKTIKUM SISTEM BASIS DATA', 0, 3),
('PR2323', 'PRAKTIKUM PERANCANGAN BASIS DATA', 0, 3),
('PR2333', 'PRAKTIKUM MANAJEMEN PROSES BISNIS', 0, 3),
('PR2363', 'PRAKTIKUM APLIKASI BERBASIS DESKTOP', 0, 3),
('PR2413', 'PRAKTIKUM REKAYASA PERANGKAT LUNAK', 0, 3),
('PR2433', 'PRAKTIKUM JARINGAN KOMPUTER', 0, 3),
('PR3333', 'PRAKTIKUM PEMROGRAMAN MOBILE', 0, 3),
('PR5333', 'PRAKTIKUM BASIS DATA TERINTEGRASI', 0, 3),
('PR5343', 'PRAKTIKUM CASUAL GAME PROGRAMMING', 0, 3),
('PR5373', 'PRAKTIKUM PEMROGRAMAN BERORIENTASI OBYEK', 0, 3),
('SE2413', 'SISTEM INFORMASI AKUNTANSI', 3, 3),
('SE3313', 'E-COMMERCE', 3, 3),
('SE3423', 'SISTEM PENDUKUNG KEPUTUSAN', 3, 3),
('SE4323', 'DATA MINING', 3, 3),
('SI0001', 'AKTIFON SKS REGULER', 0, 0),
('SI1234', 'Apa', 3, 6),
('SI1313', 'DASAR-DASAR PEMROGRAMAN', 3, 3),
('SI1323', 'DASAR-DASAR MANAJEMEN DAN ORGANISASI', 3, 3),
('SI1333', 'PENGOLAHAN DATA MULTIMEDIA', 3, 3),
('SI1343', 'KONSEP SISTEM INFORMASI', 3, 3),
('SI1353', 'PENGANTAR SISTEM INFORMASI', 3, 3),
('SI1413', 'STATISTIKA', 3, 3),
('SI1423', 'ALGORITMA DAN STRUKTUR DATA', 3, 3),
('SI1433', 'ANALISIS DAN PERANCANGAN SISTEM INFORMAS', 3, 3),
('SI1443', 'SISTEM BASIS DATA', 3, 3),
('SI1453', 'ANALISIS PROSES BISNIS', 3, 3),
('SI2034', 'Siapa', 3, 6),
('SI2309', 'MDKS', 3, 3),
('SI2313', 'MATEMATIKA SISTEM INFORMASI', 3, 3),
('SI2323', 'PERANCANGAN BASIS DATA', 3, 3),
('SI2332', 'TEST', 3, 6),
('SI2333', 'MANAJEMEN PROSES BISNIS', 3, 3),
('SI2343', 'SISTEM INFORMASI MANAJEMEN', 3, 3),
('SI2353', 'ANALISIS DATA BISNIS', 3, 3),
('SI2363', 'APLIKASI BERBASIS DESKTOP', 3, 3),
('SI2373', 'KOMUNIKASI ANTAR PERSONAL', 3, 3),
('SI2413', 'REKAYASA PERANGKAT LUNAK', 3, 3),
('SI2423', 'MANAJEMEN & TATA KELOLA TEKN. INFORMASI', 3, 3),
('SI2433', 'JARINGAN KOMPUTER', 3, 3),
('SI2443', 'BAHASA INGGRIS TERAPAN', 3, 3),
('SI2453', 'INTERAKSI MANUSIA DAN KOMPUTER', 3, 3),
('SI2463', 'PEMROGRAMAN BERBASIS WEB', 3, 3),
('SI3313', 'MANAJEMEN LAYANAN TEKNOLOGI INFORMASI', 3, 3),
('SI3323', 'MANAJEMEN PROYEK', 3, 3),
('SI3333', 'PEMROGRAMAN MOBILE', 3, 3),
('SI3343', 'KEAMANAN TEKNOLOGI INFORMASI', 3, 3),
('SI3353', 'MANAJEMEN RESIKO TEKNOLOGI INFORMASI', 3, 3),
('SI3413', 'KEWIRAUSAHAAN BERBASIS TEKNOLOGI INFORMA', 3, 3),
('SI3423', 'PEMROGRAMAN TERINTEGRASI TERAPAN', 3, 3),
('SI3433', 'DATA WAREHOUSING', 3, 3),
('SI3443', 'KULIAH KERJAYATA/SERVICE LEARNING', 3, 3),
('SI4313', 'KERJA PRAKTIK', 3, 3),
('SI4323', 'MANAJEMEN RANTAI PASOKAN', 3, 3),
('SI4413', 'ETIKA PROFESI', 3, 3),
('SI4426', 'SKRIPSI', 6, 6),
('SK2413', 'PENGANTAR SISTEM LAYANAN KESEHATAN', 3, 3),
('SK3313', 'TATA KELOLA LAYANAN KESEHATAN', 3, 3),
('SK3413', 'REKAM MEDIS ELEKTRONIK', 3, 3),
('SK3423', 'SISTEM INFORMASI LAYANAN KESEHATAN', 3, 3),
('SK4323', 'BISNIS CERDAS LAYANAN KESEHATAN', 3, 3),
('SP5313', 'MANAJEMEN KONTEN WEB', 3, 3),
('SP5323', 'PEMROGRAMAN WEB SERVICE', 3, 3),
('SP5333', 'BASIS DATA TERINTEGRASI', 3, 3),
('SP5343', 'CASUAL GAME PROGRAMMING', 3, 3),
('SP5353', 'AUDIT SISTEM INFORMASI', 3, 3),
('SP5363', 'E-GOVERNMENT', 3, 3),
('SP5373', 'PEMROGRAMAN BERORIENTASI OBYEK', 3, 3),
('SP5413', 'STRATEGI SISTEM INFORMASI ', 3, 3),
('SP5423', 'INVESTASI DAN PASAR MODAL', 3, 3),
('SP5433', 'PEMROGRAMAN BERBASIS KOMPUTASI AWAN', 3, 3),
('SP5443', 'SAINS MANAJEMEN', 3, 3),
('SP5453', 'MANAJEMEN PENGETAHUAN', 3, 3),
('SP5463', 'ARSITEKTUR INFORMASI', 3, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `registrasi0352`
--

CREATE TABLE `registrasi0352` (
  `noReg` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nim` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `registrasi0352`
--

INSERT INTO `registrasi0352` (`noReg`, `tanggal`, `nim`) VALUES
(1, '2020-01-27', '72180001'),
(2, '2020-01-27', '72180002'),
(3, '2020-01-27', '72180003'),
(4, '2020-01-27', '72180004'),
(5, '2020-01-27', '72180005'),
(6, '2020-01-27', '72180006'),
(7, '2020-01-27', '72180007'),
(8, '2020-01-27', '72180008'),
(9, '2020-01-27', '72180009'),
(10, '2020-01-27', '72180010');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_indeks_prestasi`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_indeks_prestasi` (
`nim` char(8)
,`nama` varchar(35)
,`total_sks` decimal(32,0)
,`total_ak` decimal(34,1)
,`ip` decimal(38,5)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_jadwal`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_jadwal` (
`idjadwal` int(11)
,`hari` varchar(6)
,`jamMulai` char(5)
,`jamSelesai` char(5)
,`kodeMK` char(6)
,`namaMK` varchar(40)
,`sks` int(11)
,`harga` int(11)
,`grup` varchar(6)
,`nik` char(8)
,`namaDosen` varchar(35)
,`ruang` varchar(25)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_nilai`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_nilai` (
`tanggal` date
,`nim` char(8)
,`nama` varchar(35)
,`kodeMK` char(6)
,`namaMK` varchar(40)
,`sks` int(11)
,`nilai` char(4)
,`idKRS` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_regis`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_regis` (
`noreg` int(11)
,`tanggal` date
,`nim` char(8)
,`nama` varchar(35)
,`idkrs` int(11)
,`idjadwal` int(11)
,`hari` varchar(6)
,`jamMulai` char(5)
,`jamSelesai` char(5)
,`kodeMK` char(6)
,`namaMK` varchar(40)
,`sks` int(11)
,`harga` int(11)
,`grup` varchar(6)
,`nik` char(8)
,`namaDosen` varchar(35)
,`ruang` varchar(25)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_transkrip`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_transkrip` (
`nim` char(8)
,`nama` varchar(35)
,`kodeMK` char(6)
,`namaMK` varchar(40)
,`sks` int(11)
,`nilai` char(4)
,`Angka` decimal(2,1)
,`Angka_kualitas` decimal(12,1)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `view_indeks_prestasi`
--
DROP TABLE IF EXISTS `view_indeks_prestasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_indeks_prestasi`  AS SELECT `view_transkrip`.`nim` AS `nim`, `view_transkrip`.`nama` AS `nama`, sum(`view_transkrip`.`sks`) AS `total_sks`, sum(`view_transkrip`.`Angka_kualitas`) AS `total_ak`, sum(`view_transkrip`.`Angka_kualitas`) / sum(`view_transkrip`.`sks`) AS `ip` FROM `view_transkrip` GROUP BY `view_transkrip`.`nim` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_jadwal`
--
DROP TABLE IF EXISTS `view_jadwal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal`  AS SELECT `j`.`idJadwal` AS `idjadwal`, `j`.`hari` AS `hari`, `j`.`jamMulai` AS `jamMulai`, `j`.`jamSelesai` AS `jamSelesai`, `mk`.`kodeMK` AS `kodeMK`, `mk`.`namaMK` AS `namaMK`, `mk`.`sks` AS `sks`, `mk`.`harga` AS `harga`, `j`.`grup` AS `grup`, `d`.`nik` AS `nik`, `d`.`namaDosen` AS `namaDosen`, `j`.`ruang` AS `ruang` FROM ((`dosen0352` `d` join `jadwal0352` `j` on(`d`.`nik` = `j`.`nik`)) join `matakuliah0352` `mk` on(`mk`.`kodeMK` = `j`.`kodeMK`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_nilai`
--
DROP TABLE IF EXISTS `view_nilai`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_nilai`  AS SELECT `r`.`tanggal` AS `tanggal`, `mhs`.`nim` AS `nim`, `mhs`.`nama` AS `nama`, `mk`.`kodeMK` AS `kodeMK`, `mk`.`namaMK` AS `namaMK`, `mk`.`sks` AS `sks`, `k`.`nilai` AS `nilai`, `k`.`idkrs` AS `idKRS` FROM (((((`registrasi0352` `r` join `mahasiswa0352` `mhs` on(`r`.`nim` = `mhs`.`nim`)) join `krskhs0352` `k` on(`r`.`noReg` = `k`.`noReg`)) join `jadwal0352` `j` on(`k`.`idjadwal` = `j`.`idJadwal`)) join `matakuliah0352` `mk` on(`j`.`kodeMK` = `mk`.`kodeMK`)) join `dosen0352` `d` on(`j`.`nik` = `d`.`nik`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_regis`
--
DROP TABLE IF EXISTS `view_regis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_regis`  AS SELECT `r`.`noReg` AS `noreg`, `r`.`tanggal` AS `tanggal`, `mhs`.`nim` AS `nim`, `mhs`.`nama` AS `nama`, `k`.`idkrs` AS `idkrs`, `j`.`idJadwal` AS `idjadwal`, `j`.`hari` AS `hari`, `j`.`jamMulai` AS `jamMulai`, `j`.`jamSelesai` AS `jamSelesai`, `mk`.`kodeMK` AS `kodeMK`, `mk`.`namaMK` AS `namaMK`, `mk`.`sks` AS `sks`, `mk`.`harga` AS `harga`, `j`.`grup` AS `grup`, `d`.`nik` AS `nik`, `d`.`namaDosen` AS `namaDosen`, `j`.`ruang` AS `ruang` FROM (((((`registrasi0352` `r` join `mahasiswa0352` `mhs` on(`r`.`nim` = `mhs`.`nim`)) join `krskhs0352` `k` on(`r`.`noReg` = `k`.`noReg`)) join `jadwal0352` `j` on(`k`.`idjadwal` = `j`.`idJadwal`)) join `matakuliah0352` `mk` on(`j`.`kodeMK` = `mk`.`kodeMK`)) join `dosen0352` `d` on(`j`.`nik` = `d`.`nik`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_transkrip`
--
DROP TABLE IF EXISTS `view_transkrip`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_transkrip`  AS SELECT `mhs`.`nim` AS `nim`, `mhs`.`nama` AS `nama`, `mk`.`kodeMK` AS `kodeMK`, `mk`.`namaMK` AS `namaMK`, `mk`.`sks` AS `sks`, `k`.`nilai` AS `nilai`, if(`k`.`nilai` = 'A',4.0,if(`k`.`nilai` = 'A-',3.7,if(`k`.`nilai` = 'B+',3.3,if(`k`.`nilai` = 'B',3.0,if(`k`.`nilai` = 'B-',2.7,if(`k`.`nilai` = 'C+',2.3,if(`k`.`nilai` = 'C',2.0,if(`k`.`nilai` = 'D',1.0,if(`k`.`nilai` = 'E',0.0,0))))))))) AS `Angka`, `mk`.`sks`* if(`k`.`nilai` = 'A',4.0,if(`k`.`nilai` = 'A-',3.7,if(`k`.`nilai` = 'B+',3.3,if(`k`.`nilai` = 'B',3.0,if(`k`.`nilai` = 'B-',2.7,if(`k`.`nilai` = 'C+',2.3,if(`k`.`nilai` = 'C',2.0,if(`k`.`nilai` = 'D',1.0,if(`k`.`nilai` = 'E',0.0,0))))))))) AS `Angka_kualitas` FROM (((((`registrasi0352` `r` join `mahasiswa0352` `mhs` on(`r`.`nim` = `mhs`.`nim`)) join `krskhs0352` `k` on(`r`.`noReg` = `k`.`noReg`)) join `jadwal0352` `j` on(`k`.`idjadwal` = `j`.`idJadwal`)) join `matakuliah0352` `mk` on(`j`.`kodeMK` = `mk`.`kodeMK`)) join `dosen0352` `d` on(`j`.`nik` = `d`.`nik`)) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen0352`
--
ALTER TABLE `dosen0352`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `jadwal0352`
--
ALTER TABLE `jadwal0352`
  ADD PRIMARY KEY (`idJadwal`),
  ADD KEY `jadwal0352_kt` (`kodeMK`);

--
-- Indeks untuk tabel `krskhs0352`
--
ALTER TABLE `krskhs0352`
  ADD PRIMARY KEY (`idkrs`),
  ADD KEY `krskhs0352_kunci` (`noReg`),
  ADD KEY `jadwal0352_tamu` (`idjadwal`);

--
-- Indeks untuk tabel `mahasiswa0352`
--
ALTER TABLE `mahasiswa0352`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `matakuliah0352`
--
ALTER TABLE `matakuliah0352`
  ADD PRIMARY KEY (`kodeMK`);

--
-- Indeks untuk tabel `registrasi0352`
--
ALTER TABLE `registrasi0352`
  ADD PRIMARY KEY (`noReg`),
  ADD KEY `registrasi0352_kt` (`nim`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jadwal0352`
--
ALTER TABLE `jadwal0352`
  MODIFY `idJadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `krskhs0352`
--
ALTER TABLE `krskhs0352`
  MODIFY `idkrs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `registrasi0352`
--
ALTER TABLE `registrasi0352`
  MODIFY `noReg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jadwal0352`
--
ALTER TABLE `jadwal0352`
  ADD CONSTRAINT `jadwal0352_fk` FOREIGN KEY (`nik`) REFERENCES `dosen0352` (`nik`) ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal0352_kt` FOREIGN KEY (`kodeMK`) REFERENCES `matakuliah0352` (`kodeMK`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `krskhs0352`
--
ALTER TABLE `krskhs0352`
  ADD CONSTRAINT `jadwal0352_tamu` FOREIGN KEY (`idjadwal`) REFERENCES `jadwal0352` (`idJadwal`) ON UPDATE CASCADE,
  ADD CONSTRAINT `krskhs0352_kunci` FOREIGN KEY (`noReg`) REFERENCES `registrasi0352` (`noReg`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
