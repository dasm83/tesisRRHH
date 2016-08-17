--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: pribantsa; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA pribantsa;


ALTER SCHEMA pribantsa OWNER TO postgres;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = pribantsa, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: bono; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE bono (
    "idBono" integer NOT NULL,
    fecha date NOT NULL,
    "idTipoBono" integer NOT NULL,
    "idEmpleado" integer NOT NULL
);


ALTER TABLE bono OWNER TO postgres;

--
-- Name: bono_idBono_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "bono_idBono_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "bono_idBono_seq" OWNER TO postgres;

--
-- Name: bono_idBono_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "bono_idBono_seq" OWNED BY bono."idBono";


--
-- Name: capacitacion; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE capacitacion (
    "idCapacitacion" integer NOT NULL,
    nombre text NOT NULL,
    descripcion text NOT NULL,
    lugar text NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date NOT NULL,
    "idEmpleado" integer NOT NULL
);


ALTER TABLE capacitacion OWNER TO postgres;

--
-- Name: capacitacion_idCapacitacion_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "capacitacion_idCapacitacion_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "capacitacion_idCapacitacion_seq" OWNER TO postgres;

--
-- Name: capacitacion_idCapacitacion_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "capacitacion_idCapacitacion_seq" OWNED BY capacitacion."idCapacitacion";


--
-- Name: contrato; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE contrato (
    "idContrato" integer NOT NULL,
    "idEmpleado" integer NOT NULL,
    "idTipoContrato" integer NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date NOT NULL
);


ALTER TABLE contrato OWNER TO postgres;

--
-- Name: contrato_idContrato_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "contrato_idContrato_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "contrato_idContrato_seq" OWNER TO postgres;

--
-- Name: contrato_idContrato_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "contrato_idContrato_seq" OWNED BY contrato."idContrato";


--
-- Name: correo; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE correo (
    "idCorreo" integer NOT NULL,
    correo text NOT NULL,
    "idEmpleado" integer NOT NULL
);


ALTER TABLE correo OWNER TO postgres;

--
-- Name: correo_idCorreo_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "correo_idCorreo_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "correo_idCorreo_seq" OWNER TO postgres;

--
-- Name: correo_idCorreo_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "correo_idCorreo_seq" OWNED BY correo."idCorreo";


--
-- Name: criterio; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE criterio (
    "idCriterio" integer NOT NULL,
    descripcion text NOT NULL,
    peso integer NOT NULL,
    "idPuesto" integer NOT NULL
);


ALTER TABLE criterio OWNER TO postgres;

--
-- Name: criterio_idCriterio_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "criterio_idCriterio_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "criterio_idCriterio_seq" OWNER TO postgres;

--
-- Name: criterio_idCriterio_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "criterio_idCriterio_seq" OWNED BY criterio."idCriterio";


--
-- Name: departamento; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE departamento (
    id_departamento integer NOT NULL,
    nombre text NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE departamento OWNER TO postgres;

--
-- Name: departamento_idepartamento_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE departamento_idepartamento_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE departamento_idepartamento_seq OWNER TO postgres;

--
-- Name: departamento_idepartamento_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE departamento_idepartamento_seq OWNED BY departamento.id_departamento;


--
-- Name: descuento; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE descuento (
    "idDescuento" integer NOT NULL,
    fecha date NOT NULL,
    "idTipoDescuento" integer NOT NULL,
    "idEmpleado" integer NOT NULL
);


ALTER TABLE descuento OWNER TO postgres;

--
-- Name: descuento_idDescuento_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "descuento_idDescuento_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "descuento_idDescuento_seq" OWNER TO postgres;

--
-- Name: descuento_idDescuento_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "descuento_idDescuento_seq" OWNED BY descuento."idDescuento";


--
-- Name: educacion; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE educacion (
    id_educacion integer NOT NULL,
    titulo text NOT NULL,
    fecha date NOT NULL,
    id_empleado_estudios integer,
    lugar text,
    institucion text,
    idx text,
    nivel text
);


ALTER TABLE educacion OWNER TO postgres;

--
-- Name: educacion_educacion_seqid; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE educacion_educacion_seqid
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE educacion_educacion_seqid OWNER TO postgres;

--
-- Name: educacion_educacion_seqid; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE educacion_educacion_seqid OWNED BY educacion.id_educacion;


--
-- Name: empleado; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE empleado (
    empleado_id integer NOT NULL,
    dui text NOT NULL,
    isss text NOT NULL,
    afp text NOT NULL,
    sexo text,
    id_departamento integer NOT NULL,
    nit text NOT NULL,
    nombre text NOT NULL,
    apellido text NOT NULL,
    cuenta text NOT NULL,
    salario double precision NOT NULL,
    id_puestotrabajo integer NOT NULL,
    edad integer,
    estado_civil text,
    idx integer
);


ALTER TABLE empleado OWNER TO postgres;

--
-- Name: empleado_empleado_idseq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE empleado_empleado_idseq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE empleado_empleado_idseq OWNER TO postgres;

--
-- Name: empleado_empleado_idseq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE empleado_empleado_idseq OWNED BY empleado.empleado_id;


--
-- Name: evaluacion; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE evaluacion (
    "idEvaluacion" integer NOT NULL,
    puntaje double precision NOT NULL,
    fecha date NOT NULL,
    "idEmpleado" integer NOT NULL,
    "idCriterio" integer NOT NULL
);


ALTER TABLE evaluacion OWNER TO postgres;

--
-- Name: evaluacion_idEvaluacion_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "evaluacion_idEvaluacion_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "evaluacion_idEvaluacion_seq" OWNER TO postgres;

--
-- Name: evaluacion_idEvaluacion_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "evaluacion_idEvaluacion_seq" OWNED BY evaluacion."idEvaluacion";


--
-- Name: exp_laboral; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE exp_laboral (
    lugar text,
    tiempo integer,
    cargo text,
    id_explaboral bigint NOT NULL,
    "idEmpleado" integer,
    idx integer
);


ALTER TABLE exp_laboral OWNER TO postgres;

--
-- Name: exp_laboral_id_explaboral_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE exp_laboral_id_explaboral_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE exp_laboral_id_explaboral_seq OWNER TO postgres;

--
-- Name: exp_laboral_id_explaboral_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE exp_laboral_id_explaboral_seq OWNED BY exp_laboral.id_explaboral;


--
-- Name: objdepartamento; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE objdepartamento (
    tipo text,
    descripcion text,
    id_objetivodep bigint NOT NULL,
    id_departamento integer,
    idx integer
);


ALTER TABLE objdepartamento OWNER TO postgres;

--
-- Name: obj_departamento_id_objetivodep_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE obj_departamento_id_objetivodep_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE obj_departamento_id_objetivodep_seq OWNER TO postgres;

--
-- Name: obj_departamento_id_objetivodep_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE obj_departamento_id_objetivodep_seq OWNED BY objdepartamento.id_objetivodep;


--
-- Name: objetivo; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE objetivo (
    id_objetivo integer NOT NULL,
    funcion text NOT NULL,
    idpuesto_trabajo integer,
    idx integer
);


ALTER TABLE objetivo OWNER TO postgres;

--
-- Name: objetivo_id_objetivo_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE objetivo_id_objetivo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE objetivo_id_objetivo_seq OWNER TO postgres;

--
-- Name: objetivo_id_objetivo_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE objetivo_id_objetivo_seq OWNED BY objetivo.id_objetivo;


--
-- Name: permiso; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE permiso (
    "idPermiso" integer NOT NULL,
    remunerado boolean NOT NULL,
    inicio timestamp without time zone NOT NULL,
    fin timestamp without time zone NOT NULL,
    "idEmpleado" integer NOT NULL,
    "idTipoPermiso" integer NOT NULL
);


ALTER TABLE permiso OWNER TO postgres;

--
-- Name: COLUMN permiso.remunerado; Type: COMMENT; Schema: pribantsa; Owner: postgres
--

COMMENT ON COLUMN permiso.remunerado IS 'Si el permiso es remunerado se marcará este campo como "verdadero", en caso no sea remunerado se marcará como "falso".';


--
-- Name: permiso_idPermiso_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "permiso_idPermiso_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "permiso_idPermiso_seq" OWNER TO postgres;

--
-- Name: permiso_idPermiso_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "permiso_idPermiso_seq" OWNED BY permiso."idPermiso";


--
-- Name: planilla; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE planilla (
    "idPlanilla" integer NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date NOT NULL,
    "idEmpleado" integer NOT NULL
);


ALTER TABLE planilla OWNER TO postgres;

--
-- Name: planilla_idPlanilla_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "planilla_idPlanilla_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "planilla_idPlanilla_seq" OWNER TO postgres;

--
-- Name: planilla_idPlanilla_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "planilla_idPlanilla_seq" OWNED BY planilla."idPlanilla";


--
-- Name: puesto_historico; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE puesto_historico (
    "idHistoricoPuesto" integer NOT NULL,
    "idPuesto" integer NOT NULL,
    "idEmpleado" integer NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date
);


ALTER TABLE puesto_historico OWNER TO postgres;

--
-- Name: puesto_historico_idHistoricoPuesto_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "puesto_historico_idHistoricoPuesto_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "puesto_historico_idHistoricoPuesto_seq" OWNER TO postgres;

--
-- Name: puesto_historico_idHistoricoPuesto_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "puesto_historico_idHistoricoPuesto_seq" OWNED BY puesto_historico."idHistoricoPuesto";


--
-- Name: puesto_trabajo; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE puesto_trabajo (
    id_puesto_trabajo integer NOT NULL,
    nombre text NOT NULL,
    descripcion text NOT NULL,
    salario_max double precision NOT NULL,
    salario_min double precision NOT NULL
);


ALTER TABLE puesto_trabajo OWNER TO postgres;

--
-- Name: puesto_trabajo_idpuestotrabajo_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE puesto_trabajo_idpuestotrabajo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE puesto_trabajo_idpuestotrabajo_seq OWNER TO postgres;

--
-- Name: puesto_trabajo_idpuestotrabajo_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE puesto_trabajo_idpuestotrabajo_seq OWNED BY puesto_trabajo.id_puesto_trabajo;


--
-- Name: reconocimiento; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE reconocimiento (
    "idReconocimiento" integer NOT NULL,
    descripcion text NOT NULL,
    "idEmpleado" integer NOT NULL
);


ALTER TABLE reconocimiento OWNER TO postgres;

--
-- Name: reconocimiento_idReconocimiento_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "reconocimiento_idReconocimiento_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "reconocimiento_idReconocimiento_seq" OWNER TO postgres;

--
-- Name: reconocimiento_idReconocimiento_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "reconocimiento_idReconocimiento_seq" OWNED BY reconocimiento."idReconocimiento";


--
-- Name: sancion; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE sancion (
    "idSancion" integer NOT NULL,
    gravedad integer NOT NULL,
    descripcion text NOT NULL,
    fecha date NOT NULL,
    "idEmpleado" integer NOT NULL
);


ALTER TABLE sancion OWNER TO postgres;

--
-- Name: sancion_idSancion_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "sancion_idSancion_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "sancion_idSancion_seq" OWNER TO postgres;

--
-- Name: sancion_idSancion_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "sancion_idSancion_seq" OWNED BY sancion."idSancion";


--
-- Name: telefono; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE telefono (
    "idTelefono" integer NOT NULL,
    telefono text NOT NULL,
    "idEmpleado" integer NOT NULL
);


ALTER TABLE telefono OWNER TO postgres;

--
-- Name: telefono_idTelefono_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "telefono_idTelefono_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "telefono_idTelefono_seq" OWNER TO postgres;

--
-- Name: telefono_idTelefono_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "telefono_idTelefono_seq" OWNED BY telefono."idTelefono";


--
-- Name: tipo_bono; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE tipo_bono (
    "idTipoBono" integer NOT NULL,
    "idPuesto" integer NOT NULL,
    porcentaje double precision NOT NULL
);


ALTER TABLE tipo_bono OWNER TO postgres;

--
-- Name: tipo_bono_idTipoBono_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "tipo_bono_idTipoBono_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "tipo_bono_idTipoBono_seq" OWNER TO postgres;

--
-- Name: tipo_bono_idTipoBono_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "tipo_bono_idTipoBono_seq" OWNED BY tipo_bono."idTipoBono";


--
-- Name: tipo_contrato; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE tipo_contrato (
    "idTipoContrato" integer NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE tipo_contrato OWNER TO postgres;

--
-- Name: tipo_contrato_idTipoContrato_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "tipo_contrato_idTipoContrato_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "tipo_contrato_idTipoContrato_seq" OWNER TO postgres;

--
-- Name: tipo_contrato_idTipoContrato_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "tipo_contrato_idTipoContrato_seq" OWNED BY tipo_contrato."idTipoContrato";


--
-- Name: tipo_descuento; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE tipo_descuento (
    "idTipoDescuento" integer NOT NULL,
    descripcion text NOT NULL,
    porcentaje double precision NOT NULL
);


ALTER TABLE tipo_descuento OWNER TO postgres;

--
-- Name: tipo_descuento_idTipoDescuento_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "tipo_descuento_idTipoDescuento_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "tipo_descuento_idTipoDescuento_seq" OWNER TO postgres;

--
-- Name: tipo_descuento_idTipoDescuento_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "tipo_descuento_idTipoDescuento_seq" OWNED BY tipo_descuento."idTipoDescuento";


--
-- Name: tipo_permiso; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE tipo_permiso (
    "idTipoPermiso" integer NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE tipo_permiso OWNER TO postgres;

--
-- Name: tipo_permiso_idTipoPermiso_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "tipo_permiso_idTipoPermiso_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "tipo_permiso_idTipoPermiso_seq" OWNER TO postgres;

--
-- Name: tipo_permiso_idTipoPermiso_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "tipo_permiso_idTipoPermiso_seq" OWNED BY tipo_permiso."idTipoPermiso";


--
-- Name: transaccion; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE transaccion (
    "idTransaccion" integer NOT NULL,
    "idEmpleado" integer NOT NULL,
    credito_debito boolean NOT NULL,
    monto double precision NOT NULL,
    fecha timestamp without time zone NOT NULL
);


ALTER TABLE transaccion OWNER TO postgres;

--
-- Name: transaccion_idTransaccion_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "transaccion_idTransaccion_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "transaccion_idTransaccion_seq" OWNER TO postgres;

--
-- Name: transaccion_idTransaccion_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "transaccion_idTransaccion_seq" OWNED BY transaccion."idTransaccion";


--
-- Name: vacacion; Type: TABLE; Schema: pribantsa; Owner: postgres; Tablespace: 
--

CREATE TABLE vacacion (
    "idVacacion" integer NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date,
    "idEmpleado" integer NOT NULL
);


ALTER TABLE vacacion OWNER TO postgres;

--
-- Name: vacacion_idVacacion_seq; Type: SEQUENCE; Schema: pribantsa; Owner: postgres
--

CREATE SEQUENCE "vacacion_idVacacion_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "vacacion_idVacacion_seq" OWNER TO postgres;

--
-- Name: vacacion_idVacacion_seq; Type: SEQUENCE OWNED BY; Schema: pribantsa; Owner: postgres
--

ALTER SEQUENCE "vacacion_idVacacion_seq" OWNED BY vacacion."idVacacion";


--
-- Name: idBono; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY bono ALTER COLUMN "idBono" SET DEFAULT nextval('"bono_idBono_seq"'::regclass);


--
-- Name: idCapacitacion; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY capacitacion ALTER COLUMN "idCapacitacion" SET DEFAULT nextval('"capacitacion_idCapacitacion_seq"'::regclass);


--
-- Name: idContrato; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY contrato ALTER COLUMN "idContrato" SET DEFAULT nextval('"contrato_idContrato_seq"'::regclass);


--
-- Name: idCorreo; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY correo ALTER COLUMN "idCorreo" SET DEFAULT nextval('"correo_idCorreo_seq"'::regclass);


--
-- Name: idCriterio; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY criterio ALTER COLUMN "idCriterio" SET DEFAULT nextval('"criterio_idCriterio_seq"'::regclass);


--
-- Name: id_departamento; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY departamento ALTER COLUMN id_departamento SET DEFAULT nextval('departamento_idepartamento_seq'::regclass);


--
-- Name: idDescuento; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY descuento ALTER COLUMN "idDescuento" SET DEFAULT nextval('"descuento_idDescuento_seq"'::regclass);


--
-- Name: id_educacion; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY educacion ALTER COLUMN id_educacion SET DEFAULT nextval('educacion_educacion_seqid'::regclass);


--
-- Name: empleado_id; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY empleado ALTER COLUMN empleado_id SET DEFAULT nextval('empleado_empleado_idseq'::regclass);


--
-- Name: idEvaluacion; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY evaluacion ALTER COLUMN "idEvaluacion" SET DEFAULT nextval('"evaluacion_idEvaluacion_seq"'::regclass);


--
-- Name: id_explaboral; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY exp_laboral ALTER COLUMN id_explaboral SET DEFAULT nextval('exp_laboral_id_explaboral_seq'::regclass);


--
-- Name: id_objetivodep; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY objdepartamento ALTER COLUMN id_objetivodep SET DEFAULT nextval('obj_departamento_id_objetivodep_seq'::regclass);


--
-- Name: id_objetivo; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY objetivo ALTER COLUMN id_objetivo SET DEFAULT nextval('objetivo_id_objetivo_seq'::regclass);


--
-- Name: idPermiso; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY permiso ALTER COLUMN "idPermiso" SET DEFAULT nextval('"permiso_idPermiso_seq"'::regclass);


--
-- Name: idPlanilla; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY planilla ALTER COLUMN "idPlanilla" SET DEFAULT nextval('"planilla_idPlanilla_seq"'::regclass);


--
-- Name: idHistoricoPuesto; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY puesto_historico ALTER COLUMN "idHistoricoPuesto" SET DEFAULT nextval('"puesto_historico_idHistoricoPuesto_seq"'::regclass);


--
-- Name: id_puesto_trabajo; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY puesto_trabajo ALTER COLUMN id_puesto_trabajo SET DEFAULT nextval('puesto_trabajo_idpuestotrabajo_seq'::regclass);


--
-- Name: idReconocimiento; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY reconocimiento ALTER COLUMN "idReconocimiento" SET DEFAULT nextval('"reconocimiento_idReconocimiento_seq"'::regclass);


--
-- Name: idSancion; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY sancion ALTER COLUMN "idSancion" SET DEFAULT nextval('"sancion_idSancion_seq"'::regclass);


--
-- Name: idTelefono; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY telefono ALTER COLUMN "idTelefono" SET DEFAULT nextval('"telefono_idTelefono_seq"'::regclass);


--
-- Name: idTipoBono; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY tipo_bono ALTER COLUMN "idTipoBono" SET DEFAULT nextval('"tipo_bono_idTipoBono_seq"'::regclass);


--
-- Name: idTipoContrato; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY tipo_contrato ALTER COLUMN "idTipoContrato" SET DEFAULT nextval('"tipo_contrato_idTipoContrato_seq"'::regclass);


--
-- Name: idTipoDescuento; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY tipo_descuento ALTER COLUMN "idTipoDescuento" SET DEFAULT nextval('"tipo_descuento_idTipoDescuento_seq"'::regclass);


--
-- Name: idTipoPermiso; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY tipo_permiso ALTER COLUMN "idTipoPermiso" SET DEFAULT nextval('"tipo_permiso_idTipoPermiso_seq"'::regclass);


--
-- Name: idTransaccion; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY transaccion ALTER COLUMN "idTransaccion" SET DEFAULT nextval('"transaccion_idTransaccion_seq"'::regclass);


--
-- Name: idVacacion; Type: DEFAULT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY vacacion ALTER COLUMN "idVacacion" SET DEFAULT nextval('"vacacion_idVacacion_seq"'::regclass);


--
-- Name: pk_bono; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY bono
    ADD CONSTRAINT pk_bono PRIMARY KEY ("idBono");


--
-- Name: pk_capacitacion; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY capacitacion
    ADD CONSTRAINT pk_capacitacion PRIMARY KEY ("idCapacitacion");


--
-- Name: pk_contrato; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY contrato
    ADD CONSTRAINT pk_contrato PRIMARY KEY ("idContrato");


--
-- Name: pk_correo; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY correo
    ADD CONSTRAINT pk_correo PRIMARY KEY ("idCorreo");


--
-- Name: pk_criterio; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY criterio
    ADD CONSTRAINT pk_criterio PRIMARY KEY ("idCriterio");


--
-- Name: pk_departamento; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY departamento
    ADD CONSTRAINT pk_departamento PRIMARY KEY (id_departamento);


--
-- Name: pk_descuento; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY descuento
    ADD CONSTRAINT pk_descuento PRIMARY KEY ("idDescuento");


--
-- Name: pk_educacion; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY educacion
    ADD CONSTRAINT pk_educacion PRIMARY KEY (id_educacion);


--
-- Name: pk_empleado; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY empleado
    ADD CONSTRAINT pk_empleado PRIMARY KEY (empleado_id);


--
-- Name: pk_evaluacion; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY evaluacion
    ADD CONSTRAINT pk_evaluacion PRIMARY KEY ("idEvaluacion");


--
-- Name: pk_experiencialaboral; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY exp_laboral
    ADD CONSTRAINT pk_experiencialaboral PRIMARY KEY (id_explaboral);


--
-- Name: pk_historico_puesto; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY puesto_historico
    ADD CONSTRAINT pk_historico_puesto PRIMARY KEY ("idHistoricoPuesto");


--
-- Name: pk_objedeparment; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY objdepartamento
    ADD CONSTRAINT pk_objedeparment PRIMARY KEY (id_objetivodep);


--
-- Name: pk_objetivo; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY objetivo
    ADD CONSTRAINT pk_objetivo PRIMARY KEY (id_objetivo);


--
-- Name: pk_permiso; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY permiso
    ADD CONSTRAINT pk_permiso PRIMARY KEY ("idPermiso");


--
-- Name: pk_planilla; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY planilla
    ADD CONSTRAINT pk_planilla PRIMARY KEY ("idPlanilla");


--
-- Name: pk_puesto_trabajo; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY puesto_trabajo
    ADD CONSTRAINT pk_puesto_trabajo PRIMARY KEY (id_puesto_trabajo);


--
-- Name: pk_reconocimiento; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY reconocimiento
    ADD CONSTRAINT pk_reconocimiento PRIMARY KEY ("idReconocimiento");


--
-- Name: pk_sancion; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sancion
    ADD CONSTRAINT pk_sancion PRIMARY KEY ("idSancion");


--
-- Name: pk_telefono; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY telefono
    ADD CONSTRAINT pk_telefono PRIMARY KEY ("idTelefono");


--
-- Name: pk_tipo_bono; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tipo_bono
    ADD CONSTRAINT pk_tipo_bono PRIMARY KEY ("idTipoBono");


--
-- Name: pk_tipo_contrato; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tipo_contrato
    ADD CONSTRAINT pk_tipo_contrato PRIMARY KEY ("idTipoContrato");


--
-- Name: pk_tipo_permiso; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tipo_permiso
    ADD CONSTRAINT pk_tipo_permiso PRIMARY KEY ("idTipoPermiso");


--
-- Name: pk_transaccion; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY transaccion
    ADD CONSTRAINT pk_transaccion PRIMARY KEY ("idTransaccion");


--
-- Name: pk_vacacion; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY vacacion
    ADD CONSTRAINT pk_vacacion PRIMARY KEY ("idVacacion");


--
-- Name: tipo_descuento_pkey; Type: CONSTRAINT; Schema: pribantsa; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tipo_descuento
    ADD CONSTRAINT tipo_descuento_pkey PRIMARY KEY ("idTipoDescuento");


--
-- Name: fk_bono_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY bono
    ADD CONSTRAINT fk_bono_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fk_capacitacion_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY capacitacion
    ADD CONSTRAINT fk_capacitacion_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fk_contrato_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY contrato
    ADD CONSTRAINT fk_contrato_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fk_correo_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY correo
    ADD CONSTRAINT fk_correo_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id);


--
-- Name: fk_criterio_puesto; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY criterio
    ADD CONSTRAINT fk_criterio_puesto FOREIGN KEY ("idPuesto") REFERENCES puesto_trabajo(id_puesto_trabajo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fk_departamento; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY empleado
    ADD CONSTRAINT fk_departamento FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento);


--
-- Name: fk_descuento_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY descuento
    ADD CONSTRAINT fk_descuento_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fk_descuento_tipo; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY descuento
    ADD CONSTRAINT fk_descuento_tipo FOREIGN KEY ("idTipoDescuento") REFERENCES tipo_descuento("idTipoDescuento") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fk_educacion_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY educacion
    ADD CONSTRAINT fk_educacion_empleado FOREIGN KEY (id_empleado_estudios) REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fk_empleado_puesto; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY empleado
    ADD CONSTRAINT fk_empleado_puesto FOREIGN KEY (id_puestotrabajo) REFERENCES puesto_trabajo(id_puesto_trabajo);


--
-- Name: fk_evaluacion_criterio; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY evaluacion
    ADD CONSTRAINT fk_evaluacion_criterio FOREIGN KEY ("idCriterio") REFERENCES criterio("idCriterio") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fk_evaluacion_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY evaluacion
    ADD CONSTRAINT fk_evaluacion_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fk_exp_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY exp_laboral
    ADD CONSTRAINT fk_exp_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fk_historico_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY puesto_historico
    ADD CONSTRAINT fk_historico_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fk_historico_puesto; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY puesto_historico
    ADD CONSTRAINT fk_historico_puesto FOREIGN KEY ("idPuesto") REFERENCES puesto_trabajo(id_puesto_trabajo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fk_objetivo_departamento; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY objdepartamento
    ADD CONSTRAINT fk_objetivo_departamento FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento);


--
-- Name: fk_objetivo_puesto; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY objetivo
    ADD CONSTRAINT fk_objetivo_puesto FOREIGN KEY (idpuesto_trabajo) REFERENCES puesto_trabajo(id_puesto_trabajo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fk_permiso_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY permiso
    ADD CONSTRAINT fk_permiso_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fk_permiso_tipoP; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY permiso
    ADD CONSTRAINT "fk_permiso_tipoP" FOREIGN KEY ("idTipoPermiso") REFERENCES tipo_permiso("idTipoPermiso") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fk_planilla_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY planilla
    ADD CONSTRAINT fk_planilla_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fk_reconocimiento_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY reconocimiento
    ADD CONSTRAINT fk_reconocimiento_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fk_sancion_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY sancion
    ADD CONSTRAINT fk_sancion_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fk_telefono_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY telefono
    ADD CONSTRAINT fk_telefono_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fk_tipoContrato_contrato; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY contrato
    ADD CONSTRAINT "fk_tipoContrato_contrato" FOREIGN KEY ("idTipoContrato") REFERENCES tipo_contrato("idTipoContrato") ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fk_tipo_bono_puesto; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY tipo_bono
    ADD CONSTRAINT fk_tipo_bono_puesto FOREIGN KEY ("idPuesto") REFERENCES puesto_trabajo(id_puesto_trabajo) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fk_transaccion_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY transaccion
    ADD CONSTRAINT fk_transaccion_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fk_vacacion_empleado; Type: FK CONSTRAINT; Schema: pribantsa; Owner: postgres
--

ALTER TABLE ONLY vacacion
    ADD CONSTRAINT fk_vacacion_empleado FOREIGN KEY ("idEmpleado") REFERENCES empleado(empleado_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: pribantsa; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA pribantsa FROM PUBLIC;
REVOKE ALL ON SCHEMA pribantsa FROM postgres;
GRANT ALL ON SCHEMA pribantsa TO postgres;
GRANT ALL ON SCHEMA pribantsa TO PUBLIC;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- Name: departamento; Type: ACL; Schema: pribantsa; Owner: postgres
--

REVOKE ALL ON TABLE departamento FROM PUBLIC;
REVOKE ALL ON TABLE departamento FROM postgres;
GRANT ALL ON TABLE departamento TO postgres;


--
-- Name: departamento_idepartamento_seq; Type: ACL; Schema: pribantsa; Owner: postgres
--

REVOKE ALL ON SEQUENCE departamento_idepartamento_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE departamento_idepartamento_seq FROM postgres;
GRANT ALL ON SEQUENCE departamento_idepartamento_seq TO postgres;


--
-- Name: educacion; Type: ACL; Schema: pribantsa; Owner: postgres
--

REVOKE ALL ON TABLE educacion FROM PUBLIC;
REVOKE ALL ON TABLE educacion FROM postgres;
GRANT ALL ON TABLE educacion TO postgres;


--
-- Name: educacion_educacion_seqid; Type: ACL; Schema: pribantsa; Owner: postgres
--

REVOKE ALL ON SEQUENCE educacion_educacion_seqid FROM PUBLIC;
REVOKE ALL ON SEQUENCE educacion_educacion_seqid FROM postgres;
GRANT ALL ON SEQUENCE educacion_educacion_seqid TO postgres;


--
-- Name: empleado; Type: ACL; Schema: pribantsa; Owner: postgres
--

REVOKE ALL ON TABLE empleado FROM PUBLIC;
REVOKE ALL ON TABLE empleado FROM postgres;
GRANT ALL ON TABLE empleado TO postgres;


--
-- Name: empleado_empleado_idseq; Type: ACL; Schema: pribantsa; Owner: postgres
--

REVOKE ALL ON SEQUENCE empleado_empleado_idseq FROM PUBLIC;
REVOKE ALL ON SEQUENCE empleado_empleado_idseq FROM postgres;
GRANT ALL ON SEQUENCE empleado_empleado_idseq TO postgres;


--
-- Name: exp_laboral; Type: ACL; Schema: pribantsa; Owner: postgres
--

REVOKE ALL ON TABLE exp_laboral FROM PUBLIC;
REVOKE ALL ON TABLE exp_laboral FROM postgres;
GRANT ALL ON TABLE exp_laboral TO postgres;


--
-- Name: exp_laboral_id_explaboral_seq; Type: ACL; Schema: pribantsa; Owner: postgres
--

REVOKE ALL ON SEQUENCE exp_laboral_id_explaboral_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE exp_laboral_id_explaboral_seq FROM postgres;
GRANT ALL ON SEQUENCE exp_laboral_id_explaboral_seq TO postgres;


--
-- Name: objdepartamento; Type: ACL; Schema: pribantsa; Owner: postgres
--

REVOKE ALL ON TABLE objdepartamento FROM PUBLIC;
REVOKE ALL ON TABLE objdepartamento FROM postgres;
GRANT ALL ON TABLE objdepartamento TO postgres;


--
-- Name: obj_departamento_id_objetivodep_seq; Type: ACL; Schema: pribantsa; Owner: postgres
--

REVOKE ALL ON SEQUENCE obj_departamento_id_objetivodep_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE obj_departamento_id_objetivodep_seq FROM postgres;
GRANT ALL ON SEQUENCE obj_departamento_id_objetivodep_seq TO postgres;


--
-- Name: objetivo; Type: ACL; Schema: pribantsa; Owner: postgres
--

REVOKE ALL ON TABLE objetivo FROM PUBLIC;
REVOKE ALL ON TABLE objetivo FROM postgres;
GRANT ALL ON TABLE objetivo TO postgres;


--
-- Name: objetivo_id_objetivo_seq; Type: ACL; Schema: pribantsa; Owner: postgres
--

REVOKE ALL ON SEQUENCE objetivo_id_objetivo_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE objetivo_id_objetivo_seq FROM postgres;
GRANT ALL ON SEQUENCE objetivo_id_objetivo_seq TO postgres;


--
-- Name: puesto_trabajo; Type: ACL; Schema: pribantsa; Owner: postgres
--

REVOKE ALL ON TABLE puesto_trabajo FROM PUBLIC;
REVOKE ALL ON TABLE puesto_trabajo FROM postgres;
GRANT ALL ON TABLE puesto_trabajo TO postgres;


--
-- Name: puesto_trabajo_idpuestotrabajo_seq; Type: ACL; Schema: pribantsa; Owner: postgres
--

REVOKE ALL ON SEQUENCE puesto_trabajo_idpuestotrabajo_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE puesto_trabajo_idpuestotrabajo_seq FROM postgres;
GRANT ALL ON SEQUENCE puesto_trabajo_idpuestotrabajo_seq TO postgres;


--
-- PostgreSQL database dump complete
--

