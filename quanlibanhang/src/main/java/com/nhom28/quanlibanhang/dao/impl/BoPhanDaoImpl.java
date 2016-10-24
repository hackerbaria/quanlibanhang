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
		List<BoPhan> listBoPhans = new ArrayList<>();
		List<BoPhanDto> listBoPhanDtos = new ArrayList<>();
		try {
			Query query = getSession().createQuery(" from BoPhan");
			listBoPhans = query.list();
			for(BoPhan boPhan : listBoPhans){
				Integer id = boPhan.getId();
				String tenBoPhan = boPhan.getTenBoPhan();
				Integer idNguoiQuanLy = boPhan.getIdNguoiQuanLy();
				query = getSession().createQuery("select tenNhanVien from NhanVien where id = :id");
				query.setInteger("id", idNguoiQuanLy);
				String tenNhanVien = query.getResultList().get(0).toString();
				String ghiChu = boPhan.getGhiChu();
				Byte conQuanLy = boPhan.getConQuanLy();
				BoPhanDto boPhanDto = new BoPhanDto(id, tenBoPhan, tenNhanVien, ghiChu, conQuanLy);
				listBoPhanDtos.add(boPhanDto);
			}
			
			return listBoPhanDtos;
		} catch (Exception e) {
			System.out.println("erorr" + e);
		} finally {
			tx.commit();
		}
		return listBoPhanDtos;
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
			Integer idNguoiQuanLy, String ghiChu, byte conQuanLy)
			throws SQLException {
		Transaction tx = getSession().beginTransaction();
		try {
			String str = "update BoPhan set tenBoPhan = :tenBoPhan, idNguoiQuanLy = :idNguoiQuanLy"
					+ ", ghiChu = :ghiChu, conQuanLy = :conQuanLy where id = :id";
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

	
	@Override
	public List<String> getListStaffNames() throws SQLException{
		Transaction tx = getSession().beginTransaction();
		Query query = getSession().createQuery("select tenNhanVien from NhanVien");
		List<String> list = query.list();
		tx.commit();
		return list;
	}
	
	@Override
	public Integer getStaffId(String tenNhanVien) throws SQLException{
		Transaction tx = getSession().beginTransaction();
		Query query = getSession().createQuery("select id from NhanVien where tenNhanVien = :tenNhanVien");
		query.setString("tenNhanVien", tenNhanVien);
		Integer id = (Integer)query.list().get(0);
		tx.commit();
		return id;
	}
}
