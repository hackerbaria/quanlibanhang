-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2016 at 07:12 PM
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
-- Table structure for table `bophan`
--

CREATE TABLE `bophan` (
  `mabp` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tenbp` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ghichu` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` bit(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bophan`
--

INSERT INTO `bophan` (`mabp`, `tenbp`, `ghichu`, `active`) VALUES
('1', 'Phong Kinh Doanh', 'Phong to chuc kinh doanh va ke hoach', b'01'),
('10', 'Kho', 'Luu tru, chua hang, nhap hang, xuat hang', b'01'),
('2', 'Phong To Chuc', 'Phong to chuc hanh chanh nhan su', b'01'),
('3', 'Phong ke toan', 'tinh toan tien luong, thuong, phuc loi', b'01'),
('4', 'Phong Bao Ve', 'To chuc vao ve, phong chay chua chay', b'01'),
('5', 'Phong Ban Hang', 'Gioi thieu, tu van ban hang', b'01'),
('6', 'Phong Hau Mai', 'Cham soc khach hang', b'01'),
('7', 'Phong TMDT', 'Kinh doanh qua mang, website', b'01'),
('8', 'Phong Giam Doc', 'Quan ly toan bo hoat dong', b'01'),
('9', 'Phong Vat Tu', 'Mua sam trang thiet bi', b'01');

-- --------------------------------------------------------

--
-- Table structure for table `chitiet_chuyenkho`
--

CREATE TABLE `chitiet_chuyenkho` (
  `maphieuchuyen` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mahang` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) DEFAULT NULL,
  `dongia` float DEFAULT NULL,
  `tongtien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitiet_phieunhap`
--

CREATE TABLE `chitiet_phieunhap` (
  `maphieunhap` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mahang` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) DEFAULT NULL,
  `dongia` float DEFAULT NULL,
  `thanhtien` float DEFAULT NULL,
  `ghichu` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitiet_phieuxuat`
--

CREATE TABLE `chitiet_phieuxuat` (
  `maphieuxuat` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mahang` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) DEFAULT NULL,
  `dongia` float DEFAULT NULL,
  `thanhtien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chuyenkho`
--

CREATE TABLE `chuyenkho` (
  `maphieuchuyen` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ngaychuyen` datetime DEFAULT NULL,
  `kho_xuat` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kho_nhap` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manv` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donvitinh`
--

CREATE TABLE `donvitinh` (
  `madv` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tendv` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` bit(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donvitinh`
--

INSERT INTO `donvitinh` (`madv`, `tendv`, `active`) VALUES
('1', 'cai', b'01'),
('10', 'ounce', b'01'),
('11', 'chiec', b'01'),
('12', 'bo', b'01'),
('13', 'hop', b'01'),
('14', 'step', b'01'),
('2', 'thung', b'01'),
('3', 'm', b'01'),
('4', 'kg', b'01'),
('5', 'tan', b'01'),
('6', 'bich', b'01'),
('7', 'sp', b'01'),
('8', 'galol', b'01'),
('9', 'lit', b'01');

-- --------------------------------------------------------

--
-- Table structure for table `groupuser`
--

CREATE TABLE `groupuser` (
  `group_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Group_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` bit(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `groupuser`
--

INSERT INTO `groupuser` (`group_id`, `Group_name`, `mota`, `active`) VALUES
('1', 'Quan Ly', 'Quan ly nhan vien, quan ly hoa don', b'01'),
('10', 'Khach', 'Khach moi den voi cong ty', b'01'),
('2', 'Order', 'Tiep nhan yeu cau tu khach hang', b'01'),
('3', 'Thu ngan', 'Lap hoa don, thu tien, tinh toan so sach ke t', b'01'),
('4', 'Bao ve', 'Tiep nhan ca truc, ban giao so luong hang hoa', b'01'),
('5', 'Kho', 'Lap hoa don, nhap hang, xuat hang', b'01'),
('6', 'Nhan vien ban hang', 'Lap phieu ghi thong tin, bo sung thong tin kh', b'01'),
('7', 'Giao hang', 'Nhan hoa don giao hang, giao cho khach', b'01'),
('8', 'Phong kinh doanh', 'Tiep nhan hoa don, xu ly hoa don, dua ke hoac', b'01'),
('9', 'Doi tac', 'Dai dien cua phia doi tac tham gia khao sat t', b'01');

-- --------------------------------------------------------

--
-- Table structure for table `hanghoa`
--

CREATE TABLE `hanghoa` (
  `mahanghoa` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tenhanghoa` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `madv` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `giamua` float DEFAULT NULL,
  `giaban` float DEFAULT NULL,
  `toithieu` int(11) DEFAULT NULL,
  `manhomhang` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `khomacdinh` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` bit(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hanghoa`
--

INSERT INTO `hanghoa` (`mahanghoa`, `tenhanghoa`, `madv`, `giamua`, `giaban`, `toithieu`, `manhomhang`, `khomacdinh`, `active`) VALUES
('01', 'may lanh panasonic', '1', 8900000, 9800000, 9000000, 'a001', 'null', b'01'),
('02', 'may lanh LG', '1', 3882000, 4568900, 3252556, 'a002', 'null', b'01'),
('03', 'Ban Chai', '1', 3751240, 6425480, 5453353, 'a003', 'null', b'01'),
('04', 'Camera a', '1', 5881220, 7575750, 3231331, 'a004', 'null', b'01'),
('05', 'Xenon', '1', 4555860, 5545260, 3545636, 'a005', 'null', b'01'),
('06', 'Ipad 2', '1', 5433440, 6454230, 4342423, 'a006', 'null', b'01'),
('07', 'Dell Agffhvv', '1', 4234240, 6545320, 2234325, 'a007', 'null', b'01'),
('08', 'Pana Sony 2861', '1', 8900000, 9800000, 9000000, 'a008', 'null', b'01'),
('09', 'Loa Denon', '1', 8900000, 9800000, 9000000, 'a009', 'null', b'01'),
('10', 'X 2233', '1', 8900000, 9800000, 9000000, 'a009', 'null', b'01'),
('11', 'Sac Hien Adww', '1', 8900000, 9800000, 9000000, 'a011', 'null', b'01'),
('12', 'Ben Dien Tu 3232', '1', 8900000, 9800000, 9000000, 'a012', 'null', b'01'),
('13', 'Lo Nuong 1213', '1', 8900000, 9800000, 9000000, 'a013', 'null', b'01'),
('14', 'May Say Ahjhj', '1', 8900000, 9800000, 9000000, 'a014', 'null', b'01'),
('15', 'Tivi A22e', '1', 8900000, 9800000, 9000000, 'a015', 'null', b'01'),
('16', 'Tivi Atetrtret', '1', 8900000, 9800000, 9000000, 'a016', 'null', b'01'),
('17', 'Tivi Aewrewr', '1', 8900000, 9800000, 9000000, 'a017', 'null', b'01'),
('18', 'Tu Lanh Elect ddef', '1', 8900000, 9800000, 9000000, 'a018', 'null', b'01'),
('19', 'Tu Lanh Elect d12424', '1', 8900000, 9800000, 9000000, 'a019', 'null', b'01'),
('20', 'Tu Lanh Elect d24636', '1', 8900000, 9800000, 9000000, 'a020', 'null', b'01'),
('21', 'Tu Lanh Elect d543663', '1', 8900000, 9800000, 9000000, 'a021', 'null', b'01'),
('22', 'Tu Lanh Elect d42442', '1', 8900000, 9800000, 9000000, 'a022', 'null', b'01'),
('23', 'Bo Dung Cu Nha Bep dwadada 222', '1', 8900000, 9800000, 9000000, 'a023', 'null', b'01'),
('24', 'Bo Dung Cu Nha Bep daw2434', '1', 8900000, 9800000, 9000000, 'a024', 'null', b'01'),
('25', 'Bo Dung Cu Nha Bep da54423', '1', 8900000, 9800000, 9000000, 'a025', 'null', b'01'),
('26', 'Bo Dung Cu Nha Bep dad5563', '1', 8900000, 9800000, 9000000, 'a026', 'null', b'01'),
('27', 'Bo Dung Cu Nha Bep fe4545', '1', 8900000, 9800000, 9000000, 'a021', 'null', b'01'),
('28', 'May Say Toc A12', '1', 8900000, 9800000, 9000000, 'a022', 'null', b'01'),
('29', 'May Say Toc ep thang', '1', 8900000, 9800000, 9000000, 'a021', 'null', b'01'),
('30', 'May Say Toc TQ', '1', 8900000, 9800000, 9000000, 'a022', 'null', b'01'),
('31', 'Tivi Aaww', '1', 8900000, 9800000, 9000000, 'a021', 'null', b'01'),
('32', 'Tivi A3', '1', 8900000, 9800000, 9000000, 'a022', 'null', b'01'),
('33', 'Tivi A Noi Dia', '1', 8900000, 9800000, 9000000, 'a023', 'null', b'01'),
('34', 'Tivi A33525', '1', 8900000, 9800000, 9000000, 'a024', 'null', b'01'),
('sefs001', 'may lanh panasonic', '1', 8900000, 9800000, 9000000, 'a001', 'null', b'01');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `makh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tenkh` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gioitinh` bit(2) DEFAULT NULL,
  `diachi` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dienthoai` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nguoilienhe` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stk` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `makv` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` bit(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`makh`, `tenkh`, `gioitinh`, `diachi`, `dienthoai`, `nguoilienhe`, `stk`, `makv`, `active`) VALUES
('001', 'Nguyen Van Minh', b'01', '12 Bau Cat', '0121252598', 'Anh Hung', '40402525369', '1', b'01'),
('002', 'Nguyen Tan Long', b'01', '12/25 Phu Bien', '021255852', 'Anh Hung', '40402525369', '1', b'01'),
('003', 'Nguyen Bao Luan', b'01', '65/35 Thap Muoi', '054682452452', 'Anh Hung', '40402525369', '1', b'01'),
('004', 'Nguyen Thi Liem', b'01', '68/25 Dong Dien', '0268428152', 'Anh Hung', '40402525369', '1', b'01'),
('005', 'Nguyen Duy Phan', b'01', '32/45 Dai Loi', '3453545343', 'Anh Hung', '40402525369', '1', b'01'),
('006', 'Nguyen Tha Khoa', b'01', '12 Nguyen Thi Mai', '5435435335', 'Anh Hung', '40402525369', '1', b'01'),
('007', 'Nguyen Tuy Truc', b'01', ' 66/8 Nguyen Luu', '535131535313', 'Anh Hung', '40402525369', '1', b'01'),
('008', 'Nguyen Lau Minh', b'01', '68/25 Nguyen Hue', '1313351313', 'Anh Hung', '40402525369', '1', b'01'),
('009', 'Nguyen Anh Nghi', b'01', '232 Nguyen Hai', '315313531315351', 'Anh Hung', '40402525369', '1', b'01'),
('010', 'Nguyen Hao Dung', b'01', '23 Nguyen Thuyen', '131.1351.1.511', 'Anh Hung', '40402525369', '1', b'01'),
('011', 'Nguyen Hiu Dung', b'01', '3 Nguyen Thi Sach ', '2528.21.1.213', 'Anh Hung', '40402525369', '1', b'01'),
('012', 'Nguyen Lan Hoan', b'01', '655 Nguyen Sung Sung', '48464686', 'Anh Hung', '40402525369', '1', b'01'),
('013', 'Nguyen Bao Cung', b'01', '323 Nguyen Quang Tung', '28252523', 'Anh Hung', '40402525369', '1', b'01'),
('014', 'Nguyen Van Liem', b'01', '767 Nguyen Hoan Com', '2734523244', 'Anh Hung', '40402525369', '1', b'01'),
('015', 'Nguyen Van Minh', b'01', '43 Nguyen Lan Ong', '343425434342', 'Anh Hung', '40402525369', '1', b'01'),
('016', 'Nguyen Thi Toan', b'01', '65 Nguyen Van Minh', '343433434342', 'Anh Hung', '40402525369', '1', b'01'),
('017', 'Nguyen Van Tuan', b'01', '23/23 Nguyen Cung', '.4.543134524', 'Anh Hung', '40402525369', '1', b'01'),
('018', 'Nguyen Thi Xuan', b'01', '36/96 Nguyen Hue', '53463645764', 'Anh Hung', '40402525369', '1', b'01'),
('019', 'Nguyen Van Phuc', b'01', '45/58 Nguyen Tai', '6456386754', 'Anh Hung', '40402525369', '1', b'01'),
('020', 'Nguyen Duy Toan', b'01', '99/25 Nguyen Toan Canh', '6546554536', 'Anh Hung', '40402525369', '1', b'01'),
('021', 'Nguyen Van Phuc', b'01', '25/12 Nguyen Phuc Chu', '65656455324354', 'Anh Hung', '40402525369', '1', b'01'),
('022', 'Nguyen Tan Hoan', b'01', '36/35 Nguyen Canh Thinh', '543524352452543', 'Anh Hung', '40402525369', '1', b'01'),
('023', 'Nguyen Van Truc', b'01', '85/58 Nguyen Chua', '5435324767', 'Anh Hung', '40402525369', '1', b'01'),
('024', 'Nguyen Vun Xoan', b'01', '212/52 Nguyen Bong', '5347765266', 'Anh Hung', '40402525369', '1', b'01'),
('025', 'Nguyen Van Xuan', b'01', '11 Nguyen Thac', '765736543647', 'Anh Hung', '40402525369', '1', b'01'),
('026', 'Nguyen Vua Loan', b'01', '31/12 Nguyen Lu', '346267437456', 'Anh Hung', '40402525369', '1', b'01'),
('027', 'Nguyen Van Minh', b'01', '12 Bau Cat', '0121252598', 'Anh Hung', '40402525369', '1', b'01');

-- --------------------------------------------------------

--
-- Table structure for table `kho`
--

CREATE TABLE `kho` (
  `makho` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tenkho` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lienhe` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dienthoai` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` bit(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kho`
--

INSERT INTO `kho` (`makho`, `tenkho`, `lienhe`, `diachi`, `dienthoai`, `active`) VALUES
('hcm1', 'Quan 1', 'Anh Hung', '123 Nguyen Van Dau', '0921653823', b'01'),
('hcm10', 'Quan 10', 'Anh Thuan', '63 Ly Thuong Kiet', '0921685245', b'01'),
('hcm11', 'Quan 11', 'Anh Thinh', '33 Minh Phung', '0925343455', b'01'),
('hcm12', 'Quan 12', 'Anh Thinh', '1221/25 QL1A', '0987633135', b'01'),
('hcm13', 'Quan Tan Binh', 'Anh Truc', '77 Bau Cat 7', '0955245677', b'01'),
('hcm14', 'Quan Binh Chanh', 'Anh Tu', '325 QL 50', '0928824252', b'01'),
('hcm15', 'Quan Thu Duc', 'Anh Duy', 'KCN Song Than', '0914525682', b'01'),
('hcm16', 'Quan Binh Thanh', 'Anh Hoang', '99/25 Nguyen Xi', '0914552582', b'01'),
('hcm17', 'Quan Phu Nhuan', 'Anh La', '123 Say Sao', '0944685223', b'01'),
('hcm18', 'Quan Tan Phu', 'Anh Luu', '22 Le Khoi', '0988548525', b'01'),
('hcm19', 'Quan Binh Tan', 'Anh Sen', '35/25 Binh Tri Dong', '0987554225', b'01'),
('hcm2', 'Quan 2', 'Anh Huy', 'A30 Tran Nao', '0921643234', b'01'),
('hcm20', 'Quan Nha Be', 'Anh Veo', '1142/255 Huynh Tan Phat', '0975455825', b'01'),
('hcm3', 'Quan 3', 'Anh Kieu', '33 Vo Van Tan', '0921654323', b'01'),
('hcm4', 'Quan 4', 'Anh Nhan', '66/88 Doan Van Bo', '0967756823', b'01'),
('hcm5', 'Quan 5', 'Anh Lan', '66 Tran hung Dao', '0921767523', b'01'),
('hcm6', 'Quan 6', 'Anh Liem', '6142/25 Thap Muoi', '0928678868', b'01'),
('hcm7', 'Quan 7', 'Anh Minh', '69 Nguyen Van Linh', '0921654562', b'01'),
('hcm8', 'Quan 8', 'Anh Quang', '996 QL 50', '0934563243', b'01'),
('hcm9', 'Quan 9', 'Anh Ngoc', '32 Tan Hung', '0998162518', b'01');

-- --------------------------------------------------------

--
-- Table structure for table `khuvuc`
--

CREATE TABLE `khuvuc` (
  `makv` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tenkv` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ghichu` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` bit(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khuvuc`
--

INSERT INTO `khuvuc` (`makv`, `tenkv`, `ghichu`, `active`) VALUES
('1', 'Khu Vuc 1', 'Noi Thanh Thanh Pho Ho Chi Minh', b'01'),
('2', 'Khu Vuc 2', 'Ngoai Thanh Thanh Pho Ho Chi Minh', b'01'),
('3', 'Khu Vuc 3', 'Mien Dong Nam Bo', b'01'),
('4', 'Khu Vuc 4', 'Mien Tay Nam Bo', b'01'),
('5', 'Khu Vuc 5', 'Tay Nguye', b'01'),
('6', 'Khu Vuc 6', 'Duyen Hai Nam Trung Bo', b'01'),
('7', 'Khu Vuc 7', 'Bac Trung Bo', b'01'),
('8', 'Khu Vuc 8', 'Ha Noi', b'01'),
('9', 'Khu Vuc 9', 'Bac Bo', b'01');

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `mancc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tenncc` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dienthoai` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `makv` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` bit(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`mancc`, `tenncc`, `diachi`, `dienthoai`, `makv`, `active`) VALUES
('ada', 'ada Viet Nam', '12 NCH Song tahn', '21335678', '1', b'01'),
('Ajin', 'Ajin Viet Nam', '12 NCH Song tahn', '21335678', '1', b'01'),
('Ajin1', 'Ajin1 Viet Nam', '12 NCH Song tahn', '21335678', '1', b'01'),
('Choenlong', 'Choenlong Viet Nam', '12 NCH Song tahn', '21335678', '1', b'01'),
('Isuung', 'Isuung Viet Nam', '12 NCH Song tahn', '21335678', '1', b'01'),
('LG', 'LG Viet Nam', '12 NCH Song tahn', '21335678', '1', b'01'),
('Luyutwn', 'Luyutwn Viet Nam', '12 NCH Song tahn', '21335678', '1', b'01'),
('Nguyen', 'Nguyen Viet Nam', '12 NCH Song tahn', '21335678', '1', b'01'),
('Pana1', 'Pana Viet Nam', '12 NCH Song tahn', '21335678', '1', b'01'),
('Pana2', 'Pana Dien May Viet Nam', '12 NCH Song tahn', '21335678', '1', b'01'),
('PhanThu1', 'Phan Thu Viet Nam', '12 NCH Song tahn', '21335678', '1', b'01'),
('PhanThu11', 'Phan Thu Viet Nam', '12 NCH Song tahn', '21335678', '1', b'01'),
('Sam Sung', 'Sam Sung Viet Nam', '12e Phu Tho', '1265458585654', '2', b'01'),
('Sony', 'Sony Viet Nam', '12 NCH Song tahn', '21335678', '1', b'01');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `manv` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tennv` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dienthoai` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mabp` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vitri` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gioitinh` bit(2) DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngaysinh` datetime DEFAULT NULL,
  `active` bit(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`manv`, `tennv`, `diachi`, `dienthoai`, `mabp`, `vitri`, `gioitinh`, `email`, `ngaysinh`, `active`) VALUES
('001', 'adadd', 'sdsadsad', 'dsdsd', '1', 'dsdadd', b'01', 'dasdad', '2016-10-21 00:00:00', b'01'),
('003', 'Ha Van Tai', '12 Hung Dao', '12134554534535', '2', 'qw', b'00', 'wert@yybh.com', '1988-10-11 00:00:00', b'01'),
('004', 'Nguyen Thi Huyen', '33/8 Ha Van Chinh', '8454364785645', '2', 'qw', b'01', 'dsada@yyhhd.com', '1989-10-04 00:00:00', b'01'),
('005', 'Le Thi My Lan', '32/22 Ly Chinh Thang', '12134554534535', '3', 'qw', b'00', 'wert@yybh.com', '1988-10-11 00:00:00', b'01'),
('006', 'Nguyen Van Chu', '44 Ho Tung Mau', '8454364785645', '3', 'qw', b'01', 'dsada@yyhhd.com', '1989-10-04 00:00:00', b'01'),
('007', 'Le Thi Hoa', '966/33 Au Co', '12134554534535', '4', 'qw', b'00', 'wert@yybh.com', '1988-10-11 00:00:00', b'01'),
('008', 'Nguyen Hoanh', '68/34 Dong Den', '8454364785645', '4', 'qw', b'01', 'dsada@yyhhd.com', '1989-10-04 00:00:00', b'01'),
('009', 'Le Thi Huong', '77/22 Lac Long Quan', '12134554534535', '5', 'qw', b'00', 'wert@yybh.com', '1988-10-11 00:00:00', b'01'),
('010', 'Truong Thi My Hoa', '66 QL22', '8454364785645', '5', 'qw', b'01', 'dsada@yyhhd.com', '1989-10-04 00:00:00', b'01'),
('011', 'Le Thi Duyen Thi', 'Ap 3 Xa Trung Chanh', '12134554534535', '6', 'qw', b'00', 'wert@yybh.com', '1988-10-11 00:00:00', b'01'),
('012', 'Truong Thi Xuan Thao', '699 Tan Xuan ', '8454364785645', '6', 'qw', b'01', 'dsada@yyhhd.com', '1989-10-04 00:00:00', b'01'),
('013', 'Nguyen Van Nam', 'Thu Dau Mot Binh Duong', '12134554534535', '7', 'qw', b'00', 'wert@yybh.com', '1988-10-11 00:00:00', b'01'),
('014', 'Truong Thi Thanh Thao', '554/23 Le Trung Nghia', '8454364785645', '7', 'qw', b'01', 'dsada@yyhhd.com', '1989-10-04 00:00:00', b'01'),
('015', 'Nguyen Anh Tai ', '12/33 Tan Dinh', '12134554534535', '8', 'qw', b'00', 'wert@yybh.com', '1988-10-11 00:00:00', b'01'),
('016', 'Truong Thi Tho', '66/32 Ni Su Huynh Lien', '8454364785645', '8', 'qw', b'01', 'dsada@yyhhd.com', '1989-10-04 00:00:00', b'01'),
('017', 'Nguyen Huy Trung ', '12/22 Van Thanh', '12134554534535', '9', 'qw', b'00', 'wert@yybh.com', '1988-10-11 00:00:00', b'01'),
('018', 'Nguyen Thi Thuy Nga', '12/54/21 Ly Thuong Kiet', '8454364785645', '9', 'qw', b'01', 'dsada@yyhhd.com', '1989-10-04 00:00:00', b'01'),
('019', 'Nguyen Van Thu', '66/2 To Hien Thanh', '12134554534535', '10', 'qw', b'00', 'wert@yybh.com', '1988-10-11 00:00:00', b'01'),
('020', 'Nguyen Thi Thu', '77/25 Truong Chinh', '8454364785645', '10', 'qw', b'01', 'dsada@yyhhd.com', '1989-10-04 00:00:00', b'01'),
('021', 'Le Tao Dinh Chinh', '66/35 Hoang Van Thu', '12134554534535', '4', 'qw', b'00', 'wert@yybh.com', '1988-10-11 00:00:00', b'01'),
('022', 'Nguyen Thi Thuy Quynh', '12 Le Khoi', '8454364785645', '1', 'qw', b'01', 'dsada@yyhhd.com', '1989-10-04 00:00:00', b'01'),
('023', 'Le Long Nguyen', '22 Thach Lam', '12134554534535', '5', 'qw', b'00', 'wert@yybh.com', '1988-10-11 00:00:00', b'01'),
('024', 'Nguyen Thi Nhu', '22/45/99/1 Luy Ban Bich', '8454364785645', '1', 'qw', b'01', 'dsada@yyhhd.com', '1989-10-04 00:00:00', b'01'),
('A001', 'Ngo Tran Minh Duy', '12 Tran Hung Dao', '12134554534535', '1', 'qw', b'00', 'wert@yybh.com', '1988-10-11 00:00:00', b'01'),
('A002', 'Admin', '123 Nguyen Hong', '8454364785645', '1', 'qw', b'01', 'dsada@yyhhd.com', '1989-10-04 00:00:00', b'01');

-- --------------------------------------------------------

--
-- Table structure for table `nhomhang`
--

CREATE TABLE `nhomhang` (
  `manhomhang` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tennhomhang` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` bit(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhomhang`
--

INSERT INTO `nhomhang` (`manhomhang`, `tennhomhang`, `active`) VALUES
('a001', 'Hang Dien May', b'01'),
('a002', 'Hang Gia Dung', b'01'),
('a003', 'Hang KTS', b'01'),
('a004', 'Hang Phan Bon', b'01'),
('a005', 'Hang Hoa Chat', b'01'),
('a006', 'Hang Duoc Pham', b'01'),
('a007', 'Hang Vat Tu', b'01'),
('a008', 'Co Khi', b'01'),
('a009', 'May Cong Cu', b'01'),
('a011', 'Dung Cu Ve Sinh', b'01'),
('a012', 'May Quay', b'01'),
('a013', 'Den Pin', b'01'),
('a014', 'May Tinh Bang', b'01'),
('a015', 'Laptop', b'01'),
('a016', 'May Tinh De Ban', b'01'),
('a017', 'Loa', b'01'),
('a018', 'Thiet Bi Cong Nghe', b'01'),
('a019', 'XBox', b'01'),
('a020', 'Bep Nau', b'01'),
('a021', 'Lo Nuong', b'01'),
('a022', 'Lo Vi Song', b'01'),
('a023', 'May Say', b'01'),
('a024', 'Den', b'01'),
('a025', 'Tu', b'01'),
('a026', 'Ban', b'01'),
('a027', 'Ke', b'01');

-- --------------------------------------------------------

--
-- Table structure for table `phieuchi`
--

CREATE TABLE `phieuchi` (
  `maphieuchi` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `maphieunhap` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngaylap` datetime DEFAULT NULL,
  `manv` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lydo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sotien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `maphieunhap` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ngaylap` datetime DEFAULT NULL,
  `makho_nhap` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mancc` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manv` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DK_thanhtoan` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinhthuc_thanhtoan` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hanthanhtoan` datetime DEFAULT NULL,
  `ngaygiao` datetime DEFAULT NULL,
  `tongtien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phieuthu`
--

CREATE TABLE `phieuthu` (
  `maphieuthu` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `maphieuxuat` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngaylap` datetime DEFAULT NULL,
  `manv` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lydo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sotien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `maphieuxuat` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ngaylap` datetime DEFAULT NULL,
  `makho` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `makh` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manv` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DK_thanhtoan` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinhthuc_thanhtoan` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hanthanhtoan` datetime DEFAULT NULL,
  `ngaygiao` datetime DEFAULT NULL,
  `tongtien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tonkho`
--

CREATE TABLE `tonkho` (
  `mahang` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `makho` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) DEFAULT NULL,
  `dongia` float DEFAULT NULL,
  `tongtien` float DEFAULT NULL,
  `active` bit(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Username` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manv` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` bit(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `Username`, `password`, `group_id`, `mota`, `manv`, `active`) VALUES
('1', 'ntmduy', '123456', '1', 'Day la thong tin cua Ngo Tran Minh Duy', 'A001', b'01'),
('10', 'htdat', '123456', '4', 'Huynh Trong Dat', '010', b'01'),
('11', 'hbngoc', '123456', '5', 'Hoang Bao Ngoc', '011', b'01'),
('12', 'tlnhu', '123456', '5', 'Tran Le Nhu', '012', b'01'),
('13', 'hgbao', '123456', '6', 'Hoang Gia Bao', '013', b'01'),
('14', 'ntduyen', '123456', '6', 'Nguyen Thi Duyen', '014', b'01'),
('15', 'htanh', '123456', '7', 'Ho Thi Anh', '015', b'01'),
('16', 'lttai', '123456', '7', 'Le The Tai', '016', b'01'),
('17', 'vpthao', '123456', '8', 'Vu Phuong Thao', '017', b'01'),
('18', 'nttrinh', '123456', '8', 'Nguyen Thi Trinh', '018', b'01'),
('19', 'ltbtram', '123456', '8', 'Le Thi Bich Tram', '019', b'01'),
('2', 'admin', '123456', '1', 'Administrator', 'A002', b'01'),
('20', 'qdbao', '123456', '9', 'Quach Dinh Bao', '020', b'01'),
('21', 'nson', '123456', '9', 'Nguyen Son', '021', b'01'),
('22', 'tvon', '123456', '10', 'Tran Van On', '022', b'01'),
('23', 'ntmkhai', '123456', '10', 'Nguyen Thi Minh Khai', '023', b'01'),
('24', 'lhphong', '123456', '3', 'Le Hong Phong', '024', b'01'),
('25', 'nscung', '123456', '4', 'Nguyen Sinh Cung', '025', b'01'),
('26', 'vngiap', '123456', '5', 'Vo Nguyen Giap', '026', b'01'),
('3', 'lhtngoc', '123456', '1', 'Le Huu Thu Ngoc', '003', b'01'),
('4', 'ntmhuyen', '123456', '1', 'Nguyen Thi My Huyen', '004', b'01'),
('5', 'vndang', '123456', '2', 'Vu Ngoc Dang', '005', b'01'),
('6', 'ttphong', '123456', '2', 'Truong Tan Phong', '006', b'01'),
('7', 'hvphi', '123456', '3', 'Huynh Vu Phi', '007', b'01'),
('8', 'ntpthao', '123456', '3', 'Nguyen Thi Phuong Thao', '008', b'01'),
('9', 'lmtien', '123456', '4', 'Lam Minh Tien', '009', b'01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bophan`
--
ALTER TABLE `bophan`
  ADD PRIMARY KEY (`mabp`);

--
-- Indexes for table `chitiet_chuyenkho`
--
ALTER TABLE `chitiet_chuyenkho`
  ADD PRIMARY KEY (`maphieuchuyen`,`mahang`);

--
-- Indexes for table `chitiet_phieunhap`
--
ALTER TABLE `chitiet_phieunhap`
  ADD PRIMARY KEY (`maphieunhap`,`mahang`),
  ADD KEY `fk_ctpn_hanghoa_idx` (`mahang`);

--
-- Indexes for table `chitiet_phieuxuat`
--
ALTER TABLE `chitiet_phieuxuat`
  ADD PRIMARY KEY (`maphieuxuat`,`mahang`);

--
-- Indexes for table `chuyenkho`
--
ALTER TABLE `chuyenkho`
  ADD PRIMARY KEY (`maphieuchuyen`),
  ADD KEY `fk_khochyen_kho_idx` (`kho_xuat`),
  ADD KEY `fk_khonhap_kho_idx` (`kho_nhap`),
  ADD KEY `fk_chuyenkho_nhanvien_idx` (`manv`);

--
-- Indexes for table `donvitinh`
--
ALTER TABLE `donvitinh`
  ADD PRIMARY KEY (`madv`);

--
-- Indexes for table `groupuser`
--
ALTER TABLE `groupuser`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`mahanghoa`),
  ADD KEY `fk_hanghoa_donvitinh_idx` (`madv`),
  ADD KEY `fk_hanghoa_nhomhang_idx` (`manhomhang`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makh`),
  ADD KEY `fk_khachhang_khuvuc_idx` (`makv`);

--
-- Indexes for table `kho`
--
ALTER TABLE `kho`
  ADD PRIMARY KEY (`makho`);

--
-- Indexes for table `khuvuc`
--
ALTER TABLE `khuvuc`
  ADD PRIMARY KEY (`makv`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`mancc`),
  ADD KEY `fk_ncc_khuvuc_idx` (`makv`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`manv`),
  ADD KEY `fk_nhanvien_bophan_idx` (`mabp`);

--
-- Indexes for table `nhomhang`
--
ALTER TABLE `nhomhang`
  ADD PRIMARY KEY (`manhomhang`);

--
-- Indexes for table `phieuchi`
--
ALTER TABLE `phieuchi`
  ADD PRIMARY KEY (`maphieuchi`),
  ADD KEY `fk_phieuchi_phieunhap_idx` (`maphieunhap`),
  ADD KEY `fk_phieuchi_nhanvien_idx` (`manv`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`maphieunhap`),
  ADD KEY `fk_phieunhap_kho_idx` (`makho_nhap`),
  ADD KEY `fk_phieunhap_nhacungcap_idx` (`mancc`),
  ADD KEY `fk_phieunhap_nhanvien_idx` (`manv`);

--
-- Indexes for table `phieuthu`
--
ALTER TABLE `phieuthu`
  ADD PRIMARY KEY (`maphieuthu`),
  ADD KEY `fk_phieuthu_phieuxuat_idx` (`maphieuxuat`),
  ADD KEY `fk_phieuthu_nhanvien_idx` (`manv`);

--
-- Indexes for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`maphieuxuat`),
  ADD KEY `fk_phieuxuat_kho_idx` (`makho`),
  ADD KEY `fk_phieuxuat_khachhang_idx` (`makh`),
  ADD KEY `fk_phieuxuat_nhanvien_idx` (`manv`);

--
-- Indexes for table `tonkho`
--
ALTER TABLE `tonkho`
  ADD PRIMARY KEY (`mahang`,`makho`),
  ADD KEY `fk_tonkho_kho_idx` (`makho`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_user_groupuser_idx` (`group_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitiet_phieunhap`
--
ALTER TABLE `chitiet_phieunhap`
  ADD CONSTRAINT `fk_ctpn_hanghoa` FOREIGN KEY (`mahang`) REFERENCES `hanghoa` (`mahanghoa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ctpn_phieunhap` FOREIGN KEY (`maphieunhap`) REFERENCES `phieunhap` (`maphieunhap`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `chuyenkho`
--
ALTER TABLE `chuyenkho`
  ADD CONSTRAINT `fk_chuyenkho_nhanvien` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_khochyen_kho` FOREIGN KEY (`kho_xuat`) REFERENCES `kho` (`makho`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_khonhap_kho` FOREIGN KEY (`kho_nhap`) REFERENCES `kho` (`makho`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD CONSTRAINT `fk_hanghoa_donvitinh` FOREIGN KEY (`madv`) REFERENCES `donvitinh` (`madv`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_hanghoa_nhomhang` FOREIGN KEY (`manhomhang`) REFERENCES `nhomhang` (`manhomhang`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `fk_khachhang_khuvuc` FOREIGN KEY (`makv`) REFERENCES `khuvuc` (`makv`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD CONSTRAINT `fk_ncc_khuvuc` FOREIGN KEY (`makv`) REFERENCES `khuvuc` (`makv`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `fk_nhanvien_bophan` FOREIGN KEY (`mabp`) REFERENCES `bophan` (`mabp`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `phieuchi`
--
ALTER TABLE `phieuchi`
  ADD CONSTRAINT `fk_phieuchi_nhanvien` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_phieuchi_phieunhap` FOREIGN KEY (`maphieunhap`) REFERENCES `phieunhap` (`maphieunhap`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `fk_phieunhap_kho` FOREIGN KEY (`makho_nhap`) REFERENCES `kho` (`makho`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_phieunhap_nhacungcap` FOREIGN KEY (`mancc`) REFERENCES `nhacungcap` (`mancc`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_phieunhap_nhanvien` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `phieuthu`
--
ALTER TABLE `phieuthu`
  ADD CONSTRAINT `fk_phieuthu_nhanvien` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_phieuthu_phieuxuat` FOREIGN KEY (`maphieuxuat`) REFERENCES `phieuxuat` (`maphieuxuat`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD CONSTRAINT `fk_phieuxuat_khachhang` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_phieuxuat_kho` FOREIGN KEY (`makho`) REFERENCES `kho` (`makho`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_phieuxuat_nhanvien` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tonkho`
--
ALTER TABLE `tonkho`
  ADD CONSTRAINT `fk_tonkho_hanghoa` FOREIGN KEY (`mahang`) REFERENCES `hanghoa` (`mahanghoa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tonkho_kho` FOREIGN KEY (`makho`) REFERENCES `kho` (`makho`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_groupuser` FOREIGN KEY (`group_id`) REFERENCES `groupuser` (`group_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
