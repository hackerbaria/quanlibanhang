package com.nhom28.quanlibanhang.dao;

import java.sql.SQLException;
import java.util.List;

import com.nhom28.quanlibanhang.pojo.BoPhan;

public interface BoPhanDao extends GenericDao<BoPhan> {
	
	/**
	 * @return ResultSet
	 */
	public List<BoPhan> getAll() throws SQLException;
	
	public void delete(Integer id) throws SQLException;
	
	public void update(Integer id, String tenBoPhan, 
			int idNguoiQuanLy, String ghiChu, byte conQuanLy)
			throws SQLException;
	
}
