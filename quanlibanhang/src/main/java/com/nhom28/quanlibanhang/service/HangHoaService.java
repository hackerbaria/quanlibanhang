package com.nhom28.quanlibanhang.service;

import java.util.List;

import com.nhom28.quanlibanhang.pojo.HangHoa;

public interface HangHoaService {
	
	List<HangHoa> getAllHangHoa();
	
	HangHoa findHangHoaByMa(Integer id);
	
	void update(HangHoa hh);
	
	void delete(HangHoa hh);
	
	void insert(HangHoa hh);
	
	

}
