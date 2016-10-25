package com.nhom28.quanlibanhang.service;

import java.util.List;

import com.nhom28.quanlibanhang.pojo.KhachHang;

public interface KhachHangService {
	
	List<KhachHang> getAllKhachHang();
	
	void insert(KhachHang entity);
	
	void update(KhachHang entity);
	
	void delete(KhachHang entity);
	
	KhachHang getKhachHangByMa(Integer ma);

}
