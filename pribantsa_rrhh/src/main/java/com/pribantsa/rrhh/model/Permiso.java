package com.pribantsa.rrhh.model;
// Generated 08-10-2016 09:57:07 PM by Hibernate Tools 4.3.1.Final

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Permiso generated by hbm2java
 */
@Entity
@Table(name = "permiso", schema = "pribantsa")
public class Permiso implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5207055109600211759L;
	private int idPermiso;
	private Empleado empleado;
	private TipoPermiso tipoPermiso;
	private boolean remunerado;
	private Date inicio;
	private Date fin;

	public Permiso() {
	}

	public Permiso(int idPermiso, Empleado empleado, TipoPermiso tipoPermiso, boolean remunerado, Date inicio,
			Date fin) {
		this.idPermiso = idPermiso;
		this.empleado = empleado;
		this.tipoPermiso = tipoPermiso;
		this.remunerado = remunerado;
		this.inicio = inicio;
		this.fin = fin;
	}

	@Id

	@Column(name = "idPermiso", nullable = false)
	public int getIdPermiso() {
		return this.idPermiso;
	}

	public void setIdPermiso(int idPermiso) {
		this.idPermiso = idPermiso;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idEmpleado", nullable = false)
	public Empleado getEmpleado() {
		return this.empleado;
	}

	public void setEmpleado(Empleado empleado) {
		this.empleado = empleado;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idTipoPermiso", nullable = false)
	public TipoPermiso getTipoPermiso() {
		return this.tipoPermiso;
	}

	public void setTipoPermiso(TipoPermiso tipoPermiso) {
		this.tipoPermiso = tipoPermiso;
	}

	@Column(name = "remunerado", nullable = false)
	public boolean isRemunerado() {
		return this.remunerado;
	}

	public void setRemunerado(boolean remunerado) {
		this.remunerado = remunerado;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "inicio", nullable = false, length = 29)
	public Date getInicio() {
		return this.inicio;
	}

	public void setInicio(Date inicio) {
		this.inicio = inicio;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "fin", nullable = false, length = 29)
	public Date getFin() {
		return this.fin;
	}

	public void setFin(Date fin) {
		this.fin = fin;
	}

}
