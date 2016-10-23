package com.nhom28.quanlibanhang.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.nhom28.quanlibanhang.dao.TyGiaDao;
import com.nhom28.quanlibanhang.pojo.TyGia;

public class TyGiaDaoImpl extends AbstractGenericDao<TyGia> implements TyGiaDao {

	@SuppressWarnings({ "unchecked", "rawtypes", "deprecation" })
	@Override
	public List<TyGia> getAll() throws SQLException {
		Transaction tx = getSession().beginTransaction();
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
	
	@SuppressWarnings({ "deprecation", "rawtypes" })
	@Override
	public void delete(Integer id) throws SQLException {
		Transaction tx = getSession().beginTransaction();
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
	
	@SuppressWarnings({ "deprecation", "rawtypes" })
	@Override
	public void update(Integer id, String maLoaiTien, String loaiTien, Double tyGiaVnd)
			throws SQLException {
		Transaction tx = getSession().beginTransaction();
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
