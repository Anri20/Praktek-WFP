-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2023 at 05:25 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wfp_week2`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `idcategories` int(10) UNSIGNED NOT NULL,
  `kategori` varchar(45) NOT NULL,
  `sub_kategori` varchar(45) NOT NULL,
  `nama_kategori` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `idcustomers` int(10) UNSIGNED NOT NULL,
  `nama_depan` varchar(45) NOT NULL,
  `nama_belakang` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `alamat` varchar(45) NOT NULL,
  `whatsapp` int(10) UNSIGNED NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(45) NOT NULL,
  `pendidikan` varchar(45) DEFAULT NULL,
  `pekerjaan` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `idproducts` int(10) UNSIGNED NOT NULL,
  `nama_produk` varchar(45) NOT NULL,
  `deskripsi` varchar(45) NOT NULL,
  `stok` int(10) UNSIGNED NOT NULL,
  `harga` int(10) UNSIGNED NOT NULL,
  `categories_idcategories` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products_has_transactions`
--

CREATE TABLE `products_has_transactions` (
  `products_idproducts` int(10) UNSIGNED NOT NULL,
  `transactions_idtransactions` int(10) UNSIGNED NOT NULL,
  `jumlah_barang` int(10) UNSIGNED NOT NULL,
  `jenis_pengiriman` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `idtransactions` int(10) UNSIGNED NOT NULL,
  `tanggal` datetime NOT NULL,
  `harga_total` int(10) UNSIGNED NOT NULL,
  `customers_idcustomers` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`idcategories`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`idcustomers`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`idproducts`),
  ADD KEY `fk_products_categories1_idx` (`categories_idcategories`);

--
-- Indexes for table `products_has_transactions`
--
ALTER TABLE `products_has_transactions`
  ADD PRIMARY KEY (`products_idproducts`,`transactions_idtransactions`),
  ADD KEY `fk_products_has_transactions_transactions1_idx` (`transactions_idtransactions`),
  ADD KEY `fk_products_has_transactions_products1_idx` (`products_idproducts`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`idtransactions`),
  ADD KEY `fk_transactions_customers1_idx` (`customers_idcustomers`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `idcategories` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `idcustomers` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `idproducts` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `idtransactions` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products_categories1` FOREIGN KEY (`categories_idcategories`) REFERENCES `categories` (`idcategories`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `products_has_transactions`
--
ALTER TABLE `products_has_transactions`
  ADD CONSTRAINT `fk_products_has_transactions_products1` FOREIGN KEY (`products_idproducts`) REFERENCES `products` (`idproducts`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_products_has_transactions_transactions1` FOREIGN KEY (`transactions_idtransactions`) REFERENCES `transactions` (`idtransactions`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `fk_transactions_customers1` FOREIGN KEY (`customers_idcustomers`) REFERENCES `customers` (`idcustomers`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
