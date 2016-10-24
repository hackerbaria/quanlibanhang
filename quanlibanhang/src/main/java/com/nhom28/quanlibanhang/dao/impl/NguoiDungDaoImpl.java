package com.nhom28.quanlibanhang.dao.impl;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Transaction;

import com.nhom28.quanlibanhang.dao.NguoiDungDao;
import com.nhom28.quanlibanhang.pojo.NguoiDung;

public class NguoiDungDaoImpl extends AbstractGenericDao<NguoiDung> implements NguoiDungDao {

	@Override
	public boolean checkLogin(String username, String password) {
		Transaction tx = getSession().beginTransaction(); 
		boolean flag = false;
		try {
		Query employeeTaskQuery = getSession().createQuery(
                "select tenDangNhap from NguoiDung u where tenDangNhap=:username and matKhau=:password");
        employeeTaskQuery.setParameter("username", username);
        employeeTaskQuery.setParameter("password", password);
        flag =  employeeTaskQuery.getResultList().size() > 0;
        } catch (Exception e) {
        	System.out.println("erorr" + e);
        } finally {
			tx.commit();			
		}
		
        return flag;
	}

	@Override
	public boolean updatePassWord(String username, String password) {
		Transaction tx = getSession().beginTransaction(); 
		boolean flag = false;
		try {
		Query employeeTaskQuery = getSession().createQuery(
                "update NguoiDung set matKhau=:password "
                + "where tenDangNhap=:username");
        employeeTaskQuery.setParameter("username", username);
        employeeTaskQuery.setParameter("password", password);
        flag =  employeeTaskQuery.executeUpdate() >0;
        tx.commit();	
        } catch (Exception e) {
        	tx.rollback();
        	System.out.println("erorr" + e);
        } 		
        return flag;
	}

	@Override
	public NguoiDung getNguoiDung(String userName) {
		Transaction tx = getSession().beginTransaction(); 
		NguoiDung nguoiDung = new NguoiDung();
		try {
			String hql = "FROM NguoiDung E WHERE E.tenDangNhap = :username";
			Query query = getSession().createQuery(hql);
			query.setParameter("username", userName);
			List results = ((org.hibernate.Query) query).list();
			if(!results.isEmpty()) {
				nguoiDung = (NguoiDung) results.get(0);
			}
        tx.commit();	
        } catch (Exception e) {
        	tx.rollback();
        	System.out.println("erorr" + e);
        } 		
        return nguoiDung;
	}
}
