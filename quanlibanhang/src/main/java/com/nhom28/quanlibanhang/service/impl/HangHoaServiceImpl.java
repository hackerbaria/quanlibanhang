package com.nhom28.quanlibanhang.service.impl;

import java.util.List;

import com.nhom28.quanlibanhang.dao.HangHoaDao;
import com.nhom28.quanlibanhang.dao.impl.HangHoaDaoImpl;
import com.nhom28.quanlibanhang.pojo.HangHoa;
import com.nhom28.quanlibanhang.service.HangHoaService;

public class HangHoaServiceImpl implements HangHoaService {
	
	HangHoaDao hhDao = new HangHoaDaoImpl();

	@Override
	public List<HangHoa> getAllHangHoa() {		
		return hhDao.findAll();
	}

	@Override
	public HangHoa findHangHoaByMa(Integer id) {
		return hhDao.findById(id);
	}

	@Override
	public void update(HangHoa hh) {
		hhDao.saveOrUpdate(hh);
		
	}

	@Override
	public void delete(HangHoa hh) {
		hhDao.delete(hh);
		
	}

	@Override
	public void insert(HangHoa hh) {
		hhDao.save(hh);
		
	}

}
