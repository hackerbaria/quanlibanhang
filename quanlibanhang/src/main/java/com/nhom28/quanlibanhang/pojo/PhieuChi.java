package com.nhom28.quanlibanhang.pojo;

// default package
// Generated Oct 20, 2016 9:05:28 PM by Hibernate Tools 4.0.0

import java.util.Date;

/**
 * PhieuChi generated by hbm2java
 */
public class PhieuChi implements java.io.Serializable {

	private Integer id;
	private MuaHang muaHang;
	private int idNguoiDung;
	private Date ngay;
	private String lyDo;
	private double tongTien;

	public PhieuChi() {
	}

	public PhieuChi(MuaHang muaHang, int idNguoiDung, Date ngay, double tongTien) {
		this.muaHang = muaHang;
		this.idNguoiDung = idNguoiDung;
		this.ngay = ngay;
		this.tongTien = tongTien;
	}

	public PhieuChi(MuaHang muaHang, int idNguoiDung, Date ngay, String lyDo,
			double tongTien) {
		this.muaHang = muaHang;
		this.idNguoiDung = idNguoiDung;
		this.ngay = ngay;
		this.lyDo = lyDo;
		this.tongTien = tongTien;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public MuaHang getMuaHang() {
		return this.muaHang;
	}

	public void setMuaHang(MuaHang muaHang) {
		this.muaHang = muaHang;
	}

	public int getIdNguoiDung() {
		return this.idNguoiDung;
	}

	public void setIdNguoiDung(int idNguoiDung) {
		this.idNguoiDung = idNguoiDung;
	}

	public Date getNgay() {
		return this.ngay;
	}

	public void setNgay(Date ngay) {
		this.ngay = ngay;
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