package com.nhom28.quanlibanhang.service;

import java.sql.SQLException;
import java.util.List;

import com.nhom28.quanlibanhang.pojo.HangHoa;

public interface TonKhoService {
	
	public List<HangHoa> getAll() throws SQLException;
	
}
