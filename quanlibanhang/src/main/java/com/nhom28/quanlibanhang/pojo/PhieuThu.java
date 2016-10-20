package com.nhom28.quanlibanhang.pojo;

// default package
// Generated Oct 20, 2016 9:05:28 PM by Hibernate Tools 4.0.0

import java.util.Date;

/**
 * PhieuThu generated by hbm2java
 */
public class PhieuThu implements java.io.Serializable {

	private Integer id;
	private BanHang banHang;
	private Date ngay;
	private int idNguoiDung;
	private String lyDo;
	private double tongTien;

	public PhieuThu() {
	}

	public PhieuThu(BanHang banHang, Date ngay, int idNguoiDung, double tongTien) {
		this.banHang = banHang;
		this.ngay = ngay;
		this.idNguoiDung = idNguoiDung;
		this.tongTien = tongTien;
	}

	public PhieuThu(BanHang banHang, Date ngay, int idNguoiDung, String lyDo,
			double tongTien) {
		this.banHang = banHang;
		this.ngay = ngay;
		this.idNguoiDung = idNguoiDung;
		this.lyDo = lyDo;
		this.tongTien = tongTien;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public BanHang getBanHang() {
		return this.banHang;
	}

	public void setBanHang(BanHang banHang) {
		this.banHang = banHang;
	}

	public Date getNgay() {
		return this.ngay;
	}

	public void setNgay(Date ngay) {
		this.ngay = ngay;
	}

	public int getIdNguoiDung() {
		return this.idNguoiDung;
	}

	public void setIdNguoiDung(int idNguoiDung) {
		this.idNguoiDung = idNguoiDung;
	}

	public String getLyDo() {
		return this.lyDo;
	}

	public void setLyDo(String lyDo) {
		this.lyDo = lyDo;
	}

	public double getTongTien() {
		return this.tongTien;
	}

	public void setTongTien(double tongTien) {
		this.tongTien = tongTien;
	}

}