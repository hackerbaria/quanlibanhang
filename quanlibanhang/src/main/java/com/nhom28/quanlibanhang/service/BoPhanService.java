package com.nhom28.quanlibanhang.service;

import java.sql.SQLException;
import java.util.List;

import com.nhom28.quanlibanhang.pojo.BoPhan;

public interface BoPhanService {
	
	public List<BoPhan> getAll() throws SQLException;
	
	public void add(BoPhan boPhan);
	
	public void delete(Integer id) throws SQLException;
	
	public void update(Integer id, String tenBoPhan,
			int idNguoiQuanLy, String ghiChu, byte conQuanLy)
	throws Exception;
}
