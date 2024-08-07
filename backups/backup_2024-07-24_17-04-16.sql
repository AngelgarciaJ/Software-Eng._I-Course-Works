--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

DROP DATABASE scdatabase;




--
-- Drop roles
--

DROP ROLE estudiantes;


--
-- Roles
--

CREATE ROLE estudiantes;
ALTER ROLE estudiantes WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:hTvgNxoFJa8uDYhIKDf7oA==$f1wMhP7F9lkJiiFORDhxu8PqvqnsuSgB2kDlCJggcFI=:9Hkajvrncx4zAnvP/YE1+s8k+8rYBsqg2VbtOAOEoxc=';

--
-- User Configurations
--








--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3 (Debian 15.3-1.pgdg120+1)
-- Dumped by pg_dump version 15.3 (Debian 15.3-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: estudiantes
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO estudiantes;

\connect template1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: estudiantes
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: estudiantes
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: estudiantes
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3 (Debian 15.3-1.pgdg120+1)
-- Dumped by pg_dump version 15.3 (Debian 15.3-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: estudiantes
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO estudiantes;

\connect postgres

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: estudiantes
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- PostgreSQL database dump complete
--

--
-- Database "scdatabase" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3 (Debian 15.3-1.pgdg120+1)
-- Dumped by pg_dump version 15.3 (Debian 15.3-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: scdatabase; Type: DATABASE; Schema: -; Owner: estudiantes
--

CREATE DATABASE scdatabase WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE scdatabase OWNER TO estudiantes;

\connect scdatabase

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: becas; Type: TABLE; Schema: public; Owner: estudiantes
--

CREATE TABLE public.becas (
    id bigint NOT NULL,
    tipo character varying(50) NOT NULL,
    descripcion text
);


ALTER TABLE public.becas OWNER TO estudiantes;

--
-- Name: becas_id_seq; Type: SEQUENCE; Schema: public; Owner: estudiantes
--

CREATE SEQUENCE public.becas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.becas_id_seq OWNER TO estudiantes;

--
-- Name: becas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estudiantes
--

ALTER SEQUENCE public.becas_id_seq OWNED BY public.becas.id;


--
-- Name: coordinador_estudiantes; Type: TABLE; Schema: public; Owner: estudiantes
--

CREATE TABLE public.coordinador_estudiantes (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    coordinador_id bigint,
    estudiante_id bigint
);


ALTER TABLE public.coordinador_estudiantes OWNER TO estudiantes;

--
-- Name: coordinador_estudiantes_id_seq; Type: SEQUENCE; Schema: public; Owner: estudiantes
--

CREATE SEQUENCE public.coordinador_estudiantes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coordinador_estudiantes_id_seq OWNER TO estudiantes;

--
-- Name: coordinador_estudiantes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estudiantes
--

ALTER SEQUENCE public.coordinador_estudiantes_id_seq OWNED BY public.coordinador_estudiantes.id;


--
-- Name: coordinadores; Type: TABLE; Schema: public; Owner: estudiantes
--

CREATE TABLE public.coordinadores (
    id bigint NOT NULL,
    usuario_id bigint,
    facultad_a_cargo character varying(100),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    facultadacargo character varying(255)
);


ALTER TABLE public.coordinadores OWNER TO estudiantes;

--
-- Name: coordinadores_id_seq; Type: SEQUENCE; Schema: public; Owner: estudiantes
--

CREATE SEQUENCE public.coordinadores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coordinadores_id_seq OWNER TO estudiantes;

--
-- Name: coordinadores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estudiantes
--

ALTER SEQUENCE public.coordinadores_id_seq OWNED BY public.coordinadores.id;


--
-- Name: coordinadorestudiantes; Type: TABLE; Schema: public; Owner: estudiantes
--

CREATE TABLE public.coordinadorestudiantes (
    id integer NOT NULL,
    estudiante_id integer,
    coordinador_id integer,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.coordinadorestudiantes OWNER TO estudiantes;

--
-- Name: coordinadorestudiantes_id_seq; Type: SEQUENCE; Schema: public; Owner: estudiantes
--

CREATE SEQUENCE public.coordinadorestudiantes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coordinadorestudiantes_id_seq OWNER TO estudiantes;

--
-- Name: coordinadorestudiantes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estudiantes
--

ALTER SEQUENCE public.coordinadorestudiantes_id_seq OWNED BY public.coordinadorestudiantes.id;


--
-- Name: estudiantes; Type: TABLE; Schema: public; Owner: estudiantes
--

CREATE TABLE public.estudiantes (
    id bigint NOT NULL,
    usuario_id bigint,
    beca_id bigint,
    facultad character varying(100),
    universidad character varying(100),
    carrera_profesional character varying(100),
    ingreso_anio integer,
    ingreso_mes integer,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.estudiantes OWNER TO estudiantes;

--
-- Name: estudiantes_id_seq; Type: SEQUENCE; Schema: public; Owner: estudiantes
--

CREATE SEQUENCE public.estudiantes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estudiantes_id_seq OWNER TO estudiantes;

--
-- Name: estudiantes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estudiantes
--

ALTER SEQUENCE public.estudiantes_id_seq OWNED BY public.estudiantes.id;


--
-- Name: ingresos_egresos; Type: TABLE; Schema: public; Owner: estudiantes
--

CREATE TABLE public.ingresos_egresos (
    id bigint NOT NULL,
    categoria character varying(255),
    created_at timestamp(6) without time zone,
    descripcion character varying(255),
    fecha date,
    monto numeric(38,2),
    tipo character varying(255),
    updated_at timestamp(6) without time zone,
    estudiante_id bigint
);


ALTER TABLE public.ingresos_egresos OWNER TO estudiantes;

--
-- Name: ingresos_egresos_id_seq; Type: SEQUENCE; Schema: public; Owner: estudiantes
--

CREATE SEQUENCE public.ingresos_egresos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ingresos_egresos_id_seq OWNER TO estudiantes;

--
-- Name: ingresos_egresos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estudiantes
--

ALTER SEQUENCE public.ingresos_egresos_id_seq OWNED BY public.ingresos_egresos.id;


--
-- Name: ingresosegresos; Type: TABLE; Schema: public; Owner: estudiantes
--

CREATE TABLE public.ingresosegresos (
    id bigint NOT NULL,
    estudiante_id bigint,
    tipo character varying(20) NOT NULL,
    categoria character varying(50),
    descripcion text,
    monto double precision NOT NULL,
    fecha date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.ingresosegresos OWNER TO estudiantes;

--
-- Name: ingresosegresos_id_seq; Type: SEQUENCE; Schema: public; Owner: estudiantes
--

CREATE SEQUENCE public.ingresosegresos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ingresosegresos_id_seq OWNER TO estudiantes;

--
-- Name: ingresosegresos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estudiantes
--

ALTER SEQUENCE public.ingresosegresos_id_seq OWNED BY public.ingresosegresos.id;


--
-- Name: logs_auditoria; Type: TABLE; Schema: public; Owner: estudiantes
--

CREATE TABLE public.logs_auditoria (
    id bigint NOT NULL,
    accion character varying(255),
    descripcion character varying(255),
    fecha_hora timestamp(6) without time zone,
    usuario_id bigint
);


ALTER TABLE public.logs_auditoria OWNER TO estudiantes;

--
-- Name: logs_auditoria_id_seq; Type: SEQUENCE; Schema: public; Owner: estudiantes
--

CREATE SEQUENCE public.logs_auditoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.logs_auditoria_id_seq OWNER TO estudiantes;

--
-- Name: logs_auditoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estudiantes
--

ALTER SEQUENCE public.logs_auditoria_id_seq OWNED BY public.logs_auditoria.id;


--
-- Name: logsauditoria; Type: TABLE; Schema: public; Owner: estudiantes
--

CREATE TABLE public.logsauditoria (
    id integer NOT NULL,
    usuario_id integer,
    accion character varying(255) NOT NULL,
    descripcion text,
    fecha_hora timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.logsauditoria OWNER TO estudiantes;

--
-- Name: logsauditoria_id_seq; Type: SEQUENCE; Schema: public; Owner: estudiantes
--

CREATE SEQUENCE public.logsauditoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.logsauditoria_id_seq OWNER TO estudiantes;

--
-- Name: logsauditoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estudiantes
--

ALTER SEQUENCE public.logsauditoria_id_seq OWNED BY public.logsauditoria.id;


--
-- Name: notificaciones; Type: TABLE; Schema: public; Owner: estudiantes
--

CREATE TABLE public.notificaciones (
    id bigint NOT NULL,
    usuario_id bigint,
    mensaje text NOT NULL,
    fecha_envio timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    leido boolean DEFAULT false
);


ALTER TABLE public.notificaciones OWNER TO estudiantes;

--
-- Name: notificaciones_id_seq; Type: SEQUENCE; Schema: public; Owner: estudiantes
--

CREATE SEQUENCE public.notificaciones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notificaciones_id_seq OWNER TO estudiantes;

--
-- Name: notificaciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estudiantes
--

ALTER SEQUENCE public.notificaciones_id_seq OWNED BY public.notificaciones.id;


--
-- Name: planificacion_presupuesto; Type: TABLE; Schema: public; Owner: estudiantes
--

CREATE TABLE public.planificacion_presupuesto (
    id bigint NOT NULL,
    anio integer,
    created_at timestamp(6) without time zone,
    gasto_estimado double precision,
    ingreso_estimado double precision,
    mes integer,
    updated_at timestamp(6) without time zone,
    estudiante_id bigint
);


ALTER TABLE public.planificacion_presupuesto OWNER TO estudiantes;

--
-- Name: planificacion_presupuesto_id_seq; Type: SEQUENCE; Schema: public; Owner: estudiantes
--

CREATE SEQUENCE public.planificacion_presupuesto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planificacion_presupuesto_id_seq OWNER TO estudiantes;

--
-- Name: planificacion_presupuesto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estudiantes
--

ALTER SEQUENCE public.planificacion_presupuesto_id_seq OWNED BY public.planificacion_presupuesto.id;


--
-- Name: planificacionpresupuesto; Type: TABLE; Schema: public; Owner: estudiantes
--

CREATE TABLE public.planificacionpresupuesto (
    id integer NOT NULL,
    estudiante_id integer,
    mes integer NOT NULL,
    anio integer NOT NULL,
    ingreso_estimado numeric(10,2) NOT NULL,
    gasto_estimado numeric(10,2) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.planificacionpresupuesto OWNER TO estudiantes;

--
-- Name: planificacionpresupuesto_id_seq; Type: SEQUENCE; Schema: public; Owner: estudiantes
--

CREATE SEQUENCE public.planificacionpresupuesto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planificacionpresupuesto_id_seq OWNER TO estudiantes;

--
-- Name: planificacionpresupuesto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estudiantes
--

ALTER SEQUENCE public.planificacionpresupuesto_id_seq OWNED BY public.planificacionpresupuesto.id;


--
-- Name: reportes; Type: TABLE; Schema: public; Owner: estudiantes
--

CREATE TABLE public.reportes (
    id bigint NOT NULL,
    usuario_id bigint,
    tipo character varying(50),
    contenido text,
    fecha_generacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.reportes OWNER TO estudiantes;

--
-- Name: reportes_id_seq; Type: SEQUENCE; Schema: public; Owner: estudiantes
--

CREATE SEQUENCE public.reportes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reportes_id_seq OWNER TO estudiantes;

--
-- Name: reportes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estudiantes
--

ALTER SEQUENCE public.reportes_id_seq OWNED BY public.reportes.id;


--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: estudiantes
--

CREATE TABLE public.usuarios (
    id bigint NOT NULL,
    nombre character varying(50) NOT NULL,
    correo character varying(100) NOT NULL,
    telefono character varying(20),
    rol character varying(20) NOT NULL,
    contrasena character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.usuarios OWNER TO estudiantes;

--
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: estudiantes
--

CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_id_seq OWNER TO estudiantes;

--
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: estudiantes
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- Name: becas id; Type: DEFAULT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.becas ALTER COLUMN id SET DEFAULT nextval('public.becas_id_seq'::regclass);


--
-- Name: coordinador_estudiantes id; Type: DEFAULT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.coordinador_estudiantes ALTER COLUMN id SET DEFAULT nextval('public.coordinador_estudiantes_id_seq'::regclass);


--
-- Name: coordinadores id; Type: DEFAULT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.coordinadores ALTER COLUMN id SET DEFAULT nextval('public.coordinadores_id_seq'::regclass);


--
-- Name: coordinadorestudiantes id; Type: DEFAULT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.coordinadorestudiantes ALTER COLUMN id SET DEFAULT nextval('public.coordinadorestudiantes_id_seq'::regclass);


--
-- Name: estudiantes id; Type: DEFAULT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.estudiantes ALTER COLUMN id SET DEFAULT nextval('public.estudiantes_id_seq'::regclass);


--
-- Name: ingresos_egresos id; Type: DEFAULT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.ingresos_egresos ALTER COLUMN id SET DEFAULT nextval('public.ingresos_egresos_id_seq'::regclass);


--
-- Name: ingresosegresos id; Type: DEFAULT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.ingresosegresos ALTER COLUMN id SET DEFAULT nextval('public.ingresosegresos_id_seq'::regclass);


--
-- Name: logs_auditoria id; Type: DEFAULT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.logs_auditoria ALTER COLUMN id SET DEFAULT nextval('public.logs_auditoria_id_seq'::regclass);


--
-- Name: logsauditoria id; Type: DEFAULT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.logsauditoria ALTER COLUMN id SET DEFAULT nextval('public.logsauditoria_id_seq'::regclass);


--
-- Name: notificaciones id; Type: DEFAULT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.notificaciones ALTER COLUMN id SET DEFAULT nextval('public.notificaciones_id_seq'::regclass);


--
-- Name: planificacion_presupuesto id; Type: DEFAULT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.planificacion_presupuesto ALTER COLUMN id SET DEFAULT nextval('public.planificacion_presupuesto_id_seq'::regclass);


--
-- Name: planificacionpresupuesto id; Type: DEFAULT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.planificacionpresupuesto ALTER COLUMN id SET DEFAULT nextval('public.planificacionpresupuesto_id_seq'::regclass);


--
-- Name: reportes id; Type: DEFAULT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.reportes ALTER COLUMN id SET DEFAULT nextval('public.reportes_id_seq'::regclass);


--
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- Data for Name: becas; Type: TABLE DATA; Schema: public; Owner: estudiantes
--

COPY public.becas (id, tipo, descripcion) FROM stdin;
1	Beca deportiva	Beca para estudiantes destacados en deportes
2	Beca acad├®mica	Beca para estudiantes con excelencia acad├®mica
3	Beca cultural	Beca para estudiantes sobresalientes en actividades culturales
\.


--
-- Data for Name: coordinador_estudiantes; Type: TABLE DATA; Schema: public; Owner: estudiantes
--

COPY public.coordinador_estudiantes (id, created_at, updated_at, coordinador_id, estudiante_id) FROM stdin;
\.


--
-- Data for Name: coordinadores; Type: TABLE DATA; Schema: public; Owner: estudiantes
--

COPY public.coordinadores (id, usuario_id, facultad_a_cargo, created_at, updated_at, facultadacargo) FROM stdin;
1	2	Facultad de Ciencias Econ├│micas	2024-06-19 04:15:34.96722	2024-06-19 04:15:34.96722	\N
2	1	Facultad de Ciencias Sociales	2024-06-19 04:15:34.96722	2024-06-19 04:15:34.96722	\N
3	3	Facultad de Educaci├│n	2024-06-19 04:15:34.96722	2024-06-19 04:15:34.96722	\N
\.


--
-- Data for Name: coordinadorestudiantes; Type: TABLE DATA; Schema: public; Owner: estudiantes
--

COPY public.coordinadorestudiantes (id, estudiante_id, coordinador_id, created_at, updated_at) FROM stdin;
1	1	1	2024-06-19 04:16:09.653666	2024-06-19 04:16:09.653666
2	2	3	2024-06-19 04:16:09.653666	2024-06-19 04:16:09.653666
3	3	2	2024-06-19 04:16:09.653666	2024-06-19 04:16:09.653666
\.


--
-- Data for Name: estudiantes; Type: TABLE DATA; Schema: public; Owner: estudiantes
--

COPY public.estudiantes (id, usuario_id, beca_id, facultad, universidad, carrera_profesional, ingreso_anio, ingreso_mes, created_at, updated_at) FROM stdin;
1	1	1	Facultad de Ciencias	Universidad Nacional	Licenciatura en Biolog├¡a	2022	9	2024-06-19 04:15:27.911154	2024-06-19 04:15:27.911154
2	3	2	Facultad de Ingenier├¡a	Universidad Central	Ingenier├¡a Civil	2020	8	2024-06-19 04:15:27.911154	2024-06-19 04:15:27.911154
3	2	3	Facultad de Artes	Universidad Nacional	Artes Pl├ísticas	2021	3	2024-06-19 04:15:27.911154	2024-06-19 04:15:27.911154
\.


--
-- Data for Name: ingresos_egresos; Type: TABLE DATA; Schema: public; Owner: estudiantes
--

COPY public.ingresos_egresos (id, categoria, created_at, descripcion, fecha, monto, tipo, updated_at, estudiante_id) FROM stdin;
\.


--
-- Data for Name: ingresosegresos; Type: TABLE DATA; Schema: public; Owner: estudiantes
--

COPY public.ingresosegresos (id, estudiante_id, tipo, categoria, descripcion, monto, fecha, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: logs_auditoria; Type: TABLE DATA; Schema: public; Owner: estudiantes
--

COPY public.logs_auditoria (id, accion, descripcion, fecha_hora, usuario_id) FROM stdin;
\.


--
-- Data for Name: logsauditoria; Type: TABLE DATA; Schema: public; Owner: estudiantes
--

COPY public.logsauditoria (id, usuario_id, accion, descripcion, fecha_hora) FROM stdin;
\.


--
-- Data for Name: notificaciones; Type: TABLE DATA; Schema: public; Owner: estudiantes
--

COPY public.notificaciones (id, usuario_id, mensaje, fecha_envio, leido) FROM stdin;
\.


--
-- Data for Name: planificacion_presupuesto; Type: TABLE DATA; Schema: public; Owner: estudiantes
--

COPY public.planificacion_presupuesto (id, anio, created_at, gasto_estimado, ingreso_estimado, mes, updated_at, estudiante_id) FROM stdin;
\.


--
-- Data for Name: planificacionpresupuesto; Type: TABLE DATA; Schema: public; Owner: estudiantes
--

COPY public.planificacionpresupuesto (id, estudiante_id, mes, anio, ingreso_estimado, gasto_estimado, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: reportes; Type: TABLE DATA; Schema: public; Owner: estudiantes
--

COPY public.reportes (id, usuario_id, tipo, contenido, fecha_generacion) FROM stdin;
\.


--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: estudiantes
--

COPY public.usuarios (id, nombre, correo, telefono, rol, contrasena, created_at, updated_at) FROM stdin;
2	Mar├¡a L├│pez	maria@example.com	987654321	coordinador	clave456	2024-06-19 04:07:00.447232	2024-06-19 04:07:00.447232
3	Carlos Garc├¡a	carlos@example.com	567890123	estudiante	pswrd789	2024-06-19 04:07:00.447232	2024-06-19 04:07:00.447232
1	Juan P├®rez	juan@example.com	123456789	estudiante	contrase├▒a123	2024-06-19 04:07:00.447232	2024-06-19 04:07:00.447232
\.


--
-- Name: becas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estudiantes
--

SELECT pg_catalog.setval('public.becas_id_seq', 3, true);


--
-- Name: coordinador_estudiantes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estudiantes
--

SELECT pg_catalog.setval('public.coordinador_estudiantes_id_seq', 1, false);


--
-- Name: coordinadores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estudiantes
--

SELECT pg_catalog.setval('public.coordinadores_id_seq', 3, true);


--
-- Name: coordinadorestudiantes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estudiantes
--

SELECT pg_catalog.setval('public.coordinadorestudiantes_id_seq', 3, true);


--
-- Name: estudiantes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estudiantes
--

SELECT pg_catalog.setval('public.estudiantes_id_seq', 3, true);


--
-- Name: ingresos_egresos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estudiantes
--

SELECT pg_catalog.setval('public.ingresos_egresos_id_seq', 1, false);


--
-- Name: ingresosegresos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estudiantes
--

SELECT pg_catalog.setval('public.ingresosegresos_id_seq', 1, false);


--
-- Name: logs_auditoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estudiantes
--

SELECT pg_catalog.setval('public.logs_auditoria_id_seq', 1, false);


--
-- Name: logsauditoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estudiantes
--

SELECT pg_catalog.setval('public.logsauditoria_id_seq', 1, false);


--
-- Name: notificaciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estudiantes
--

SELECT pg_catalog.setval('public.notificaciones_id_seq', 1, false);


--
-- Name: planificacion_presupuesto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estudiantes
--

SELECT pg_catalog.setval('public.planificacion_presupuesto_id_seq', 1, false);


--
-- Name: planificacionpresupuesto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estudiantes
--

SELECT pg_catalog.setval('public.planificacionpresupuesto_id_seq', 1, false);


--
-- Name: reportes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estudiantes
--

SELECT pg_catalog.setval('public.reportes_id_seq', 1, false);


--
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estudiantes
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 5, true);


--
-- Name: becas becas_pkey; Type: CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.becas
    ADD CONSTRAINT becas_pkey PRIMARY KEY (id);


--
-- Name: coordinador_estudiantes coordinador_estudiantes_pkey; Type: CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.coordinador_estudiantes
    ADD CONSTRAINT coordinador_estudiantes_pkey PRIMARY KEY (id);


--
-- Name: coordinadores coordinadores_pkey; Type: CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.coordinadores
    ADD CONSTRAINT coordinadores_pkey PRIMARY KEY (id);


--
-- Name: coordinadorestudiantes coordinadorestudiantes_pkey; Type: CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.coordinadorestudiantes
    ADD CONSTRAINT coordinadorestudiantes_pkey PRIMARY KEY (id);


--
-- Name: estudiantes estudiantes_pkey; Type: CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.estudiantes
    ADD CONSTRAINT estudiantes_pkey PRIMARY KEY (id);


--
-- Name: ingresos_egresos ingresos_egresos_pkey; Type: CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.ingresos_egresos
    ADD CONSTRAINT ingresos_egresos_pkey PRIMARY KEY (id);


--
-- Name: ingresosegresos ingresosegresos_pkey; Type: CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.ingresosegresos
    ADD CONSTRAINT ingresosegresos_pkey PRIMARY KEY (id);


--
-- Name: logs_auditoria logs_auditoria_pkey; Type: CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.logs_auditoria
    ADD CONSTRAINT logs_auditoria_pkey PRIMARY KEY (id);


--
-- Name: logsauditoria logsauditoria_pkey; Type: CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.logsauditoria
    ADD CONSTRAINT logsauditoria_pkey PRIMARY KEY (id);


--
-- Name: notificaciones notificaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.notificaciones
    ADD CONSTRAINT notificaciones_pkey PRIMARY KEY (id);


--
-- Name: planificacion_presupuesto planificacion_presupuesto_pkey; Type: CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.planificacion_presupuesto
    ADD CONSTRAINT planificacion_presupuesto_pkey PRIMARY KEY (id);


--
-- Name: planificacionpresupuesto planificacionpresupuesto_pkey; Type: CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.planificacionpresupuesto
    ADD CONSTRAINT planificacionpresupuesto_pkey PRIMARY KEY (id);


--
-- Name: reportes reportes_pkey; Type: CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.reportes
    ADD CONSTRAINT reportes_pkey PRIMARY KEY (id);


--
-- Name: usuarios usuarios_correo_key; Type: CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_correo_key UNIQUE (correo);


--
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- Name: coordinadores coordinadores_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.coordinadores
    ADD CONSTRAINT coordinadores_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);


--
-- Name: coordinadorestudiantes coordinadorestudiantes_coordinador_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.coordinadorestudiantes
    ADD CONSTRAINT coordinadorestudiantes_coordinador_id_fkey FOREIGN KEY (coordinador_id) REFERENCES public.coordinadores(id);


--
-- Name: coordinadorestudiantes coordinadorestudiantes_estudiante_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.coordinadorestudiantes
    ADD CONSTRAINT coordinadorestudiantes_estudiante_id_fkey FOREIGN KEY (estudiante_id) REFERENCES public.estudiantes(id);


--
-- Name: estudiantes estudiantes_beca_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.estudiantes
    ADD CONSTRAINT estudiantes_beca_id_fkey FOREIGN KEY (beca_id) REFERENCES public.becas(id);


--
-- Name: estudiantes estudiantes_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.estudiantes
    ADD CONSTRAINT estudiantes_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);


--
-- Name: logs_auditoria fk9hlugdhnm6y2ejewa5vb3yhpd; Type: FK CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.logs_auditoria
    ADD CONSTRAINT fk9hlugdhnm6y2ejewa5vb3yhpd FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);


--
-- Name: coordinador_estudiantes fkafyksd5rhfewh9lmj1k30kh6o; Type: FK CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.coordinador_estudiantes
    ADD CONSTRAINT fkafyksd5rhfewh9lmj1k30kh6o FOREIGN KEY (coordinador_id) REFERENCES public.coordinadores(id);


--
-- Name: planificacion_presupuesto fkbc7by4xc5pkmrevyrak1et1vd; Type: FK CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.planificacion_presupuesto
    ADD CONSTRAINT fkbc7by4xc5pkmrevyrak1et1vd FOREIGN KEY (estudiante_id) REFERENCES public.estudiantes(id);


--
-- Name: coordinador_estudiantes fkdbfhu2u8jicjlq05339h4fb9l; Type: FK CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.coordinador_estudiantes
    ADD CONSTRAINT fkdbfhu2u8jicjlq05339h4fb9l FOREIGN KEY (estudiante_id) REFERENCES public.estudiantes(id);


--
-- Name: ingresos_egresos fkhtd8uhtid5l6mxy7b907igjbr; Type: FK CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.ingresos_egresos
    ADD CONSTRAINT fkhtd8uhtid5l6mxy7b907igjbr FOREIGN KEY (estudiante_id) REFERENCES public.estudiantes(id);


--
-- Name: ingresosegresos ingresosegresos_estudiante_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.ingresosegresos
    ADD CONSTRAINT ingresosegresos_estudiante_id_fkey FOREIGN KEY (estudiante_id) REFERENCES public.estudiantes(id);


--
-- Name: logsauditoria logsauditoria_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.logsauditoria
    ADD CONSTRAINT logsauditoria_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);


--
-- Name: notificaciones notificaciones_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.notificaciones
    ADD CONSTRAINT notificaciones_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);


--
-- Name: planificacionpresupuesto planificacionpresupuesto_estudiante_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.planificacionpresupuesto
    ADD CONSTRAINT planificacionpresupuesto_estudiante_id_fkey FOREIGN KEY (estudiante_id) REFERENCES public.estudiantes(id);


--
-- Name: reportes reportes_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.reportes
    ADD CONSTRAINT reportes_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

