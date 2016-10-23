package com.nhom28.quanlibanhang.service;

import java.sql.SQLException;
import java.util.List;

import com.nhom28.quanlibanhang.pojo.TyGia;

public interface TyGiaService {
	
	public List<TyGia> getAll() throws SQLException;
	
	public void add(TyGia tyGia);
	
	public void delete(Integer id) throws SQLException;
	
	public void update(Integer id, String maLoaiTien, String loaiTien, Double tyGiaVnd)
	throws Exception;
}
