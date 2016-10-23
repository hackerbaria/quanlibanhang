package com.nhom28.quanlibanhang.dao;

import java.sql.SQLException;
import java.util.List;

import com.nhom28.quanlibanhang.pojo.NhomHang;

public interface NhomHangDao extends GenericDao<NhomHang> {
	
	/**
	 * @return ResultSet
	 */
	public List<NhomHang> getAll() throws SQLException;
	
	public void delete(Integer id) throws SQLException;
	
	public void update(Integer id, String maNhomHang, String tenNhomHang,
		String ghiChu, byte conQuanLy) throws SQLException;
	
}
