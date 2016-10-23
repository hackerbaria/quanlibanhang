package com.nhom28.quanlibanhang.dao;

import java.sql.SQLException;
import java.util.List;

import com.nhom28.quanlibanhang.pojo.Kho;

public interface KhoDao extends GenericDao<Kho> {

	/**
	 * @return ResultSet
	 */
	public List<Kho> getAll() throws SQLException;

	public void delete(Integer id) throws SQLException;

	public void update(Integer id, Kho kho) throws SQLException;

}
