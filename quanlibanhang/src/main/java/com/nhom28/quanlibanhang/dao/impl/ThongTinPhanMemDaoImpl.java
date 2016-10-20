package com.nhom28.quanlibanhang.dao.impl;



import java.util.List;

import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.nhom28.quanlibanhang.dao.ThongTinPhanMemDao;
import com.nhom28.quanlibanhang.pojo.ThongTinDonViSuDung;

public class ThongTinPhanMemDaoImpl extends AbstractGenericDao<ThongTinDonViSuDung> implements ThongTinPhanMemDao {

	@Override
	public ThongTinDonViSuDung getThongTinPhanMem() {
		Transaction tx = getSession().beginTransaction(); 
		boolean flag = false;
		ThongTinDonViSuDung w = null;
		try {
		Query query = getSession().createQuery("from ThongTinDonViSuDung");
		List<ThongTinDonViSuDung> list =  query.list(); 

		w = (ThongTinDonViSuDung) list.get(0);
		return w;
        } catch (Exception e) {
        	System.out.println("erorr" + e);
        } finally {
			tx.commit();			
		}
		return w;
	}
	
	

}
