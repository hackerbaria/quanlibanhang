package com.nhom28.quanlibanhang.service.impl;

import com.nhom28.quanlibanhang.dao.ThongTinPhanMemDao;
import com.nhom28.quanlibanhang.dao.impl.ThongTinPhanMemDaoImpl;
import com.nhom28.quanlibanhang.pojo.ThongTinPhanMem;
import com.nhom28.quanlibanhang.service.ThongTinPhanMemService;

public class ThongTinPhanMemServiceImpl implements ThongTinPhanMemService {
	
	ThongTinPhanMemDao dao = new ThongTinPhanMemDaoImpl();
	
	
	public ThongTinPhanMemServiceImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public ThongTinPhanMem getThongTinPhanMem() {
		return dao.getThongTinPhanMem();
	}

}
