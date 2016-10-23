package com.nhom28.quanlibanhang.service;

import java.sql.SQLException;
import java.util.List;

import com.nhom28.quanlibanhang.dto.BoPhanDto;

public interface BoPhanService {
	
	public List<BoPhanDto> getAll() throws SQLException;
	
	public void add(BoPhanDto boPhanDto) throws SQLException;
	
	public void delete(Integer id) throws SQLException;
	
	public void update(Integer id, String tenBoPhan,
			String NguoiQuanLy, String ghiChu, byte conQuanLy)
	throws Exception;
}
