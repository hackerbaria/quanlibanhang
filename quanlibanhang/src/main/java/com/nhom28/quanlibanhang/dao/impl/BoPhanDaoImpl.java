package com.nhom28.quanlibanhang.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.nhom28.quanlibanhang.dao.BoPhanDao;
import com.nhom28.quanlibanhang.dto.BoPhanDto;
import com.nhom28.quanlibanhang.pojo.BoPhan;

public class BoPhanDaoImpl extends AbstractGenericDao<BoPhan> implements BoPhanDao {

	@SuppressWarnings({ "unchecked", "rawtypes", "deprecation" })
	@Override
	public List<BoPhanDto> getAll() throws SQLException {
		Transaction tx = getSession().beginTransaction();
		List<BoPhanDto> list = new ArrayList<>();
		try {
			Query query = getSession().createQuery("select a.tenBoPhan, b.tenNhanVien, a.ghiChu, a.conQuanLy"
					+ " from BoPhan a, NhanVien b where a.idNguoiQuanLy = b.id");
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
			Query query = getSession().createQuery("delete from BoPhan where id = :id");
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
	public void updateBoPhan(Integer id, String tenBoPhan,
			String ghiChu, byte conQuanLy)
			throws SQLException {
		Transaction tx = getSession().beginTransaction();
		try {
			String str = "update BoPhan set tenBoPhan = :tenBoPhan, ghiChu = :ghiChu, conQuanLy = :conQuanLy where id = :id";
			Query query = getSession().createQuery(str);
			query.setString("tenBoPhan", tenBoPhan);
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

	@Override
	public void updateNhanVien(Integer idNguoiQuanLy, String tenNguoiQuanLy)
			throws SQLException {
		Transaction tx = getSession().beginTransaction();
		try {
			String str = "update NhanVien set tenNhanVien = :tenNhanVien where id = :id";
			Query query = getSession().createQuery(str);
			query.setString("tenNhanVien", tenNguoiQuanLy);
			query.setInteger("id", idNguoiQuanLy);
			query.executeUpdate();
		} catch (Exception e) {
			System.out.println("erorr" + e);
		} finally {
			tx.commit();
		}
		
	}
}
