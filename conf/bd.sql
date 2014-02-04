--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.9
-- Dumped by pg_dump version 9.1.9
-- Started on 2014-02-04 15:13:05 PYST

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 1883 (class 1262 OID 17139)
-- Name: jpatest; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE jpatest WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


\connect jpatest

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 167 (class 3079 OID 11645)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 1885 (class 0 OID 0)
-- Dependencies: 167
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_with_oids = false;

--
-- TOC entry 161 (class 1259 OID 17673)
-- Dependencies: 5
-- Name: persona; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE persona (
    id bigint NOT NULL,
    documento character varying(255),
    apellidos character varying(255),
    nombre character varying(255)
);


--
-- TOC entry 163 (class 1259 OID 17686)
-- Dependencies: 5
-- Name: persona_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE persona_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 162 (class 1259 OID 17681)
-- Dependencies: 5
-- Name: proveedor; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE proveedor (
    id bigint NOT NULL,
    nombre character varying(255)
);


--
-- TOC entry 164 (class 1259 OID 17688)
-- Dependencies: 5
-- Name: proveedor_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE proveedor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 166 (class 1259 OID 17693)
-- Dependencies: 5
-- Name: usuario; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE usuario (
    id bigint NOT NULL,
    usuario character varying,
    proveedor_id bigint
);


--
-- TOC entry 165 (class 1259 OID 17691)
-- Dependencies: 166 5
-- Name: usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 1886 (class 0 OID 0)
-- Dependencies: 165
-- Name: usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE usuario_id_seq OWNED BY usuario.id;


--
-- TOC entry 1866 (class 2604 OID 17696)
-- Dependencies: 165 166 166
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY usuario ALTER COLUMN id SET DEFAULT nextval('usuario_id_seq'::regclass);


--
-- TOC entry 1873 (class 0 OID 17673)
-- Dependencies: 161 1879
-- Data for Name: persona; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO persona (id, documento, apellidos, nombre) VALUES (11, NULL, NULL, NULL);
INSERT INTO persona (id, documento, apellidos, nombre) VALUES (12, NULL, NULL, NULL);
INSERT INTO persona (id, documento, apellidos, nombre) VALUES (17, NULL, NULL, NULL);
INSERT INTO persona (id, documento, apellidos, nombre) VALUES (18, NULL, NULL, NULL);


--
-- TOC entry 1887 (class 0 OID 0)
-- Dependencies: 163
-- Name: persona_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('persona_seq', 1, false);


--
-- TOC entry 1874 (class 0 OID 17681)
-- Dependencies: 162 1879
-- Data for Name: proveedor; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO proveedor (id, nombre) VALUES (6, 'mamamama');
INSERT INTO proveedor (id, nombre) VALUES (10, 'asdfasdfasdf');
INSERT INTO proveedor (id, nombre) VALUES (16, 'jujujujuasdfasdf');


--
-- TOC entry 1888 (class 0 OID 0)
-- Dependencies: 164
-- Name: proveedor_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('proveedor_seq', 18, true);


--
-- TOC entry 1878 (class 0 OID 17693)
-- Dependencies: 166 1879
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO usuario (id, usuario, proveedor_id) VALUES (11, 'usu_asdfasdfasdf', NULL);
INSERT INTO usuario (id, usuario, proveedor_id) VALUES (12, 'usu_asdfasdfasdf', NULL);
INSERT INTO usuario (id, usuario, proveedor_id) VALUES (17, 'usu_jujujujuasdfasdf', NULL);
INSERT INTO usuario (id, usuario, proveedor_id) VALUES (18, 'usu_jujujujuasdfasdf', NULL);


--
-- TOC entry 1889 (class 0 OID 0)
-- Dependencies: 165
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('usuario_id_seq', 1, false);


--
-- TOC entry 1868 (class 2606 OID 17680)
-- Dependencies: 161 161 1880
-- Name: pk_persona; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY persona
    ADD CONSTRAINT pk_persona PRIMARY KEY (id);


--
-- TOC entry 1870 (class 2606 OID 17685)
-- Dependencies: 162 162 1880
-- Name: pk_proveedor; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY proveedor
    ADD CONSTRAINT pk_proveedor PRIMARY KEY (id);


--
-- TOC entry 1872 (class 2606 OID 17701)
-- Dependencies: 166 166 1880
-- Name: usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


-- Completed on 2014-02-04 15:13:06 PYST

--
-- PostgreSQL database dump complete
--

