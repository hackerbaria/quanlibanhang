package com.nhom28.quanlibanhang.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.nhom28.quanlibanhang.dao.TyGiaDao;
import com.nhom28.quanlibanhang.pojo.TyGia;

public class TyGiaDaoImpl extends AbstractGenericDao<TyGia> implements TyGiaDao {

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
	
	@SuppressWarnings("deprecation")
	@Override
	public void delete(Integer id) throws SQLException {
		Transaction tx = getSession().beginTransaction();
		boolean flag = false;
		List<TyGia> list = new ArrayList<>();
		try {
			Query query = getSession().createQuery("delete from TyGia where id = :id");
			query.setInteger("id", id);
			query.executeUpdate();
		} catch (Exception e) {
			System.out.println("erorr" + e);
		} finally {
			tx.commit();
		}
	}
	
	@Override
	public void update(Integer id, String maLoaiTien, String loaiTien, Double tyGiaVnd)
			throws SQLException {
		Transaction tx = getSession().beginTransaction();
		boolean flag = false;
		List<TyGia> list = new ArrayList<>();
		try {
			String str = "update TyGia set maLoaiTien = :maLoaiTien, loaiTien = :loaiTien, tyGiaVnd = :tyGiaVnd where id = :id";
			Query query = getSession().createQuery(str);
			query.setString("maLoaiTien", maLoaiTien);
			query.setString("loaiTien", maLoaiTien);
			query.setDouble("tyGiaVnd", tyGiaVnd);
			query.setInteger("id", id);
			query.executeUpdate();
		} catch (Exception e) {
			System.out.println("erorr" + e);
		} finally {
			tx.commit();
		}
	}
}
