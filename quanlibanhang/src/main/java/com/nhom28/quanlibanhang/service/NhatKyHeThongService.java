package com.nhom28.quanlibanhang.service;

import java.util.List;

import com.nhom28.quanlibanhang.pojo.NhatKyHeThong;

public interface NhatKyHeThongService {

	List<NhatKyHeThong> getTatCaNhatKy();
	
	NhatKyHeThong findNhatKyByMa(Integer ma);
	
	void deleteNhatKy(NhatKyHeThong entity);
	
	void deleteAllNhatKy();
}
