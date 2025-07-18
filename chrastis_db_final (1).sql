-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 18, 2025 at 04:47 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chrastis_db_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang_kopma`
--

CREATE TABLE `barang_kopma` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_kredit` int NOT NULL,
  `stok` int NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `kategori` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barang_kopma`
--

INSERT INTO `barang_kopma` (`id`, `nama`, `harga_kredit`, `stok`, `deskripsi`, `kategori`) VALUES
('brg-001', 'Tumbler Keren STIS', 150, 50, 'Tumbler stainless steel tahan panas dan dingin dengan logo STIS.', 'Merchandise'),
('brg-002', 'Hoodie Angkatan 64', 300, 22, 'Hoodie eksklusif untuk angkatan 64, bahan fleece tebal.', 'Apparel'),
('brg-003', 'Flashdisk 32GB OTG', 100, 100, 'Flashdisk Sandisk 32GB dengan fitur OTG (On-The-Go).', 'Elektronik'),
('brg-004', 'Buku Tulis STIS (Isi 5)', 50, 200, 'Satu pak berisi 5 buku tulis berkualitas dengan sampul eksklusif STIS.', 'Alat Tulis'),
('brg-005', 'Kaos Kaki Logo STIS', 75, 80, 'Kaos kaki nyaman dengan bahan katun dan bordir logo STIS.', 'Apparel'),
('brg-006', 'Gantungan Kunci Akrilik', 30, 150, 'Gantungan kunci akrilik dengan maskot PST (Pusat Statistik Terpadu).', 'Aksesoris'),
('brg-007', 'Totebag Kanvas STIS', 120, 70, 'Totebag bahan kanvas tebal dengan sablon logo STIS, cocok untuk kuliah.', 'Aksesoris'),
('brg-008', 'Pulpen Gel Faster', 15, 299, 'Pulpen gel tinta hitam merek Faster, nyaman untuk menulis.', 'Alat Tulis');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_date` timestamp NULL DEFAULT NULL,
  `deadline` timestamp NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `image_path`, `event_date`, `deadline`, `location`, `status`) VALUES
('event-001', 'K-Nisaa Reguler', 'Program kajian rutin untuk muslimah dengan tema pengembangan diri dan spiritual bersama ustadzah Kadaniyah.', 'src/main/resources/image/event1.jpg', '2025-06-21 01:30:00', '2025-06-22 16:59:59', 'Masjid Al-Hasanah', 'Selesai'),
('event-002', 'Workshop Programming Advanced', 'Workshop intensif untuk meningkatkan kemampuan programming dengan teknologi terbaru. Cocok untuk mahasiswa tingkat lanjut.', 'src/main/resources/image/event2.jpg', '2025-06-25 06:00:00', '2025-06-26 16:59:59', 'Lab Komputer', 'Selesai'),
('event-003', 'Seminar AI and Machine Learning', 'Seminar tentang perkembangan AI dan Machine Learning dengan pembicara dari industri teknologi terkemuka.', 'src/main/resources/image/event3.jpg', '2025-07-10 02:00:00', '2025-07-11 16:59:59', 'Auditorium', 'Aktif'),
('event-004', 'Career Fair and Job Expo 2025', 'Pameran karir dengan berbagai perusahaan teknologi terkemuka. Kesempatan emas untuk networking dan mencari pekerjaan.', 'src/main/resources/image/event4.jpg', '2025-07-15 01:00:00', '2025-07-16 16:59:59', 'Hall Utama', 'Aktif'),
('event-005', 'Student Achievement Awards', 'Malam penghargaan untuk mengapresiasi mahasiswa berprestasi dalam berbagai bidang akademik dan non-akademik.', 'src/main/resources/image/event5.jpg', '2025-07-20 12:00:00', '2025-07-21 16:59:59', 'Ballroom', 'Aktif'),
('event-006', 'Turnamen Futsal Antar Angkatan', 'Ayo daftarkan tim futsal angkatanmu dan raih gelar juara dalam kompetisi paling bergengsi!', 'src/main/resources/image/event6.jpg', '2025-07-31 18:00:00', '2025-07-25 09:59:59', 'Lapangan Olahraga STIS', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_kredit`
--

CREATE TABLE `kategori_kredit` (
  `id` int NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_kredit`
--

INSERT INTO `kategori_kredit` (`id`, `nama_kategori`) VALUES
(1, 'Akademik'),
(2, 'Kejuaraan'),
(3, 'Organisasi'),
(4, 'Workshop');

-- --------------------------------------------------------

--
-- Table structure for table `lelang`
--

CREATE TABLE `lelang` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimal_kredit` int NOT NULL,
  `kuota` int NOT NULL,
  `tahun_lelang` int NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `tanggal_selesai` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lelang`
--

INSERT INTO `lelang` (`id`, `lokasi`, `minimal_kredit`, `kuota`, `tahun_lelang`, `deskripsi`, `tanggal_selesai`, `status`) VALUES
('lel-001', 'Badan Pusat Statistik - Jakarta Pusat', 800, 5, 2025, 'Penempatan di Direktorat Statistik Kependudukan dan Ketenagakerjaan. Dibutuhkan kemampuan analisis data yang kuat.', '2025-08-30 16:59:59', 'Aktif'),
('lel-002', 'Bappenas - Jakarta Pusat', 900, 2, 2025, 'Penempatan di Direktorat Perencanaan Makro dan Analisis Statistik. Posisi untuk analisis kebijakan.', '2025-09-15 16:59:59', 'Selesai'),
('lel-003', 'BPS Provinsi Jawa Barat - Bandung', 750, 10, 2025, 'Penempatan di BPS Provinsi Jawa Barat. Dibutuhkan talenta muda yang dinamis dan siap belajar.', '2025-08-25 16:59:59', 'Aktif'),
('lel-004', 'Kementerian Keuangan - Jakarta', 950, 3, 2025, 'Posisi analis data di Pusat Kebijakan Sektor Keuangan (PKSK). Memerlukan nilai kredit yang sangat tinggi.', '2025-09-10 16:59:59', 'Aktif'),
('lel-005', 'BPS Provinsi Jawa Timur - Surabaya', 700, 8, 2026, 'Peluang penempatan untuk lulusan tahun 2026 di ibu kota provinsi Jawa Timur.', '2026-08-20 16:59:59', 'Aktif'),
('lel-006', 'BPS Provinsi DI Yogyakarta - Yogyakarta', 720, 7, 2026, 'Peluang penempatan di kota pelajar, dibutuhkan kemampuan survei dan pengolahan data.', '2026-08-15 09:59:59', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ipk` double DEFAULT '0',
  `tahun_lulus` int NOT NULL,
  `total_kredit` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `ipk`, `tahun_lulus`, `total_kredit`) VALUES
('2024001', 3.8, 2025, 205),
('2024002', 3.91, 2025, 450),
('2024003', 3.65, 2026, 30),
('2024004', 3.77, 2026, 920),
('2024005', 3.85, 2025, 985),
('2024006', 3.92, 2025, 2400),
('2024007', 3.78, 2026, 4050),
('2024008', 3.88, 2026, 2150),
('2024009', 3.75, 2026, 120),
('2024010', 3.88, 2025, 50),
('2024015', 3.7, 2025, 700);

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mahasiswa_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pesan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'Belum Dibaca'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifikasi`
--

INSERT INTO `notifikasi` (`id`, `mahasiswa_id`, `pesan`, `tanggal`, `status`) VALUES
('19eca2e8-c91f-44b3-83b0-829669609505', '2024002', 'Anda berhasil menawar pada lelang penempatan di BPS Provinsi Jawa Barat - Bandung.', '2025-07-02 07:39:08', 'Dibaca'),
('1ecf0dbd-c1e4-4d49-9f1a-6dc27518c2a6', '2024005', '✅ Transaksi Anda untuk \'Pulpen Gel Faster\' telah diverifikasi oleh admin.', '2025-07-10 00:30:23', 'Belum Dibaca'),
('2f97b4bb-6f30-4084-8507-0e69054cc064', '2024001', 'Pengajuan kredit Anda sebesar 50 poin telah disetujui.', '2025-07-02 07:12:47', 'Dibaca'),
('32cd0e66-4234-4a25-97c2-a0ab1e1b247b', '2024001', 'Maaf, pengajuan kredit Anda ditolak. Alasan: Tiadak ada', '2025-07-02 07:12:52', 'Dibaca'),
('474da1d1-3025-4956-937c-8cf51c1e1aa3', '2024005', 'Transaksi KOPMA Anda dengan kode SSC8YV82 telah diverifikasi.', '2025-07-10 00:30:23', 'Belum Dibaca'),
('49bb4398-8ec5-492d-a487-c058451ccd71', '2024001', 'Anda berhasil menawar pada lelang penempatan di Badan Pusat Statistik - Jakarta Pusat.', '2025-07-10 00:10:31', 'Dibaca'),
('594b34e0-ae6e-428e-9d49-f18751f019e4', '2024003', 'Anda berhasil menawar pada lelang penempatan di BPS Provinsi Jawa Timur - Surabaya.', '2025-07-02 07:40:23', 'Belum Dibaca'),
('5d5c6308-e2e4-4381-bfb5-d099b176747d', '2024001', 'Transaksi KOPMA Anda dengan kode WADB8KJO telah diverifikasi.', '2025-07-02 07:33:22', 'Dibaca'),
('5febb3c3-62fb-4bc0-bc79-225fdb1c4f09', '2024015', 'Pengajuan kredit Anda sebesar 100 poin telah disetujui.', '2025-07-02 07:34:32', 'Dibaca'),
('666ad1b9-d69a-4aca-945e-e9e1566a3c17', '2024006', '🏆 SELAMAT! Anda terpilih untuk penempatan di \'Bappenas - Jakarta Pusat\'. Silakan tunggu informasi selanjutnya.', '2025-07-02 07:50:36', 'Dibaca'),
('6fe12475-468b-4076-8fa5-522af042c8ea', '2024015', '✅ Selamat! Pengajuan untuk \'Juara 1 Kampus\' (+100 poin) telah disetujui.', '2025-07-02 07:34:29', 'Dibaca'),
('7a195a41-3dd2-49b9-99e3-43495c3b1a92', '2024008', 'Anda berhasil menawar pada lelang penempatan di BPS Provinsi Jawa Timur - Surabaya.', '2025-07-10 00:13:10', 'Belum Dibaca'),
('7e7c8714-ad4b-4394-ac79-91207f394ab0', '2024006', 'Anda berhasil menawar pada lelang penempatan di BPS Provinsi Jawa Barat - Bandung.', '2025-07-02 07:43:57', 'Dibaca'),
('8bcf0c91-f80b-478d-b3d3-9e383dbeff75', '2024001', '✅ Transaksi Anda untuk \'Hoodie Angkatan 64\' telah diverifikasi oleh admin.', '2025-07-02 07:33:22', 'Dibaca'),
('9634a7d9-b01f-4f39-8d40-0c4cb4d11cee', '2024006', 'Anda berhasil menawar pada lelang penempatan di Bappenas - Jakarta Pusat.', '2025-07-02 07:44:09', 'Dibaca'),
('98ffa9b2-29ed-407e-b4bd-fc05df3f8770', '2024001', 'Anda menarik tawaran dari lelang BPS Provinsi Jawa Barat - Bandung. Kredit telah dikembalikan.', '2025-07-02 07:41:35', 'Dibaca'),
('9b8ad80e-9e42-494a-af05-864648018e6d', '2024001', 'Pengajuan kredit Anda sebesar 300 poin telah ditolak. Alasan: Tiadak ada', '2025-07-02 07:12:54', 'Dibaca'),
('a35d78fe-b832-43ed-96e4-a18146b3d2f2', '2024002', 'Anda menarik tawaran dari lelang BPS Provinsi Jawa Barat - Bandung. Kredit telah dikembalikan.', '2025-07-02 07:39:14', 'Dibaca'),
('b84c9456-503b-4204-b484-de55559f637b', '2024015', 'Pengajuan kredit Anda sebesar 100 poin telah disetujui.', '2025-07-02 07:31:13', 'Dibaca'),
('c3313e44-0357-4a77-b1ec-20ab33d8e618', '2024001', 'Pengajuan kredit Anda sebesar 400 poin telah disetujui.', '2025-07-02 07:12:37', 'Dibaca'),
('c74868ff-9bf0-49a2-b33a-ea07c30ce582', '2024015', '✅ Transaksi Anda untuk \'Hoodie Angkatan 64\' telah diverifikasi oleh admin.', '2025-07-02 07:33:26', 'Dibaca'),
('d3df269a-840f-44cb-a101-f9817c603ecc', '2024002', 'Anda berhasil menawar pada lelang penempatan di BPS Provinsi Jawa Barat - Bandung.', '2025-07-02 07:39:32', 'Belum Dibaca'),
('dae254e8-14a1-43d7-8e59-8ea6c8983b67', '2024015', 'Selamat! Pengajuan kredit Anda untuk \'asdasd\' telah disetujui. Poin 100 telah ditambahkan.', '2025-07-02 07:31:12', 'Dibaca'),
('f096878d-7ece-40d0-8544-53d5efa4abc5', '2024001', 'Anda berhasil menawar pada lelang penempatan di BPS Provinsi Jawa Barat - Bandung.', '2025-07-02 07:41:24', 'Dibaca'),
('f45155c3-4434-4761-8189-465abe30b3ad', '2024007', 'Anda berhasil menawar pada lelang penempatan di BPS Provinsi Jawa Timur - Surabaya.', '2025-07-10 00:11:58', 'Belum Dibaca'),
('f8a2ce40-cf1e-49b5-82d6-0007eb374c2a', '2024005', 'Anda berhasil menawar pada lelang penempatan di BPS Provinsi Jawa Barat - Bandung.', '2025-07-10 00:27:51', 'Dibaca'),
('fb6ebf82-8867-4bf7-ac51-c48b73951f46', '2024015', 'Transaksi KOPMA Anda dengan kode A95I4S55 telah diverifikasi.', '2025-07-02 07:33:26', 'Dibaca'),
('fd5884ef-d531-44b7-8f67-6abeeae011f8', '2024001', 'Selamat! Pengajuan kredit Anda untuk \'jasdasd\' telah disetujui. Poin 400 telah ditambahkan.', '2025-07-02 07:12:36', 'Dibaca'),
('fed522c1-aee0-4632-9b6d-dee7fb844b13', '2024001', 'Selamat! Pengajuan kredit Anda untuk \'sadajsdmas\' telah disetujui. Poin 50 telah ditambahkan.', '2025-07-02 07:12:45', 'Dibaca');

-- --------------------------------------------------------

--
-- Table structure for table `penawaran_lelang`
--

CREATE TABLE `penawaran_lelang` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lelang_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mahasiswa_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_kredit_ditawar` int NOT NULL,
  `tanggal_penawaran` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penawaran_lelang`
--

INSERT INTO `penawaran_lelang` (`id`, `lelang_id`, `mahasiswa_id`, `jumlah_kredit_ditawar`, `tanggal_penawaran`, `status`) VALUES
('031fc8e2-66b4-4620-8326-3333efd64fa5', 'lel-005', '2024003', 750, '2025-07-02 14:40:22', 'Aktif'),
('0ed04f6a-6bd7-46e3-bee7-4c1106cb31f1', 'lel-002', '2024006', 1000, '2025-07-02 14:44:08', 'Menang'),
('858e8dfe-bbc6-4b6b-b55a-db125866b93f', 'lel-003', '2024002', 800, '2025-07-02 14:39:32', 'Aktif'),
('9ebeb742-f156-43cd-a547-b9cdfde61c45', 'lel-005', '2024007', 800, '2025-07-10 07:11:58', 'Aktif'),
('aaa2038b-e2f7-4c6e-9ef3-cc2e74a02a27', 'lel-001', '2024001', 900, '2025-07-10 07:10:31', 'Aktif'),
('bee6d7f3-b3c3-407e-9098-032aa5371dfd', 'lel-003', '2024005', 850, '2025-07-10 07:27:50', 'Aktif'),
('fd7aacd0-ed33-41a3-b89b-842d168a9749', 'lel-005', '2024008', 750, '2025-07-10 07:13:09', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_kredit`
--

CREATE TABLE `pengajuan_kredit` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mahasiswa_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_sub_kategori` int DEFAULT NULL,
  `bukti` text COLLATE utf8mb4_unicode_ci,
  `tanggal` date NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'Menunggu',
  `nilai` int DEFAULT '0',
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_kategori` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `keterangan` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengajuan_kredit`
--

INSERT INTO `pengajuan_kredit` (`id`, `mahasiswa_id`, `id_sub_kategori`, `bukti`, `tanggal`, `status`, `nilai`, `kategori`, `sub_kategori`, `deskripsi`, `keterangan`) VALUES
('9f8d8dcd-c941-4ad2-9af0-84e088f9c3d9', '2024015', 9, 'uploads\\1751466850808_Metnum 2KS1 02072025 (Week 13).pdf', '2025-07-10', 'Disetujui', 100, 'Kejuaraan', 'Juara 1 Kampus', 'jabsd', NULL),
('ad1d9b47-6ca5-4bbc-b96c-41ba78e279bb', '2024001', 6, 'uploads\\1751465509090_Metnum 2KS1 02072025 (Week 13).pdf', '2025-07-01', 'Ditolak', 300, 'Kejuaraan', 'Juara 1 Nasional', 'NASKASD', 'Tiadak ada'),
('ccdbfc07-6475-4924-b813-8bec646223b7', '2024001', 4, 'uploads\\1751465129841_Metnum 2KS1 02072025 (Week 13).pdf', '2025-07-17', 'Disetujui', 400, 'Kejuaraan', 'Juara 2 Internasional', 'jasdasd', NULL),
('d5f78683-eb45-4df0-9da5-d98cbeba2d28', '2024005', 4, 'uploads\\1752132563914_Metnum_14.pdf', '2025-07-19', 'Menunggu', 400, 'Kejuaraan', 'Juara 2 Internasional', ' asavshasas', NULL),
('e8a36e62-25dd-4003-a5fd-20752bdffc74', '2024001', 15, 'uploads\\1751465289035_WhatsApp Image 2025-06-26 at 12.57.21.jpeg', '2025-07-01', 'Disetujui', 50, 'Organisasi', 'Bendahara', 'sadajsdmas', NULL),
('f878b8b0-9fd8-454d-9c62-4815b40392ed', '2024015', 9, 'uploads\\1751466653218_Metnum 2KS1 02072025 (Week 13).pdf', '2025-07-07', 'Disetujui', 100, 'Kejuaraan', 'Juara 1 Kampus', 'asdasd', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_kategori_kredit`
--

CREATE TABLE `sub_kategori_kredit` (
  `id` int NOT NULL,
  `id_kategori` int NOT NULL,
  `nama_sub_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `poin` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_kategori_kredit`
--

INSERT INTO `sub_kategori_kredit` (`id`, `id_kategori`, `nama_sub_kategori`, `poin`) VALUES
(1, 1, 'IPK > 3.75', 1000),
(2, 1, 'IPK 3.51 - 3.75', 750),
(3, 2, 'Juara 1 Internasional', 500),
(4, 2, 'Juara 2 Internasional', 400),
(5, 2, 'Juara 3 Internasional', 300),
(6, 2, 'Juara 1 Nasional', 300),
(7, 2, 'Juara 2 Nasional', 250),
(8, 2, 'Juara 3 Nasional', 200),
(9, 2, 'Juara 1 Kampus', 100),
(10, 2, 'Juara 2 Kampus', 50),
(11, 2, 'Juara 3 Kampus', 25),
(12, 3, 'Ketua', 100),
(13, 3, 'Wakil Ketua', 75),
(14, 3, 'Sekretaris', 50),
(15, 3, 'Bendahara', 50),
(16, 3, 'Anggota', 25),
(17, 4, 'Seminar', 20);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_kopma`
--

CREATE TABLE `transaksi_kopma` (
  `id` int NOT NULL,
  `mahasiswa_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_penukaran` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'Menunggu'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksi_kopma`
--

INSERT INTO `transaksi_kopma` (`id`, `mahasiswa_id`, `barang_id`, `kode_penukaran`, `tanggal`, `status`) VALUES
(1, '2024001', 'brg-002', 'WADB8KJO', '2025-07-02', 'Selesai'),
(2, '2024015', 'brg-002', 'A95I4S55', '2025-07-02', 'Selesai'),
(3, '2024005', 'brg-002', '5TXVGKHN', '2025-07-10', 'Menunggu'),
(4, '2024005', 'brg-008', 'SSC8YV82', '2025-07-10', 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `password`, `role`) VALUES
('2024001', 'Ahmad Rizki', 'mahasiswa123', 'Mahasiswa'),
('2024002', 'Siti Nurhaliza', 'mahasiswa123', 'Mahasiswa'),
('2024003', 'Budi Santoso', 'mahasiswa123', 'Mahasiswa'),
('2024004', 'Dewi Lestari', 'mahasiswa123', 'Mahasiswa'),
('2024005', 'Rian Hidayat', 'mahasiswa123', 'Mahasiswa'),
('2024006', 'Putri Anggraini', 'mahasiswa123', 'Mahasiswa'),
('2024007', 'Agung Nugroho', 'mahasiswa123', 'Mahasiswa'),
('2024008', 'Fitriani', 'mahasiswa123', 'Mahasiswa'),
('2024009', 'Chandra Wijaya', 'mahasiswa123', 'Mahasiswa'),
('2024010', 'Maya Puspita', 'mahasiswa123', 'Mahasiswa'),
('2024015', 'Indra Setiawan', 'mahasiswa123', 'Mahasiswa'),
('kopma1', 'Administrator KOPMA', 'kopma123', 'AdminKopma'),
('kredit1', 'Administrator Kredit', 'kredit123', 'AdminKredit');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang_kopma`
--
ALTER TABLE `barang_kopma`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_kredit`
--
ALTER TABLE `kategori_kredit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lelang`
--
ALTER TABLE `lelang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_notifikasi_mahasiswa` (`mahasiswa_id`);

--
-- Indexes for table `penawaran_lelang`
--
ALTER TABLE `penawaran_lelang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_penawaran_lelang` (`lelang_id`),
  ADD KEY `fk_penawaran_mahasiswa` (`mahasiswa_id`);

--
-- Indexes for table `pengajuan_kredit`
--
ALTER TABLE `pengajuan_kredit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pengajuan_mahasiswa` (`mahasiswa_id`),
  ADD KEY `fk_pengajuan_sub_kategori` (`id_sub_kategori`);

--
-- Indexes for table `sub_kategori_kredit`
--
ALTER TABLE `sub_kategori_kredit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_subkategori_kategori` (`id_kategori`);

--
-- Indexes for table `transaksi_kopma`
--
ALTER TABLE `transaksi_kopma`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_transaksi_barang` (`barang_id`),
  ADD KEY `fk_transaksi_mahasiswa` (`mahasiswa_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori_kredit`
--
ALTER TABLE `kategori_kredit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_kategori_kredit`
--
ALTER TABLE `sub_kategori_kredit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `transaksi_kopma`
--
ALTER TABLE `transaksi_kopma`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `fk_mahasiswa_user` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD CONSTRAINT `fk_notifikasi_mahasiswa` FOREIGN KEY (`mahasiswa_id`) REFERENCES `mahasiswa` (`id`);

--
-- Constraints for table `penawaran_lelang`
--
ALTER TABLE `penawaran_lelang`
  ADD CONSTRAINT `fk_penawaran_lelang` FOREIGN KEY (`lelang_id`) REFERENCES `lelang` (`id`),
  ADD CONSTRAINT `fk_penawaran_mahasiswa` FOREIGN KEY (`mahasiswa_id`) REFERENCES `mahasiswa` (`id`);

--
-- Constraints for table `pengajuan_kredit`
--
ALTER TABLE `pengajuan_kredit`
  ADD CONSTRAINT `fk_pengajuan_mahasiswa` FOREIGN KEY (`mahasiswa_id`) REFERENCES `mahasiswa` (`id`),
  ADD CONSTRAINT `fk_pengajuan_sub_kategori` FOREIGN KEY (`id_sub_kategori`) REFERENCES `sub_kategori_kredit` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sub_kategori_kredit`
--
ALTER TABLE `sub_kategori_kredit`
  ADD CONSTRAINT `fk_subkategori_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_kredit` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transaksi_kopma`
--
ALTER TABLE `transaksi_kopma`
  ADD CONSTRAINT `fk_transaksi_barang` FOREIGN KEY (`barang_id`) REFERENCES `barang_kopma` (`id`),
  ADD CONSTRAINT `fk_transaksi_mahasiswa` FOREIGN KEY (`mahasiswa_id`) REFERENCES `mahasiswa` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
