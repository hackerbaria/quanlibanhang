package com.nhom28.quanlibanhang.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.nhom28.quanlibanhang.dao.NhomHangDao;
import com.nhom28.quanlibanhang.dao.impl.NhomHangDaoImpl;
import com.nhom28.quanlibanhang.pojo.NhomHang;
import com.nhom28.quanlibanhang.service.NhomHangService;

public class NhomHangServiceImpl implements NhomHangService {

	NhomHangDao nhomHangDao = new NhomHangDaoImpl();
	
	@Override
    public List<NhomHang> getAll() throws SQLException {
		return nhomHangDao.getAll();
    }

	@Override
	public void add(NhomHang nhomHang) {
		nhomHangDao.save(nhomHang);
	}
 
	@Override
	public void delete(Integer id) throws SQLException{
		nhomHangDao.delete(id);
	}

	@Override
	public void update(Integer id, String maNhomHang, String tenNhomHang,
			String ghiChu, byte conQuanLy) throws SQLException {
		nhomHangDao.update(id, maNhomHang, tenNhomHang, ghiChu, conQuanLy);
		
	}
	
	
 
}
