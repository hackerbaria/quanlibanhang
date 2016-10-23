package com.nhom28.quanlibanhang.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.nhom28.quanlibanhang.dao.TyGiaDao;
import com.nhom28.quanlibanhang.dao.impl.TyGiaDaoImpl;
import com.nhom28.quanlibanhang.pojo.TyGia;
import com.nhom28.quanlibanhang.service.TyGiaService;

public class TyGiaServiceImpl implements TyGiaService {

	TyGiaDao tiGiaDao = new TyGiaDaoImpl();
	
	@Override
    public List<TyGia> getAll() throws SQLException {
		return tiGiaDao.getAll();
    }

	@Override
	public void add(TyGia tyGia) {
		tiGiaDao.save(tyGia);
	}
 
	@Override
	public void delete(Integer id) throws SQLException{
		tiGiaDao.delete(id);
	}
	
	@Override
	public void update(Integer id, String maLoaiTien, String loaiTien, Double tyGiaVnd) throws SQLException{
		tiGiaDao.update(id, maLoaiTien, loaiTien, tyGiaVnd);
	}
 
}
