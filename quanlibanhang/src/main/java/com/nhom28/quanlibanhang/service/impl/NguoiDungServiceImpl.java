package com.nhom28.quanlibanhang.service.impl;

import com.nhom28.quanlibanhang.dao.DonViTinhDao;
import com.nhom28.quanlibanhang.dao.NguoiDungDao;
import com.nhom28.quanlibanhang.dao.PhanQuyenDao;
import com.nhom28.quanlibanhang.dao.impl.AbstractGenericDao;
import com.nhom28.quanlibanhang.dao.impl.DonViTinhDaoImpl;
import com.nhom28.quanlibanhang.dao.impl.NguoiDungDaoImpl;
import com.nhom28.quanlibanhang.dao.impl.PhanQuyenDaoImpl;
import com.nhom28.quanlibanhang.pojo.DonViTinh;
import com.nhom28.quanlibanhang.pojo.NguoiDung;
import com.nhom28.quanlibanhang.pojo.PhanQuyen;
import com.nhom28.quanlibanhang.service.NguoiDungService;
import java.util.List;
import javax.transaction.Transactional;

public class NguoiDungServiceImpl extends AbstractGenericDao<NguoiDung>
	implements NguoiDungService {

	NguoiDungDao nguoiDungDao = new NguoiDungDaoImpl();
	
	DonViTinhDao donViDao = new DonViTinhDaoImpl();
	
	PhanQuyenDao phanQuyenDao = new PhanQuyenDaoImpl();
	
	@Override
	//@Transactional(value = Transactional.TxType.MANDATORY)
	public boolean checkLogin(String username, String password) {
		return nguoiDungDao.checkLogin(username, password);
	}

	@Override
	public boolean updatePassWord(String username, String password) {
		return nguoiDungDao.updatePassWord(username, password);
	}

	@Override
	public boolean insertNguoiDung(NguoiDung ng) {
		
		nguoiDungDao.save(ng);
		return true;
	}

        @Override
        @Transactional
        public List<DonViTinh> getDonViTinhList() {
            DonViTinhDao donViTinhDao = new DonViTinhDaoImpl();
            return  donViTinhDao.findAll();
        }

		@Override
		public boolean deleteDonViTinh(int id) {
			DonViTinh entity = donViDao.findById(id);
			donViDao.delete(entity);
			return true;
		}

		@Override
		public NguoiDung getNguoiDung(String username) {
			return nguoiDungDao.getNguoiDung(username);
		}

		@Override
		public PhanQuyen getPhanQuyen(Integer maQuyen) {			
			return phanQuyenDao.getQuyenByMaQuyen(maQuyen);
		}

		@Override
		public List<NguoiDung> getAllNguoiDung() {
			return nguoiDungDao.findAll();
		}

	

}
