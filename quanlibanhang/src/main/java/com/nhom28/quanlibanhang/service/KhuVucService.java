package com.nhom28.quanlibanhang.service;

import java.util.List;

import com.nhom28.quanlibanhang.pojo.KhuVuc;

public interface KhuVucService {
	
	List<KhuVuc> getAllListKhuVuc();
	
	void insertKhuVuc(KhuVuc entity);
	
	void deleteKhuVuc(KhuVuc entity);
	
	void updateKhuVuc(KhuVuc entity);

}
