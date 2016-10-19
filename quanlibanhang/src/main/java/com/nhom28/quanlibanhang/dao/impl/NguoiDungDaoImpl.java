package com.nhom28.quanlibanhang.dao.impl;

import javax.persistence.Query;

import org.hibernate.Transaction;

import com.nhom28.quanlibanhang.dao.NguoiDungDao;
import com.nhom28.quanlibanhang.pojo.NguoiDung;

public class NguoiDungDaoImpl extends GenericDaoImpl<NguoiDung, Integer> implements NguoiDungDao {

	@Override
	public boolean checkLogin(String username, String password) {
		Transaction tx = currentSession().beginTransaction(); 
		boolean flag = false;
		try {
		Query employeeTaskQuery = currentSession().createQuery(
                "select taiKhoan from NguoiDung u where taiKhoan=:username and passWord=:password");
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
		Transaction tx = currentSession().beginTransaction(); 
		boolean flag = false;
		try {
		Query employeeTaskQuery = currentSession().createQuery(
                "update NguoiDung set passWord=:password "
                + "where taiKhoan=:username");
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
}
