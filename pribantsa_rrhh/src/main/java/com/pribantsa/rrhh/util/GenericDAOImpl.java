package com.pribantsa.rrhh.util;

import java.io.Serializable;
import java.util.List;
import java.lang.reflect.ParameterizedType;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("GenericDAO")
public class GenericDAOImpl<T extends Serializable, ID extends Serializable> implements GenericDAO<T, ID>{
	
	@Autowired
	private SessionFactory sf;
	protected final Class<T> persistentClass;
	
	
	@SuppressWarnings("unchecked")
	public GenericDAOImpl(){
		this.persistentClass = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
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
		return (T) sf.getCurrentSession().get(persistentClass, id);
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
		return sf.getCurrentSession().createCriteria(persistentClass);
	}

}
