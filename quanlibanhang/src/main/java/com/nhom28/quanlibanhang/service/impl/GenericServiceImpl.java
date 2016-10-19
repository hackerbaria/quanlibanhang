package com.nhom28.quanlibanhang.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import com.nhom28.quanlibanhang.dao.GenericDao;
import com.nhom28.quanlibanhang.service.GenericService;

public abstract class GenericServiceImpl<E, K> implements GenericService<E, K> {

	private GenericDao<E, K> genericDao;
	 
    public GenericServiceImpl(GenericDao<E,K> genericDao) {
        this.genericDao = genericDao;
    }
    
    public GenericServiceImpl() {
    }
 
    @Override
    @Transactional(value = Transactional.TxType.REQUIRES_NEW)
    public void saveOrUpdate(E entity) {
        genericDao.saveOrUpdate(entity);
    }
 
    @Override
    @Transactional(value = Transactional.TxType.REQUIRES_NEW)
    public List<E> getAll() {
        return genericDao.getAll();
    }
 
    @Override
    @Transactional(value = Transactional.TxType.REQUIRES_NEW)
    public E get(K id) {
        return genericDao.find(id);
    }
 
    @Override
    @Transactional(value = Transactional.TxType.REQUIRES_NEW)
    public void add(E entity) {
        genericDao.add(entity);
    }
 
    @Override
    @Transactional(value = Transactional.TxType.REQUIRES_NEW)
    public void update(E entity) {
        genericDao.update(entity);
    }
 
    @Override
    @Transactional(value = Transactional.TxType.REQUIRES_NEW)
    public void remove(E entity) {
        genericDao.remove(entity);
    }
 
}
