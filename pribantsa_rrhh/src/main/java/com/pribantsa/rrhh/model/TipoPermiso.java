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
 * TipoPermiso generated by hbm2java
 */
@Entity
@Table(name = "tipo_permiso")
public class TipoPermiso implements java.io.Serializable {

	private int idTipoPermiso;
	private String descripcion;
	private Set<Permiso> permisos = new HashSet<Permiso>(0);

	public TipoPermiso() {
	}

	public TipoPermiso(int idTipoPermiso, String descripcion) {
		this.idTipoPermiso = idTipoPermiso;
		this.descripcion = descripcion;
	}

	public TipoPermiso(int idTipoPermiso, String descripcion, Set<Permiso> permisos) {
		this.idTipoPermiso = idTipoPermiso;
		this.descripcion = descripcion;
		this.permisos = permisos;
	}

	@Id

	@Column(name = "idTipoPermiso", nullable = false)
	public int getIdTipoPermiso() {
		return this.idTipoPermiso;
	}

	public void setIdTipoPermiso(int idTipoPermiso) {
		this.idTipoPermiso = idTipoPermiso;
	}

	@Column(name = "descripcion", nullable = false)
	public String getDescripcion() {
		return this.descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "tipoPermiso")
	public Set<Permiso> getPermisos() {
		return this.permisos;
	}

	public void setPermisos(Set<Permiso> permisos) {
		this.permisos = permisos;
	}

}
