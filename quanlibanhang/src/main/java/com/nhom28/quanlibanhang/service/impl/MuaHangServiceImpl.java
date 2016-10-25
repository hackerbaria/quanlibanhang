package com.nhom28.quanlibanhang.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.nhom28.quanlibanhang.dao.MuaHangDao;
import com.nhom28.quanlibanhang.dao.NhanVienDao;
import com.nhom28.quanlibanhang.dao.impl.MuaHangDaoImpl;
import com.nhom28.quanlibanhang.dao.impl.NhanVienDaoImpl;
import com.nhom28.quanlibanhang.pojo.HangHoa;
import com.nhom28.quanlibanhang.pojo.MuaHang;
import com.nhom28.quanlibanhang.pojo.NhanVien;
import com.nhom28.quanlibanhang.service.MuaHangService;

public class MuaHangServiceImpl implements MuaHangService {

	MuaHangDao muaHangDao = new MuaHangDaoImpl();
	NhanVienDao nhanVienDao = new NhanVienDaoImpl();

	@Override
	public HangHoa getHangHoaByMaVach(String maVach) throws SQLException {
		return muaHangDao.getHangHoaByMaVach(maVach);
	}

	@Override
	public List<NhanVien> getAllNhanVien() throws Exception {
		return nhanVienDao.findAll();
	}

	@Override
	public void saveMuaHang(MuaHang muaHang) throws Exception {
		muaHangDao.save(muaHang);
	}
}
