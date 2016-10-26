package com.nhom28.quanlibanhang.service.impl;

import com.nhom28.quanlibanhang.dao.NhomNguoiDungDao;
import com.nhom28.quanlibanhang.dao.impl.NhomNguoiDungDaoImpl;
import com.nhom28.quanlibanhang.pojo.NhomNguoiDung;
import com.nhom28.quanlibanhang.service.NhomNguoiDungService;

public class NhomNguoiDungServiceImpl implements NhomNguoiDungService {

	
	NhomNguoiDungDao nhomDao = new NhomNguoiDungDaoImpl();
	@Override
	public NhomNguoiDung getNhomNguoiDungById(Integer id) {
				return nhomDao.findById(id);
	}
	
	

}
