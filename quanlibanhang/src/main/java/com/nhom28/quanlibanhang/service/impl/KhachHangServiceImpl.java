package com.nhom28.quanlibanhang.service.impl;

import java.util.List;

import com.nhom28.quanlibanhang.dao.KhachHangDao;
import com.nhom28.quanlibanhang.dao.impl.KhachHangDaoImpl;
import com.nhom28.quanlibanhang.pojo.KhachHang;
import com.nhom28.quanlibanhang.service.KhachHangService;

public class KhachHangServiceImpl implements KhachHangService {
	
	KhachHangDao khDao = new KhachHangDaoImpl();

	@Override
	public List<KhachHang> getAllKhachHang() {
		return khDao.findAll();
	}

	@Override
	public void insert(KhachHang entity) {
		khDao.save(entity);
		
	}

	@Override
	public void update(KhachHang entity) {
		khDao.saveOrUpdate(entity);
		
	}

	@Override
	public void delete(KhachHang entity) {
		khDao.delete(entity);
		
	}

	@Override
	public KhachHang getKhachHangByMa(Integer ma) {		
		return khDao.findById(ma);
	}

}
