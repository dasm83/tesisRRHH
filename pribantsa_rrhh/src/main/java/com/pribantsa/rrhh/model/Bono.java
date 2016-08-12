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
 * Bono generated by hbm2java
 */
@Entity
@Table(name = "bono", schema = "pribantsa")
public class Bono implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4304836586978338879L;
	private int idBono;
	private Empleado empleado;
	private Date fecha;
	private int idTipoBono;

	public Bono() {
	}

	public Bono(int idBono, Empleado empleado, Date fecha, int idTipoBono) {
		this.idBono = idBono;
		this.empleado = empleado;
		this.fecha = fecha;
		this.idTipoBono = idTipoBono;
	}

	@Id

	@Column(name = "idBono", nullable = false)
	public int getIdBono() {
		return this.idBono;
	}

	public void setIdBono(int idBono) {
		this.idBono = idBono;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idEmpleado", nullable = false)
	public Empleado getEmpleado() {
		return this.empleado;
	}

	public void setEmpleado(Empleado empleado) {
		this.empleado = empleado;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "fecha", nullable = false, length = 13)
	public Date getFecha() {
		return this.fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	@Column(name = "idTipoBono", nullable = false)
	public int getIdTipoBono() {
		return this.idTipoBono;
	}

	public void setIdTipoBono(int idTipoBono) {
		this.idTipoBono = idTipoBono;
	}

}
