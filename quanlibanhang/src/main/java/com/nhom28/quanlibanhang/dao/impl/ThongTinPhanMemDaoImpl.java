package com.nhom28.quanlibanhang.dao.impl;



import java.util.List;



import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.nhom28.quanlibanhang.dao.ThongTinPhanMemDao;
import com.nhom28.quanlibanhang.pojo.ThongTinPhanMem;

public class ThongTinPhanMemDaoImpl extends AbstractGenericDao<ThongTinPhanMem> implements ThongTinPhanMemDao {

	@Override
	public ThongTinPhanMem getThongTinPhanMem() {
		Transaction tx = getSession().beginTransaction(); 
		boolean flag = false;
		ThongTinPhanMem w = null;
		try {
		Query query = getSession().createQuery("from ThongTinPhanMem");
		List<ThongTinPhanMem> list =  query.list(); 

		w = (ThongTinPhanMem) list.get(0);
		return w;
        } catch (Exception e) {
        	System.out.println("erorr" + e);
        } finally {
			tx.commit();			
		}
		return w;
	}
	
	

}
