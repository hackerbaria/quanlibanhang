package com.nhom28.quanlibanhang.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.nhom28.quanlibanhang.dao.NhomHangDao;
import com.nhom28.quanlibanhang.pojo.NhomHang;

public class NhomHangDaoImpl extends AbstractGenericDao<NhomHang> implements NhomHangDao {

	@SuppressWarnings({ "unchecked", "deprecation", "rawtypes" })
	@Override
	public List<NhomHang> getAll() throws SQLException {
		Transaction tx = getSession().beginTransaction();
		List<NhomHang> list = new ArrayList<>();
		try {
			Query query = getSession().createQuery("from NhomHang");
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
			Query query = getSession().createQuery("delete from NhomHang where id = :id");
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
	public void update(Integer id, String maNhomHang, String tenNhomHang,
			String ghiChu, byte conQuanLy) throws SQLException {
		Transaction tx = getSession().beginTransaction();
		try {
			String str = "update NhomHang set maNhomHang = :maNhomHang, tenNhomHang = :tenNhomHang, ghiChu = :ghiChu, conQuanLy = :conQuanLy where id = :id";
			Query query = getSession().createQuery(str);
			query.setString("maNhomHang", maNhomHang);
			query.setString("tenNhomHang", tenNhomHang);
			query.setString("ghiChu", ghiChu);
			query.setByte("conQuanLy", conQuanLy);
			query.setInteger("id", id);
			query.executeUpdate();
		} catch (Exception e) {
			System.out.println("erorr" + e);
		} finally {
			tx.commit();
		}
	}
}
