package com.nhom28.quanlibanhang.service;

import java.sql.SQLException;
import java.util.List;

import com.nhom28.quanlibanhang.pojo.Kho;

public interface KhoService {
	
	public List<Kho> getAll() throws SQLException;
	
	public void add(Kho kho);
	
	public void delete(Integer id) throws SQLException;
	
	public void update(Integer id, Kho kho) throws Exception;
}
