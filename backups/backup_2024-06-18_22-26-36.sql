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
-- Name: usuarios; Type: TABLE; Schema: public; Owner: estudiantes
--

CREATE TABLE public.usuarios (
    id bigint NOT NULL,
    nombre character varying(50) NOT NULL,
    correo character varying(100) NOT NULL,
    telefono character varying(20),
    rol character varying(20) NOT NULL,
    "contrase├▒a" character varying(255) NOT NULL,
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
-- Name: ingresosegresos id; Type: DEFAULT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.ingresosegresos ALTER COLUMN id SET DEFAULT nextval('public.ingresosegresos_id_seq'::regclass);


--
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- Data for Name: becas; Type: TABLE DATA; Schema: public; Owner: estudiantes
--

COPY public.becas (id, tipo, descripcion) FROM stdin;
1	Beca Completa	Cobertura total de matr├¡cula y manutenci├│n
2	Beca Parcial	Cobertura del 50% de la matr├¡cula
3	Beca de Excelencia	Para estudiantes con rendimiento acad├®mico sobresaliente
4	Beca Completa	Cobertura total de matr├¡cula y manutenci├│n
5	Beca Parcial	Cobertura del 50% de la matr├¡cula
6	Beca de Excelencia	Para estudiantes con rendimiento acad├®mico sobresaliente
7	Beca Completa	Cobertura total de matr├¡cula y manutenci├│n
8	Beca Parcial	Cobertura del 50% de la matr├¡cula
9	Beca de Excelencia	Para estudiantes con rendimiento acad├®mico sobresaliente
\.


--
-- Data for Name: coordinadores; Type: TABLE DATA; Schema: public; Owner: estudiantes
--

COPY public.coordinadores (id, usuario_id, facultad_a_cargo, created_at, updated_at, facultadacargo) FROM stdin;
1	2	Facultad de Ingenier├¡a	2024-06-02 02:15:19.096584	2024-06-02 02:15:19.096584	\N
2	4	Facultad de Ciencias	2024-06-02 02:15:19.096584	2024-06-02 02:15:19.096584	\N
\.


--
-- Data for Name: coordinadorestudiantes; Type: TABLE DATA; Schema: public; Owner: estudiantes
--

COPY public.coordinadorestudiantes (id, estudiante_id, coordinador_id, created_at, updated_at) FROM stdin;
1	1	1	2024-06-02 02:15:54.428431	2024-06-02 02:15:54.428431
2	2	2	2024-06-02 02:15:54.428431	2024-06-02 02:15:54.428431
\.


--
-- Data for Name: estudiantes; Type: TABLE DATA; Schema: public; Owner: estudiantes
--

COPY public.estudiantes (id, usuario_id, beca_id, facultad, universidad, carrera_profesional, ingreso_anio, ingreso_mes, created_at, updated_at) FROM stdin;
1	1	1	Facultad de Ingenier├¡a	Universidad Nacional	Ingenier├¡a de Sistemas	2022	3	2024-06-02 02:12:49.952356	2024-06-02 02:12:49.952356
2	3	2	Facultad de Ciencias	Universidad Nacional	Biolog├¡a	2021	8	2024-06-02 02:12:49.952356	2024-06-02 02:12:49.952356
13	1	1	Facultad de Ingenier├¡a	Universidad Nacional	Ingenier├¡a de Sistemas	2022	3	2023-01-01 00:00:00	2023-01-01 00:00:00
\.


--
-- Data for Name: ingresosegresos; Type: TABLE DATA; Schema: public; Owner: estudiantes
--

COPY public.ingresosegresos (id, estudiante_id, tipo, categoria, descripcion, monto, fecha, created_at, updated_at) FROM stdin;
1	1	Ingreso	Beca	Pago de la beca completa	500	2023-01-15	2024-06-02 02:14:33.25427	2024-06-02 02:14:33.25427
2	1	Egreso	Libros	Compra de libros de texto	100	2023-02-01	2024-06-02 02:14:33.25427	2024-06-02 02:14:33.25427
3	2	Ingreso	Beca	Pago de la beca parcial	250	2023-03-10	2024-06-02 02:14:33.25427	2024-06-02 02:14:33.25427
4	2	Egreso	Transporte	Gastos de transporte	50	2023-04-05	2024-06-02 02:14:33.25427	2024-06-02 02:14:33.25427
\.


--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: estudiantes
--

COPY public.usuarios (id, nombre, correo, telefono, rol, "contrase├▒a", created_at, updated_at) FROM stdin;
1	juanito	juanito@gmail.com	03797938	estudiante	98765	\N	\N
2	Juan P├®rez	juan.perez@example.com	1234567890	estudiante	password1	2024-06-02 01:56:16.288689	2024-06-02 01:56:16.288689
3	Mar├¡a L├│pez	maria.lopez@example.com	0987654321	coordinador	password2	2024-06-02 01:56:16.288689	2024-06-02 01:56:16.288689
4	Carlos D├¡az	carlos.diaz@example.com	1112223334	estudiante	password3	2024-06-02 01:56:16.288689	2024-06-02 01:56:16.288689
5	Ana G├│mez	ana.gomez@example.com	4445556667	coordinador	password4	2024-06-02 01:56:16.288689	2024-06-02 01:56:16.288689
\.


--
-- Name: becas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estudiantes
--

SELECT pg_catalog.setval('public.becas_id_seq', 9, true);


--
-- Name: coordinadores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estudiantes
--

SELECT pg_catalog.setval('public.coordinadores_id_seq', 8, true);


--
-- Name: coordinadorestudiantes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estudiantes
--

SELECT pg_catalog.setval('public.coordinadorestudiantes_id_seq', 8, true);


--
-- Name: estudiantes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estudiantes
--

SELECT pg_catalog.setval('public.estudiantes_id_seq', 13, true);


--
-- Name: ingresosegresos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estudiantes
--

SELECT pg_catalog.setval('public.ingresosegresos_id_seq', 20, true);


--
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: estudiantes
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 9, true);


--
-- Name: becas becas_pkey; Type: CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.becas
    ADD CONSTRAINT becas_pkey PRIMARY KEY (id);


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
-- Name: ingresosegresos ingresosegresos_pkey; Type: CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.ingresosegresos
    ADD CONSTRAINT ingresosegresos_pkey PRIMARY KEY (id);


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
-- Name: ingresosegresos ingresosegresos_estudiante_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: estudiantes
--

ALTER TABLE ONLY public.ingresosegresos
    ADD CONSTRAINT ingresosegresos_estudiante_id_fkey FOREIGN KEY (estudiante_id) REFERENCES public.estudiantes(id);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

