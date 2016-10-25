package com.nhom28.quanlibanhang.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.nhom28.quanlibanhang.dao.TonKhoDao;
import com.nhom28.quanlibanhang.dao.impl.TonKhoDaoImpl;
import com.nhom28.quanlibanhang.pojo.HangHoa;
import com.nhom28.quanlibanhang.service.TonKhoService;

public class TonKhoServiceImpl implements TonKhoService {

	TonKhoDao tonKhoDao = new TonKhoDaoImpl();
	
	@Override
    public List<HangHoa> getAll() throws SQLException {
		return tonKhoDao.findAll();
    }

 
}
