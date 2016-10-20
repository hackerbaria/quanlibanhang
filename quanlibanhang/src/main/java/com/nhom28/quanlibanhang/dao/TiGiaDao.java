package com.nhom28.quanlibanhang.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.nhom28.quanlibanhang.pojo.TyGia;

public interface TiGiaDao extends GenericDao<TyGia> {
	
	/**
	 * @return ResultSet
	 */
	public List<TyGia> getAllExcchangeRates() throws SQLException;
	
}
