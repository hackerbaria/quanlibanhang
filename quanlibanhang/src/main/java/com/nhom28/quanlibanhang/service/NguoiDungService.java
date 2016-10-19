package com.nhom28.quanlibanhang.service;

import javax.transaction.Transactional;

import com.nhom28.quanlibanhang.pojo.NguoiDung;


public interface NguoiDungService {

	/**
	 * check user is valid or invalid
	 * @param username
	 * @param password
	 * @return boolean
	 */
	@Transactional
	boolean checkLogin(String username, String password);
	
	/**
	 * update password of current user
	 * @param username
	 * @param password
	 * @return boolean - true if update successful, otherwise return false
	 */
	@Transactional
	boolean updatePassWord(String username, String password);
	
	@Transactional
	boolean insertNguoiDung(NguoiDung ng);
}
