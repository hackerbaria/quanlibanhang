package com.nhom28.quanlibanhang.dao;

import java.sql.SQLException;
import java.util.List;

import com.nhom28.quanlibanhang.pojo.NhanVien;

public interface NhanVienDao extends GenericDao<NhanVien> {
	
	/**
	 * @return ResultSet
	 */
	public void delete(Integer id) throws SQLException;
	
	public void update(Integer id, NhanVien nhanVien) throws SQLException;
	
}
