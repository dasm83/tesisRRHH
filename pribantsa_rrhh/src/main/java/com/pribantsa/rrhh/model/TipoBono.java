package com.pribantsa.rrhh.model;
// Generated 08-10-2016 09:57:07 PM by Hibernate Tools 4.3.1.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * TipoBono generated by hbm2java
 */
@Entity
@Table(name = "tipo_bono", schema = "pribantsa")
public class TipoBono implements java.io.Serializable {

	private int idTipoBono;
	private PuestoTrabajo puestoTrabajo;
	private double porcentaje;

	public TipoBono() {
	}

	public TipoBono(int idTipoBono, PuestoTrabajo puestoTrabajo, double porcentaje) {
		this.idTipoBono = idTipoBono;
		this.puestoTrabajo = puestoTrabajo;
		this.porcentaje = porcentaje;
	}

	@Id

	@Column(name = "idTipoBono", nullable = false)
	public int getIdTipoBono() {
		return this.idTipoBono;
	}

	public void setIdTipoBono(int idTipoBono) {
		this.idTipoBono = idTipoBono;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idPuesto", nullable = false)
	public PuestoTrabajo getPuestoTrabajo() {
		return this.puestoTrabajo;
	}

	public void setPuestoTrabajo(PuestoTrabajo puestoTrabajo) {
		this.puestoTrabajo = puestoTrabajo;
	}

	@Column(name = "porcentaje", nullable = false, precision = 17, scale = 17)
	public double getPorcentaje() {
		return this.porcentaje;
	}

	public void setPorcentaje(double porcentaje) {
		this.porcentaje = porcentaje;
	}

}
