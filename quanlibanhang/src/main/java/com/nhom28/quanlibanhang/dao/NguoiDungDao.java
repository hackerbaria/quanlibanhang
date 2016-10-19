package com.nhom28.quanlibanhang.dao;

import com.nhom28.quanlibanhang.pojo.NguoiDung;

public interface NguoiDungDao extends GenericDao<NguoiDung, Integer> {

	boolean checkLogin(String username, String password);
	
	boolean updatePassWord(String username, String password);
}
