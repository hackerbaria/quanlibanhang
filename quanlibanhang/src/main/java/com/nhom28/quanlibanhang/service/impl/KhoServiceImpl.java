package com.nhom28.quanlibanhang.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.nhom28.quanlibanhang.dao.KhoDao;
import com.nhom28.quanlibanhang.dao.impl.KhoDaoImpl;
import com.nhom28.quanlibanhang.pojo.Kho;
import com.nhom28.quanlibanhang.pojo.NhanVien;
import com.nhom28.quanlibanhang.service.KhoService;

public class KhoServiceImpl implements KhoService {

	KhoDao khoDao = new KhoDaoImpl();
	
	@Override
    public List<Kho> getAll() throws SQLException {
		return khoDao.findAll();
    }

	@Override
	public void add(Kho kho) {
		khoDao.save(kho);
	}
 
	@Override
	public void delete(Integer id) throws SQLException{
		khoDao.delete(id);
	}
	
	@Override
	public void update(Integer id, Kho kho) throws SQLException{
		khoDao.update(id, kho);
	}
 
	@Override
	public NhanVien getNhanVien(Integer id) throws SQLException{
		return khoDao.getNhanVien(id);
	}
}
