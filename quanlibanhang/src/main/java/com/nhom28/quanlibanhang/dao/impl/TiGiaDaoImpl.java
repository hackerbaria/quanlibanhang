package com.nhom28.quanlibanhang.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.nhom28.quanlibanhang.dao.TiGiaDao;
import com.nhom28.quanlibanhang.pojo.ThongTinDonViSuDung;
import com.nhom28.quanlibanhang.pojo.TyGia;

public class TiGiaDaoImpl extends AbstractGenericDao<TyGia> implements TiGiaDao {

	@Override
	public List<TyGia> getAllExcchangeRates() throws SQLException {
		Transaction tx = getSession().beginTransaction();
		boolean flag = false;
		List<TyGia> list = new ArrayList<>();
		try {
			Query query = getSession().createQuery("from TyGia");
			list = query.list();
			return list;
		} catch (Exception e) {
			System.out.println("erorr" + e);
		} finally {
			tx.commit();
		}
		return list;
	}
}
