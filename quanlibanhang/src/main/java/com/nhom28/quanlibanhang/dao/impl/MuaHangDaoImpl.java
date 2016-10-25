package com.nhom28.quanlibanhang.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.nhom28.quanlibanhang.dao.MuaHangDao;
import com.nhom28.quanlibanhang.pojo.HangHoa;
import com.nhom28.quanlibanhang.pojo.MuaHang;

public class MuaHangDaoImpl extends AbstractGenericDao<MuaHang> implements MuaHangDao {

	@SuppressWarnings("deprecation")
	@Override
	public HangHoa getHangHoaByMaVach(String maVach) throws SQLException {
		Transaction tx = getSession().beginTransaction();
		@SuppressWarnings("rawtypes")
		Query query = getSession().createQuery("from HangHoa where maVachNhaSanXuat = :maVachNhaSanXuat");
		query.setString("maVachNhaSanXuat", maVach);
		List<?> list = query.list();
		HangHoa hangHoa = null;
		if(list.size() > 0){
			hangHoa = (HangHoa)query.list().get(0);
		}
		tx.commit();
		return hangHoa;
	}

}
