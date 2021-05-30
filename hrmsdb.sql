--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-05-30 16:55:03

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
-- TOC entry 206 (class 1259 OID 17975)
-- Name: cities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cities (
    cities_id integer NOT NULL,
    city_name character varying NOT NULL
);


ALTER TABLE public.cities OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 18162)
-- Name: cities_cities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.cities ALTER COLUMN cities_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cities_cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 202 (class 1259 OID 17167)
-- Name: employers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employers (
    employer_id integer NOT NULL,
    company_name character varying NOT NULL,
    web_site character varying NOT NULL,
    email_verify boolean,
    phone_number character varying NOT NULL
);


ALTER TABLE public.employers OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 17278)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 17218)
-- Name: job_positions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job_positions (
    id integer NOT NULL,
    position_name character varying NOT NULL,
    cities_id integer
);


ALTER TABLE public.job_positions OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 18152)
-- Name: job_positions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.job_positions ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.job_positions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 201 (class 1259 OID 17134)
-- Name: job_seekers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job_seekers (
    id integer NOT NULL,
    name character varying NOT NULL,
    surname character varying NOT NULL,
    birth_year date NOT NULL,
    national_identity character varying(255) NOT NULL,
    verify boolean
);


ALTER TABLE public.job_seekers OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 17988)
-- Name: jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jobs (
    id integer NOT NULL,
    description character varying NOT NULL,
    max_salary integer,
    min_salary integer,
    open_positions integer NOT NULL,
    position_expire_date date NOT NULL,
    is_active boolean NOT NULL,
    created_time date NOT NULL,
    job_position_id integer NOT NULL,
    employer_id integer NOT NULL,
    city_id integer NOT NULL
);


ALTER TABLE public.jobs OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 17996)
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.jobs ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 205 (class 1259 OID 17355)
-- Name: system_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.system_users (
    system_user_id integer NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.system_users OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 17126)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying NOT NULL,
    password character varying NOT NULL,
    password_repeat character varying(255)
);


ALTER TABLE public.users OWNER TO postgres;

-- Completed on 2021-05-30 16:55:03

--
-- PostgreSQL database dump complete
--

