-- phpMyAdmin SQL Dump
-- version 4.4.14.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 24, 2016 at 10:54 PM
-- Server version: 5.5.44
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quan_ly_ban_hang`
--

-- --------------------------------------------------------

--
-- Table structure for table `bo_phan`
--

CREATE TABLE IF NOT EXISTS `bo_phan` (
  `id` int(11) NOT NULL,
  `ten_bo_phan` varchar(255) NOT NULL,
  `id_nguoi_quan_ly` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bo_phan`
--

INSERT INTO `bo_phan` (`id`, `ten_bo_phan`, `id_nguoi_quan_ly`) VALUES
(1, 'Quản Lý', 1),
(2, 'Bán Hàng', 1),
(3, 'Kinh Doanh', 1),
(4, 'Thu Ngân', 1),
(5, 'Giám Đốc', 1),
(6, 'Nhân Sự', 1),
(7, 'Bán Lẻ', 1),
(8, 'Bán Sỉ', 1),
(9, 'Giao Hàng', 1),
(10, 'Bảo Hành', 1),
(11, 'Chăm Sóc Khách Hàng', 1),
(12, 'Marketing', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hang_hoa`
--

CREATE TABLE IF NOT EXISTS `hang_hoa` (
  `id` int(11) NOT NULL,
  `id_loai_hang_hoa` int(11) NOT NULL,
  `id_nhom_hang` int(11) NOT NULL,
  `gia_nhap` int(11) NOT NULL,
  `gia_ban` int(11) NOT NULL,
  `ma_vach` varchar(255) NOT NULL,
  `so_luong_ton` int(11) NOT NULL,
  `ten_hang_hoa` varchar(255) NOT NULL,
  `thong_tin_nha_san_xuat` varchar(255) NOT NULL,
  `id_nha_phan_phoi` int(11) NOT NULL,
  `id_kho` int(11) NOT NULL,
  `ngay_nhap` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hang_hoa`
--

INSERT INTO `hang_hoa` (`id`, `id_loai_hang_hoa`, `id_nhom_hang`, `gia_nhap`, `gia_ban`, `ma_vach`, `so_luong_ton`, `ten_hang_hoa`, `thong_tin_nha_san_xuat`, `id_nha_phan_phoi`, `id_kho`, `ngay_nhap`) VALUES
(1, 1, 1, 12000, 16000, '12121224111211212312', 1000, 'NX12KHJUW', 'PanaKanaMino', 1, 1, '2016-08-01'),
(2, 1, 1, 12000, 16000, '12121224111211212312', 1000, 'NX12KHJUW', 'PanaKanaMino', 1, 1, '2016-08-01'),
(3, 1, 1, 12000, 16000, '12121224111211212312', 1000, 'NX12TRTKHJUW', 'PanaKanaMino', 1, 1, '2016-08-01'),
(4, 1, 1, 12000, 16000, '12121224111211212312', 1000, 'NX12KTRTRHJUW', 'PanaKanaMino', 1, 1, '2016-08-01'),
(5, 1, 1, 12000, 16000, '12121224111211212312', 1000, 'NX12RTKHJUW', 'PanaKanaMino', 1, 1, '2016-08-01'),
(6, 1, 1, 12000, 16000, '12121224111211212312', 1000, 'NX12KJHGFHRGGRJUW', 'PanaKanaMino', 1, 1, '2016-08-01'),
(7, 1, 1, 124000, 160700, '12121224111211212312', 1000, 'NX12KRRHJUW', 'PanaKanaMino', 1, 1, '2016-08-01'),
(8, 1, 1, 12000, 16000, '121212241112321212312', 1000, 'NX12KTTRTHJUW', 'PanaKanaMino', 1, 1, '2016-08-01'),
(9, 1, 1, 123000, 163000, '12121424224111424211212312', 104200, 'NX12KHJUW', 'PanaKanaMino', 1, 1, '2016-08-01'),
(10, 1, 1, 12000, 16000, '12435672223', 10030, 'NX12K342HJUW', 'PanaKanaMino', 1, 1, '2016-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don`
--

CREATE TABLE IF NOT EXISTS `hoa_don` (
  `id` int(11) NOT NULL,
  `id_hang_hoa` int(11) NOT NULL,
  `id_khach_hang` int(11) NOT NULL,
  `gia_ban` int(11) NOT NULL,
  `khuyen_mai` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `thanh_tien` int(11) NOT NULL,
  `thong_tin_giao_hang` varchar(255) NOT NULL,
  `ngay_lap_hoa_don` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoa_don`
--

INSERT INTO `hoa_don` (`id`, `id_hang_hoa`, `id_khach_hang`, `gia_ban`, `khuyen_mai`, `so_luong`, `thanh_tien`, `thong_tin_giao_hang`, `ngay_lap_hoa_don`) VALUES
(1, 1, 1, 16000, 0, 1, 16000, 'Theo địa chỉ khách hàng', '2016-08-18'),
(2, 1, 2, 16000, 0, 1, 16000, 'Theo địa chỉ khách hàng', '2016-08-18'),
(3, 1, 3, 16000, 0, 1, 16000, 'Theo địa chỉ khách hàng', '2016-08-18'),
(4, 1, 4, 16000, 0, 1, 16000, 'Theo địa chỉ khách hàng', '2016-08-18'),
(5, 1, 5, 16000, 0, 1, 16000, 'Theo địa chỉ khách hàng', '2016-08-18'),
(6, 1, 6, 16000, 0, 1, 16000, 'Theo địa chỉ khách hàng', '2016-08-18'),
(7, 1, 7, 16000, 0, 1, 16000, 'Theo địa chỉ khách hàng', '2016-08-18'),
(8, 1, 8, 16000, 0, 1, 16000, 'Theo địa chỉ khách hàng', '2016-08-18'),
(9, 1, 9, 16000, 0, 1, 16000, 'Theo địa chỉ khách hàng', '2016-08-18'),
(10, 1, 10, 16000, 0, 1, 16000, 'Theo địa chỉ khách hàng', '2016-08-18');

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

CREATE TABLE IF NOT EXISTS `khach_hang` (
  `id` int(11) NOT NULL,
  `ten_khach_hang` varchar(255) NOT NULL,
  `ngay_sinh` date NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `dien_thoai` varchar(255) NOT NULL,
  `cmnd` varchar(255) NOT NULL,
  `gioi_tinh` int(11) NOT NULL,
  `ngay_bat_dau` date NOT NULL,
  `ngay_giao_dich_gan_nhat` date NOT NULL,
  `id_khu_vuc` int(11) NOT NULL,
  `thong_tin_lien_quan` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `khach_hang`
--

INSERT INTO `khach_hang` (`id`, `ten_khach_hang`, `ngay_sinh`, `dia_chi`, `dien_thoai`, `cmnd`, `gioi_tinh`, `ngay_bat_dau`, `ngay_giao_dich_gan_nhat`, `id_khu_vuc`, `thong_tin_lien_quan`) VALUES
(1, 'Nguyễn Thị Bích Đồng', '1970-08-01', '1 Hàm Nghi', '123456789', '987654321', 1, '2016-08-01', '2016-08-02', 1, 'khách hàng vip'),
(2, 'Nguyễn Thị Bích Diệp', '1970-08-01', '1 Hàm Nghi', '123456789', '987654321', 1, '2016-08-01', '2016-08-02', 1, 'khách hàng vip'),
(3, 'Nguyễn Thị Bích Thùy', '1970-08-01', '1 Hàm Nghi', '123456789', '987654321', 1, '2016-08-01', '2016-08-02', 1, 'khách hàng vip'),
(4, 'Nguyễn Thị Bích Hương', '1970-08-01', '1 Hàm Nghi', '123456789', '987654321', 1, '2016-08-01', '2016-08-02', 1, 'khách hàng vip'),
(5, 'Nguyễn Thị Bích Vân', '1970-08-01', '1 Hàm Nghi', '123456789', '987654321', 1, '2016-08-01', '2016-08-02', 1, 'khách hàng vip'),
(6, 'Nguyễn Thị Bích Lan', '1970-08-01', '1 Hàm Nghi', '123456789', '987654321', 1, '2016-08-01', '2016-08-02', 1, 'khách hàng vip'),
(7, 'Nguyễn Thị Bích Hường', '1970-08-01', '1 Hàm Nghi', '123456789', '987654321', 1, '2016-08-01', '2016-08-02', 1, 'khách hàng vip'),
(8, 'Nguyễn Thị Bích Hạnh', '1970-08-01', '1 Hàm Nghi', '123456789', '987654321', 1, '2016-08-01', '2016-08-02', 1, 'khách hàng vip'),
(9, 'Nguyễn Thị Bích Mạnh', '1970-08-01', '1 Hàm Nghi', '123456789', '987654321', 1, '2016-08-01', '2016-08-02', 1, 'khách hàng vip'),
(10, 'Nguyễn Thị Bích Lư', '1970-08-01', '1 Hàm Nghi', '123456789', '987654321', 1, '2016-08-01', '2016-08-02', 1, 'khách hàng vip'),
(11, 'Nguyễn Thị Bích Linh', '1970-08-01', '1 Hàm Nghi', '123456789', '987654321', 1, '2016-08-01', '2016-08-02', 1, 'khách hàng vip');

-- --------------------------------------------------------

--
-- Table structure for table `kho`
--

CREATE TABLE IF NOT EXISTS `kho` (
  `id` int(11) NOT NULL,
  `ten_kho` varchar(255) NOT NULL,
  `thong_tin_kho` varchar(255) NOT NULL,
  `id_nhan_vien_quan_ly` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kho`
--

INSERT INTO `kho` (`id`, `ten_kho`, `thong_tin_kho`, `id_nhan_vien_quan_ly`) VALUES
(1, 'Kho A', 'Nằm tại khu vực A', 1),
(2, 'Kho A', 'Nằm tại khu vực A', 1),
(3, 'Kho B', 'Nằm tại khu vực B', 1),
(4, 'Kho C', 'Nằm tại khu vực C', 1),
(5, 'Kho D', 'Nằm tại khu vực D', 1),
(6, 'Kho E', 'Nằm tại khu vực E', 1),
(7, 'Kho F', 'Nằm tại khu vực F', 1),
(8, 'Kho G', 'Nằm tại khu vực G', 1),
(9, 'Kho H', 'Nằm tại khu vực H', 1),
(10, 'Kho I', 'Nằm tại khu vực I', 1),
(11, 'Kho J', 'Nằm tại khu vực J', 1);

-- --------------------------------------------------------

--
-- Table structure for table `khu_vuc`
--

CREATE TABLE IF NOT EXISTS `khu_vuc` (
  `id` int(11) NOT NULL,
  `ten_khu_vuc` varchar(255) NOT NULL,
  `id_nguoi_quan_ly` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `khu_vuc`
--

INSERT INTO `khu_vuc` (`id`, `ten_khu_vuc`, `id_nguoi_quan_ly`) VALUES
(1, 'Quận 1', 1),
(2, 'Quận 2', 1),
(3, 'Quận 3', 1),
(4, 'Quận 4', 1),
(5, 'Quận 5', 1),
(6, 'Quận 6', 1),
(7, 'Quận 7', 1),
(8, 'Quận 8', 1),
(9, 'Quận 9', 1),
(10, 'Quận 10', 1),
(11, 'Quận 11', 1),
(12, 'Quận 12', 1),
(13, 'Quận Tân Bình', 1),
(14, 'Quận Tân Phú', 1),
(15, 'Quận Bình Thạnh', 1),
(16, 'Quận Phú Nhuận', 1),
(17, 'Quận Bình Tân', 1),
(18, 'Quận Thủ Đức', 1),
(19, 'Quận Gò Vấp', 1),
(20, 'Huyện Bình Chánh', 1),
(21, 'Huyện Củ Chi', 1),
(22, 'Huyện Hóc Môn', 1),
(23, 'Huyện Cần Giờ', 1),
(24, 'Huyện Nhà Bè', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lich_su_ban_hang`
--

CREATE TABLE IF NOT EXISTS `lich_su_ban_hang` (
  `id` int(11) NOT NULL,
  `id_hoa_don` int(11) NOT NULL,
  `id_hang_hoa` int(11) NOT NULL,
  `thao_tac` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lich_su_ban_hang`
--

INSERT INTO `lich_su_ban_hang` (`id`, `id_hoa_don`, `id_hang_hoa`, `thao_tac`) VALUES
(1, 1, 1, 'c'),
(2, 1, 1, 'u'),
(3, 2, 2, 'c'),
(4, 2, 2, 'u'),
(5, 3, 3, 'c'),
(6, 3, 3, 'u'),
(7, 4, 4, 'c'),
(8, 4, 4, 'u'),
(9, 5, 5, 'c'),
(10, 5, 5, 'u'),
(11, 6, 6, 'c'),
(12, 6, 6, 'u');

-- --------------------------------------------------------

--
-- Table structure for table `loai_hang_hoa`
--

CREATE TABLE IF NOT EXISTS `loai_hang_hoa` (
  `id` int(11) NOT NULL,
  `ten_loai_hang` varchar(255) NOT NULL,
  `don_vi_tinh` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loai_hang_hoa`
--

INSERT INTO `loai_hang_hoa` (`id`, `ten_loai_hang`, `don_vi_tinh`) VALUES
(1, 'Hàng Thành Phẩm', 'Cái'),
(2, 'Hàng Bán Thành Phẩm', 'Cái'),
(3, 'Hàng Thành Phẩm', 'Cái'),
(4, 'Hàng Bán Thành Phẩm', 'Cái'),
(5, 'Hàng Nguyên Liệu', 'Thùng'),
(6, 'Hàng Bán Nguyên Liệu', 'Thùng'),
(7, 'Hàng Trung Gian', 'Thùng'),
(8, 'Hàng Bán Trung Gian', 'Thùng'),
(9, 'Hàng Chính', 'Tấn'),
(10, 'Hàng Bán Chính', 'Tấn'),
(11, 'Hàng Phụ', 'Thùng'),
(12, 'Hàng Bán Phụ', 'Thùng'),
(13, 'Hàng Ký Gửi 1', 'Cái'),
(14, 'Hàng Ký Gửi 2', 'Thùng'),
(15, 'Hàng Ký Gửi 3', 'Tấn');

-- --------------------------------------------------------

--
-- Table structure for table `nguoi_dung`
--

CREATE TABLE IF NOT EXISTS `nguoi_dung` (
  `id` int(11) NOT NULL,
  `tai_khoan` varchar(255) NOT NULL,
  `pass_word` varchar(255) NOT NULL,
  `ngay_tao_tai_khoan` date NOT NULL,
  `ngay_truy_cap_gan_nhat` date NOT NULL,
  `id_phan_quyen` int(11) NOT NULL,
  `id_nhan_vien` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`id`, `tai_khoan`, `pass_word`, `ngay_tao_tai_khoan`, `ngay_truy_cap_gan_nhat`, `id_phan_quyen`, `id_nhan_vien`) VALUES
(1, 'nva', '123456', '2016-08-01', '2016-08-02', 1, 1),
(2, 'nvb', '123456', '2016-08-02', '2016-08-03', 1, 2),
(3, 'nva', '123456', '2016-08-01', '2016-08-02', 1, 1),
(4, 'nvb', '123456', '2016-08-02', '2016-08-03', 1, 2),
(5, 'nvc', '123456', '2016-08-03', '2016-08-04', 1, 3),
(6, 'nvd', '123456', '2016-08-04', '2016-08-05', 1, 4),
(7, 'nve', '123456', '2016-08-05', '2016-08-06', 1, 5),
(8, 'nvf', '123456', '2016-08-06', '2016-08-07', 1, 6),
(9, 'nvg', '123456', '2016-08-07', '2016-08-08', 1, 7),
(10, 'nvh', '123456', '2016-08-08', '2016-08-09', 1, 8),
(11, 'nvi', '123456', '2016-08-09', '2016-08-10', 1, 9),
(12, 'nvj', '123456', '2016-08-10', '2016-08-11', 1, 10),
(13, 'nvk', '123456', '2016-08-11', '2016-08-12', 1, 11),
(14, 'nvl', '123456', '2016-08-12', '2016-08-13', 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `nhan_vien`
--

CREATE TABLE IF NOT EXISTS `nhan_vien` (
  `id` int(11) NOT NULL,
  `ten_day_du` varchar(255) NOT NULL,
  `ngay_sinh` date NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `dien_thoai` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gioi_tinh` int(11) NOT NULL,
  `ngay_bat_dau` date NOT NULL,
  `loai_nhan_vien` int(11) NOT NULL,
  `id_bo_phan` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhan_vien`
--

INSERT INTO `nhan_vien` (`id`, `ten_day_du`, `ngay_sinh`, `dia_chi`, `dien_thoai`, `email`, `gioi_tinh`, `ngay_bat_dau`, `loai_nhan_vien`, `id_bo_phan`) VALUES
(1, 'Nguyễn Văn A', '1980-01-01', '01 Nguyễn Văn Cừ', '0909000001', 'nva@quanlybanhang.com', 1, '2016-08-01', 1, 1),
(2, 'Nguyễn Văn B', '1980-01-02', '02 Nguyễn Văn Cừ', '0909000002', 'nvb@quanlybanhang.com', 2, '2016-08-02', 2, 2),
(3, 'Nguyễn Văn C', '1980-01-03', '03 Nguyễn Văn Cừ', '0909000003', 'nvb@quanlybanhang.com', 1, '2016-08-03', 1, 3),
(4, 'Nguyễn Văn D', '1980-01-04', '04 Nguyễn Văn Cừ', '0909000004', 'nvd@quanlybanhang.com', 1, '2016-08-04', 4, 4),
(5, 'Nguyễn Văn E', '1980-01-05', '05 Nguyễn Văn Cừ', '0909000005', 'nve@quanlybanhang.com', 1, '2016-08-05', 5, 5),
(6, 'Nguyễn Văn F', '1980-01-06', '06 Nguyễn Văn Cừ', '0909000006', 'nvf@quanlybanhang.com', 1, '2016-08-06', 6, 6),
(7, 'Nguyễn Văn G', '1980-01-07', '07 Nguyễn Văn Cừ', '0909000007', 'nvg@quanlybanhang.com', 1, '2016-08-04', 7, 7),
(8, 'Nguyễn Văn H', '1980-01-08', '08 Nguyễn Văn Cừ', '0909000008', 'nvh@quanlybanhang.com', 1, '2016-08-05', 8, 8),
(9, 'Nguyễn Văn I', '1980-01-09', '09 Nguyễn Văn Cừ', '0909000009', 'nvi@quanlybanhang.com', 1, '2016-08-06', 9, 9),
(10, 'Nguyễn Văn J', '1980-01-10', '10 Nguyễn Văn Cừ', '0909000010', 'nvj@quanlybanhang.com', 1, '2016-08-10', 10, 10),
(11, 'Nguyễn Văn K', '1980-01-11', '11 Nguyễn Văn Cừ', '0909000011', 'nvk@quanlybanhang.com', 2, '2016-08-11', 5, 5),
(12, 'Nguyễn Văn L', '1980-01-12', '12 Nguyễn Văn Cừ', '0909000012', 'nvl@quanlybanhang.com', 1, '2016-08-12', 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `nhat_ky_he_thong`
--

CREATE TABLE IF NOT EXISTS `nhat_ky_he_thong` (
  `id` int(11) NOT NULL,
  `id_nguoi_dung` int(11) NOT NULL,
  `thao_tac` varchar(255) NOT NULL,
  `chi_tiet` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhat_ky_he_thong`
--

INSERT INTO `nhat_ky_he_thong` (`id`, `id_nguoi_dung`, `thao_tac`, `chi_tiet`) VALUES
(1, 1, 'c', 'create nhan vien 2'),
(2, 1, 'r', 'create nhan vien 2'),
(3, 1, 'u', 'create nhan vien 2'),
(4, 1, 'c', 'create nhan vien 3'),
(5, 1, 'c', 'create nhan vien 4'),
(6, 1, 'c', 'create nhan vien 5'),
(7, 1, 'c', 'create nhan vien 6'),
(8, 1, 'c', 'create nhan vien 7'),
(9, 1, 'c', 'create nhan vien 8'),
(10, 1, 'c', 'create nhan vien 9'),
(11, 1, 'c', 'create nhan vien 10'),
(12, 1, 'c', 'create nhan vien11');

-- --------------------------------------------------------

--
-- Table structure for table `nha_phan_phoi`
--

CREATE TABLE IF NOT EXISTS `nha_phan_phoi` (
  `id` int(11) NOT NULL,
  `ten_nha_phan_phoi` varchar(255) NOT NULL,
  `ngay_ky_hop_dong` date NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `dien_thoai` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nguoi_dai_dien` varchar(255) NOT NULL,
  `ngay_giao_dich_gan_nhat` date NOT NULL,
  `id_khu_vuc` int(11) NOT NULL,
  `chiet_khau` int(11) NOT NULL,
  `thong_tin_lien_quan` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nha_phan_phoi`
--

INSERT INTO `nha_phan_phoi` (`id`, `ten_nha_phan_phoi`, `ngay_ky_hop_dong`, `dia_chi`, `dien_thoai`, `email`, `nguoi_dai_dien`, `ngay_giao_dich_gan_nhat`, `id_khu_vuc`, `chiet_khau`, `thong_tin_lien_quan`) VALUES
(1, 'Nguyên Hồng', '2016-06-01', '11 C12 Tân Bình', '45456969', 'nguyenhong@yahoo.com', 'Nguyễn Nguyên Hồng', '2016-08-01', 1, 12, 'a'),
(2, 'Nguyên Hồng', '2016-06-01', '11 C12 Tân Bình', '45456969', 'nguyenhong@yahoo.com', 'Nguyễn Nguyên Hồng', '2016-08-01', 1, 12, 'a'),
(3, 'Nguyên Dương', '2016-06-01', '11 C12 Tân Bình', '45456969', 'nguyenduong@yahoo.com', 'Nguyễn Nguyên Dương', '2016-08-01', 1, 12, 'a'),
(4, 'Nguyên 1', '2016-06-01', '11 C12 Tân Bình', '45456969', 'nguyenhong@yahoo.com', 'Nguyễn Nguyên Hồng', '2016-08-01', 1, 12, 'a'),
(5, 'Nguyên 2', '2016-06-01', '11 C12 Tân Bình', '45456969', 'nguyenhong@yahoo.com', 'Nguyễn Nguyên Hồng', '2016-08-01', 1, 12, 'a'),
(6, 'Nguyên 3', '2016-06-01', '11 C12 Tân Bình', '45456969', 'nguyenhong@yahoo.com', 'Nguyễn Nguyên Hồng', '2016-08-01', 1, 12, 'a'),
(7, 'Nguyên 4', '2016-06-01', '11 C12 Tân Bình', '45456969', 'nguyenhong@yahoo.com', 'Nguyễn Nguyên Hồng', '2016-08-01', 1, 12, 'a'),
(8, 'Nguyên 5', '2016-06-01', '11 C12 Tân Bình', '45456969', 'nguyenhong@yahoo.com', 'Nguyễn Nguyên Hồng', '2016-08-01', 1, 12, 'a'),
(9, 'Nguyên 6', '2016-06-01', '11 C12 Tân Bình', '45456969', 'nguyenhong@yahoo.com', 'Nguyễn Nguyên Hồng', '2016-08-01', 1, 12, 'a'),
(10, 'Nguyên 7', '2016-06-01', '11 C12 Tân Bình', '45456969', 'nguyenhong@yahoo.com', 'Nguyễn Nguyên Hồng', '2016-08-01', 1, 12, 'a'),
(11, 'Nguyên 8', '2016-06-01', '11 C12 Tân Bình', '45456969', 'nguyenhong@yahoo.com', 'Nguyễn Nguyên Hồng', '2016-08-01', 1, 12, 'a');

-- --------------------------------------------------------

--
-- Table structure for table `nhom_hang`
--

CREATE TABLE IF NOT EXISTS `nhom_hang` (
  `id` int(11) NOT NULL,
  `ten_nhom_hang` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhom_hang`
--

INSERT INTO `nhom_hang` (`id`, `ten_nhom_hang`) VALUES
(1, 'Máy Vi Tính'),
(2, 'Laptop'),
(3, 'Máy Vi Tính'),
(4, 'Laptop'),
(5, 'Tủ Lạnh'),
(6, 'Tivi'),
(7, 'Máy Lạnh'),
(8, 'Máy Sưởi'),
(9, 'Máy Sấy Quần Áo'),
(10, 'Máy Sấy tóc'),
(11, 'Máy Nước Nóng'),
(12, 'Máy Nóng Lạnh'),
(13, 'Bóng Đèn'),
(14, 'Dàn Karaoke'),
(15, 'Đầu Thu KTS'),
(16, 'Quạt Bàn'),
(17, 'Loa'),
(18, 'Âm Li');

-- --------------------------------------------------------

--
-- Table structure for table `phan_quyen`
--

CREATE TABLE IF NOT EXISTS `phan_quyen` (
  `id` int(11) NOT NULL,
  `dien_giai` varchar(255) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `he_thong` varchar(255) NOT NULL,
  `bao_mat` varchar(255) NOT NULL,
  `du_lieu` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phan_quyen`
--

INSERT INTO `phan_quyen` (`id`, `dien_giai`, `ten`, `he_thong`, `bao_mat`, `du_lieu`) VALUES
(1, 'Giám đốc', 'Giám đốc', '11111111', '111111111111111111111111', '111111111111111111111111'),
(2, 'Quản lý', 'Quản lý', '11111111', '111111111111111111111111', '111111111111111111111111'),
(3, 'Giám đốc', 'Giám đốc', '11111111', '111111111111111111111111', '111111111111111111111111'),
(4, 'Quản lý', 'Quản lý', '11111111', '111111111111111111111111', '111111111111111111111111'),
(5, 'Bán Hàng', 'Bán Hàng', '11111111', '111111111111111111111111', '111111111111111111111111'),
(6, 'Kinh Doanh', 'Kinh Doanh', '11111111', '111111111111111111111111', '111111111111111111111111'),
(7, 'Marketing', 'Marketing', '11111111', '111111111111111111111111', '111111111111111111111111'),
(8, 'Giao Hàng', 'Giao Hàng', '11111111', '111111111111111111111111', '111111111111111111111111'),
(9, 'Bảo Hành', 'Bảo Hành', '11111111', '111111111111111111111111', '111111111111111111111111'),
(10, 'Chăm Sóc Khách Hàng', 'Chăm Sóc Khách Hàng', '11111111', '111111111111111111111111', '111111111111111111111111'),
(11, 'Bán Lẻ', 'Bán Lẻ', '11111111', '111111111111111111111111', '111111111111111111111111'),
(12, 'Thu Ngân', 'Thu Ngân', '11111111', '111111111111111111111111', '111111111111111111111111');

-- --------------------------------------------------------

--
-- Table structure for table `thong_tin_phan_mem`
--

CREATE TABLE IF NOT EXISTS `thong_tin_phan_mem` (
  `id` int(11) NOT NULL,
  `ten_don_vi` varchar(255) NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `dien_thoai` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `linh_vuc` varchar(255) NOT NULL,
  `ma_so_thue` varchar(255) NOT NULL,
  `gpkd` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thong_tin_phan_mem`
--

INSERT INTO `thong_tin_phan_mem` (`id`, `ten_don_vi`, `dia_chi`, `dien_thoai`, `fax`, `website`, `email`, `linh_vuc`, `ma_so_thue`, `gpkd`) VALUES
(1, 'TTMS Sài Gòn Nguyễn Kim', '63 Trần Hưng Đạo', '1234546', '2454546', 'nguyenkim.vn', 'admin@nguyenkim.vn', 'Bán Lẻ', '12121212', '33693369'),
(2, 'TTMS Sài Gòn Nguyễn Kim 10', '128 Vĩnh Viễn', '1234546', '2454546', 'nguyenkim.vn', 'admin@nguyenkim.vn', 'Bán Lẻ', '12121212', '33693369'),
(3, 'TTMS Sài Gòn Nguyễn Kim Q9', '11 Xa Lộ Hà Nội', '1234546', '2454546', 'nguyenkim.vn', 'admin@nguyenkim.vn', 'Bán Lẻ', '12121212', '33693369'),
(4, 'TTMS Sài Gòn Nguyễn Kim Q8', '90 Phạm Hùng', '1234546', '2454546', 'nguyenkim.vn', 'admin@nguyenkim.vn', 'Bán Lẻ', '12121212', '33693369'),
(5, 'TTMS Sài Gòn Nguyễn Kim Q7', '633 Nguyễn Văn Linh', '1234546', '2454546', 'nguyenkim.vn', 'admin@nguyenkim.vn', 'Bán Lẻ', '12121212', '33693369'),
(6, 'TTMS Sài Gòn Nguyễn Kim Q6', '63 Hậu Giang', '1234546', '2454546', 'nguyenkim.vn', 'admin@nguyenkim.vn', 'Bán Lẻ', '12121212', '33693369'),
(7, 'TTMS Sài Gòn Nguyễn Kim Q5', '13 Lê Quang Sung', '1234546', '2454546', 'nguyenkim.vn', 'admin@nguyenkim.vn', 'Bán Lẻ', '12121212', '33693369'),
(8, 'TTMS Sài Gòn Nguyễn Kim Q4', '11 Nguyễn Tất Thành', '1234546', '2454546', 'nguyenkim.vn', 'admin@nguyenkim.vn', 'Bán Lẻ', '12121212', '33693369'),
(9, 'TTMS Sài Gòn Nguyễn Kim Q3', '11 Võ Văn Tần', '1234546', '2454546', 'nguyenkim.vn', 'admin@nguyenkim.vn', 'Bán Lẻ', '12121212', '33693369'),
(10, 'TTMS Sài Gòn Nguyễn Kim Q2', '63 Trần Não', '1234546', '2454546', 'nguyenkim.vn', 'admin@nguyenkim.vn', 'Bán Lẻ', '12121212', '33693369'),
(11, 'TTMS Sài Gòn Nguyễn Kim Tân Bình', '79 Lý thường kiệt', '1234546', '2454546', 'nguyenkim.vn', 'admin@nguyenkim.vn', 'Bán Lẻ', '12121212', '33693369');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bo_phan`
--
ALTER TABLE `bo_phan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kho`
--
ALTER TABLE `kho`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khu_vuc`
--
ALTER TABLE `khu_vuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lich_su_ban_hang`
--
ALTER TABLE `lich_su_ban_hang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loai_hang_hoa`
--
ALTER TABLE `loai_hang_hoa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhat_ky_he_thong`
--
ALTER TABLE `nhat_ky_he_thong`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nha_phan_phoi`
--
ALTER TABLE `nha_phan_phoi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhom_hang`
--
ALTER TABLE `nhom_hang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phan_quyen`
--
ALTER TABLE `phan_quyen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thong_tin_phan_mem`
--
ALTER TABLE `thong_tin_phan_mem`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bo_phan`
--
ALTER TABLE `bo_phan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `hang_hoa`
--
ALTER TABLE `hang_hoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `kho`
--
ALTER TABLE `kho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `khu_vuc`
--
ALTER TABLE `khu_vuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `lich_su_ban_hang`
--
ALTER TABLE `lich_su_ban_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `loai_hang_hoa`
--
ALTER TABLE `loai_hang_hoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `nhan_vien`
--
ALTER TABLE `nhan_vien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `nhat_ky_he_thong`
--
ALTER TABLE `nhat_ky_he_thong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `nha_phan_phoi`
--
ALTER TABLE `nha_phan_phoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `nhom_hang`
--
ALTER TABLE `nhom_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `phan_quyen`
--
ALTER TABLE `phan_quyen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `thong_tin_phan_mem`
--
ALTER TABLE `thong_tin_phan_mem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
