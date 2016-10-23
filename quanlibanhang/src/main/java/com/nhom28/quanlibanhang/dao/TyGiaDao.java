package com.nhom28.quanlibanhang.dao;

import java.sql.SQLException;
import java.util.List;

import com.nhom28.quanlibanhang.pojo.TyGia;

public interface TyGiaDao extends GenericDao<TyGia> {
	
	/**
	 * @return ResultSet
	 */
	public List<TyGia> getAll() throws SQLException;
	
	public void delete(Integer id) throws SQLException;
	
	public void update(Integer id, String maLoaiTien, String loaiTien, Double tyGiaVnd)
			throws SQLException;
	
}
