package com.nhom28.quanlibanhang.service.impl;

import java.sql.SQLException;
import java.util.List;

import javax.transaction.Transactional;

import com.nhom28.quanlibanhang.dao.TiGiaDao;
import com.nhom28.quanlibanhang.dao.impl.TiGiaDaoImpl;
import com.nhom28.quanlibanhang.pojo.TyGia;
import com.nhom28.quanlibanhang.service.TiGiaService;

public class TiGiaServiceImpl implements TiGiaService {

	TiGiaDao tiGiaDao = new TiGiaDaoImpl();
	
	@Override
    @Transactional(value = Transactional.TxType.REQUIRES_NEW)
    public List<TyGia> getAll() throws SQLException {
		return tiGiaDao.getAllExcchangeRates();
    }
 
    
 
}
