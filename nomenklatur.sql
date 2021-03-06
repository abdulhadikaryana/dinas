-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 27 Jul 2017 pada 09.45
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nomenklatur`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(2, 'admin', 'admin'),
(3, 'admin1', 'admin1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dinas`
--

CREATE TABLE `dinas` (
  `id_info` int(200) NOT NULL,
  `nama_dinas` varchar(50) DEFAULT NULL,
  `dasar_hukum` varchar(50) DEFAULT NULL,
  `alamat_kantor` varchar(50) DEFAULT NULL,
  `no_telepon` int(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `website` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dinas`
--

INSERT INTO `dinas` (`id_info`, `nama_dinas`, `dasar_hukum`, `alamat_kantor`, `no_telepon`, `email`, `website`) VALUES
(1, 'e', 'dlk', 'dd', 2039, 'lk', 'dl');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `jabatan` varchar(20) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `NIP` varchar(50) NOT NULL,
  `no_hp` int(13) DEFAULT NULL,
  `alamat_email` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`jabatan`, `nama`, `NIP`, `no_hp`, `alamat_email`) VALUES
('', '', '', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kabupaten`
--

CREATE TABLE `kabupaten` (
  `kode_kab` int(5) NOT NULL,
  `kode_prov` int(5) NOT NULL,
  `nama_kab` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kabupaten`
--

INSERT INTO `kabupaten` (`kode_kab`, `kode_prov`, `nama_kab`) VALUES
(1, 11, 'SIMEULUE'),
(2, 11, 'ACEH SINGKIL'),
(3, 11, 'ACEH SELATAN'),
(4, 11, 'ACEH TENGGARA'),
(5, 11, 'ACEH TIMUR'),
(6, 11, 'ACEH TENGAH'),
(7, 11, 'ACEH BARAT'),
(8, 11, 'ACEH BESAR'),
(9, 11, 'PIDIE'),
(10, 11, 'BIREUEN'),
(11, 11, 'ACEH UTARA'),
(12, 11, 'ACEH BARAT DAYA'),
(13, 11, 'GAYO LUES'),
(14, 11, 'ACEH TAMIANG'),
(15, 11, 'NAGAN RAYA'),
(16, 11, 'ACEH JAYA'),
(17, 11, 'BENER MERIAH'),
(18, 11, 'PIDIE JAYA'),
(71, 11, 'KOTA BANDA ACEH'),
(72, 11, 'KOTA SABANG'),
(73, 11, 'KOTA LANGSA'),
(74, 11, 'KOTA LHOKSEUMAWE'),
(75, 11, 'KOTA SUBULUSSALAM'),
(1, 12, 'NIAS'),
(2, 12, 'MANDAILING NATAL'),
(3, 12, 'TAPANULI SELATAN'),
(4, 12, 'TAPANULI TENGAH'),
(5, 12, 'TAPANULI UTARA'),
(6, 12, 'TOBA SAMOSIR'),
(7, 12, 'LABUHAN BATU'),
(8, 12, 'ASAHAN'),
(9, 12, 'SIMALUNGUN'),
(10, 12, 'DAIRI'),
(11, 12, 'KARO'),
(12, 12, 'DELI SERDANG'),
(13, 12, 'LANGKAT'),
(14, 12, 'NIAS SELATAN'),
(15, 12, 'HUMBANG HASUNDUTAN'),
(16, 12, 'PAKPAK BHARAT'),
(17, 12, 'SAMOSIR'),
(18, 12, 'SERDANG BEDAGAI'),
(19, 12, 'BATU BARA'),
(20, 12, 'PADANG LAWAS UTARA'),
(21, 12, 'PADANG LAWAS'),
(22, 12, 'LABUHANBATU SELATAN'),
(23, 12, 'LABUHANBATU UTARA'),
(24, 12, 'NIAS UTARA'),
(25, 12, 'NIAS BARAT'),
(71, 12, 'KOTA SIBOLGA'),
(72, 12, 'KOTA TANJUNG BALAI'),
(73, 12, 'KOTA PEMATANG SIANTAR'),
(74, 12, 'KOTA TEBING TINGGI'),
(75, 12, 'KOTA MEDAN'),
(76, 12, 'KOTA BINJAI'),
(77, 12, 'KOTA PADANG SIDIMPUAN'),
(78, 12, 'KOTA GUNUNGSITOLI'),
(1, 13, 'KEPULAUAN MENTAWAI'),
(2, 13, 'PESISIR SELATAN'),
(3, 13, 'SOLOK'),
(4, 13, 'SIJUNJUNG'),
(5, 13, 'TANAH DATAR'),
(6, 13, 'PADANG PARIAMAN'),
(7, 13, 'AGAM'),
(8, 13, 'LIMA PULUH KOTA'),
(9, 13, 'PASAMAN'),
(10, 13, 'SOLOK SELATAN'),
(11, 13, 'DHARMASRAYA'),
(12, 13, 'PASAMAN BARAT'),
(71, 13, 'KOTA PADANG'),
(72, 13, 'KOTA SOLOK'),
(73, 13, 'KOTA SAWAHLUNTO'),
(74, 13, 'KOTA PADANG PANJANG'),
(75, 13, 'KOTA BUKITTINGGI'),
(76, 13, 'KOTA PAYAKUMBUH'),
(77, 13, 'KOTA PARIAMAN'),
(1, 14, 'KUANTAN SINGINGI'),
(2, 14, 'INDRAGIRI HULU'),
(3, 14, 'INDRAGIRI HILIR'),
(4, 14, 'PELALAWAN'),
(5, 14, 'SIAK'),
(6, 14, 'KAMPAR'),
(7, 14, 'ROKAN HULU'),
(8, 14, 'BENGKALIS'),
(9, 14, 'ROKAN HILIR'),
(10, 14, 'KEPULAUAN MERANTI'),
(71, 14, 'KOTA PEKANBARU'),
(72, 14, 'KOTA DUMAI'),
(1, 15, 'KERINCI'),
(2, 15, 'MERANGIN'),
(3, 15, 'SAROLANGUN'),
(4, 15, 'BATANGHARI'),
(5, 15, 'MUARO JAMBI'),
(6, 15, 'TANJUNG JABUNG TIMUR'),
(7, 15, 'TANJUNG JABUNG BARAT'),
(8, 15, 'TEBO'),
(9, 15, 'BUNGO'),
(71, 15, 'KOTA JAMBI'),
(72, 15, 'KOTA SUNGAI PENUH'),
(1, 16, 'OGAN KOMERING ULU'),
(2, 16, 'OGAN KOMERING ILIR'),
(3, 16, 'MUARA ENIM'),
(4, 16, 'LAHAT'),
(5, 16, 'MUSI RAWAS'),
(6, 16, 'MUSI BANYUASIN'),
(7, 16, 'BANYUASIN'),
(8, 16, 'OGAN KOMERING ULU TIMUR'),
(9, 16, 'OGAN KOMERING ULU SELATAN'),
(10, 16, 'OGAN ILIR'),
(11, 16, 'EMPAT LAWANG'),
(12, 16, 'PENUKAL ABAB LEMATANG ILIR'),
(13, 16, 'MUSI RAWAS UTARA'),
(71, 16, 'KOTA PALEMBANG'),
(72, 16, 'KOTA PRABUMULIH'),
(73, 16, 'KOTA PAGAR ALAM'),
(74, 16, 'KOTA LUBUK LINGGAU'),
(1, 17, 'BENGKULU SELATAN'),
(2, 17, 'REJANG LEBONG'),
(3, 17, 'BENGKULU UTARA'),
(4, 17, 'KAUR'),
(5, 17, 'SELUMA'),
(6, 17, 'MUKO MUKO'),
(7, 17, 'LEBONG'),
(8, 17, 'KEPAHIANG'),
(9, 17, 'BENGKULU TENGAH'),
(71, 17, 'KOTA BENGKULU'),
(1, 18, 'LAMPUNG BARAT'),
(2, 18, 'TANGGAMUS'),
(3, 18, 'LAMPUNG SELATAN'),
(4, 18, 'LAMPUNG TIMUR'),
(5, 18, 'LAMPUNG TENGAH'),
(6, 18, 'LAMPUNG UTARA'),
(7, 18, 'WAY KANAN'),
(8, 18, 'TULANG BAWANG'),
(9, 18, 'PESAWARAN'),
(10, 18, 'PRINGSEWU'),
(11, 18, 'MESUJI'),
(12, 18, 'TULANG BAWANG BARAT'),
(13, 18, 'PESISIR BARAT'),
(71, 18, 'KOTA BANDAR LAMPUNG'),
(72, 18, 'KOTA METRO'),
(1, 19, 'BANGKA'),
(2, 19, 'BELITUNG'),
(3, 19, 'BANGKA BARAT'),
(4, 19, 'BANGKA TENGAH'),
(5, 19, 'BANGKA SELATAN'),
(6, 19, 'BELITUNG TIMUR'),
(71, 19, 'KOTA PANGKAL PINANG'),
(1, 21, 'KARIMUN'),
(2, 21, 'BINTAN'),
(3, 21, 'NATUNA'),
(4, 21, 'LINGGA'),
(5, 21, 'KEPULAUAN ANAMBAS'),
(71, 21, 'KOTA BATAM'),
(72, 21, 'KOTA TANJUNG PINANG'),
(1, 31, 'KEPULAUAN SERIBU'),
(71, 31, 'KOTA JAKARTA SELATAN'),
(72, 31, 'KOTA JAKARTA TIMUR'),
(73, 31, 'KOTA JAKARTA PUSAT'),
(74, 31, 'KOTA JAKARTA BARAT'),
(75, 31, 'KOTA JAKARTA UTARA'),
(1, 32, 'BOGOR'),
(2, 32, 'SUKABUMI'),
(3, 32, 'CIANJUR'),
(4, 32, 'BANDUNG'),
(5, 32, 'GARUT'),
(6, 32, 'TASIKMALAYA'),
(7, 32, 'CIAMIS'),
(8, 32, 'KUNINGAN'),
(9, 32, 'CIREBON'),
(10, 32, 'MAJALENGKA'),
(11, 32, 'SUMEDANG'),
(12, 32, 'INDRAMAYU'),
(13, 32, 'SUBANG'),
(14, 32, 'PURWAKARTA'),
(15, 32, 'KARAWANG'),
(16, 32, 'BEKASI'),
(17, 32, 'BANDUNG BARAT'),
(18, 32, 'PANGANDARAN'),
(71, 32, 'KOTA BOGOR'),
(72, 32, 'KOTA SUKABUMI'),
(73, 32, 'KOTA BANDUNG'),
(74, 32, 'KOTA CIREBON'),
(75, 32, 'KOTA BEKASI'),
(76, 32, 'KOTA DEPOK'),
(77, 32, 'KOTA CIMAHI'),
(78, 32, 'KOTA TASIKMALAYA'),
(79, 32, 'KOTA BANJAR'),
(1, 33, 'CILACAP'),
(2, 33, 'BANYUMAS'),
(3, 33, 'PURBALINGGA'),
(4, 33, 'BANJARNEGARA'),
(5, 33, 'KEBUMEN'),
(6, 33, 'PURWOREJO'),
(7, 33, 'WONOSOBO'),
(8, 33, 'MAGELANG'),
(9, 33, 'BOYOLALI'),
(10, 33, 'KLATEN'),
(11, 33, 'SUKOHARJO'),
(12, 33, 'WONOGIRI'),
(13, 33, 'KARANGANYAR'),
(14, 33, 'SRAGEN'),
(15, 33, 'GROBOGAN'),
(16, 33, 'BLORA'),
(17, 33, 'REMBANG'),
(18, 33, 'PATI'),
(19, 33, 'KUDUS'),
(20, 33, 'JEPARA'),
(21, 33, 'DEMAK'),
(22, 33, 'SEMARANG'),
(23, 33, 'TEMANGGUNG'),
(24, 33, 'KENDAL'),
(25, 33, 'BATANG'),
(26, 33, 'PEKALONGAN'),
(27, 33, 'PEMALANG'),
(28, 33, 'TEGAL'),
(29, 33, 'BREBES'),
(71, 33, 'KOTA MAGELANG'),
(72, 33, 'KOTA SURAKARTA'),
(73, 33, 'KOTA SALATIGA'),
(74, 33, 'KOTA SEMARANG'),
(75, 33, 'KOTA PEKALONGAN'),
(76, 33, 'KOTA TEGAL'),
(1, 34, 'KULON PROGO'),
(2, 34, 'BANTUL'),
(3, 34, 'GUNUNGKIDUL'),
(4, 34, 'SLEMAN'),
(71, 34, 'KOTA YOGYAKARTA'),
(1, 35, 'PACITAN'),
(2, 35, 'PONOROGO'),
(3, 35, 'TRENGGALEK'),
(4, 35, 'TULUNGAGUNG'),
(5, 35, 'BLITAR'),
(6, 35, 'KEDIRI'),
(7, 35, 'MALANG'),
(8, 35, 'LUMAJANG'),
(9, 35, 'JEMBER'),
(10, 35, 'BANYUWANGI'),
(11, 35, 'BONDOWOSO'),
(12, 35, 'SITUBONDO'),
(13, 35, 'PROBOLINGGO'),
(14, 35, 'PASURUAN'),
(15, 35, 'SIDOARJO'),
(16, 35, 'MOJOKERTO'),
(17, 35, 'JOMBANG'),
(18, 35, 'NGANJUK'),
(19, 35, 'MADIUN'),
(20, 35, 'MAGETAN'),
(21, 35, 'NGAWI'),
(22, 35, 'BOJONEGORO'),
(23, 35, 'TUBAN'),
(24, 35, 'LAMONGAN'),
(25, 35, 'GRESIK'),
(26, 35, 'BANGKALAN'),
(27, 35, 'SAMPANG'),
(28, 35, 'PAMEKASAN'),
(29, 35, 'SUMENEP'),
(71, 35, 'KOTA KEDIRI'),
(72, 35, 'KOTA BLITAR'),
(73, 35, 'KOTA MALANG'),
(74, 35, 'KOTA PROBOLINGGO'),
(75, 35, 'KOTA PASURUAN'),
(76, 35, 'KOTA MOJOKERTO'),
(77, 35, 'KOTA MADIUN'),
(78, 35, 'KOTA SURABAYA'),
(79, 35, 'KOTA BATU'),
(1, 36, 'PANDEGLANG'),
(2, 36, 'LEBAK'),
(3, 36, 'TANGERANG'),
(4, 36, 'SERANG'),
(71, 36, 'KOTA TANGERANG'),
(72, 36, 'KOTA CILEGON'),
(73, 36, 'KOTA SERANG'),
(74, 36, 'KOTA TANGERANG SELATAN'),
(1, 51, 'JEMBRANA'),
(2, 51, 'TABANAN'),
(3, 51, 'BADUNG'),
(4, 51, 'GIANYAR'),
(5, 51, 'KLUNGKUNG'),
(6, 51, 'BANGLI'),
(7, 51, 'KARANGASEM'),
(8, 51, 'BULELENG'),
(71, 51, 'KOTA DENPASAR'),
(1, 52, 'LOMBOK BARAT'),
(2, 52, 'LOMBOK TENGAH'),
(3, 52, 'LOMBOK TIMUR'),
(4, 52, 'SUMBAWA'),
(5, 52, 'DOMPU'),
(6, 52, 'BIMA'),
(7, 52, 'SUMBAWA BARAT'),
(8, 52, 'LOMBOK UTARA'),
(71, 52, 'KOTA MATARAM'),
(72, 52, 'KOTA BIMA'),
(1, 53, 'SUMBA BARAT'),
(2, 53, 'SUMBA TIMUR'),
(3, 53, 'KUPANG'),
(4, 53, 'TIMOR TENGAH SELATAN'),
(5, 53, 'TIMOR TENGAH UTARA'),
(6, 53, 'BELU'),
(7, 53, 'ALOR'),
(8, 53, 'LEMBATA'),
(9, 53, 'FLORES TIMUR'),
(10, 53, 'SIKKA'),
(11, 53, 'ENDE'),
(12, 53, 'NGADA'),
(13, 53, 'MANGGARAI'),
(14, 53, 'ROTE NDAO'),
(15, 53, 'MANGGARAI BARAT'),
(16, 53, 'SUMBA TENGAH'),
(17, 53, 'SUMBA BARAT DAYA'),
(18, 53, 'NAGEKEO'),
(19, 53, 'MANGGARAI TIMUR'),
(20, 53, 'SABU RAIJUA'),
(21, 53, 'MALAKA'),
(71, 53, 'KOTA KUPANG'),
(1, 61, 'SAMBAS'),
(2, 61, 'BENGKAYANG'),
(3, 61, 'LANDAK'),
(4, 61, 'MEMPAWAH'),
(5, 61, 'SANGGAU'),
(6, 61, 'KETAPANG'),
(7, 61, 'SINTANG'),
(8, 61, 'KAPUAS HULU'),
(9, 61, 'SEKADAU'),
(10, 61, 'MELAWI'),
(11, 61, 'KAYONG UTARA'),
(12, 61, 'KUBU RAYA'),
(71, 61, 'KOTA PONTIANAK'),
(72, 61, 'KOTA SINGKAWANG'),
(1, 62, 'KOTAWARINGIN BARAT'),
(2, 62, 'KOTAWARINGIN TIMUR'),
(3, 62, 'KAPUAS'),
(4, 62, 'BARITO SELATAN'),
(5, 62, 'BARITO UTARA'),
(6, 62, 'SUKAMARA'),
(7, 62, 'LAMANDAU'),
(8, 62, 'SERUYAN'),
(9, 62, 'KATINGAN'),
(10, 62, 'PULANG PISAU'),
(11, 62, 'GUNUNG MAS'),
(12, 62, 'MURUNG RAYA'),
(13, 62, 'BARITO TIMUR'),
(71, 62, 'KOTA PALANGKARAYA'),
(1, 63, 'TANAH LAUT'),
(2, 63, 'KOTABARU'),
(3, 63, 'BANJAR'),
(4, 63, 'BARITO KUALA'),
(5, 63, 'TAPIN'),
(6, 63, 'HULU SUNGAI SELATAN'),
(7, 63, 'HULU SUNGAI TENGAH'),
(8, 63, 'HULU SUNGAI UTARA'),
(9, 63, 'TABALONG'),
(10, 63, 'TANAH BUMBU'),
(11, 63, 'BALANGAN'),
(71, 63, 'KOTA BANJARMASIN'),
(72, 63, 'KOTA BANJARBARU'),
(1, 64, 'PASER'),
(2, 64, 'KUTAI BARAT'),
(3, 64, 'KUTAI KARTANEGARA'),
(4, 64, 'KUTAI TIMUR'),
(5, 64, 'BERAU'),
(6, 64, 'PENAJAM PASER UTARA'),
(7, 64, 'MAHAKAM ULU'),
(71, 64, 'KOTA BALIKPAPAN'),
(72, 64, 'KOTA SAMARINDA'),
(73, 64, 'KOTA BONTANG'),
(1, 65, 'MALINAU'),
(2, 65, 'BULUNGAN'),
(3, 65, 'TANA TIDUNG'),
(4, 65, 'NUNUKAN'),
(71, 65, 'KOTA TARAKAN'),
(1, 71, 'BOLAANG MONGONDOW'),
(2, 71, 'MINAHASA'),
(3, 71, 'KEPULAUAN SANGIHE'),
(4, 71, 'KEPULAUAN TALAUD'),
(5, 71, 'MINAHASA SELATAN'),
(6, 71, 'MINAHASA UTARA'),
(7, 71, 'BOLAANG MONGONDOW UTARA'),
(8, 71, 'KEPULAUAN SITARO'),
(9, 71, 'MINAHASA TENGGARA'),
(10, 71, 'BOLAANG MONGONDOW SELATAN'),
(11, 71, 'BOLAANG MONGONDOW TIMUR'),
(71, 71, 'KOTA MANADO'),
(72, 71, 'KOTA BITUNG'),
(73, 71, 'KOTA TOMOHON'),
(74, 71, 'KOTA KOTAMOBAGU'),
(1, 72, 'BANGGAI KEPULAUAN'),
(2, 72, 'BANGGAI'),
(3, 72, 'MOROWALI'),
(4, 72, 'POSO'),
(5, 72, 'DONGGALA'),
(6, 72, 'TOLI TOLI'),
(7, 72, 'BUOL'),
(8, 72, 'PARIGI MOUTONG'),
(9, 72, 'TOJO UNA UNA'),
(10, 72, 'SIGI'),
(11, 72, 'BANGGAI LAUT'),
(12, 72, 'MOROWALI UTARA'),
(71, 72, 'KOTA PALU'),
(1, 73, 'KEPULAUAN SELAYAR'),
(2, 73, 'BULUKUMBA'),
(3, 73, 'BANTAENG'),
(4, 73, 'JENEPONTO'),
(5, 73, 'TAKALAR'),
(6, 73, 'GOWA'),
(7, 73, 'SINJAI'),
(8, 73, 'MAROS'),
(9, 73, 'PANGKAJENE KEPULAUAN'),
(10, 73, 'BARRU'),
(11, 73, 'BONE'),
(12, 73, 'SOPPENG'),
(13, 73, 'WAJO'),
(14, 73, 'SIDENRENG RAPPANG'),
(15, 73, 'PINRANG'),
(16, 73, 'ENREKANG'),
(17, 73, 'LUWU'),
(18, 73, 'TANA TORAJA'),
(19, 73, 'LUWU UTARA'),
(20, 73, 'LUWU TIMUR'),
(21, 73, 'TORAJA UTARA'),
(71, 73, 'KOTA MAKASSAR'),
(72, 73, 'KOTA PARE PARE'),
(73, 73, 'KOTA PALOPO'),
(1, 74, 'BUTON'),
(2, 74, 'MUNA'),
(3, 74, 'KONAWE'),
(4, 74, 'KOLAKA'),
(5, 74, 'KONAWE SELATAN'),
(6, 74, 'BOMBANA'),
(7, 74, 'WAKATOBI'),
(8, 74, 'KOLAKA UTARA'),
(9, 74, 'BUTON UTARA'),
(10, 74, 'KONAWE UTARA'),
(11, 74, 'KOLAKA TIMUR'),
(12, 74, 'KONAWE KEPULAUAN'),
(13, 74, 'MUNA BARAT'),
(14, 74, 'BUTON TENGAH'),
(15, 74, 'BUTON SELATAN'),
(71, 74, 'KOTA KENDARI'),
(72, 74, 'KOTA BAU BAU'),
(1, 75, 'BOALEMO'),
(2, 75, 'GORONTALO'),
(3, 75, 'PAHUWATO'),
(4, 75, 'BONE BOLANGO'),
(5, 75, 'GORONTALO UTARA'),
(71, 75, 'KOTA GORONTALO'),
(1, 76, 'MAJENE'),
(2, 76, 'POLEWALI MANDAR'),
(3, 76, 'MAMASA'),
(4, 76, 'MAMUJU'),
(5, 76, 'MAMUJU UTARA'),
(6, 76, 'MAMUJU TENGAH'),
(1, 81, 'MALUKU TENGGARA BARAT'),
(2, 81, 'MALUKU TENGGARA'),
(3, 81, 'MALUKU TENGAH'),
(4, 81, 'BURU'),
(5, 81, 'KEPULAUAN ARU'),
(6, 81, 'SERAM BAGIAN BARAT'),
(7, 81, 'SERAM BAGIAN TIMUR'),
(8, 81, 'MALUKU BARAT DAYA'),
(9, 81, 'BURU SELATAN'),
(71, 81, 'KOTA AMBON'),
(72, 81, 'KOTA TUAL'),
(1, 82, 'HALMAHERA BARAT'),
(2, 82, 'HALMAHERA TENGAH'),
(3, 82, 'KEPULAUAN SULA'),
(4, 82, 'HALMAHERA SELATAN'),
(5, 82, 'HALMAHERA UTARA'),
(6, 82, 'HALMAHERA TIMUR'),
(7, 82, 'PULAU MOROTAI'),
(8, 82, 'PULAU TALIABU'),
(71, 82, 'KOTA TERNATE'),
(72, 82, 'KOTA TIDORE KEPULAUAN'),
(1, 91, 'FAK FAK'),
(2, 91, 'KAIMANA'),
(3, 91, 'TELUK WONDAMA'),
(4, 91, 'TELUK BINTUNI'),
(5, 91, 'MANOKWARI'),
(6, 91, 'SORONG SELATAN'),
(7, 91, 'SORONG'),
(8, 91, 'RAJA AMPAT'),
(9, 91, 'TAMBRAUW'),
(10, 91, 'MAYBRAT'),
(11, 91, 'MANOKWARI SELATAN'),
(12, 91, 'PEGUNUNGAN ARFAK'),
(71, 91, 'KOTA SORONG'),
(1, 94, 'MERAUKE'),
(2, 94, 'JAYAWIJAYA'),
(3, 94, 'JAYAPURA'),
(4, 94, 'NABIRE'),
(5, 94, 'KEPULAUAN YAPEN'),
(6, 94, 'BIAK NUMFOR'),
(7, 94, 'PANIAI'),
(8, 94, 'PUNCAK JAYA'),
(9, 94, 'MIMIKA'),
(10, 94, 'BOVEN DIGOEL'),
(11, 94, 'MAPPI'),
(12, 94, 'ASMAT'),
(13, 94, 'YAHUKIMO'),
(14, 94, 'PEGUNUNGAN BINTANG'),
(15, 94, 'TOLIKARA'),
(16, 94, 'SARMI'),
(17, 94, 'KEEROM'),
(18, 94, 'WAROPEN'),
(19, 94, 'SUPIORI'),
(20, 94, 'MAMBERAMO RAYA'),
(21, 94, 'NDUGA'),
(22, 94, 'LANNY JAYA'),
(23, 94, 'MAMBERAMO TENGAH'),
(24, 94, 'YALIMO'),
(25, 94, 'PUNCAK'),
(26, 94, 'DOGIYAI'),
(27, 94, 'INTAN JAYA'),
(28, 94, 'DEIYAI'),
(71, 94, 'KOTA JAYAPURA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinsi`
--

CREATE TABLE `provinsi` (
  `kode_prov` int(5) NOT NULL,
  `nama_prov` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `provinsi`
--

INSERT INTO `provinsi` (`kode_prov`, `nama_prov`) VALUES
(11, 'ACEH'),
(12, 'SUMATERA UTARA'),
(13, 'SUMATERA BARAT'),
(14, 'RIAU'),
(15, 'JAMBI'),
(16, 'SUMATERA SELATAN'),
(17, 'BENGKULU'),
(18, 'LAMPUNG'),
(19, 'BANGKA BELITUNG'),
(21, 'KEPULAUAN RIAU'),
(31, 'DKI JAKARTA'),
(32, 'JAWA BARAT'),
(33, 'JAWA TENGAH'),
(34, 'DI YOGYAKARTA'),
(35, 'JAWA TIMUR'),
(36, 'BANTEN'),
(51, 'BALI'),
(52, 'NUSA TENGGARA BARAT'),
(53, 'NUSATENGGARA TIMUR'),
(61, 'KALIMANTAN BARAT'),
(62, 'KALIMANTAN TENGAH'),
(63, 'KALIMANTAN SELATAN'),
(64, 'KALIMANTAN TIMUR'),
(65, 'KALIMANTAN UTARA'),
(71, 'SULAWESI UTARA'),
(72, 'SULAWESI TENGAH'),
(73, 'SULAWESI SELATAN'),
(74, 'SULAWESI TENGGARA'),
(75, 'GORONTALO'),
(76, 'SULAWESI BARAT'),
(81, 'MALUKU'),
(82, 'MALUKU UTARA'),
(91, 'PAPUA BARAT'),
(94, 'PAPUA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dinas`
--
ALTER TABLE `dinas`
  ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`NIP`);

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD KEY `kode_prov` (`kode_prov`),
  ADD KEY `kode_kab` (`kode_kab`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`kode_prov`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `dinas`
--
ALTER TABLE `dinas`
  MODIFY `id_info` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD CONSTRAINT `kabupaten_ibfk_1` FOREIGN KEY (`kode_prov`) REFERENCES `provinsi` (`kode_prov`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
