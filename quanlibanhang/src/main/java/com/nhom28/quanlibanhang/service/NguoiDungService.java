package com.nhom28.quanlibanhang.service;

import com.nhom28.quanlibanhang.pojo.NguoiDung;

public interface NguoiDungService extends GenericService<NguoiDung, String> {

	/**
	 * check user is valid or invalid
	 * @param username
	 * @param password
	 * @return boolean
	 */
	boolean checkLogin(String username, String password);
	
	/**
	 * update password of current user
	 * @param username
	 * @param password
	 * @return boolean - true if update successful, otherwise return false
	 */
	boolean updatePassWord(String username, String password);
}
