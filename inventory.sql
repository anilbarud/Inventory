-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2018 at 10:06 AM
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

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kdbarang`, `nmbarang`, `harga`, `stok`) VALUES
('1', 'FERDI', '10000', '10'),
('2', 'TESTING', '182', '1'),
('3', 'DUMMY', '50000', '100'),
('4', 'JOHN DOE', '1000000', '50'),
('5', 'LIGHTS', '1000', '4');

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

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`kdcustomer`, `nmcustomer`, `alamat`, `telp`) VALUES
('1', 'FERDI', 'BBS', '087888878038'),
('2', 'EKA', 'BBS', '123'),
('3', 'DJELITA', 'BBS', '456'),
('4', 'UNSERA', 'BBS', '890'),
('5', 'TI', 'BBS', '808');

-- --------------------------------------------------------

--
-- Table structure for table `pbcatcol`
--

CREATE TABLE `pbcatcol` (
  `pbc_tnam` char(193) NOT NULL,
  `pbc_tid` int(11) DEFAULT NULL,
  `pbc_ownr` char(193) NOT NULL,
  `pbc_cnam` char(193) NOT NULL,
  `pbc_cid` smallint(6) DEFAULT NULL,
  `pbc_labl` varchar(254) DEFAULT NULL,
  `pbc_lpos` smallint(6) DEFAULT NULL,
  `pbc_hdr` varchar(254) DEFAULT NULL,
  `pbc_hpos` smallint(6) DEFAULT NULL,
  `pbc_jtfy` smallint(6) DEFAULT NULL,
  `pbc_mask` varchar(31) DEFAULT NULL,
  `pbc_case` smallint(6) DEFAULT NULL,
  `pbc_hght` smallint(6) DEFAULT NULL,
  `pbc_wdth` smallint(6) DEFAULT NULL,
  `pbc_ptrn` varchar(31) DEFAULT NULL,
  `pbc_bmap` char(1) DEFAULT NULL,
  `pbc_init` varchar(254) DEFAULT NULL,
  `pbc_cmnt` varchar(254) DEFAULT NULL,
  `pbc_edit` varchar(31) DEFAULT NULL,
  `pbc_tag` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pbcatedt`
--

CREATE TABLE `pbcatedt` (
  `pbe_name` varchar(30) NOT NULL,
  `pbe_edit` varchar(254) DEFAULT NULL,
  `pbe_type` smallint(6) DEFAULT NULL,
  `pbe_cntr` int(11) DEFAULT NULL,
  `pbe_seqn` smallint(6) NOT NULL,
  `pbe_flag` int(11) DEFAULT NULL,
  `pbe_work` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pbcatedt`
--

INSERT INTO `pbcatedt` (`pbe_name`, `pbe_edit`, `pbe_type`, `pbe_cntr`, `pbe_seqn`, `pbe_flag`, `pbe_work`) VALUES
('#####', '#####', 90, 1, 1, 32, '10'),
('###,###.00', '###,###.00', 90, 1, 1, 32, '10'),
('###-##-####', '###-##-####', 90, 1, 1, 32, '00'),
('DD/MM/YY', 'DD/MM/YY', 90, 1, 1, 32, '20'),
('DD/MM/YY HH:MM:SS', 'DD/MM/YY HH:MM:SS', 90, 1, 1, 32, '40'),
('DD/MM/YY HH:MM:SS:FFFFFF', 'DD/MM/YY HH:MM:SS:FFFFFF', 90, 1, 1, 32, '40'),
('DD/MM/YYYY', 'DD/MM/YYYY', 90, 1, 1, 32, '20'),
('DD/MM/YYYY HH:MM:SS', 'DD/MM/YYYY HH:MM:SS', 90, 1, 1, 32, '40'),
('DD/MMM/YY', 'DD/MMM/YY', 90, 1, 1, 32, '20'),
('DD/MMM/YY HH:MM:SS', 'DD/MMM/YY HH:MM:SS', 90, 1, 1, 32, '40'),
('HH:MM:SS', 'HH:MM:SS', 90, 1, 1, 32, '30'),
('HH:MM:SS:FFF', 'HH:MM:SS:FFF', 90, 1, 1, 32, '30'),
('HH:MM:SS:FFFFFF', 'HH:MM:SS:FFFFFF', 90, 1, 1, 32, '30'),
('JJJ/YY', 'JJJ/YY', 90, 1, 1, 32, '20'),
('JJJ/YY HH:MM:SS', 'JJJ/YY HH:MM:SS', 90, 1, 1, 32, '40'),
('JJJ/YYYY', 'JJJ/YYYY', 90, 1, 1, 32, '20'),
('JJJ/YYYY HH:MM:SS', 'JJJ/YYYY HH:MM:SS', 90, 1, 1, 32, '40'),
('MM/DD/YY', 'MM/DD/YY', 90, 1, 1, 32, '20'),
('MM/DD/YY HH:MM:SS', 'MM/DD/YY HH:MM:SS', 90, 1, 1, 32, '40'),
('MM/DD/YYYY', 'MM/DD/YYYY', 90, 1, 1, 32, '20'),
('MM/DD/YYYY HH:MM:SS', 'MM/DD/YYYY HH:MM:SS', 90, 1, 1, 32, '40');

-- --------------------------------------------------------

--
-- Table structure for table `pbcatfmt`
--

CREATE TABLE `pbcatfmt` (
  `pbf_name` varchar(30) NOT NULL,
  `pbf_frmt` varchar(254) DEFAULT NULL,
  `pbf_type` smallint(6) DEFAULT NULL,
  `pbf_cntr` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pbcatfmt`
--

INSERT INTO `pbcatfmt` (`pbf_name`, `pbf_frmt`, `pbf_type`, `pbf_cntr`) VALUES
('#,##0', '#,##0', 81, 0),
('#,##0.00', '#,##0.00', 81, 0),
('$#,##0.00;($#,##0.00)', '$#,##0.00;($#,##0.00)', 81, 0),
('$#,##0.00;[RED]($#,##0.00)', '$#,##0.00;[RED]($#,##0.00)', 81, 0),
('$#,##0;($#,##0)', '$#,##0;($#,##0)', 81, 0),
('$#,##0;[RED]($#,##0)', '$#,##0;[RED]($#,##0)', 81, 0),
('0', '0', 81, 0),
('0%', '0%', 81, 0),
('0.00', '0.00', 81, 0),
('0.00%', '0.00%', 81, 0),
('0.00E+00', '0.00E+00', 81, 0),
('d-mmm', 'd-mmm', 84, 0),
('d-mmm-yy', 'd-mmm-yy', 84, 0),
('h:mm AM/PM', 'h:mm AM/PM', 84, 0),
('h:mm:ss', 'h:mm:ss', 84, 0),
('h:mm:ss AM/PM', 'h:mm:ss AM/PM', 84, 0),
('m/d/yy', 'm/d/yy', 84, 0),
('m/d/yy h:mm', 'm/d/yy h:mm', 84, 0),
('mmm-yy', 'mmm-yy', 84, 0),
('[General]', '[General]', 81, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pbcattbl`
--

CREATE TABLE `pbcattbl` (
  `pbt_tnam` char(193) NOT NULL,
  `pbt_tid` int(11) DEFAULT NULL,
  `pbt_ownr` char(193) NOT NULL,
  `pbd_fhgt` smallint(6) DEFAULT NULL,
  `pbd_fwgt` smallint(6) DEFAULT NULL,
  `pbd_fitl` char(1) DEFAULT NULL,
  `pbd_funl` char(1) DEFAULT NULL,
  `pbd_fchr` smallint(6) DEFAULT NULL,
  `pbd_fptc` smallint(6) DEFAULT NULL,
  `pbd_ffce` char(18) DEFAULT NULL,
  `pbh_fhgt` smallint(6) DEFAULT NULL,
  `pbh_fwgt` smallint(6) DEFAULT NULL,
  `pbh_fitl` char(1) DEFAULT NULL,
  `pbh_funl` char(1) DEFAULT NULL,
  `pbh_fchr` smallint(6) DEFAULT NULL,
  `pbh_fptc` smallint(6) DEFAULT NULL,
  `pbh_ffce` char(18) DEFAULT NULL,
  `pbl_fhgt` smallint(6) DEFAULT NULL,
  `pbl_fwgt` smallint(6) DEFAULT NULL,
  `pbl_fitl` char(1) DEFAULT NULL,
  `pbl_funl` char(1) DEFAULT NULL,
  `pbl_fchr` smallint(6) DEFAULT NULL,
  `pbl_fptc` smallint(6) DEFAULT NULL,
  `pbl_ffce` char(18) DEFAULT NULL,
  `pbt_cmnt` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pbcatvld`
--

CREATE TABLE `pbcatvld` (
  `pbv_name` varchar(30) NOT NULL,
  `pbv_vald` varchar(254) DEFAULT NULL,
  `pbv_type` smallint(6) DEFAULT NULL,
  `pbv_cntr` int(11) DEFAULT NULL,
  `pbv_msg` varchar(254) DEFAULT NULL
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
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`kdsupplier`, `nmsupplier`, `alamat`, `telp`, `fax`) VALUES
('1', 'TOKOPEDIA', 'BBS', '123', '123'),
('2', 'BUKALAPAK', 'BBS', '234', '234'),
('3', 'SHOPEE', 'BSS', '999', '999'),
('4', 'LAZADA', 'BBS', '444', '444');

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
-- Indexes for table `pbcatcol`
--
ALTER TABLE `pbcatcol`
  ADD UNIQUE KEY `pbcatc_x` (`pbc_tnam`,`pbc_ownr`,`pbc_cnam`);

--
-- Indexes for table `pbcatedt`
--
ALTER TABLE `pbcatedt`
  ADD UNIQUE KEY `pbcate_x` (`pbe_name`,`pbe_seqn`);

--
-- Indexes for table `pbcatfmt`
--
ALTER TABLE `pbcatfmt`
  ADD UNIQUE KEY `pbcatf_x` (`pbf_name`);

--
-- Indexes for table `pbcattbl`
--
ALTER TABLE `pbcattbl`
  ADD UNIQUE KEY `pbcatt_x` (`pbt_tnam`,`pbt_ownr`);

--
-- Indexes for table `pbcatvld`
--
ALTER TABLE `pbcatvld`
  ADD UNIQUE KEY `pbcatv_x` (`pbv_name`);

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
