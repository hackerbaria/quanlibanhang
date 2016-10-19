package com.nhom28.quanlibanhang.dao;

import java.util.List;

/**
 * a Generic Class is used in dao layer
 * refer from this website: http://www.codesenior.com/en/tutorial/Spring-Generic-DAO-and-Generic-Service-Implementation
 * 
 * @author NgocLe
 *
 * @param <E, K>
 */
public interface GenericDao<E, K> {
	
	public void add(E entity);
	
    public void saveOrUpdate(E entity);
    
    public void update(E entity);
    
    public void remove(E entity);
    
    public E find(K key);
    
    public List<E> getAll() ;
}
