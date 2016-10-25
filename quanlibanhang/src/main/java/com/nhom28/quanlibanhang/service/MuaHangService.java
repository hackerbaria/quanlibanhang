package com.nhom28.quanlibanhang.service;

import java.sql.SQLException;
import java.util.List;

import com.nhom28.quanlibanhang.pojo.HangHoa;
import com.nhom28.quanlibanhang.pojo.MuaHang;
import com.nhom28.quanlibanhang.pojo.NhanVien;

public interface MuaHangService {
	
	public HangHoa getHangHoaByMaVach(String maVach) throws SQLException;
	
	public List<NhanVien> getAllNhanVien() throws Exception;
	
	public void saveMuaHang(MuaHang muaHang)throws Exception;
}
