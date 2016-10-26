package com.nhom28.quanlibanhang.service;

import java.util.List;

import com.nhom28.quanlibanhang.pojo.DonViTinh;

public interface DonViTinhService {
	
	void insertDonViTinh(DonViTinh entity);
	
	void updateDonViTinh(DonViTinh entity);
	
	List<DonViTinh> getAll();
	
	DonViTinh findById(Integer id);

}
