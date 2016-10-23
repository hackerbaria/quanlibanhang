package com.nhom28.quanlibanhang.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.nhom28.quanlibanhang.dao.BoPhanDao;
import com.nhom28.quanlibanhang.dao.impl.BoPhanDaoImpl;
import com.nhom28.quanlibanhang.dto.BoPhanDto;
import com.nhom28.quanlibanhang.pojo.BoPhan;
import com.nhom28.quanlibanhang.service.BoPhanService;

public class BoPhanServiceImpl implements BoPhanService {

	BoPhanDao boPhanDao = new BoPhanDaoImpl();
	
	@Override
    public List<BoPhanDto> getAll() throws SQLException {
		return boPhanDao.getAll();
    }

	@Override
	public void add(BoPhanDto boPhanDto) throws SQLException {
		String tenBoPhan = boPhanDto.getTenBoPhan();
		Integer idNguoiQuanLy = boPhanDto.getIdNguoiQuanLy();
		String tenNguoiQuanLy = boPhanDto.getTenNguoiQuanLy();
		String ghiChu = boPhanDto.getGhiChu();
		byte conQuanLy = boPhanDto.getConQuanLy();
		
		BoPhan boPhan = new BoPhan(tenBoPhan, idNguoiQuanLy, ghiChu, conQuanLy);
		
		// udate bo phan
		boPhanDao.save(boPhan);
		// update name of nhanvien
		boPhanDao.updateNhanVien(idNguoiQuanLy, tenNguoiQuanLy);
		
	}
 
	@Override
	public void delete(Integer id) throws SQLException{
		boPhanDao.delete(id);
	}
	
	@Override
	public void update(Integer id, String tenBoPhan,
			String nguoiQuanLy, String ghiChu, byte conQuanLy) throws SQLException{
		boPhanDao.updateBoPhan(id, tenBoPhan, ghiChu, conQuanLy);
	}
 
}
