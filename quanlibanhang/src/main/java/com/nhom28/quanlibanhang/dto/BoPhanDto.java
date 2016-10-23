package com.nhom28.quanlibanhang.dto;

import java.io.Serializable;

public class BoPhanDto implements Serializable{
	private static final long serialVersionUID = 3692860348805214199L;
	
	private Integer id;
	
	private String tenBoPhan;
	
	private Integer idNguoiQuanLy;
	
	private String tenNguoiQuanLy;
	
	private String ghiChu;
	
	private byte conQuanLy;
	
	public BoPhanDto(String tenBoPhan, String nguoiQuanLy,
			String ghiChu, byte conQuanLy) {
		super();
		this.tenBoPhan = tenBoPhan;
		this.tenNguoiQuanLy = nguoiQuanLy;
		this.ghiChu = ghiChu;
		this.conQuanLy = conQuanLy;
	}
	
	public BoPhanDto(Integer id, String tenBoPhan, String nguoiQuanLy,
			String ghiChu, byte conQuanLy) {
		super();
		this.id = id;
		this.tenBoPhan = tenBoPhan;
		this.tenNguoiQuanLy = nguoiQuanLy;
		this.ghiChu = ghiChu;
		this.conQuanLy = conQuanLy;
	}
	
	public BoPhanDto(Integer id, String tenBoPhan, Integer idNguoiQuanLy,
			String nguoiQuanLy, String ghiChu, byte conQuanLy) {
		super();
		this.id = id;
		this.tenBoPhan = tenBoPhan;
		this.idNguoiQuanLy = idNguoiQuanLy;
		this.tenNguoiQuanLy = nguoiQuanLy;
		this.ghiChu = ghiChu;
		this.conQuanLy = conQuanLy;
	}

	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getTenBoPhan() {
		return tenBoPhan;
	}
	
	public void setTenBoPhan(String tenBoPhan) {
		this.tenBoPhan = tenBoPhan;
	}
	
	public String getTenNguoiQuanLy() {
		return tenNguoiQuanLy;
	}

	public void setTenNguoiQuanLy(String tenNguoiQuanLy) {
		this.tenNguoiQuanLy = tenNguoiQuanLy;
	}

	public String getGhiChu() {
		return ghiChu;
	}
	
	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}
	
	public byte getConQuanLy() {
		return conQuanLy;
	}
	
	public void setConQuanLy(byte conQuanLy) {
		this.conQuanLy = conQuanLy;
	}

	public Integer getIdNguoiQuanLy() {
		return idNguoiQuanLy;
	}

	public void setIdNguoiQuanLy(Integer idNguoiQuanLy) {
		this.idNguoiQuanLy = idNguoiQuanLy;
	}
	
	
}
