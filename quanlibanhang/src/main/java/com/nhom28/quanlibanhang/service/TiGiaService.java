package com.nhom28.quanlibanhang.service;

import java.sql.SQLException;
import java.util.List;

import com.nhom28.quanlibanhang.pojo.TyGia;

public interface TiGiaService {
	public List<TyGia> getAll() throws SQLException;
}
