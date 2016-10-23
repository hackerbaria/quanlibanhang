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
	
	public void update(Integer id, String tenBoPhan, Integer idNguoiQuanLy,
			String ghiChu, byte conQuanLy) throws SQLException;
	
	
	public List<String> getListStaffNames() throws SQLException;
	
	public Integer getStaffId(String tenNhanVien) throws SQLException;
}
