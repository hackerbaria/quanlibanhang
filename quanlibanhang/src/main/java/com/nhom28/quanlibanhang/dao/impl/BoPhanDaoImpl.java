package com.nhom28.quanlibanhang.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.nhom28.quanlibanhang.dao.BoPhanDao;
import com.nhom28.quanlibanhang.pojo.BoPhan;

public class BoPhanDaoImpl extends AbstractGenericDao<BoPhan> implements BoPhanDao {

	@SuppressWarnings({ "unchecked", "rawtypes", "deprecation" })
	@Override
	public List<BoPhan> getAll() throws SQLException {
		Transaction tx = getSession().beginTransaction();
		List<BoPhan> list = new ArrayList<>();
		try {
			Query query = getSession().createQuery("from BoPhan");
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
	public void update(Integer id, String tenBoPhan,
	int idNguoiQuanLy, String ghiChu, byte conQuanLy)
			throws SQLException {
		Transaction tx = getSession().beginTransaction();
		try {
			String str = "update BoPhan set tenBoPhan = :tenBoPhan, idNguoiQuanLy = :idNguoiQuanLy, ghiChu = :ghiChu, conQuanLy = :conQuanLy where id = :id";
			Query query = getSession().createQuery(str);
			query.setString("tenBoPhan", tenBoPhan);
			query.setInteger("idNguoiQuanLy", idNguoiQuanLy);
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
