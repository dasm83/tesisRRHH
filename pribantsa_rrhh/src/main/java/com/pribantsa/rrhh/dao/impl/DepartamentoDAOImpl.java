package com.pribantsa.rrhh.dao.impl;

import org.springframework.stereotype.Repository;

import com.pribantsa.rrhh.dao.DepartamentoDAO;
import com.pribantsa.rrhh.model.Departamento;
import com.pribantsa.rrhh.util.GenericDAOImpl;

@Repository("DepartamentoDAO")
public class DepartamentoDAOImpl extends GenericDAOImpl<Departamento, Long> implements DepartamentoDAO{

	

}
