package com.nhom28.quanlibanhang.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.nhom28.quanlibanhang.dao.BoPhanDao;
import com.nhom28.quanlibanhang.dao.NhanVienDao;
import com.nhom28.quanlibanhang.dao.impl.BoPhanDaoImpl;
import com.nhom28.quanlibanhang.dao.impl.NhanVienDaoImpl;
import com.nhom28.quanlibanhang.pojo.BoPhan;
import com.nhom28.quanlibanhang.pojo.NhanVien;
import com.nhom28.quanlibanhang.service.NhanVienService;

public class NhanVienServiceImpl implements NhanVienService {

	NhanVienDao nhanVienDao = new NhanVienDaoImpl();
	
	BoPhanDao boPhanDao = new BoPhanDaoImpl();
	
	@Override
    public List<NhanVien> getAllNhanVien() throws SQLException {
		return nhanVienDao.findAll();
    }
	
	@Override
    public List<BoPhan> getAllBoPhan() throws SQLException {
		return boPhanDao.findAll();
    }

	@Override
	public void add(NhanVien nhanVien) {
		nhanVienDao.save(nhanVien);
	}
 
	@Override
	public void delete(Integer id) throws SQLException{
		nhanVienDao.delete(id);
	}
	
	@Override
	public void update(Integer id, NhanVien nhanVien) throws SQLException{
		nhanVienDao.update(id, nhanVien);
	}
	
	@Override
	public BoPhan getBoPhan(Integer id) throws SQLException{
		return boPhanDao.findById(id);
	}

	@Override
	public NhanVien getNhanVien(Integer id) throws SQLException {
		return nhanVienDao.findById(id);
	}
 
}
