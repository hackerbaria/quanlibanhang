package com.nhom28.quanlibanhang.service;

import com.nhom28.quanlibanhang.pojo.DonViTinh;
import javax.transaction.Transactional;

import com.nhom28.quanlibanhang.pojo.NguoiDung;
import com.nhom28.quanlibanhang.pojo.NhomNguoiDung;
import com.nhom28.quanlibanhang.pojo.PhanQuyen;

import java.util.List;


public interface NguoiDungService {

	/**
	 * check user is valid or invalid
	 * @param username
	 * @param password
	 * @return boolean
	 */
	@Transactional
	boolean checkLogin(String username, String password);
	
	NguoiDung getNguoiDung(String username);
	
	NguoiDung getNguoiDungByMa(int id);
	
	void update(NguoiDung entity);
	
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
        
    List<DonViTinh> getDonViTinhList();
    
    boolean deleteDonViTinh(int id);
    
    PhanQuyen getPhanQuyen(Integer maQuyen);
    
    List<NguoiDung> getAllNguoiDung();
    
    List<NhomNguoiDung> getAllNhomNguoiDung();
}
