-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema quanlybanhang
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema quanlybanhang
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `quanlybanhang` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
USE `quanlybanhang` ;

-- -----------------------------------------------------
-- Table `quanlybanhang`.`GroupUser`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quanlybanhang`.`GroupUser` (
  `group_id` VARCHAR(10) NOT NULL,
  `Group_name` VARCHAR(45) NULL,
  `mota` VARCHAR(45) NULL,
  `active` BIT(2) NULL,
  PRIMARY KEY (`group_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quanlybanhang`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quanlybanhang`.`User` (
  `user_id` VARCHAR(10) NOT NULL,
  `Username` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `group_id` VARCHAR(10) NULL,
  `mota` VARCHAR(45) NULL,
  `manv` VARCHAR(10) NULL,
  `active` BIT(2) NULL,
  PRIMARY KEY (`user_id`),
  INDEX `fk_user_groupuser_idx` (`group_id` ASC),
  CONSTRAINT `fk_user_groupuser`
    FOREIGN KEY (`group_id`)
    REFERENCES `quanlybanhang`.`GroupUser` (`group_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quanlybanhang`.`KhuVuc`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quanlybanhang`.`KhuVuc` (
  `makv` VARCHAR(10) NOT NULL,
  `tenkv` VARCHAR(45) NULL,
  `ghichu` VARCHAR(45) NULL,
  `active` BIT(2) NULL,
  PRIMARY KEY (`makv`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quanlybanhang`.`BoPhan`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quanlybanhang`.`BoPhan` (
  `mabp` VARCHAR(10) NOT NULL,
  `tenbp` VARCHAR(45) NULL,
  `ghichu` VARCHAR(45) NULL,
  `active` BIT(2) NULL,
  PRIMARY KEY (`mabp`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quanlybanhang`.`NhaCungCap`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quanlybanhang`.`NhaCungCap` (
  `mancc` VARCHAR(10) NOT NULL,
  `tenncc` VARCHAR(45) NULL,
  `diachi` VARCHAR(45) NULL,
  `dienthoai` VARCHAR(20) NULL,
  `makv` VARCHAR(10) NULL,
  `active` BIT(2) NULL,
  PRIMARY KEY (`mancc`),
  INDEX `fk_ncc_khuvuc_idx` (`makv` ASC),
  CONSTRAINT `fk_ncc_khuvuc`
    FOREIGN KEY (`makv`)
    REFERENCES `quanlybanhang`.`KhuVuc` (`makv`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quanlybanhang`.`DonViTinh`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quanlybanhang`.`DonViTinh` (
  `madv` VARCHAR(10) NOT NULL,
  `tendv` VARCHAR(45) NULL,
  `active` BIT(2) NULL,
  PRIMARY KEY (`madv`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quanlybanhang`.`NhomHang`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quanlybanhang`.`NhomHang` (
  `manhomhang` VARCHAR(10) NOT NULL,
  `tennhomhang` VARCHAR(45) NULL,
  `active` BIT(2) NULL,
  PRIMARY KEY (`manhomhang`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quanlybanhang`.`NhanVien`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quanlybanhang`.`NhanVien` (
  `manv` VARCHAR(10) NOT NULL,
  `tennv` VARCHAR(45) NULL,
  `diachi` VARCHAR(45) NULL,
  `dienthoai` VARCHAR(20) NULL,
  `mabp` VARCHAR(10) NULL,
  `vitri` VARCHAR(45) NULL,
  `gioitinh` BIT(2) NULL,
  `email` VARCHAR(45) NULL,
  `ngaysinh` DATETIME NULL,
  `active` BIT(2) NULL,
  PRIMARY KEY (`manv`),
  INDEX `fk_nhanvien_bophan_idx` (`mabp` ASC),
  CONSTRAINT `fk_nhanvien_bophan`
    FOREIGN KEY (`mabp`)
    REFERENCES `quanlybanhang`.`BoPhan` (`mabp`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quanlybanhang`.`KhachHang`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quanlybanhang`.`KhachHang` (
  `makh` VARCHAR(10) NOT NULL,
  `tenkh` VARCHAR(45) NULL,
  `gioitinh` BIT(2) NULL,
  `diachi` VARCHAR(45) NULL,
  `dienthoai` VARCHAR(20) NULL,
  `nguoilienhe` VARCHAR(45) NULL,
  `stk` VARCHAR(45) NULL,
  `makv` VARCHAR(10) NULL,
  `active` BIT(2) NULL,
  PRIMARY KEY (`makh`),
  INDEX `fk_khachhang_khuvuc_idx` (`makv` ASC),
  CONSTRAINT `fk_khachhang_khuvuc`
    FOREIGN KEY (`makv`)
    REFERENCES `quanlybanhang`.`KhuVuc` (`makv`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quanlybanhang`.`Kho`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quanlybanhang`.`Kho` (
  `makho` VARCHAR(10) NOT NULL,
  `tenkho` VARCHAR(45) NULL,
  `lienhe` VARCHAR(45) NULL,
  `diachi` VARCHAR(45) NULL,
  `dienthoai` VARCHAR(20) NULL,
  `active` BIT(2) NULL,
  PRIMARY KEY (`makho`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quanlybanhang`.`HangHoa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quanlybanhang`.`HangHoa` (
  `mahanghoa` VARCHAR(10) NOT NULL,
  `tenhanghoa` VARCHAR(45) NULL,
  `madv` VARCHAR(10) NULL,
  `giamua` FLOAT NULL,
  `giaban` FLOAT NULL,
  `toithieu` INT NULL,
  `manhomhang` VARCHAR(10) NULL,
  `khomacdinh` VARCHAR(45) NULL,
  `active` BIT(2) NULL,
  PRIMARY KEY (`mahanghoa`),
  INDEX `fk_hanghoa_donvitinh_idx` (`madv` ASC),
  INDEX `fk_hanghoa_nhomhang_idx` (`manhomhang` ASC),
  CONSTRAINT `fk_hanghoa_donvitinh`
    FOREIGN KEY (`madv`)
    REFERENCES `quanlybanhang`.`DonViTinh` (`madv`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_hanghoa_nhomhang`
    FOREIGN KEY (`manhomhang`)
    REFERENCES `quanlybanhang`.`NhomHang` (`manhomhang`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quanlybanhang`.`PhieuNhap`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quanlybanhang`.`PhieuNhap` (
  `maphieunhap` VARCHAR(10) NOT NULL,
  `ngaylap` DATETIME NULL,
  `makho_nhap` VARCHAR(10) NULL,
  `mancc` VARCHAR(10) NULL,
  `manv` VARCHAR(10) NULL,
  `DK_thanhtoan` VARCHAR(45) NULL,
  `hinhthuc_thanhtoan` VARCHAR(45) NULL,
  `hanthanhtoan` DATETIME NULL,
  `ngaygiao` DATETIME NULL,
  `tongtien` FLOAT NULL,
  PRIMARY KEY (`maphieunhap`),
  INDEX `fk_phieunhap_kho_idx` (`makho_nhap` ASC),
  INDEX `fk_phieunhap_nhacungcap_idx` (`mancc` ASC),
  INDEX `fk_phieunhap_nhanvien_idx` (`manv` ASC),
  CONSTRAINT `fk_phieunhap_kho`
    FOREIGN KEY (`makho_nhap`)
    REFERENCES `quanlybanhang`.`Kho` (`makho`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_phieunhap_nhacungcap`
    FOREIGN KEY (`mancc`)
    REFERENCES `quanlybanhang`.`NhaCungCap` (`mancc`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_phieunhap_nhanvien`
    FOREIGN KEY (`manv`)
    REFERENCES `quanlybanhang`.`NhanVien` (`manv`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quanlybanhang`.`ChiTiet_PhieuNhap`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quanlybanhang`.`ChiTiet_PhieuNhap` (
  `maphieunhap` VARCHAR(10) NOT NULL,
  `mahang` VARCHAR(10) NOT NULL,
  `soluong` INT NULL,
  `dongia` FLOAT NULL,
  `thanhtien` FLOAT NULL,
  `ghichu` VARCHAR(45) NULL,
  PRIMARY KEY (`maphieunhap`, `mahang`),
  INDEX `fk_ctpn_hanghoa_idx` (`mahang` ASC),
  CONSTRAINT `fk_ctpn_phieunhap`
    FOREIGN KEY (`maphieunhap`)
    REFERENCES `quanlybanhang`.`PhieuNhap` (`maphieunhap`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ctpn_hanghoa`
    FOREIGN KEY (`mahang`)
    REFERENCES `quanlybanhang`.`HangHoa` (`mahanghoa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quanlybanhang`.`PhieuXuat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quanlybanhang`.`PhieuXuat` (
  `maphieuxuat` VARCHAR(10) NOT NULL,
  `ngaylap` DATETIME NULL,
  `makho` VARCHAR(10) NULL,
  `makh` VARCHAR(10) NULL,
  `manv` VARCHAR(10) NULL,
  `DK_thanhtoan` VARCHAR(45) NULL,
  `hinhthuc_thanhtoan` VARCHAR(45) NULL,
  `hanthanhtoan` DATETIME NULL,
  `ngaygiao` DATETIME NULL,
  `tongtien` FLOAT NULL,
  PRIMARY KEY (`maphieuxuat`),
  INDEX `fk_phieuxuat_kho_idx` (`makho` ASC),
  INDEX `fk_phieuxuat_khachhang_idx` (`makh` ASC),
  INDEX `fk_phieuxuat_nhanvien_idx` (`manv` ASC),
  CONSTRAINT `fk_phieuxuat_kho`
    FOREIGN KEY (`makho`)
    REFERENCES `quanlybanhang`.`Kho` (`makho`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_phieuxuat_khachhang`
    FOREIGN KEY (`makh`)
    REFERENCES `quanlybanhang`.`KhachHang` (`makh`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_phieuxuat_nhanvien`
    FOREIGN KEY (`manv`)
    REFERENCES `quanlybanhang`.`NhanVien` (`manv`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quanlybanhang`.`ChiTiet_PhieuXuat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quanlybanhang`.`ChiTiet_PhieuXuat` (
  `maphieuxuat` VARCHAR(10) NOT NULL,
  `mahang` VARCHAR(10) NOT NULL,
  `soluong` INT NULL,
  `dongia` FLOAT NULL,
  `thanhtien` FLOAT NULL,
  PRIMARY KEY (`maphieuxuat`, `mahang`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quanlybanhang`.`PhieuThu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quanlybanhang`.`PhieuThu` (
  `maphieuthu` VARCHAR(10) NOT NULL,
  `maphieuxuat` VARCHAR(10) NULL,
  `ngaylap` DATETIME NULL,
  `manv` VARCHAR(10) NULL,
  `lydo` VARCHAR(45) NULL,
  `sotien` FLOAT NULL,
  PRIMARY KEY (`maphieuthu`),
  INDEX `fk_phieuthu_phieuxuat_idx` (`maphieuxuat` ASC),
  INDEX `fk_phieuthu_nhanvien_idx` (`manv` ASC),
  CONSTRAINT `fk_phieuthu_phieuxuat`
    FOREIGN KEY (`maphieuxuat`)
    REFERENCES `quanlybanhang`.`PhieuXuat` (`maphieuxuat`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_phieuthu_nhanvien`
    FOREIGN KEY (`manv`)
    REFERENCES `quanlybanhang`.`NhanVien` (`manv`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quanlybanhang`.`TonKho`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quanlybanhang`.`TonKho` (
  `mahang` VARCHAR(10) NOT NULL,
  `makho` VARCHAR(10) NOT NULL,
  `soluong` INT NULL,
  `dongia` FLOAT NULL,
  `tongtien` FLOAT NULL,
  `active` BIT(2) NULL,
  PRIMARY KEY (`mahang`, `makho`),
  INDEX `fk_tonkho_kho_idx` (`makho` ASC),
  CONSTRAINT `fk_tonkho_hanghoa`
    FOREIGN KEY (`mahang`)
    REFERENCES `quanlybanhang`.`HangHoa` (`mahanghoa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tonkho_kho`
    FOREIGN KEY (`makho`)
    REFERENCES `quanlybanhang`.`Kho` (`makho`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quanlybanhang`.`ChuyenKho`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quanlybanhang`.`ChuyenKho` (
  `maphieuchuyen` VARCHAR(10) NOT NULL,
  `ngaychuyen` DATETIME NULL,
  `kho_xuat` VARCHAR(10) NULL,
  `kho_nhap` VARCHAR(10) NULL,
  `manv` VARCHAR(10) NULL,
  PRIMARY KEY (`maphieuchuyen`),
  INDEX `fk_khochyen_kho_idx` (`kho_xuat` ASC),
  INDEX `fk_khonhap_kho_idx` (`kho_nhap` ASC),
  INDEX `fk_chuyenkho_nhanvien_idx` (`manv` ASC),
  CONSTRAINT `fk_khochyen_kho`
    FOREIGN KEY (`kho_xuat`)
    REFERENCES `quanlybanhang`.`Kho` (`makho`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_khonhap_kho`
    FOREIGN KEY (`kho_nhap`)
    REFERENCES `quanlybanhang`.`Kho` (`makho`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_chuyenkho_nhanvien`
    FOREIGN KEY (`manv`)
    REFERENCES `quanlybanhang`.`NhanVien` (`manv`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quanlybanhang`.`PhieuChi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quanlybanhang`.`PhieuChi` (
  `maphieuchi` VARCHAR(10) NOT NULL,
  `maphieunhap` VARCHAR(10) NULL,
  `ngaylap` DATETIME NULL,
  `manv` VARCHAR(10) NULL,
  `lydo` VARCHAR(45) NULL,
  `sotien` FLOAT NULL,
  PRIMARY KEY (`maphieuchi`),
  INDEX `fk_phieuchi_phieunhap_idx` (`maphieunhap` ASC),
  INDEX `fk_phieuchi_nhanvien_idx` (`manv` ASC),
  CONSTRAINT `fk_phieuchi_phieunhap`
    FOREIGN KEY (`maphieunhap`)
    REFERENCES `quanlybanhang`.`PhieuNhap` (`maphieunhap`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_phieuchi_nhanvien`
    FOREIGN KEY (`manv`)
    REFERENCES `quanlybanhang`.`NhanVien` (`manv`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `quanlybanhang`.`ChiTiet_ChuyenKho`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `quanlybanhang`.`ChiTiet_ChuyenKho` (
  `maphieuchuyen` VARCHAR(10) NOT NULL,
  `mahang` VARCHAR(10) NOT NULL,
  `soluong` INT NULL,
  `dongia` FLOAT NULL,
  `tongtien` FLOAT NULL,
  PRIMARY KEY (`maphieuchuyen`, `mahang`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
