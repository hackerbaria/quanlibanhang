package com.nhom28.quanlibanhang.pojo;

// default package
// Generated Oct 19, 2016 10:56:54 PM by Hibernate Tools 4.0.0

import java.util.HashSet;
import java.util.Set;

/**
 * PhanQuyen generated by hbm2java
 */
public class PhanQuyen implements java.io.Serializable {

	private Integer id;
	private String dienGiai;
	private String ten;
	private String heThong;
	private String baoMat;
	private String duLieu;
	private Set<NguoiDung> nguoiDungs = new HashSet<NguoiDung>(0);

	public PhanQuyen() {
	}

	public PhanQuyen(String dienGiai, String ten, String heThong,
			String baoMat, String duLieu) {
		this.dienGiai = dienGiai;
		this.ten = ten;
		this.heThong = heThong;
		this.baoMat = baoMat;
		this.duLieu = duLieu;
	}

	public PhanQuyen(String dienGiai, String ten, String heThong,
			String baoMat, String duLieu, Set<NguoiDung> nguoiDungs) {
		this.dienGiai = dienGiai;
		this.ten = ten;
		this.heThong = heThong;
		this.baoMat = baoMat;
		this.duLieu = duLieu;
		this.nguoiDungs = nguoiDungs;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDienGiai() {
		return this.dienGiai;
	}

	public void setDienGiai(String dienGiai) {
		this.dienGiai = dienGiai;
	}

	public String getTen() {
		return this.ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getHeThong() {
		return this.heThong;
	}

	public void setHeThong(String heThong) {
		this.heThong = heThong;
	}

	public String getBaoMat() {
		return this.baoMat;
	}

	public void setBaoMat(String baoMat) {
		this.baoMat = baoMat;
	}

	public String getDuLieu() {
		return this.duLieu;
	}

	public void setDuLieu(String duLieu) {
		this.duLieu = duLieu;
	}

	public Set<NguoiDung> getNguoiDungs() {
		return this.nguoiDungs;
	}

	public void setNguoiDungs(Set<NguoiDung> nguoiDungs) {
		this.nguoiDungs = nguoiDungs;
	}

}
