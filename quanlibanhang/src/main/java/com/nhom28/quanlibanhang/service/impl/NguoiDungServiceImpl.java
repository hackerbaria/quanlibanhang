package com.nhom28.quanlibanhang.service.impl;

import com.nhom28.quanlibanhang.dao.NguoiDungDao;
import com.nhom28.quanlibanhang.dao.impl.NguoiDungDaoImpl;
import com.nhom28.quanlibanhang.pojo.NguoiDung;
import com.nhom28.quanlibanhang.service.NguoiDungService;

public class NguoiDungServiceImpl extends GenericServiceImpl<NguoiDung, String>
	implements NguoiDungService {

	NguoiDungDao nguoiDungDao = new NguoiDungDaoImpl();
	
	@Override
	//@Transactional(value = Transactional.TxType.MANDATORY)
	public boolean checkLogin(String username, String password) {
		return nguoiDungDao.checkLogin(username, password);
	}

	@Override
	public boolean updatePassWord(String username, String password) {
		return nguoiDungDao.updatePassWord(username, password);
	}

}