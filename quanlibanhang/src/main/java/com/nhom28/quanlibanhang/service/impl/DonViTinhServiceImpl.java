package com.nhom28.quanlibanhang.service.impl;

import com.nhom28.quanlibanhang.dao.DonViTinhDao;
import com.nhom28.quanlibanhang.dao.impl.DonViTinhDaoImpl;
import com.nhom28.quanlibanhang.pojo.DonViTinh;
import com.nhom28.quanlibanhang.service.DonViTinhService;

public class DonViTinhServiceImpl implements DonViTinhService {

	DonViTinhDao donViTinhDao = new DonViTinhDaoImpl();
	
	@Override
	public void insertDonViTinh(DonViTinh entity) {
		donViTinhDao.save(entity);
		
	}

	@Override
	public void updateDonViTinh(DonViTinh entity) {
		donViTinhDao.saveOrUpdate(entity);
		
	}

}