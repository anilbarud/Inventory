-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2018 at 06:51 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kdbarang` char(10) NOT NULL,
  `nmbarang` varchar(50) DEFAULT NULL,
  `harga` decimal(9,0) DEFAULT NULL,
  `stok` decimal(9,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `kdcustomer` char(10) NOT NULL,
  `nmcustomer` varchar(50) DEFAULT NULL,
  `alamat` text,
  `telp` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `nobeli` char(10) NOT NULL,
  `kdsupplier` char(10) DEFAULT NULL,
  `tgl` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_det`
--

CREATE TABLE `pembelian_det` (
  `nobeli` char(10) NOT NULL,
  `kdbarang` char(10) NOT NULL,
  `jumlah` decimal(9,0) DEFAULT NULL,
  `total` decimal(9,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `nojual` char(10) NOT NULL,
  `kdcustomer` char(10) DEFAULT NULL,
  `tgl` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_det`
--

CREATE TABLE `penjualan_det` (
  `nojual` char(10) NOT NULL,
  `kdbarang` char(10) NOT NULL,
  `jumlah` decimal(9,0) DEFAULT NULL,
  `total` decimal(9,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `kdsupplier` char(10) NOT NULL,
  `nmsupplier` varchar(50) DEFAULT NULL,
  `alamat` text,
  `telp` varchar(25) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kdbarang`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`kdcustomer`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`nobeli`),
  ADD KEY `kdsupplier` (`kdsupplier`);

--
-- Indexes for table `pembelian_det`
--
ALTER TABLE `pembelian_det`
  ADD PRIMARY KEY (`nobeli`,`kdbarang`),
  ADD KEY `kdbarang` (`kdbarang`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`nojual`),
  ADD KEY `kdcustomer` (`kdcustomer`);

--
-- Indexes for table `penjualan_det`
--
ALTER TABLE `penjualan_det`
  ADD PRIMARY KEY (`nojual`,`kdbarang`),
  ADD KEY `kdbarang` (`kdbarang`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`kdsupplier`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`kdsupplier`) REFERENCES `supplier` (`kdsupplier`);

--
-- Constraints for table `pembelian_det`
--
ALTER TABLE `pembelian_det`
  ADD CONSTRAINT `pembelian_det_ibfk_1` FOREIGN KEY (`nobeli`) REFERENCES `pembelian` (`nobeli`),
  ADD CONSTRAINT `pembelian_det_ibfk_2` FOREIGN KEY (`kdbarang`) REFERENCES `barang` (`kdbarang`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`kdcustomer`) REFERENCES `customer` (`kdcustomer`);

--
-- Constraints for table `penjualan_det`
--
ALTER TABLE `penjualan_det`
  ADD CONSTRAINT `penjualan_det_ibfk_1` FOREIGN KEY (`nojual`) REFERENCES `penjualan` (`nojual`),
  ADD CONSTRAINT `penjualan_det_ibfk_2` FOREIGN KEY (`kdbarang`) REFERENCES `barang` (`kdbarang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
