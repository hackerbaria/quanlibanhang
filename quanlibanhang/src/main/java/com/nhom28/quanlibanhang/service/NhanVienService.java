package com.nhom28.quanlibanhang.service;

import java.sql.SQLException;
import java.util.List;

import com.nhom28.quanlibanhang.pojo.BoPhan;
import com.nhom28.quanlibanhang.pojo.NhanVien;

public interface NhanVienService {
	
	public List<NhanVien> getAllNhanVien() throws SQLException;
	
	public List<BoPhan> getAllBoPhan() throws SQLException;
	
	public void add(NhanVien nhanVien);
	
	public void delete(Integer id) throws SQLException;
	
	public void update(Integer id, NhanVien nhanVien) throws Exception;
	
	public BoPhan getBoPhan(Integer id) throws SQLException;
	
	public NhanVien getNhanVien(Integer id) throws SQLException;
	
}
