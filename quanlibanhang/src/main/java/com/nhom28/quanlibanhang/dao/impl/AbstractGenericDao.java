package com.nhom28.quanlibanhang.dao.impl;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Example;

import com.nhom28.quanlibanhang.dao.GenericDao;


public abstract class AbstractGenericDao<E extends Serializable> 
	implements GenericDao<E> {
	
	
    private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
     
    private final Class<E> entityClass;
    
        
    /**
    * By defining this class as abstract, we prevent Spring from creating 
    * instance of this class If not defined as abstract, 
    * getClass().getGenericSuperClass() would return Object. There would be 
    * exception because Object class does not hava constructor with parameters.
    */
    @SuppressWarnings("unchecked")
    public AbstractGenericDao() {    		
    	this.entityClass = (Class<E>) ((ParameterizedType) this.getClass().getGenericSuperclass())
				.getActualTypeArguments()[0];
    }    
   
     
    protected Session getSession() {    	  	
		return this.sessionFactory.getCurrentSession();
	}

	@Override
	public E findById(final Serializable id) {
		return (E) getSession().get(this.entityClass, id);
	}

	@Override	
	public Serializable save(E entity) {
		return getSession().save(entity);
	}

	@Override
	public void saveOrUpdate(E entity) {
		getSession().saveOrUpdate(entity);
	}

	@Override
	public void delete(E entity) {
		getSession().delete(entity);
	}

	@Override
	public void deleteAll() {
		List<E> entities = findAll();
		for (E entity : entities) {
			getSession().delete(entity);
		}
	}

	@Override
	@Transactional(Transactional.TxType.REQUIRES_NEW)
	public List<E> findAll() {
		Transaction tx = getSession().beginTransaction();	
		return getSession().createCriteria(this.entityClass).list();
	}

	@Override
	public List<E> findAllByExample(E entity) {		
		Example example = Example.create(entity).ignoreCase().enableLike().excludeZeroes();
		return getSession().createCriteria(this.entityClass).add(example).list();
	}

	@Override
	public void clear() {
		getSession().clear();

	}

	@Override
	public void flush() {
		getSession().flush();

	}

}
