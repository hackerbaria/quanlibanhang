package com.nhom28.quanlibanhang.dao.impl;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Transaction;

import com.nhom28.quanlibanhang.dao.PhanQuyenDao;
import com.nhom28.quanlibanhang.pojo.NguoiDung;
import com.nhom28.quanlibanhang.pojo.PhanQuyen;

public class PhanQuyenDaoImpl extends AbstractGenericDao<PhanQuyen> implements PhanQuyenDao {

	@Override
	public PhanQuyen getQuyenByMaQuyen(String maQuyen) {
		Transaction tx = getSession().beginTransaction(); 
		PhanQuyen phanQuyen = new PhanQuyen();
		try {
			String hql = "FROM PhanQuyen E WHERE E.NhomNguoiDung.id = :ma";
			Query query = getSession().createQuery(hql);
			query.setParameter("ma", maQuyen);
			List results = ((org.hibernate.Query) query).list();
			if(!results.isEmpty()) {
				phanQuyen = (PhanQuyen) results.get(0);
			}
        tx.commit();	
        } catch (Exception e) {
        	tx.rollback();
        	System.out.println("erorr" + e);
        } 		
        return phanQuyen;
	}

}
