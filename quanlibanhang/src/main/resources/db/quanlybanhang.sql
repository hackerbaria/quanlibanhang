-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2016 at 05:06 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlybanhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `ban_hang`
--

CREATE TABLE `ban_hang` (
  `id` int(11) NOT NULL,
  `id_khach_hang` int(11) NOT NULL,
  `ghi_chu` text,
  `tien_khau_tru` double DEFAULT NULL,
  `ngay` date NOT NULL,
  `tong_tien` double NOT NULL DEFAULT '0',
  `tien_con_no` double NOT NULL DEFAULT '0',
  `tien_tra` double NOT NULL DEFAULT '0',
  `tien_con_lai` double NOT NULL DEFAULT '0',
  `ngay_giao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ban_hang`
--

INSERT INTO `ban_hang` (`id`, `id_khach_hang`, `ghi_chu`, `tien_khau_tru`, `ngay`, `tong_tien`, `tien_con_no`, `tien_tra`, `tien_con_lai`, `ngay_giao`) VALUES
(1, 1, '500 Khách Hàng đầu tiên', 100000, '2016-10-20', 1100000, 500000, 500000, 500000, '2016-10-31'),
(2, 2, '500 Khách Hàng đầu tiên', 100000, '2016-10-20', 1100000, 500000, 500000, 500000, '2016-10-31'),
(3, 3, '500 Khách Hàng đầu tiên', 100000, '2016-10-20', 1100000, 500000, 500000, 500000, '2016-10-31'),
(4, 4, '500 Khách Hàng đầu tiên', 100000, '2016-10-20', 1100000, 500000, 500000, 500000, '2016-10-31'),
(5, 5, '500 Khách Hàng đầu tiên', 100000, '2016-10-20', 1100000, 500000, 500000, 500000, '2016-10-31');

-- --------------------------------------------------------

--
-- Table structure for table `bo_phan`
--

CREATE TABLE `bo_phan` (
  `id` int(11) NOT NULL,
  `ten_bo_phan` varchar(255) NOT NULL,
  `id_nguoi_quan_ly` int(11) NOT NULL,
  `ghi_chu` text,
  `con_quan_ly` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bo_phan`
--

INSERT INTO `bo_phan` (`id`, `ten_bo_phan`, `id_nguoi_quan_ly`, `ghi_chu`, `con_quan_ly`) VALUES
(1, 'Giám Đốc', 1, 'Cơ quan cao nhất của công ty. Bao gồm giám đốc và các phó giám đốc', 1),
(2, 'Quản lý Nhân Viên', 1, 'Bao gồm các giám sát, trường phòng, trưởng bộ phận', 1),
(3, 'Kinh Doanh', 1, 'Bao gồm các nhân viên bán hàng, kế toán quầy, ...', 1),
(4, 'Kho vận', 1, 'Bao gồm nhân viên trông coi kho, sắp xếp, giao hàng, ...', 1),
(5, 'Hậu Mãi', 1, 'Bao gồm nhân viên chăm sóc khách hàng, nhân viên tư vấn bảo trì, nhân viên giao nhận bảo hành, ...', 1),
(6, 'Kỹ Thuật', 1, 'Bao gồm nhân viên kỹ thuật nội bộ, nhân viên kỹ thuật bảo hành', 1),
(7, 'Bảo Vệ', 1, 'Bao gồm nhân viên bảo vệ, ...', 1),
(8, 'Dịch Vụ', 1, 'Bao gồm nhân viên tạp vụ, vệ sinh, ...', 1),
(9, 'IT', 1, 'Bao gồm nhân viên quản trị hệ thống máy tính, server, lập trình, bảo trì web, ...', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_ban_hang`
--

CREATE TABLE `chi_tiet_ban_hang` (
  `id` int(11) NOT NULL,
  `id_ban_hang` int(11) NOT NULL,
  `id_hang_hoa` int(11) NOT NULL,
  `id_kho` int(11) NOT NULL,
  `gia_ban` float NOT NULL,
  `so_luong` int(11) NOT NULL,
  `thanh_tien` double NOT NULL,
  `vat` int(11) NOT NULL,
  `ghi_chu` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chi_tiet_ban_hang`
--

INSERT INTO `chi_tiet_ban_hang` (`id`, `id_ban_hang`, `id_hang_hoa`, `id_kho`, `gia_ban`, `so_luong`, `thanh_tien`, `vat`, `ghi_chu`) VALUES
(1, 1, 1, 1, 100000, 1, 110000, 10, 'Bán hàng'),
(2, 1, 2, 1, 100000, 1, 110000, 10, 'Bán hàng'),
(3, 1, 3, 1, 100000, 1, 110000, 10, 'Bán hàng'),
(4, 1, 4, 1, 100000, 1, 110000, 10, 'Bán hàng'),
(5, 1, 5, 1, 100000, 1, 110000, 10, 'Bán hàng'),
(6, 1, 6, 1, 100000, 1, 110000, 10, 'Bán hàng'),
(7, 1, 7, 1, 100000, 1, 110000, 10, 'Bán hàng'),
(8, 1, 8, 1, 100000, 1, 110000, 10, 'Bán hàng'),
(9, 2, 2, 1, 100000, 1, 110000, 10, 'Bán hàng'),
(10, 2, 3, 1, 100000, 1, 110000, 10, 'Bán hàng'),
(11, 2, 4, 1, 100000, 1, 110000, 10, 'Bán hàng'),
(12, 2, 5, 1, 100000, 1, 110000, 10, 'Bán hàng'),
(13, 2, 6, 1, 100000, 1, 110000, 10, 'Bán hàng'),
(14, 2, 7, 1, 100000, 1, 110000, 10, 'Bán hàng'),
(15, 2, 8, 1, 100000, 1, 110000, 10, 'Bán hàng'),
(16, 3, 2, 1, 100000, 1, 110000, 10, 'Bán hàng'),
(17, 3, 3, 1, 100000, 1, 110000, 10, 'Bán hàng'),
(18, 3, 4, 1, 100000, 1, 110000, 10, 'Bán hàng'),
(19, 3, 5, 1, 100000, 1, 110000, 10, 'Bán hàng'),
(20, 3, 6, 1, 100000, 1, 110000, 10, 'Bán hàng'),
(21, 3, 7, 1, 100000, 1, 110000, 10, 'Bán hàng'),
(22, 3, 8, 1, 100000, 1, 110000, 10, 'Bán hàng');

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_chuyen_kho`
--

CREATE TABLE `chi_tiet_chuyen_kho` (
  `id` int(11) NOT NULL,
  `id_chuyen_kho` int(11) NOT NULL,
  `id_hang_hoa` int(11) NOT NULL,
  `so_luong` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chi_tiet_chuyen_kho`
--

INSERT INTO `chi_tiet_chuyen_kho` (`id`, `id_chuyen_kho`, `id_hang_hoa`, `so_luong`) VALUES
(1, 1, 1, 10),
(2, 1, 2, 10),
(3, 1, 3, 10),
(4, 1, 4, 10),
(5, 1, 5, 10),
(6, 2, 1, 10),
(7, 2, 2, 10),
(8, 2, 3, 10),
(9, 2, 4, 10),
(10, 2, 5, 10),
(11, 3, 1, 10),
(12, 3, 2, 10),
(13, 3, 3, 10),
(14, 3, 4, 10),
(15, 3, 5, 10),
(16, 4, 1, 10),
(17, 4, 2, 10),
(18, 4, 3, 10),
(19, 4, 4, 10),
(20, 4, 5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_mua_hang`
--

CREATE TABLE `chi_tiet_mua_hang` (
  `id` int(11) NOT NULL,
  `id_mua_hang` int(11) NOT NULL,
  `id_hang_hoa` int(11) NOT NULL,
  `id_kho` int(11) NOT NULL,
  `han_dung` date NOT NULL,
  `don_gia` float NOT NULL,
  `so_luong` int(11) NOT NULL,
  `thanh_tien` double NOT NULL,
  `vat` int(11) NOT NULL,
  `tien_thue` double NOT NULL,
  `thanh_toan` double NOT NULL,
  `han_su_dung` date NOT NULL,
  `ghi_chu` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chi_tiet_mua_hang`
--

INSERT INTO `chi_tiet_mua_hang` (`id`, `id_mua_hang`, `id_hang_hoa`, `id_kho`, `han_dung`, `don_gia`, `so_luong`, `thanh_tien`, `vat`, `tien_thue`, `thanh_toan`, `han_su_dung`, `ghi_chu`) VALUES
(1, 1, 1, 1, '2019-10-31', 1200000, 100, 132000000, 10, 12000000, 32000000, '2019-10-31', 'TTXT'),
(2, 1, 2, 1, '2019-10-31', 1200000, 100, 132000000, 10, 12000000, 32000000, '2019-10-31', 'TTXT'),
(3, 1, 3, 1, '2019-10-31', 1200000, 100, 132000000, 10, 12000000, 32000000, '2019-10-31', 'TTXT'),
(4, 1, 4, 1, '2019-10-31', 1200000, 100, 132000000, 10, 12000000, 32000000, '2019-10-31', 'TTXT'),
(5, 1, 1, 2, '2019-10-31', 1200000, 100, 132000000, 10, 12000000, 32000000, '2019-10-31', 'TTXT'),
(6, 1, 2, 2, '2019-10-31', 1200000, 100, 132000000, 10, 12000000, 32000000, '2019-10-31', 'TTXT'),
(7, 1, 3, 2, '2019-10-31', 1200000, 100, 132000000, 10, 12000000, 32000000, '2019-10-31', 'TTXT'),
(8, 1, 4, 2, '2019-10-31', 1200000, 100, 132000000, 10, 12000000, 32000000, '2019-10-31', 'TTXT'),
(9, 1, 1, 3, '2019-10-31', 1200000, 100, 132000000, 10, 12000000, 32000000, '2019-10-31', 'TTXT'),
(10, 1, 2, 3, '2019-10-31', 1200000, 100, 132000000, 10, 12000000, 32000000, '2019-10-31', 'TTXT'),
(11, 1, 3, 3, '2019-10-31', 1200000, 100, 132000000, 10, 12000000, 32000000, '2019-10-31', 'TTXT'),
(12, 1, 4, 3, '2019-10-31', 1200000, 100, 132000000, 10, 12000000, 32000000, '2019-10-31', 'TTXT');

-- --------------------------------------------------------

--
-- Table structure for table `chuyen_kho`
--

CREATE TABLE `chuyen_kho` (
  `id` int(11) NOT NULL,
  `ma_phieu_chuyen_kho` varchar(255) NOT NULL,
  `ngay` date NOT NULL,
  `id_kho_xuat` int(11) NOT NULL,
  `id_kho_nhap` int(11) NOT NULL,
  `id_nguoi_dung` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chuyen_kho`
--

INSERT INTO `chuyen_kho` (`id`, `ma_phieu_chuyen_kho`, `ngay`, `id_kho_xuat`, `id_kho_nhap`, `id_nguoi_dung`) VALUES
(1, 'CK-HCM-001', '2016-10-21', 1, 2, 1),
(2, 'CK-HCM-002', '2016-10-21', 1, 3, 1),
(3, 'CK-HCM-003', '2016-10-21', 1, 3, 1),
(4, 'CK-HCM-004', '2016-10-21', 1, 4, 1),
(5, 'CK-HCM-005', '2016-10-21', 2, 3, 1),
(6, 'CK-HCM-006', '2016-10-21', 2, 4, 1),
(7, 'CK-HCM-007', '2016-10-21', 3, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `don_vi_tinh`
--

CREATE TABLE `don_vi_tinh` (
  `id` int(11) NOT NULL,
  `ma_don_vi_tinh` varchar(255) NOT NULL,
  `ten_don_vi_tinh` varchar(255) NOT NULL,
  `ghi_chu` text,
  `con_quan_ly` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `don_vi_tinh`
--

INSERT INTO `don_vi_tinh` (`id`, `ma_don_vi_tinh`, `ten_don_vi_tinh`, `ghi_chu`, `con_quan_ly`) VALUES
(1, 'Do-mm', 'Milimet', 'Milimet', 1),
(2, 'Do-cm', 'Centimet', 'Centimet', 1),
(3, 'Do-dm', 'Detimet', 'Detimet', 1),
(4, 'Do-m', 'Met', 'Met', 1),
(5, 'Can-kg', 'Kilogam', 'Kilogam', 1),
(6, 'Can-ta', 'Ta', 'Ta', 1),
(7, 'Can-tan', 'Tan', 'Tan', 1),
(8, 'Don-vi', 'Thùng', 'Thùng', 1),
(9, 'Don-vi', 'Cái', 'Cái', 1),
(10, 'Don-vi', 'Hộp', 'Hộp', 1),
(11, 'Don-vi', 'Chiếc', 'Chiếc', 1),
(12, 'Don-vi', 'Cây', 'Cây', 1),
(13, 'Don-vi', 'Thanh', 'Thanh', 1),
(14, 'Don-vi', 'Tấm', 'Tấm', 1),
(15, 'Don-vi', 'Hũ', 'Hũ', 1),
(16, 'Don-vi', 'Lọ', 'Lọ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hang_hoa`
--

CREATE TABLE `hang_hoa` (
  `id` int(11) NOT NULL,
  `id_nhom_hang` int(11) NOT NULL,
  `ma_hang_hoa` varchar(255) NOT NULL,
  `ma_vach_nha_san_xuat` varchar(255) DEFAULT NULL,
  `ten_hang_hoa` varchar(255) NOT NULL,
  `id_don_vi_tinh` int(11) NOT NULL,
  `xuat_xu` varchar(255) DEFAULT NULL,
  `thue` varchar(255) DEFAULT NULL,
  `ton_kho_toi_thieu` bigint(20) NOT NULL,
  `ton_kho_hien_tai` bigint(20) NOT NULL,
  `hinh_anh` varchar(255) DEFAULT NULL,
  `la_dich_vu` tinyint(4) NOT NULL DEFAULT '0',
  `id_nha_phan_phoi` int(11) NOT NULL,
  `gia_mua` double NOT NULL,
  `gia_ban_si` double NOT NULL,
  `gia_ban_le` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hang_hoa`
--

INSERT INTO `hang_hoa` (`id`, `id_nhom_hang`, `ma_hang_hoa`, `ma_vach_nha_san_xuat`, `ten_hang_hoa`, `id_don_vi_tinh`, `xuat_xu`, `thue`, `ton_kho_toi_thieu`, `ton_kho_hien_tai`, `hinh_anh`, `la_dich_vu`, `id_nha_phan_phoi`, `gia_mua`, `gia_ban_si`, `gia_ban_le`) VALUES
(1, 1, 'DM-001', '111111111111111', 'Tivi Panasonic A1', 12, 'Việt Nam', '10', 12, 111, NULL, 0, 1, 1200000, 1300000, 1900000),
(2, 1, 'DM-001', '111111111111111', 'Tivi Panasonic A1', 12, 'Việt Nam', '10', 12, 111, NULL, 0, 1, 1200000, 1300000, 1900000),
(3, 1, 'DM-001', '111111111111111', 'Tivi LD A1', 12, 'Việt Nam', '10', 12, 111, NULL, 0, 1, 1200000, 1300000, 1900000),
(4, 1, 'DM-001', '111111111111111', 'Tivi LG A1', 12, 'Việt Nam', '10', 12, 111, NULL, 0, 1, 1200000, 1300000, 1900000),
(5, 1, 'DM-001', '111111111111111', 'Tivi Ssmung A1', 12, 'Việt Nam', '10', 12, 111, NULL, 0, 1, 1200000, 1300000, 1900000),
(6, 1, 'DM-001', '111111111111111', 'Tivi Samsung A1', 12, 'Việt Nam', '10', 12, 111, NULL, 0, 1, 1200000, 1300000, 1900000),
(7, 1, 'DM-001', '111111111111111', 'Tivi Panasonic A1', 12, 'Việt Nam', '10', 12, 111, NULL, 0, 1, 1200000, 1300000, 1900000),
(8, 1, 'DM-001', '111111111111111', 'Tivi Panasonic A1', 12, 'Việt Nam', '10', 12, 111, NULL, 0, 1, 1200000, 1300000, 1900000);

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

CREATE TABLE `khach_hang` (
  `id` int(11) NOT NULL,
  `ma_khach_hang` varchar(255) NOT NULL,
  `id_khu_vuc` int(11) NOT NULL,
  `ten_khach_hang` varchar(255) NOT NULL,
  `dia_chi` text,
  `ma_so_thue` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `dien_thoai` varchar(255) NOT NULL,
  `di_dong` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `so_tai_khoan` varchar(255) NOT NULL,
  `ngan_hang` varchar(255) NOT NULL,
  `gioi_han_no` double NOT NULL,
  `no_hien_tai` double NOT NULL,
  `chiet_khau` float NOT NULL,
  `nguoi_lien_he` varchar(255) DEFAULT NULL,
  `nick_yahoo` varchar(255) DEFAULT NULL,
  `nick_skype` varchar(255) DEFAULT NULL,
  `la_dai_ly` tinyint(4) NOT NULL DEFAULT '1',
  `con_quan_ly` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `khach_hang`
--

INSERT INTO `khach_hang` (`id`, `ma_khach_hang`, `id_khu_vuc`, `ten_khach_hang`, `dia_chi`, `ma_so_thue`, `fax`, `dien_thoai`, `di_dong`, `email`, `website`, `so_tai_khoan`, `ngan_hang`, `gioi_han_no`, `no_hien_tai`, `chiet_khau`, `nguoi_lien_he`, `nick_yahoo`, `nick_skype`, `la_dai_ly`, `con_quan_ly`) VALUES
(1, '1', 1, 'Nguyen Thi Nhu Hinh', '12 Tôn Thất Đạm', '256252462463', '66214865854', '58962863258625', '6562142486262', 'nhuhinh@hammu.com', 'chuachua.com.vn', '286862565656562', 'VietComBank', 0, 0, 0, 'Temp', NULL, NULL, 1, 1),
(2, '2', 2, 'Le Thi Quoi', 'Xa Lộ Hà Nội', '256252462463', '66214865854', '58962863258625', '6562142486262', 'xlhn@hammu.com', 'anchom.com.vn', '286862565656562', 'VietComBank', 0, 0, 0, 'Temp', NULL, NULL, 1, 1),
(3, '3', 3, 'Le Thi Bich Tram', 'Vo Văn Tần', '256252462463', '66214865854', '58962863258625', '6562142486262', 'vdsf@hammu.com', 'ancom.com.vn', '286862565656562', 'VietComBank', 0, 0, 0, 'Temp', NULL, NULL, 1, 1),
(4, '4', 4, 'Vu Huong Tra', 'Đoàn Văn Bơ', '256252462463', '66214865854', '58962863258625', '6562142486262', 'dbbb@hammu.com', 'andiandi.com.vn', '286862565656562', 'VietComBank', 0, 0, 0, 'Temp', NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kho`
--

CREATE TABLE `kho` (
  `id` int(11) NOT NULL,
  `ma_kho` varchar(255) NOT NULL,
  `ten_kho` varchar(255) NOT NULL,
  `id_nguoi_lien_he` int(11) NOT NULL,
  `nguoi_lien_he` varchar(255) NOT NULL,
  `dia_chi` text,
  `dien_thoai` varchar(255) DEFAULT NULL,
  `di_dong` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id_nguoi_quan_ly` int(11) NOT NULL,
  `dien_giai` text,
  `con_quan_ly` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kho`
--

INSERT INTO `kho` (`id`, `ma_kho`, `ten_kho`, `id_nguoi_lien_he`, `nguoi_lien_he`, `dia_chi`, `dien_thoai`, `di_dong`, `fax`, `email`, `id_nguoi_quan_ly`, `dien_giai`, `con_quan_ly`) VALUES
(1, 'HCM_Q1', 'Kho Lớn Bến Vân Đồn', 1, 'Nguyễn Trần Tuấn Duy', '12 Bến Vân Đồn', '65652596345321452', '562635+32563', '525631563214563215', 'dsada@yahoo.com', 1, 'new', 1),
(2, 'HCM_Q4', 'Bến Vân Đồn Nhỏ', 2, 'Nguyễn Hữu Nghĩa', '11/25 Bến Vân Đồn', '4285859633', '963852963965', '8526963585', 'rty@tthh.com', 2, 'new', 1),
(3, 'HCM_Q1', 'Nguyễn Cư Trinh', 3, 'John Mac', '33 Nguyễn Cư Trinh', '878466565562', '5995629595566', '52665656555451', 'qq@tt.com', 3, 'new', 1),
(4, 'HCM_Q3', 'Võ Văn Tần', 4, 'Nguyễn Trí', '112/2 Võ Văn Tần', '895266453822', '55452524224', '54413166326', 'bnbhhc@hh.com', 4, 'new', 1);

-- --------------------------------------------------------

--
-- Table structure for table `khu_vuc`
--

CREATE TABLE `khu_vuc` (
  `id` int(11) NOT NULL,
  `ma_khu_vuc` varchar(255) NOT NULL,
  `ten_khu_vuc` varchar(255) NOT NULL,
  `ghi_chu` text,
  `con_quan_ly` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `khu_vuc`
--

INSERT INTO `khu_vuc` (`id`, `ma_khu_vuc`, `ten_khu_vuc`, `ghi_chu`, `con_quan_ly`) VALUES
(1, 'HCM-Q1', 'Quận 1 - TPHCM', 'Bảo gồm toàn bộ Quận 1 - TPHCM.', 1),
(2, 'HCM-Q2', 'Quận 2 - TPHCM', 'Bảo gồm toàn bộ Quận 2 - TPHCM.', 1),
(3, 'HCM-Q3', 'Quận 3 - TPHCM', 'Bảo gồm toàn bộ Quận 3 - TPHCM.', 1),
(4, 'HCM-Q4', 'Quận 4 - TPHCM', 'Bảo gồm toàn bộ Quận 4 - TPHCM.', 1),
(5, 'HCM-Q5', 'Quận 5 - TPHCM', 'Bảo gồm toàn bộ Quận 5 - TPHCM.', 1),
(6, 'HCM-Q6', 'Quận 6 - TPHCM', 'Bảo gồm toàn bộ Quận 6 - TPHCM.', 1),
(7, 'HCM-Q7', 'Quận 7 - TPHCM', 'Bảo gồm toàn bộ Quận 7 - TPHCM.', 1),
(8, 'HCM-Q8', 'Quận 8 - TPHCM', 'Bảo gồm toàn bộ Quận 8 - TPHCM.', 1),
(9, 'HCM-Q9', 'Quận 9 - TPHCM', 'Bảo gồm toàn bộ Quận 9 - TPHCM.', 1),
(10, 'HCM-Q10', 'Quận 10 - TPHCM', 'Bảo gồm toàn bộ Quận 10 - TPHCM.', 1),
(11, 'HCM-Q11', 'Quận 11 - TPHCM', 'Bảo gồm toàn bộ Quận 11 - TPHCM.', 1),
(12, 'HCM-Q12', 'Quận 12 - TPHCM', 'Bảo gồm toàn bộ Quận 12 - TPHCM.', 1),
(13, 'HCM-Q Bình Thạnh', 'Quận  Bình Thạnh - TPHCM', 'Bảo gồm toàn bộ Quận  Bình Thạnh - TPHCM.', 1),
(14, 'HCM-Q Phú Nhuận', 'Quận  Phú Nhuận - TPHCM', 'Bảo gồm toàn bộ Quận  Phú Nhuận - TPHCM.', 1),
(15, 'HCM-Q Tân Bình', 'Quận  Tân Bình - TPHCM', 'Bảo gồm toàn bộ Quận  Tân Bình - TPHCM.', 1),
(16, 'HCM-Q Tân Phú', 'Quận  Tân Phú - TPHCM', 'Bảo gồm toàn bộ Quận  Tân Phú - TPHCM.', 1),
(17, 'HCM-Q Bình Tân', 'Quận  Bình Tân - TPHCM', 'Bảo gồm toàn bộ Quận  Bình Tân - TPHCM.', 1),
(18, 'HCM-H Hóc Môn', 'Huyện Hóc Môn - TPHCM', 'Bảo gồm toàn bộ Huyện Hóc Môn - TPHCM.', 1),
(19, 'HCM-H Củ Chi', 'Huyện Củ Chi - TPHCM', 'Bảo gồm toàn bộ Huyện Củ Chi - TPHCM.', 1),
(20, 'HCM-H Bình Chánh', 'Huyện Bình Chánh - TPHCM', 'Bảo gồm toàn bộ Huyện Bình Chánh - TPHCM.', 1),
(21, 'HCM-H Nhà Bè', 'Huyện Nhà Bè - TPHCM', 'Bảo gồm toàn bộ Huyện Nhà Bè - TPHCM.', 1),
(22, 'HCM-H Cần Giờ', 'Huyện Cần Giờ - TPHCM', 'Bảo gồm toàn bộ Huyện Cần Giờ - TPHCM.', 1),
(23, 'HCM-Q Gò Vấp', 'Quận Gò Vấp - TPHCM', 'Bảo gồm toàn bộ Quận  Gò Vấp - TPHCM.', 1),
(24, 'HCM-Q Thủ Đức', 'Quận Thủ Đức - TPHCM', 'Bảo gồm toàn bộ Quận  Thủ Đức - TPHCM.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lich_su_hang_hoa`
--

CREATE TABLE `lich_su_hang_hoa` (
  `id` int(11) NOT NULL,
  `ngay` date NOT NULL,
  `chung_tu` varchar(255) DEFAULT NULL,
  `loai` varchar(255) DEFAULT NULL,
  `ma_hang` varchar(255) DEFAULT NULL,
  `ten_hang` varchar(255) DEFAULT NULL,
  `kho_hang` varchar(255) DEFAULT NULL,
  `don_vi` varchar(255) DEFAULT NULL,
  `so_luong` varchar(255) DEFAULT NULL,
  `don_gia` varchar(255) DEFAULT NULL,
  `thanh_tien` varchar(255) DEFAULT NULL,
  `ghi_chu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lich_su_hang_hoa`
--

INSERT INTO `lich_su_hang_hoa` (`id`, `ngay`, `chung_tu`, `loai`, `ma_hang`, `ten_hang`, `kho_hang`, `don_vi`, `so_luong`, `don_gia`, `thanh_tien`, `ghi_chu`) VALUES
(1, '2016-10-22', 'LS_TK_001_CQ', 'Nhập Kho', 'MD_009_Q', 'Giấy In', 'Kho Hậu Mãi', 'Cái', '26', '100000', '2600000', 'Công ty mua để làm dự án hậu mãi'),
(2, '2016-10-22', 'LS_TK_001_CQ', 'Nhập Kho', 'MD_009s_Q', 'Giấy Bọc', 'Kho Hậu Mãi', 'Cái', '24', '100000', '2400000', 'Công ty mua để làm dự án hậu mãi'),
(3, '2016-10-22', 'LS_TK_001_CQ', 'Nhập Kho', 'MD_0ss09_Q', 'Hóa Đơn', 'Kho Hậu Mãi', 'Cái', '230', '100000', '23000000', 'Công ty mua để làm dự án hậu mãi');

-- --------------------------------------------------------

--
-- Table structure for table `mua_hang`
--

CREATE TABLE `mua_hang` (
  `id` int(11) NOT NULL,
  `id_nha_phan_phoi` int(11) NOT NULL,
  `ghi_chu` varchar(255) DEFAULT NULL,
  `dieu_khoan_thanh_toan` varchar(255) DEFAULT NULL,
  `ngay_thanh_toan` date NOT NULL,
  `tong_so_luong` bigint(20) NOT NULL,
  `tong_thanh_tien` double NOT NULL,
  `tong_thanh_toan` double NOT NULL,
  `ngay_nhap` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mua_hang`
--

INSERT INTO `mua_hang` (`id`, `id_nha_phan_phoi`, `ghi_chu`, `dieu_khoan_thanh_toan`, `ngay_thanh_toan`, `tong_so_luong`, `tong_thanh_tien`, `tong_thanh_toan`, `ngay_nhap`) VALUES
(1, 1, 'Nhập hàng đợt đầu khai trương ngày 20.10', 'Công Nợ - Chuyển Khoản', '2016-12-31', 200, 250000000, 250000000, '2016-10-20'),
(2, 1, 'Nhập hàng đợt đầu khai trương ngày 20.10', 'Công Nợ - Chuyển Khoản', '2016-12-31', 200, 250000000, 250000000, '2016-10-20'),
(3, 2, 'Nhập hàng đợt 2 bỏ sung 20.10', 'Công Nợ - Chuyển Khoản', '2016-12-31', 130, 240000000, 240000000, '2016-10-20'),
(4, 3, 'Nhập hàng đợt đầu khai trương ngày 20.10', 'Công Nợ - Chuyển Khoản', '2016-12-31', 240, 450000000, 450000000, '2016-10-20');

-- --------------------------------------------------------

--
-- Table structure for table `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `id` int(11) NOT NULL,
  `ten_dang_nhap` varchar(255) NOT NULL,
  `mat_khau` varchar(255) NOT NULL,
  `id_nhom_nguoi_dung` int(11) NOT NULL,
  `mo_ta` varchar(255) DEFAULT NULL,
  `id_nhan_vien` int(11) NOT NULL,
  `con_quan_ly` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`id`, `ten_dang_nhap`, `mat_khau`, `id_nhom_nguoi_dung`, `mo_ta`, `id_nhan_vien`, `con_quan_ly`) VALUES
(1, 'admin', 'admin', 1, 'admin he thong', 1, 1),
(2, 'ntmduy', 'ntmduy', 1, 'Minh Duy', 2, 1),
(3, 'ltmhuyen', 'ltmhuyen', 1, 'My Huyen', 3, 1),
(4, 'lhtngoc', 'lhtngoc', 1, 'Thu Ngọc', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhan_vien`
--

CREATE TABLE `nhan_vien` (
  `id` int(11) NOT NULL,
  `ma_nhan_vien` varchar(255) NOT NULL,
  `ten_nhan_vien` varchar(255) NOT NULL,
  `gioi_tinh` tinyint(4) NOT NULL DEFAULT '0',
  `dia_chi` text,
  `con_doc_than` tinyint(4) NOT NULL DEFAULT '0',
  `chuc_vu` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dien_thoai` varchar(255) DEFAULT NULL,
  `di_dong` varchar(255) DEFAULT NULL,
  `dien_giai` text NOT NULL,
  `id_bo_phan` int(11) NOT NULL,
  `con_quan_ly` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhan_vien`
--

INSERT INTO `nhan_vien` (`id`, `ma_nhan_vien`, `ten_nhan_vien`, `gioi_tinh`, `dia_chi`, `con_doc_than`, `chuc_vu`, `email`, `dien_thoai`, `di_dong`, `dien_giai`, `id_bo_phan`, `con_quan_ly`) VALUES
(1, 'IT-001', 'Ngô Trần Minh Duy', 0, '123 Trần Hưng Đạo', 0, 'Admin', NULL, NULL, NULL, 'Admin', 1, 1),
(2, 'IT-002', 'Nguyễn Thi Bình', 0, '22 Đông Hồ', 0, 'Nhân Viên', NULL, NULL, NULL, 'Nhân Viên', 2, 1),
(3, 'BH-001', 'Lê Huỳnh Kha', 0, '11 Trần Hưng Đạo', 0, 'Bán Hàng', NULL, NULL, NULL, 'Bán Hàng', 3, 1),
(4, 'BH-002', 'Nguyễn Thùy Trâm Bình', 0, '2s Đông Hồ', 0, 'Nhân Viên', NULL, NULL, NULL, 'Nhân Viên', 4, 1),
(5, 'HC-001', 'Lê Thị Mộng Mơ', 0, '545/258 Trần Hưng Đạo', 0, 'Nhân Sự', NULL, NULL, NULL, 'Nhân Sự', 5, 1),
(6, 'HC-002', 'Anh Viên', 0, 's1214 CC 881 Trần Hưng', 0, 'Nhân Viên', NULL, NULL, NULL, 'Nhân Viên', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhat_ky_he_thong`
--

CREATE TABLE `nhat_ky_he_thong` (
  `id` int(11) NOT NULL,
  `id_nguoi_dung` int(11) NOT NULL,
  `thao_tac` text,
  `chi_tiet` text,
  `ghi_chu` text,
  `ngay` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhat_ky_he_thong`
--

INSERT INTO `nhat_ky_he_thong` (`id`, `id_nguoi_dung`, `thao_tac`, `chi_tiet`, `ghi_chu`, `ngay`) VALUES
(1, 1, 'Thêm', 'Nhập hàng vào kho', 'Nhập hàng vào kho 1 cho việc khai trương trung tâm mới', '2016-10-21'),
(2, 1, 'Thêm', 'Nhập hàng', 'Nhập hàng vào kho để khai trương trung tâm mới', '2016-10-21'),
(3, 1, 'Thêm', 'Nhập Hàng', 'Nhập hàng vào kho 2, để khai trương trung tâm mới', '2016-10-21'),
(4, 1, 'Thêm', 'Nhập hàng', 'Nhập hàng vào kho 2 để khai trương trung tâm mới', '2016-10-21'),
(5, 1, 'Thêm', 'Nhập Hàng', 'Nhập Hàng vào kho 3 để khai trương trung tâm mới', '2016-10-21'),
(6, 1, 'Thêm', 'Nhập Hàng', 'Nhập hàng vào kho 3 để khai trương trung tâm mới', '2016-10-21');

-- --------------------------------------------------------

--
-- Table structure for table `nha_phan_phoi`
--

CREATE TABLE `nha_phan_phoi` (
  `id` int(11) NOT NULL,
  `ma_nha_phan_phoi` varchar(255) NOT NULL,
  `id_khu_vuc` int(11) NOT NULL,
  `ten_nha_phan_phoi` varchar(255) NOT NULL,
  `dia_chi` text,
  `ma_so_thue` varchar(255) NOT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `dien_thoai` varchar(255) DEFAULT NULL,
  `di_dong` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `so_tai_khoan` varchar(255) DEFAULT NULL,
  `ngan_hang` varchar(255) DEFAULT NULL,
  `gioi_han_no` double NOT NULL DEFAULT '0',
  `no_hien_tai` double NOT NULL DEFAULT '0',
  `chiet_khau` float NOT NULL DEFAULT '0',
  `nguoi_lien_he` varchar(255) DEFAULT NULL,
  `chuc_vu` varchar(255) DEFAULT NULL,
  `con_quan_ly` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nha_phan_phoi`
--

INSERT INTO `nha_phan_phoi` (`id`, `ma_nha_phan_phoi`, `id_khu_vuc`, `ten_nha_phan_phoi`, `dia_chi`, `ma_so_thue`, `fax`, `dien_thoai`, `di_dong`, `email`, `website`, `so_tai_khoan`, `ngan_hang`, `gioi_han_no`, `no_hien_tai`, `chiet_khau`, `nguoi_lien_he`, `chuc_vu`, `con_quan_ly`) VALUES
(1, 'HCM_Q1_001', 1, 'Nguyên Hồng', '12/22 Nguyễn Cư Trinh', '5156484414', '08-16549848114', '08-849848846655', '09246265956', 'adsqd@yahoo.com', 'nguyenhong.com', '128485285592', 'VietComBank', 100000000, 0, 5, 'Nguyen Van Thu', 'Quan Ly', 1),
(2, 'HCM_Q2_001', 1, 'Ánh Dương', 'd2/222 Thảo Điền', '5156552484414', '08-1654983448114', '08-849843448846655', '0924643434265956', 'thaodien@yahoo.com', 'ngg.com', '4354657544345', 'VietComBank', 100000000, 0, 5, 'Nguyen Hai', 'Quan Ly', 1),
(3, 'HCM_Q3_001', 1, 'Ánh Dương', 'd2/222 Thảo Điền', '5156552484414', '08-1654983448114', '08-849843448846655', '0924643434265956', 'thaodien@yahoo.com', 'ngg.com', '4354657544345', 'VietComBank', 100000000, 0, 5, 'Nguyen Hai', 'Quan Ly', 1),
(4, 'HCM_Q4_001', 1, 'Đại Lợi', '522 Nguyễn Tất Thành', '654345656432', '08-656546564646', '08-646565466', '656466566546546', 'nguyentt@yahoo.com', 'abc.com', '54535677790', 'VietComBank', 100000000, 0, 5, 'Nguyen Nhu', 'Quan Ly', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhom_hang`
--

CREATE TABLE `nhom_hang` (
  `id` int(11) NOT NULL,
  `ma_nhom_hang` varchar(255) NOT NULL,
  `ten_nhom_hang` varchar(255) NOT NULL,
  `ghi_chu` text,
  `con_quan_ly` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhom_hang`
--

INSERT INTO `nhom_hang` (`id`, `ma_nhom_hang`, `ten_nhom_hang`, `ghi_chu`, `con_quan_ly`) VALUES
(1, 'DM-Tivi', 'Điên Máy - TiVi', 'Điện Máy chuyên về Tivi', 1),
(2, 'DM-Loa', 'Điên Máy - Loa', 'Điện Máy chuyên về Loa', 1),
(3, 'DM-Đầu Đĩa', 'Điên Máy - Đầu Đĩa', 'Điện Máy chuyên về Đầu Đĩa', 1),
(4, 'DM-Đầu Karaoke', 'Điên Máy - Đầu Karaoke', 'Điện Máy chuyên về Đầu Karaoke', 1),
(5, 'DM-Ampli', 'Điên Máy - Ampli', 'Điện Máy chuyên về Ampli', 1),
(6, 'DM-Micro', 'Điên Máy - Micro', 'Điện Máy chuyên về Micro', 1),
(7, 'DL-Tủ Lạnh', 'Điện Lạnh - Tủ Lạnh', 'Điện Lạnh chuyên về Tủ Lạnh', 1),
(8, 'DL-Máy Lạnh', 'Điện Lạnh - Máy Lạnh', 'Điện Lạnh chuyên về Máy Lạnh', 1),
(9, 'DL-Máy Giặt', 'Điện Lạnh - Máy Giặt', 'Điện Lạnh chuyên về Máy Giặt', 1),
(10, 'DL-Máy Nước Nóng', 'Điện Lạnh - Máy Nước Nóng', 'Điện Lạnh chuyên về Máy Nước Nóng', 1),
(11, 'DL-Máy Nóng Lạnh', 'Điện Lạnh - Máy Nóng Lạnh', 'Điện Lạnh chuyên về Máy Nóng Lạnh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhom_nguoi_dung`
--

CREATE TABLE `nhom_nguoi_dung` (
  `id` int(11) NOT NULL,
  `ten_nhom` varchar(255) NOT NULL,
  `mo_ta` text,
  `con_quan_ly` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhom_nguoi_dung`
--

INSERT INTO `nhom_nguoi_dung` (`id`, `ten_nhom`, `mo_ta`, `con_quan_ly`) VALUES
(1, 'Quản Lý', 'Quản lý bao gồm Giám Đốc, Quản lý các bộ phận, Admin', 1),
(2, 'Nhân Viên Bán Hàng', 'Nhân viên bán hàng bao gồm người bán hàng trực tiếp, người nhập dữ liệu, kế toán quầy', 1),
(3, 'Hành Chính', 'Bao gồm kế toán hóa đơn, chứng từ, nhân sự tiền lương, ...', 1);

-- --------------------------------------------------------

--
-- Table structure for table `phan_quyen`
--

CREATE TABLE `phan_quyen` (
  `id` int(11) NOT NULL,
  `id_nhom_nguoi_dung` int(11) NOT NULL,
  `nhat_ky_he_thong` tinyint(4) NOT NULL DEFAULT '0',
  `backup` tinyint(4) NOT NULL DEFAULT '0',
  `restore` tinyint(4) NOT NULL DEFAULT '0',
  `phan_quyen` tinyint(4) NOT NULL DEFAULT '0',
  `khu_vuc` tinyint(4) NOT NULL DEFAULT '0',
  `khach_hang` tinyint(4) NOT NULL DEFAULT '0',
  `nha_phan_phoi` tinyint(4) NOT NULL DEFAULT '0',
  `hang_hoa` tinyint(4) NOT NULL DEFAULT '0',
  `don_vi_tinh` tinyint(4) NOT NULL DEFAULT '0',
  `nhom_hang` tinyint(4) NOT NULL DEFAULT '0',
  `kho` tinyint(4) NOT NULL DEFAULT '0',
  `bo_phan` tinyint(4) NOT NULL DEFAULT '0',
  `nhan_vien` tinyint(4) NOT NULL DEFAULT '0',
  `mua_hang` tinyint(4) NOT NULL DEFAULT '0',
  `ban_hang` tinyint(4) NOT NULL DEFAULT '0',
  `chuyen_kho` tinyint(4) NOT NULL DEFAULT '0',
  `ton_kho` tinyint(4) NOT NULL DEFAULT '0',
  `thu_tien` tinyint(4) NOT NULL DEFAULT '0',
  `tra_tien` tinyint(4) NOT NULL DEFAULT '0',
  `nguoi_dung` tinyint(4) NOT NULL DEFAULT '0',
  `lich_su_hang_hoa` tinyint(4) NOT NULL DEFAULT '0',
  `report` tinyint(4) NOT NULL DEFAULT '0',
  `ty_gia` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phan_quyen`
--

INSERT INTO `phan_quyen` (`id`, `id_nhom_nguoi_dung`, `nhat_ky_he_thong`, `backup`, `restore`, `phan_quyen`, `khu_vuc`, `khach_hang`, `nha_phan_phoi`, `hang_hoa`, `don_vi_tinh`, `nhom_hang`, `kho`, `bo_phan`, `nhan_vien`, `mua_hang`, `ban_hang`, `chuyen_kho`, `ton_kho`, `thu_tien`, `tra_tien`, `nguoi_dung`, `lich_su_hang_hoa`, `report`, `ty_gia`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 2, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(3, 3, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phieu_ban_hang`
--

CREATE TABLE `phieu_ban_hang` (
  `id` int(11) NOT NULL,
  `ma_phieu` varchar(255) NOT NULL,
  `ngay` date NOT NULL,
  `du_no` double NOT NULL,
  `ghi_chu` text,
  `id_nguoi_dung` int(11) NOT NULL,
  `id_ban_hang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phieu_ban_hang`
--

INSERT INTO `phieu_ban_hang` (`id`, `ma_phieu`, `ngay`, `du_no`, `ghi_chu`, `id_nguoi_dung`, `id_ban_hang`) VALUES
(1, 'BH-HCM-001', '2016-10-21', 1200000, 'Bán Hàng', 1, 1),
(2, 'BH-HCM-002', '2016-10-21', 1200000, 'Bán Hàng', 1, 2),
(3, 'BH-HCM-003', '2016-10-21', 1200000, 'Bán Hàng', 1, 3),
(4, 'BH-HCM-004', '2016-10-21', 1200000, 'Bán Hàng', 1, 4),
(5, 'BH-HCM-005', '2016-10-21', 1200000, 'Bán Hàng', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `phieu_chi`
--

CREATE TABLE `phieu_chi` (
  `id` int(11) NOT NULL,
  `id_mua_hang` int(11) NOT NULL,
  `id_nguoi_dung` int(11) NOT NULL,
  `ngay` date NOT NULL,
  `ly_do` text,
  `tong_tien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phieu_chi`
--

INSERT INTO `phieu_chi` (`id`, `id_mua_hang`, `id_nguoi_dung`, `ngay`, `ly_do`, `tong_tien`) VALUES
(1, 1, 1, '2016-10-21', 'Chi ứng tiền trả đơn hàng đã đặt', 32000000),
(2, 1, 1, '2016-10-21', 'Chi tạm ứng cho đơn hàng', 10000000),
(3, 2, 1, '2016-10-21', 'Chi tạm ứng cho đơn hàng', 10000000),
(4, 3, 1, '2016-10-21', 'Chi tạm ứng cho đơn hàng', 10000000),
(5, 4, 1, '2016-10-21', 'Chi tạm ứng cho đơn hàng', 10000000);

-- --------------------------------------------------------

--
-- Table structure for table `phieu_mua_hang`
--

CREATE TABLE `phieu_mua_hang` (
  `id` int(11) NOT NULL,
  `ma_phieu` varchar(255) NOT NULL,
  `no_cu` double NOT NULL,
  `no_moi` double NOT NULL,
  `loai_tien` int(11) NOT NULL,
  `ghi_chu` text,
  `id_nguoi_dung` int(11) NOT NULL,
  `ngay` date NOT NULL,
  `id_mua_hang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phieu_mua_hang`
--

INSERT INTO `phieu_mua_hang` (`id`, `ma_phieu`, `no_cu`, `no_moi`, `loai_tien`, `ghi_chu`, `id_nguoi_dung`, `ngay`, `id_mua_hang`) VALUES
(2, 'MH-HCM-001', 0, 120000000, 1, 'Mua Hàng nhập kho', 1, '2016-10-21', 1),
(3, 'MH-HCM-002', 0, 320000000, 1, 'Mua Hàng nhập kho Q1', 1, '2016-10-21', 2),
(4, 'MH-HCM-003', 0, 50000000, 1, 'Mua hàng tồn kho cuối Q3', 1, '2016-10-21', 3),
(5, 'MH-HCM-004', 0, 140000000, 1, 'Mua hàng cho trung tâm Tân Bình', 1, '2016-10-21', 4);

-- --------------------------------------------------------

--
-- Table structure for table `phieu_thu`
--

CREATE TABLE `phieu_thu` (
  `id` int(11) NOT NULL,
  `id_ban_hang` int(11) NOT NULL,
  `ngay` date NOT NULL,
  `id_nguoi_dung` int(11) NOT NULL,
  `ly_do` text,
  `tong_tien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phieu_thu`
--

INSERT INTO `phieu_thu` (`id`, `id_ban_hang`, `ngay`, `id_nguoi_dung`, `ly_do`, `tong_tien`) VALUES
(1, 1, '2016-10-21', 1, 'Thu tạm ứng tại quầy', 100000),
(2, 2, '2016-10-21', 1, 'Thu tạm ứng tại quầy', 100000),
(3, 3, '2016-10-21', 1, 'Thu tạm ứng tại quầy', 100000),
(4, 4, '2016-10-21', 1, 'Thu tạm ứng tại quầy', 100000),
(5, 5, '2016-10-21', 1, 'Thu tạm ứng tại quầy', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `so_du_dau_ky`
--

CREATE TABLE `so_du_dau_ky` (
  `id` int(11) NOT NULL,
  `id_hang_hoa` int(11) NOT NULL,
  `so_luong` bigint(20) NOT NULL,
  `don_gia` float NOT NULL,
  `thanh_tien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `so_du_dau_ky`
--

INSERT INTO `so_du_dau_ky` (`id`, `id_hang_hoa`, `so_luong`, `don_gia`, `thanh_tien`) VALUES
(1, 1, 100, 500000, 50000000),
(2, 2, 50, 100000, 5000000),
(3, 3, 12, 1000000, 1200000),
(4, 4, 15, 100000, 1500000),
(5, 5, 2, 7500000, 15000000),
(6, 6, 1, 5000000, 5000000),
(7, 7, 12, 200000, 2400000),
(8, 8, 120, 200000, 2400000);

-- --------------------------------------------------------

--
-- Table structure for table `thong_tin_don_vi_su_dung`
--

CREATE TABLE `thong_tin_don_vi_su_dung` (
  `id` int(11) NOT NULL,
  `ten_cong_ty` varchar(255) DEFAULT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `dien_thoai` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `linh_vuc` varchar(255) DEFAULT NULL,
  `ma_so_thue` varchar(255) DEFAULT NULL,
  `giay_phep_kinh_doanh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thong_tin_don_vi_su_dung`
--

INSERT INTO `thong_tin_don_vi_su_dung` (`id`, `ten_cong_ty`, `dia_chi`, `dien_thoai`, `fax`, `email`, `website`, `linh_vuc`, `ma_so_thue`, `giay_phep_kinh_doanh`) VALUES
(1, 'Công Ty TNHH Thương Mại Phát Tài', '268 Trần Hưng Đạo, Quận 1, Tp. Hồ Chí Minh', '08-38383838', '08-35353535', 'recception@trade.phattai.com', 'phattai.com', 'Bán Lẻ, Bán Sỉ, Phân Phối', '0102030405', 'HCM-2016-0123456789');

-- --------------------------------------------------------

--
-- Table structure for table `ty_gia`
--

CREATE TABLE `ty_gia` (
  `id` int(11) NOT NULL,
  `ma_loai_tien` varchar(255) NOT NULL,
  `loai_tien` varchar(255) NOT NULL,
  `ty_gia_vnd` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ty_gia`
--

INSERT INTO `ty_gia` (`id`, `ma_loai_tien`, `loai_tien`, `ty_gia_vnd`) VALUES
(1, 'USD', 'ĐÔ LA MỸ', 23125000),
(2, 'EUR', 'EURO Châu âu', 28251200),
(3, 'YEN', 'Yên Nhật', 325),
(4, 'POUND', 'Bảng Anh', 32015210);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ban_hang`
--
ALTER TABLE `ban_hang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bo_phan`
--
ALTER TABLE `bo_phan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chi_tiet_ban_hang`
--
ALTER TABLE `chi_tiet_ban_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_chi_tiet_ban_hang_to_hang_hoa` (`id_hang_hoa`),
  ADD KEY `fk_chi_tiet_ban_hang_to_kho` (`id_kho`),
  ADD KEY `fk_chi_tiet_ban_hang_to_ban_hang` (`id_ban_hang`);

--
-- Indexes for table `chi_tiet_chuyen_kho`
--
ALTER TABLE `chi_tiet_chuyen_kho`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_chi_tiet_chuyen_kho_to_chuyen_kho` (`id_chuyen_kho`),
  ADD KEY `fk_chi_tiet_chuyen_kho_to_hang_hoa` (`id_hang_hoa`);

--
-- Indexes for table `chi_tiet_mua_hang`
--
ALTER TABLE `chi_tiet_mua_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_chi_tiet_mua_hang_to_hang_hoa` (`id_hang_hoa`),
  ADD KEY `fk_chi_tiet_mua_hang_to_kho` (`id_kho`),
  ADD KEY `fk_chi_tiet_mua_hang_to_mua_hang` (`id_mua_hang`);

--
-- Indexes for table `chuyen_kho`
--
ALTER TABLE `chuyen_kho`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_chuyen_kho_to_kho_nhap` (`id_kho_nhap`),
  ADD KEY `fk_chuyen_kho_to_kho_xuat` (`id_kho_xuat`);

--
-- Indexes for table `don_vi_tinh`
--
ALTER TABLE `don_vi_tinh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hang_hoa_to_nha_phan_phoi` (`id_nha_phan_phoi`),
  ADD KEY `fk_hang_hoa_to_nhom_hang` (`id_nhom_hang`),
  ADD KEY `fk_hang_hoa_to_don_vi_tinh` (`id_don_vi_tinh`);

--
-- Indexes for table `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_khach_hang_to_khu_vuc` (`id_khu_vuc`);

--
-- Indexes for table `kho`
--
ALTER TABLE `kho`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kho_to_nhan_vien` (`id_nguoi_quan_ly`);

--
-- Indexes for table `khu_vuc`
--
ALTER TABLE `khu_vuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lich_su_hang_hoa`
--
ALTER TABLE `lich_su_hang_hoa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mua_hang`
--
ALTER TABLE `mua_hang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_nguoi_dung_to_nhom_nguoi_dung` (`id_nhom_nguoi_dung`),
  ADD KEY `fk_nguoi_dung_to_nhan_vien` (`id_nhan_vien`);

--
-- Indexes for table `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_nhan_vien_to_bo_phan` (`id_bo_phan`);

--
-- Indexes for table `nhat_ky_he_thong`
--
ALTER TABLE `nhat_ky_he_thong`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nha_phan_phoi`
--
ALTER TABLE `nha_phan_phoi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_nha_phan_phoi_to_khu_vuc` (`id_khu_vuc`);

--
-- Indexes for table `nhom_hang`
--
ALTER TABLE `nhom_hang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhom_nguoi_dung`
--
ALTER TABLE `nhom_nguoi_dung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phan_quyen`
--
ALTER TABLE `phan_quyen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_phan_quyen_to_nhom_nguoi_dung` (`id_nhom_nguoi_dung`);

--
-- Indexes for table `phieu_ban_hang`
--
ALTER TABLE `phieu_ban_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_phieu_ban_hang_to_ban_hang` (`id_ban_hang`);

--
-- Indexes for table `phieu_chi`
--
ALTER TABLE `phieu_chi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_phieu_chi_to_mua_hang` (`id_mua_hang`);

--
-- Indexes for table `phieu_mua_hang`
--
ALTER TABLE `phieu_mua_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_phieu_mua_hang_to_mua_hang` (`id_mua_hang`);

--
-- Indexes for table `phieu_thu`
--
ALTER TABLE `phieu_thu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_phieu_thu_to_ban_hang` (`id_ban_hang`);

--
-- Indexes for table `so_du_dau_ky`
--
ALTER TABLE `so_du_dau_ky`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_so_du_dau_ky_to_hang_hoa` (`id_hang_hoa`);

--
-- Indexes for table `thong_tin_don_vi_su_dung`
--
ALTER TABLE `thong_tin_don_vi_su_dung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ty_gia`
--
ALTER TABLE `ty_gia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ban_hang`
--
ALTER TABLE `ban_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `bo_phan`
--
ALTER TABLE `bo_phan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `chi_tiet_ban_hang`
--
ALTER TABLE `chi_tiet_ban_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `chi_tiet_chuyen_kho`
--
ALTER TABLE `chi_tiet_chuyen_kho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `chi_tiet_mua_hang`
--
ALTER TABLE `chi_tiet_mua_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `chuyen_kho`
--
ALTER TABLE `chuyen_kho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `don_vi_tinh`
--
ALTER TABLE `don_vi_tinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `hang_hoa`
--
ALTER TABLE `hang_hoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `kho`
--
ALTER TABLE `kho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `khu_vuc`
--
ALTER TABLE `khu_vuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `lich_su_hang_hoa`
--
ALTER TABLE `lich_su_hang_hoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mua_hang`
--
ALTER TABLE `mua_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `nhan_vien`
--
ALTER TABLE `nhan_vien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `nhat_ky_he_thong`
--
ALTER TABLE `nhat_ky_he_thong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `nha_phan_phoi`
--
ALTER TABLE `nha_phan_phoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `nhom_hang`
--
ALTER TABLE `nhom_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `nhom_nguoi_dung`
--
ALTER TABLE `nhom_nguoi_dung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `phan_quyen`
--
ALTER TABLE `phan_quyen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `phieu_ban_hang`
--
ALTER TABLE `phieu_ban_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `phieu_chi`
--
ALTER TABLE `phieu_chi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `phieu_mua_hang`
--
ALTER TABLE `phieu_mua_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `phieu_thu`
--
ALTER TABLE `phieu_thu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `so_du_dau_ky`
--
ALTER TABLE `so_du_dau_ky`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `thong_tin_don_vi_su_dung`
--
ALTER TABLE `thong_tin_don_vi_su_dung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ty_gia`
--
ALTER TABLE `ty_gia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `chi_tiet_ban_hang`
--
ALTER TABLE `chi_tiet_ban_hang`
  ADD CONSTRAINT `fk_chi_tiet_ban_hang_to_ban_hang` FOREIGN KEY (`id_ban_hang`) REFERENCES `ban_hang` (`id`),
  ADD CONSTRAINT `fk_chi_tiet_ban_hang_to_hang_hoa` FOREIGN KEY (`id_hang_hoa`) REFERENCES `hang_hoa` (`id`),
  ADD CONSTRAINT `fk_chi_tiet_ban_hang_to_kho` FOREIGN KEY (`id_kho`) REFERENCES `kho` (`id`);

--
-- Constraints for table `chi_tiet_chuyen_kho`
--
ALTER TABLE `chi_tiet_chuyen_kho`
  ADD CONSTRAINT `fk_chi_tiet_chuyen_kho_to_chuyen_kho` FOREIGN KEY (`id_chuyen_kho`) REFERENCES `chuyen_kho` (`id`),
  ADD CONSTRAINT `fk_chi_tiet_chuyen_kho_to_hang_hoa` FOREIGN KEY (`id_hang_hoa`) REFERENCES `hang_hoa` (`id`);

--
-- Constraints for table `chi_tiet_mua_hang`
--
ALTER TABLE `chi_tiet_mua_hang`
  ADD CONSTRAINT `fk_chi_tiet_mua_hang_to_hang_hoa` FOREIGN KEY (`id_hang_hoa`) REFERENCES `hang_hoa` (`id`),
  ADD CONSTRAINT `fk_chi_tiet_mua_hang_to_kho` FOREIGN KEY (`id_kho`) REFERENCES `kho` (`id`),
  ADD CONSTRAINT `fk_chi_tiet_mua_hang_to_mua_hang` FOREIGN KEY (`id_mua_hang`) REFERENCES `mua_hang` (`id`);

--
-- Constraints for table `chuyen_kho`
--
ALTER TABLE `chuyen_kho`
  ADD CONSTRAINT `fk_chuyen_kho_to_kho_nhap` FOREIGN KEY (`id_kho_nhap`) REFERENCES `kho` (`id`),
  ADD CONSTRAINT `fk_chuyen_kho_to_kho_xuat` FOREIGN KEY (`id_kho_xuat`) REFERENCES `kho` (`id`);

--
-- Constraints for table `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD CONSTRAINT `fk_hang_hoa_to_don_vi_tinh` FOREIGN KEY (`id_don_vi_tinh`) REFERENCES `don_vi_tinh` (`id`),
  ADD CONSTRAINT `fk_hang_hoa_to_nha_phan_phoi` FOREIGN KEY (`id_nha_phan_phoi`) REFERENCES `nha_phan_phoi` (`id`),
  ADD CONSTRAINT `fk_hang_hoa_to_nhom_hang` FOREIGN KEY (`id_nhom_hang`) REFERENCES `nhom_hang` (`id`);

--
-- Constraints for table `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD CONSTRAINT `fk_khach_hang_to_khu_vuc` FOREIGN KEY (`id_khu_vuc`) REFERENCES `khu_vuc` (`id`);

--
-- Constraints for table `kho`
--
ALTER TABLE `kho`
  ADD CONSTRAINT `fk_kho_to_nhan_vien` FOREIGN KEY (`id_nguoi_quan_ly`) REFERENCES `nhan_vien` (`id`);

--
-- Constraints for table `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD CONSTRAINT `fk_nguoi_dung_to_nhan_vien` FOREIGN KEY (`id_nhan_vien`) REFERENCES `nhan_vien` (`id`),
  ADD CONSTRAINT `fk_nguoi_dung_to_nhom_nguoi_dung` FOREIGN KEY (`id_nhom_nguoi_dung`) REFERENCES `nhom_nguoi_dung` (`id`);

--
-- Constraints for table `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD CONSTRAINT `fk_nhan_vien_to_bo_phan` FOREIGN KEY (`id_bo_phan`) REFERENCES `bo_phan` (`id`);

--
-- Constraints for table `nha_phan_phoi`
--
ALTER TABLE `nha_phan_phoi`
  ADD CONSTRAINT `fk_nha_phan_phoi_to_khu_vuc` FOREIGN KEY (`id_khu_vuc`) REFERENCES `khu_vuc` (`id`);

--
-- Constraints for table `phan_quyen`
--
ALTER TABLE `phan_quyen`
  ADD CONSTRAINT `fk_phan_quyen_to_nhom_nguoi_dung` FOREIGN KEY (`id_nhom_nguoi_dung`) REFERENCES `nhom_nguoi_dung` (`id`);

--
-- Constraints for table `phieu_ban_hang`
--
ALTER TABLE `phieu_ban_hang`
  ADD CONSTRAINT `fk_phieu_ban_hang_to_ban_hang` FOREIGN KEY (`id_ban_hang`) REFERENCES `ban_hang` (`id`);

--
-- Constraints for table `phieu_chi`
--
ALTER TABLE `phieu_chi`
  ADD CONSTRAINT `fk_phieu_chi_to_mua_hang` FOREIGN KEY (`id_mua_hang`) REFERENCES `mua_hang` (`id`);

--
-- Constraints for table `phieu_mua_hang`
--
ALTER TABLE `phieu_mua_hang`
  ADD CONSTRAINT `fk_phieu_mua_hang_to_mua_hang` FOREIGN KEY (`id_mua_hang`) REFERENCES `mua_hang` (`id`);

--
-- Constraints for table `phieu_thu`
--
ALTER TABLE `phieu_thu`
  ADD CONSTRAINT `fk_phieu_thu_to_ban_hang` FOREIGN KEY (`id_ban_hang`) REFERENCES `ban_hang` (`id`);

--
-- Constraints for table `so_du_dau_ky`
--
ALTER TABLE `so_du_dau_ky`
  ADD CONSTRAINT `fk_so_du_dau_ky_to_hang_hoa` FOREIGN KEY (`id_hang_hoa`) REFERENCES `hang_hoa` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
