package com.nhom28.quanlibanhang.dao;

import java.sql.SQLException;
import java.util.List;

import com.nhom28.quanlibanhang.dto.BoPhanDto;
import com.nhom28.quanlibanhang.pojo.BoPhan;

public interface BoPhanDao extends GenericDao<BoPhan> {
	
	/**
	 * @return ResultSet
	 */
	public List<BoPhanDto> getAll() throws SQLException;
	
	public void delete(Integer id) throws SQLException;
	
	public void updateBoPhan(Integer id, String tenBoPhan, 
			String ghiChu, byte conQuanLy) throws SQLException;
	
	public void updateNhanVien(Integer idNguoiQuanLy, 
			String tenNguoiQuanLy) throws SQLException;
	
}
