package com.nhom28.quanlibanhang.pojo;

import java.util.HashSet;
import java.util.Set;

/**
 * BoPhan generated by hbm2java
 */
public class BoPhan implements java.io.Serializable {

	private Integer id;
	private String tenBoPhan;
	private int idNguoiQuanLy;
	private Set<NhanVien> nhanViens = new HashSet<NhanVien>(0);

	public BoPhan() {
	}

	public BoPhan(String tenBoPhan, int idNguoiQuanLy) {
		this.tenBoPhan = tenBoPhan;
		this.idNguoiQuanLy = idNguoiQuanLy;
	}

	public BoPhan(String tenBoPhan, int idNguoiQuanLy, Set<NhanVien> nhanViens) {
		this.tenBoPhan = tenBoPhan;
		this.idNguoiQuanLy = idNguoiQuanLy;
		this.nhanViens = nhanViens;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTenBoPhan() {
		return this.tenBoPhan;
	}

	public void setTenBoPhan(String tenBoPhan) {
		this.tenBoPhan = tenBoPhan;
	}

	public int getIdNguoiQuanLy() {
		return this.idNguoiQuanLy;
	}

	public void setIdNguoiQuanLy(int idNguoiQuanLy) {
		this.idNguoiQuanLy = idNguoiQuanLy;
	}

	public Set<NhanVien> getNhanViens() {
		return this.nhanViens;
	}

	public void setNhanViens(Set<NhanVien> nhanViens) {
		this.nhanViens = nhanViens;
	}

}
