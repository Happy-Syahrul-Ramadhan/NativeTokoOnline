-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Agu 2021 pada 05.35
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_produk`
--

INSERT INTO `kategori_produk` (`id_kategori`, `nama_kategori`) VALUES
(7, 'kaos'),
(8, 'hoodie'),
(9, 'aksesoris');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `komentar` longtext DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL,
  `balasan` longtext DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `id_diskon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `nama`, `email`, `komentar`, `tanggal`, `waktu`, `balasan`, `id_produk`, `id_diskon`) VALUES
(7, 'Akbar Ganteng', 'akbar1107kurniawan@gmail.com', 'Kualitas bahannya bagus,harga terjangkau,respon admin yang cepat\r\n\r\nsaya suka saya suka', '05-08-2021', '04:39:53', 'oke tengkyu', 30, NULL),
(8, 'Alucard', 'riskigaming@gmail.com', 'mantab sekali', '05-08-2021', '04:41:21', NULL, 30, NULL),
(9, 'oni', 'riskigaming@gmail.com', 'oke', '05-08-2021', '04:45:49', NULL, 31, NULL),
(10, 'oni', 'riskigaming@gmail.com', 'mantap', '05-08-2021', '04:47:47', NULL, 31, NULL),
(11, 'Akbar Ganteng', 'riskigaming@gmail.com', 'oke', '05-08-2021', '04:49:34', NULL, 31, NULL),
(12, 'Alucard', 'riskigaming@gmail.com', 'vjvjjk', '05-08-2021', '05:05:04', NULL, 30, NULL),
(13, 'Alucard', 'gilangjamet26@gmail.com', 'vui', '05-08-2021', '05:08:38', NULL, 30, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `alamat` longtext DEFAULT NULL,
  `pesan` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `nama`, `email`, `website`, `alamat`, `pesan`) VALUES
(3, 'akbar', 'akbar@gmail.com', 'www.akbar.com', 'Metro', 'Mantab'),
(4, 'oni', 'yudhaew@gmail.com', '-', 'lampung', 'jos'),
(5, 'oniham', 'oni@gmail.com', 'sa.com', 'sadadawdawwawaww', 'aw'),
(6, 'oniham', 'oni@gmail.com', 'sa.com', 'ASdsacbsa', 'sk'),
(7, 'ikiki', 'oni@gmail.com', 'sa.com', 'sadkas', 'adsads'),
(8, 'oniham', 'zaenall@gmail.com', 'sa.com', 'lsdas', ',asdas'),
(9, 'ikiki', 'oni@gmail.com', 'sa.com', 'lkdasd', 'bdklsa'),
(10, 'oniham', 'oni@gmail.com', 'lsda', 'ksbdas', 'ksadas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `gambar1` varchar(255) DEFAULT NULL,
  `gambar2` varchar(255) DEFAULT NULL,
  `merk` varchar(255) DEFAULT NULL,
  `deskripsi` longtext DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `harga_awal` varchar(255) DEFAULT NULL,
  `dilihat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `gambar1`, `gambar2`, `merk`, `deskripsi`, `harga`, `harga_awal`, `dilihat`) VALUES
(30, 8, 'produk_depan.jpg', 'produk2_Back.jpg', 'Hoodie ArsCloth black new original', '<ul><li>100% ori</li><li>warna tidak cepat pudar</li><li>sablon terbaik</li><li>kualitas jahitan terbaik</li><li>lembut, mudah menyerap keringat tidak gerah dan tidak kaku</li><li>free stickers&nbsp;</li></ul><p><br></p><p><b>ORIGINAL PRODUCT BY ARSCLOTH</b></p>', 'Rp.149.999', 'Rp.170.000', 23),
(31, 7, 'produk_kaosdpn.jpg', 'produk2_belakang.jpg', 'Kaos ArsCloth Logo Best Black', '<ul><li>100% cotton combed</li><li>warna tidak cepat pudar</li><li>sablon terbaik</li><li>kualitas jahitan terbaik</li><li>lembut, mudah menyerap keringat tidak gerah dan tidak kaku</li><li>free stickers&nbsp;</li></ul><p><b>ORIGINAL PRODUCT BY ARSCLOTH</b></p>', 'Rp.99.000', 'Rp.120.000', 16);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tentang`
--

CREATE TABLE `tentang` (
  `id_tentang` int(11) NOT NULL,
  `tentang` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tentang`
--

INSERT INTO `tentang` (`id_tentang`, `tentang`) VALUES
(1, '<ol><li>Tentang Toko Online Tentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko OnlineTentang Toko Online</li><li>Barang yang kami jual semua 100% original tidak ada yang fake</li></ol><p><br></p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`) VALUES
(3, 'oni', 'oni', '202cb962ac59075b964b07152d234b70'),
(4, 'onihamm', 'onii', '02522a2b2726fb0a03bb19f2d8d9524d');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `tentang`
--
ALTER TABLE `tentang`
  ADD PRIMARY KEY (`id_tentang`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `tentang`
--
ALTER TABLE `tentang`
  MODIFY `id_tentang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
