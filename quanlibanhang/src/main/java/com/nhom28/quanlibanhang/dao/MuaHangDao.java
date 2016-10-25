package com.nhom28.quanlibanhang.dao;

import java.sql.SQLException;

import com.nhom28.quanlibanhang.pojo.HangHoa;
import com.nhom28.quanlibanhang.pojo.MuaHang;

public interface MuaHangDao extends GenericDao<MuaHang> {
	
	/**
	 * @return ResultSet
	 */
	public HangHoa getHangHoaByMaVach(String maVach) throws SQLException;
	
	
	
}

