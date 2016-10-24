package com.nhom28.quanlibanhang.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.nhom28.quanlibanhang.dao.NhanVienDao;
import com.nhom28.quanlibanhang.pojo.NhanVien;

public class NhanVienDaoImpl extends AbstractGenericDao<NhanVien> implements
		NhanVienDao {
	
	@SuppressWarnings("deprecation")
	public void delete(Integer id) throws SQLException{
		Transaction tx = getSession().beginTransaction();
		try {
			@SuppressWarnings("rawtypes")
			Query query = getSession().createQuery("delete from NhanVien where id = :id");
			query.setInteger("id", id);
			query.executeUpdate();
		} catch (Exception e) {
			System.out.println("erorr" + e);
		} finally {
			tx.commit();
		}
	}

	@SuppressWarnings({ "deprecation", "deprecation", "rawtypes" })
	public void update(Integer id, NhanVien nhanVien) throws SQLException{
		Transaction tx = getSession().beginTransaction();
		try {
			String str = "update NhanVien set maNhanVien = :maNhanVien, tenNhanVien = :tenNhanVien, gioiTinh = :gioiTinh,"
					+ " diaChi = :diaChi, conDocThan = :conDocThan, chucVu = :chucVu, email = :email,"
					+ " dienThoai = :dienThoai, diDong = :diDong, dienGiai = :dienGiai, conQuanLy = :conQuanLy where id = :id";
			Query query = getSession().createQuery(str);
			query.setInteger("id", id);
			query.setString("maNhanVien", nhanVien.getMaNhanVien());
			query.setString("tenNhanVien", nhanVien.getTenNhanVien());
			query.setByte("gioiTinh", nhanVien.getGioiTinh());
			query.setString("diaChi", nhanVien.getDiaChi());
			query.setByte("conDocThan", nhanVien.getConDocThan());
			query.setString("chucVu", nhanVien.getChucVu());
			query.setString("email", nhanVien.getEmail());
			query.setString("dienThoai", nhanVien.getDienThoai());
			query.setString("diDong", nhanVien.getDiDong());
			query.setString("dienGiai", nhanVien.getDienGiai());
			query.setByte("conQuanLy", nhanVien.getConQuanLy());
			query.executeUpdate();
		} catch (Exception e) {
			System.out.println("erorr" + e);
		} finally {
			tx.commit();
		}
	}
}
