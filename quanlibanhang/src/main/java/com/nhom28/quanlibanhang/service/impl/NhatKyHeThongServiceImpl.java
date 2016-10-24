package com.nhom28.quanlibanhang.service.impl;

import java.util.List;

import com.nhom28.quanlibanhang.dao.NhatKyHeThongDao;
import com.nhom28.quanlibanhang.dao.impl.NhatKyHeThongDaoImpl;
import com.nhom28.quanlibanhang.pojo.NhatKyHeThong;
import com.nhom28.quanlibanhang.service.NhatKyHeThongService;

public class NhatKyHeThongServiceImpl implements NhatKyHeThongService {
	
	NhatKyHeThongDao nhatKyDao = new NhatKyHeThongDaoImpl();

	@Override
	public List<NhatKyHeThong> getTatCaNhatKy() {		
		return nhatKyDao.findAll();
	}

	@Override
	public NhatKyHeThong findNhatKyByMa(Integer ma) {		
		return nhatKyDao.findById(ma);
	}

	@Override
	public void deleteNhatKy(NhatKyHeThong entity) {
		nhatKyDao.delete(entity);
		
	}

	@Override
	public void deleteAllNhatKy() {
		nhatKyDao.deleteAll();
		
	}

}
