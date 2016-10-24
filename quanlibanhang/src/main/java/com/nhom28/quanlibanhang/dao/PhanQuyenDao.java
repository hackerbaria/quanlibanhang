package com.nhom28.quanlibanhang.dao;

import com.nhom28.quanlibanhang.pojo.PhanQuyen;

public interface PhanQuyenDao extends GenericDao<PhanQuyen> {
	
	PhanQuyen getQuyenByMaQuyen(String maQuyen);

}
