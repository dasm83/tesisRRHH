package com.pribantsa.rrhh.model;
// Generated 08-10-2016 09:57:07 PM by Hibernate Tools 4.3.1.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * PuestoTrabajo generated by hbm2java
 */
@Entity
@Table(name = "puesto_trabajo", schema = "pribantsa")
public class PuestoTrabajo implements java.io.Serializable {

	private int idPuestoTrabajo;
	private String nombre;
	private String descripcion;
	private double salarioMax;
	private double salarioMin;
	private Set<TipoBono> tipoBonos = new HashSet<TipoBono>(0);
	private Set<Empleado> empleados = new HashSet<Empleado>(0);
	private Set<Objetivo> objetivos = new HashSet<Objetivo>(0);
	private Set<PuestoHistorico> puestoHistoricos = new HashSet<PuestoHistorico>(0);
	private Set<Criterio> criterios = new HashSet<Criterio>(0);

	public PuestoTrabajo() {
	}

	public PuestoTrabajo(int idPuestoTrabajo, String nombre, String descripcion, double salarioMax, double salarioMin) {
		this.idPuestoTrabajo = idPuestoTrabajo;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.salarioMax = salarioMax;
		this.salarioMin = salarioMin;
	}

	public PuestoTrabajo(int idPuestoTrabajo, String nombre, String descripcion, double salarioMax, double salarioMin,
			Set<TipoBono> tipoBonos, Set<Empleado> empleados, Set<Objetivo> objetivos,
			Set<PuestoHistorico> puestoHistoricos, Set<Criterio> criterios) {
		this.idPuestoTrabajo = idPuestoTrabajo;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.salarioMax = salarioMax;
		this.salarioMin = salarioMin;
		this.tipoBonos = tipoBonos;
		this.empleados = empleados;
		this.objetivos = objetivos;
		this.puestoHistoricos = puestoHistoricos;
		this.criterios = criterios;
	}

	@Id

	@Column(name = "id_puesto_trabajo", unique = true, nullable = false)
	public int getIdPuestoTrabajo() {
		return this.idPuestoTrabajo;
	}

	public void setIdPuestoTrabajo(int idPuestoTrabajo) {
		this.idPuestoTrabajo = idPuestoTrabajo;
	}

	@Column(name = "nombre", nullable = false)
	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	@Column(name = "descripcion", nullable = false)
	public String getDescripcion() {
		return this.descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	@Column(name = "salario_max", nullable = false, precision = 17, scale = 17)
	public double getSalarioMax() {
		return this.salarioMax;
	}

	public void setSalarioMax(double salarioMax) {
		this.salarioMax = salarioMax;
	}

	@Column(name = "salario_min", nullable = false, precision = 17, scale = 17)
	public double getSalarioMin() {
		return this.salarioMin;
	}

	public void setSalarioMin(double salarioMin) {
		this.salarioMin = salarioMin;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "puestoTrabajo")
	public Set<TipoBono> getTipoBonos() {
		return this.tipoBonos;
	}

	public void setTipoBonos(Set<TipoBono> tipoBonos) {
		this.tipoBonos = tipoBonos;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "puestoTrabajo")
	public Set<Empleado> getEmpleados() {
		return this.empleados;
	}

	public void setEmpleados(Set<Empleado> empleados) {
		this.empleados = empleados;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "puestoTrabajo")
	public Set<Objetivo> getObjetivos() {
		return this.objetivos;
	}

	public void setObjetivos(Set<Objetivo> objetivos) {
		this.objetivos = objetivos;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "puestoTrabajo")
	public Set<PuestoHistorico> getPuestoHistoricos() {
		return this.puestoHistoricos;
	}

	public void setPuestoHistoricos(Set<PuestoHistorico> puestoHistoricos) {
		this.puestoHistoricos = puestoHistoricos;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "puestoTrabajo")
	public Set<Criterio> getCriterios() {
		return this.criterios;
	}

	public void setCriterios(Set<Criterio> criterios) {
		this.criterios = criterios;
	}

}
