/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhom28.quanlibanhang.service.impl;

import java.util.List;

import com.nhom28.quanlibanhang.dao.KhuVucDao;
import com.nhom28.quanlibanhang.dao.NhaPhanPhoiDao;
import com.nhom28.quanlibanhang.dao.impl.KhuVucDaoImpl;
import com.nhom28.quanlibanhang.dao.impl.NhaPhanPhoiDaoImpl;
import com.nhom28.quanlibanhang.pojo.KhuVuc;
import com.nhom28.quanlibanhang.pojo.NhaPhanPhoi;
import com.nhom28.quanlibanhang.service.NhanPhanPhoiService;

/**
 *
 * @author Google
 */
public class NhaPhanPhoiServiceImpl implements  NhanPhanPhoiService{
	
	NhaPhanPhoiDao ppDao = new NhaPhanPhoiDaoImpl();
	
	KhuVucDao khuVucDao = new KhuVucDaoImpl();

	@Override
	public List<NhaPhanPhoi> getAllNhaPhanPhoi() {		
		return ppDao.findAll();
	}

	@Override
	public void insert(NhaPhanPhoi entity) {
		ppDao.save(entity);
		
	}

	@Override
	public void delete(NhaPhanPhoi entity) {
		ppDao.delete(entity);
		
	}

	@Override
	public void update(NhaPhanPhoi entity) {
		ppDao.saveOrUpdate(entity);
		
	}

	@Override
	public NhaPhanPhoi findNhaPhanPhoiById(Integer id) {		
		return ppDao.findById(id);
	}

	@Override
	public List<KhuVuc> getListKhuVuc() {		
		return khuVucDao.findAll();
	}
    
}
