package com.pribantsa.rrhh.util;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;

public class GenericDAOImpl<T, ID extends Serializable> implements GenericDAO<T, ID>{
	
	private SessionFactory sf;
	private Class<T> persistentClass;
	

	protected GenericDAOImpl(SessionFactory sf){
		this.sf = sf;
	}
	
	public Class<T> getPersistentClass() {  
        return persistentClass;  
    }

	@SuppressWarnings("unchecked")
	@Override
	public T save(T o) {
		return (T) sf.getCurrentSession().save(o);
	}

	@Override
	public void delete(Object object) {
		sf.getCurrentSession().delete(object);
	}

	@SuppressWarnings("unchecked")
	@Override
	public T findById(ID id) {
		return (T) sf.getCurrentSession().get(getPersistentClass(), id);
	}

	@Override
	public void saveOrUpdate(T o) {
		sf.getCurrentSession().saveOrUpdate(o);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findAll() {
		return getCriteria().list();
	}
	
	public Criteria getCriteria(){
		return sf.getCurrentSession().createCriteria(getPersistentClass());
	}

}
