-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2016 at 06:19 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlibanhang`
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

-- --------------------------------------------------------

--
-- Table structure for table `nhom_nguoi_dung`
--

CREATE TABLE `nhom_nguoi_dung` (
  `id` int(11) NOT NULL,
  `ten_nhom` varchar(200) NOT NULL,
  `mo_ta` varchar(200) DEFAULT NULL,
  `con_quan_ly` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhom_nguoi_dung`
--

INSERT INTO `nhom_nguoi_dung` (`id`, `ten_nhom`, `mo_ta`, `con_quan_ly`) VALUES
(1, 'quan li', 'quan li', 1);

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
(1, 'TTMS Sài Gòn Nguyễn Kim', '63 Trần Hưng Đạo', '1234546', '2234546', 'nguyenkim@gmail.com', 'nguyenkim.com', 'kinh doanh do dien tu', '123456789', '98765431654');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bo_phan`
--
ALTER TABLE `bo_phan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chi_tiet_ban_hang`
--
ALTER TABLE `chi_tiet_ban_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chi_tiet_chuyen_kho`
--
ALTER TABLE `chi_tiet_chuyen_kho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chi_tiet_mua_hang`
--
ALTER TABLE `chi_tiet_mua_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chuyen_kho`
--
ALTER TABLE `chuyen_kho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `don_vi_tinh`
--
ALTER TABLE `don_vi_tinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hang_hoa`
--
ALTER TABLE `hang_hoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kho`
--
ALTER TABLE `kho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `khu_vuc`
--
ALTER TABLE `khu_vuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lich_su_hang_hoa`
--
ALTER TABLE `lich_su_hang_hoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mua_hang`
--
ALTER TABLE `mua_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nhan_vien`
--
ALTER TABLE `nhan_vien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nhat_ky_he_thong`
--
ALTER TABLE `nhat_ky_he_thong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nha_phan_phoi`
--
ALTER TABLE `nha_phan_phoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nhom_hang`
--
ALTER TABLE `nhom_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nhom_nguoi_dung`
--
ALTER TABLE `nhom_nguoi_dung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `phan_quyen`
--
ALTER TABLE `phan_quyen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `phieu_ban_hang`
--
ALTER TABLE `phieu_ban_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phieu_chi`
--
ALTER TABLE `phieu_chi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phieu_mua_hang`
--
ALTER TABLE `phieu_mua_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `phieu_thu`
--
ALTER TABLE `phieu_thu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `so_du_dau_ky`
--
ALTER TABLE `so_du_dau_ky`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `thong_tin_don_vi_su_dung`
--
ALTER TABLE `thong_tin_don_vi_su_dung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ty_gia`
--
ALTER TABLE `ty_gia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
