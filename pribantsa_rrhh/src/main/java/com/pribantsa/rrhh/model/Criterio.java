package com.pribantsa.rrhh.model;
// Generated 08-10-2016 09:57:07 PM by Hibernate Tools 4.3.1.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Criterio generated by hbm2java
 */
@Entity
@Table(name = "criterio", schema = "pribantsa")
public class Criterio implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4733870916740290926L;
	private int idCriterio;
	private PuestoTrabajo puestoTrabajo;
	private String descripcion;
	private int peso;
	private Set<Evaluacion> evaluacions = new HashSet<Evaluacion>(0);

	public Criterio() {
	}

	public Criterio(int idCriterio, PuestoTrabajo puestoTrabajo, String descripcion, int peso) {
		this.idCriterio = idCriterio;
		this.puestoTrabajo = puestoTrabajo;
		this.descripcion = descripcion;
		this.peso = peso;
	}

	public Criterio(int idCriterio, PuestoTrabajo puestoTrabajo, String descripcion, int peso,
			Set<Evaluacion> evaluacions) {
		this.idCriterio = idCriterio;
		this.puestoTrabajo = puestoTrabajo;
		this.descripcion = descripcion;
		this.peso = peso;
		this.evaluacions = evaluacions;
	}

	@Id

	@Column(name = "idCriterio", nullable = false)
	public int getIdCriterio() {
		return this.idCriterio;
	}

	public void setIdCriterio(int idCriterio) {
		this.idCriterio = idCriterio;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idPuesto", nullable = false)
	public PuestoTrabajo getPuestoTrabajo() {
		return this.puestoTrabajo;
	}

	public void setPuestoTrabajo(PuestoTrabajo puestoTrabajo) {
		this.puestoTrabajo = puestoTrabajo;
	}

	@Column(name = "descripcion", nullable = false)
	public String getDescripcion() {
		return this.descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	@Column(name = "peso", nullable = false)
	public int getPeso() {
		return this.peso;
	}

	public void setPeso(int peso) {
		this.peso = peso;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "criterio")
	public Set<Evaluacion> getEvaluacions() {
		return this.evaluacions;
	}

	public void setEvaluacions(Set<Evaluacion> evaluacions) {
		this.evaluacions = evaluacions;
	}

}
