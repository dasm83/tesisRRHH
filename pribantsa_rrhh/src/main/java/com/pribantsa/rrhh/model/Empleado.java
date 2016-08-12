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
 * Empleado generated by hbm2java
 */
@Entity
@Table(name = "empleado", schema = "pribantsa")
public class Empleado implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7342093838138386589L;
	private int empleadoId;
	private Departamento departamento;
	private PuestoTrabajo puestoTrabajo;
	private String dui;
	private String isss;
	private String afp;
	private String sexo;
	private String nit;
	private String nombre;
	private String apellido;
	private String cuenta;
	private double salario;
	private Integer edad;
	private String estadoCivil;
	private Integer idx;
	private Set<Educacion> educacions = new HashSet<Educacion>(0);
	private Set<Reconocimiento> reconocimientos = new HashSet<Reconocimiento>(0);
	private Set<Transaccion> transaccions = new HashSet<Transaccion>(0);
	private Set<Contrato> contratos = new HashSet<Contrato>(0);
	private Set<Permiso> permisos = new HashSet<Permiso>(0);
	private Set<Correo> correos = new HashSet<Correo>(0);
	private Set<ExpLaboral> expLaborals = new HashSet<ExpLaboral>(0);
	private Set<Capacitacion> capacitacions = new HashSet<Capacitacion>(0);
	private Set<PuestoHistorico> puestoHistoricos = new HashSet<PuestoHistorico>(0);
	private Set<Descuento> descuentos = new HashSet<Descuento>(0);
	private Set<Planilla> planillas = new HashSet<Planilla>(0);
	private Set<Vacacion> vacacions = new HashSet<Vacacion>(0);
	private Set<Bono> bonos = new HashSet<Bono>(0);
	private Set<Evaluacion> evaluacions = new HashSet<Evaluacion>(0);
	private Set<Telefono> telefonos = new HashSet<Telefono>(0);
	private Set<Sancion> sancions = new HashSet<Sancion>(0);

	public Empleado() {
	}

	public Empleado(int empleadoId, Departamento departamento, PuestoTrabajo puestoTrabajo, String dui, String isss,
			String afp, String nit, String nombre, String apellido, String cuenta, double salario) {
		this.empleadoId = empleadoId;
		this.departamento = departamento;
		this.puestoTrabajo = puestoTrabajo;
		this.dui = dui;
		this.isss = isss;
		this.afp = afp;
		this.nit = nit;
		this.nombre = nombre;
		this.apellido = apellido;
		this.cuenta = cuenta;
		this.salario = salario;
	}

	public Empleado(int empleadoId, Departamento departamento, PuestoTrabajo puestoTrabajo, String dui, String isss,
			String afp, String sexo, String nit, String nombre, String apellido, String cuenta, double salario,
			Integer edad, String estadoCivil, Integer idx, Set<Educacion> educacions,
			Set<Reconocimiento> reconocimientos, Set<Transaccion> transaccions, Set<Contrato> contratos,
			Set<Permiso> permisos, Set<Correo> correos, Set<ExpLaboral> expLaborals, Set<Capacitacion> capacitacions,
			Set<PuestoHistorico> puestoHistoricos, Set<Descuento> descuentos, Set<Planilla> planillas,
			Set<Vacacion> vacacions, Set<Bono> bonos, Set<Evaluacion> evaluacions, Set<Telefono> telefonos,
			Set<Sancion> sancions) {
		this.empleadoId = empleadoId;
		this.departamento = departamento;
		this.puestoTrabajo = puestoTrabajo;
		this.dui = dui;
		this.isss = isss;
		this.afp = afp;
		this.sexo = sexo;
		this.nit = nit;
		this.nombre = nombre;
		this.apellido = apellido;
		this.cuenta = cuenta;
		this.salario = salario;
		this.edad = edad;
		this.estadoCivil = estadoCivil;
		this.idx = idx;
		this.educacions = educacions;
		this.reconocimientos = reconocimientos;
		this.transaccions = transaccions;
		this.contratos = contratos;
		this.permisos = permisos;
		this.correos = correos;
		this.expLaborals = expLaborals;
		this.capacitacions = capacitacions;
		this.puestoHistoricos = puestoHistoricos;
		this.descuentos = descuentos;
		this.planillas = planillas;
		this.vacacions = vacacions;
		this.bonos = bonos;
		this.evaluacions = evaluacions;
		this.telefonos = telefonos;
		this.sancions = sancions;
	}

	@Id

	@Column(name = "empleado_id", unique = true, nullable = false)
	public int getEmpleadoId() {
		return this.empleadoId;
	}

	public void setEmpleadoId(int empleadoId) {
		this.empleadoId = empleadoId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_departamento", nullable = false)
	public Departamento getDepartamento() {
		return this.departamento;
	}

	public void setDepartamento(Departamento departamento) {
		this.departamento = departamento;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_puestotrabajo", nullable = false)
	public PuestoTrabajo getPuestoTrabajo() {
		return this.puestoTrabajo;
	}

	public void setPuestoTrabajo(PuestoTrabajo puestoTrabajo) {
		this.puestoTrabajo = puestoTrabajo;
	}

	@Column(name = "dui", nullable = false)
	public String getDui() {
		return this.dui;
	}

	public void setDui(String dui) {
		this.dui = dui;
	}

	@Column(name = "isss", nullable = false)
	public String getIsss() {
		return this.isss;
	}

	public void setIsss(String isss) {
		this.isss = isss;
	}

	@Column(name = "afp", nullable = false)
	public String getAfp() {
		return this.afp;
	}

	public void setAfp(String afp) {
		this.afp = afp;
	}

	@Column(name = "sexo")
	public String getSexo() {
		return this.sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	@Column(name = "nit", nullable = false)
	public String getNit() {
		return this.nit;
	}

	public void setNit(String nit) {
		this.nit = nit;
	}

	@Column(name = "nombre", nullable = false)
	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	@Column(name = "apellido", nullable = false)
	public String getApellido() {
		return this.apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	@Column(name = "cuenta", nullable = false)
	public String getCuenta() {
		return this.cuenta;
	}

	public void setCuenta(String cuenta) {
		this.cuenta = cuenta;
	}

	@Column(name = "salario", nullable = false, precision = 17, scale = 17)
	public double getSalario() {
		return this.salario;
	}

	public void setSalario(double salario) {
		this.salario = salario;
	}

	@Column(name = "edad")
	public Integer getEdad() {
		return this.edad;
	}

	public void setEdad(Integer edad) {
		this.edad = edad;
	}

	@Column(name = "estado_civil")
	public String getEstadoCivil() {
		return this.estadoCivil;
	}

	public void setEstadoCivil(String estadoCivil) {
		this.estadoCivil = estadoCivil;
	}

	@Column(name = "idx")
	public Integer getIdx() {
		return this.idx;
	}

	public void setIdx(Integer idx) {
		this.idx = idx;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "empleado")
	public Set<Educacion> getEducacions() {
		return this.educacions;
	}

	public void setEducacions(Set<Educacion> educacions) {
		this.educacions = educacions;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "empleado")
	public Set<Reconocimiento> getReconocimientos() {
		return this.reconocimientos;
	}

	public void setReconocimientos(Set<Reconocimiento> reconocimientos) {
		this.reconocimientos = reconocimientos;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "empleado")
	public Set<Transaccion> getTransaccions() {
		return this.transaccions;
	}

	public void setTransaccions(Set<Transaccion> transaccions) {
		this.transaccions = transaccions;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "empleado")
	public Set<Contrato> getContratos() {
		return this.contratos;
	}

	public void setContratos(Set<Contrato> contratos) {
		this.contratos = contratos;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "empleado")
	public Set<Permiso> getPermisos() {
		return this.permisos;
	}

	public void setPermisos(Set<Permiso> permisos) {
		this.permisos = permisos;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "empleado")
	public Set<Correo> getCorreos() {
		return this.correos;
	}

	public void setCorreos(Set<Correo> correos) {
		this.correos = correos;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "empleado")
	public Set<ExpLaboral> getExpLaborals() {
		return this.expLaborals;
	}

	public void setExpLaborals(Set<ExpLaboral> expLaborals) {
		this.expLaborals = expLaborals;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "empleado")
	public Set<Capacitacion> getCapacitacions() {
		return this.capacitacions;
	}

	public void setCapacitacions(Set<Capacitacion> capacitacions) {
		this.capacitacions = capacitacions;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "empleado")
	public Set<PuestoHistorico> getPuestoHistoricos() {
		return this.puestoHistoricos;
	}

	public void setPuestoHistoricos(Set<PuestoHistorico> puestoHistoricos) {
		this.puestoHistoricos = puestoHistoricos;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "empleado")
	public Set<Descuento> getDescuentos() {
		return this.descuentos;
	}

	public void setDescuentos(Set<Descuento> descuentos) {
		this.descuentos = descuentos;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "empleado")
	public Set<Planilla> getPlanillas() {
		return this.planillas;
	}

	public void setPlanillas(Set<Planilla> planillas) {
		this.planillas = planillas;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "empleado")
	public Set<Vacacion> getVacacions() {
		return this.vacacions;
	}

	public void setVacacions(Set<Vacacion> vacacions) {
		this.vacacions = vacacions;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "empleado")
	public Set<Bono> getBonos() {
		return this.bonos;
	}

	public void setBonos(Set<Bono> bonos) {
		this.bonos = bonos;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "empleado")
	public Set<Evaluacion> getEvaluacions() {
		return this.evaluacions;
	}

	public void setEvaluacions(Set<Evaluacion> evaluacions) {
		this.evaluacions = evaluacions;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "empleado")
	public Set<Telefono> getTelefonos() {
		return this.telefonos;
	}

	public void setTelefonos(Set<Telefono> telefonos) {
		this.telefonos = telefonos;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "empleado")
	public Set<Sancion> getSancions() {
		return this.sancions;
	}

	public void setSancions(Set<Sancion> sancions) {
		this.sancions = sancions;
	}

}
