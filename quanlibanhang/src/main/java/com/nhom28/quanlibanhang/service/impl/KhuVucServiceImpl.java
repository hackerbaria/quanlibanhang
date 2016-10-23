package com.nhom28.quanlibanhang.service.impl;

import java.util.List;

import com.nhom28.quanlibanhang.dao.KhuVucDao;
import com.nhom28.quanlibanhang.dao.impl.KhuVucDaoImpl;
import com.nhom28.quanlibanhang.pojo.KhuVuc;
import com.nhom28.quanlibanhang.service.KhuVucService;

public class KhuVucServiceImpl implements KhuVucService {
	
	
	KhuVucDao khuVucDao = new KhuVucDaoImpl();
	
	@Override
	public List<KhuVuc> getAllListKhuVuc() {		
		return khuVucDao.findAll();
	}

	@Override
	public void insertKhuVuc(KhuVuc entity) {
		khuVucDao.save(entity);
		
	}

	@Override
	public void deleteKhuVuc(KhuVuc entity) {
		khuVucDao.delete(entity);
		
	}

	@Override
	public void updateKhuVuc(KhuVuc entity) {
		khuVucDao.saveOrUpdate(entity);
		
	}

}
