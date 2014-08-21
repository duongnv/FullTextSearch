-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2014 at 09:56 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

-- SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
-- SET time_zone = "+00:00";


-- /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
-- /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
-- /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
-- /*!40101 SET NAMES utf8 */;

--
-- Database: `my_book`
--
CREATE DATABASE IF NOT EXISTS `my_book` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `my_book`;

-- --------------------------------------------------------

--
-- Table structure for table `chungloai`
--

CREATE TABLE IF NOT EXISTS `chung_loai` (
  `ma_loai` int(11) NOT NULL AUTO_INCREMENT,
  `ten_loai` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ma_loai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `nhaxuatban`
--

CREATE TABLE IF NOT EXISTS `nha_xuat_ban` (
  `ma_nxb` int(11) NOT NULL AUTO_INCREMENT,
  `ten_nxb` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_dien_thoai` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ma_nxb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sach`
--

CREATE TABLE IF NOT EXISTS `sach` (
  `ma_sach` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ten_sach` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `so_trang` int(11) DEFAULT NULL,
  `ngay_xuat_ban` date DEFAULT NULL,
  `mo_ta` text,
  PRIMARY KEY (`ma_sach`),
  fulltext(ten_sach, mo_ta)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- --------------------------------------------------------

--
-- Table structure for table `tacgia`
--

CREATE TABLE IF NOT EXISTS `tac_gia` (
  `ma_tac_gia` int(11) NOT NULL AUTO_INCREMENT,
  `ten_tac_gia` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_dien_thoai` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ma_tac_gia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;



-- /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
-- /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
-- /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- --------------------------------------------------------

--
-- Table structure for table `chitietsach`
--

CREATE TABLE IF NOT EXISTS `chi_tiet_sach` (
  `ma_sach` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ma_tac_gia` int(11) NOT NULL DEFAULT '0',
  `ma_nxb` int(11) NOT NULL DEFAULT '0',
  `ma_loai` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ma_sach`,`ma_tac_gia`,`ma_nxb`,`ma_loai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

alter table chi_tiet_sach add constraint foreign key fk_sach (ma_sach) references sach(ma_sach) on delete restrict on update cascade;
alter table chi_tiet_sach add constraint foreign key fk_tac_gia (ma_tac_gia) references tac_gia(ma_tac_gia) on delete restrict on update cascade;
alter table chi_tiet_sach add constraint foreign key `fk_nxb` (ma_nxb) references nha_xuat_ban(ma_nxb) on delete restrict on update cascade;
alter table chi_tiet_sach add constraint foreign key `fk_chung_loai` (ma_loai) references chung_loai(ma_loai) on delete restrict on update cascade;

drop table chi_tiet_sach;