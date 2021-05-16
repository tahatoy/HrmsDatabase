--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-05-16 20:35:54

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
-- TOC entry 203 (class 1259 OID 17157)
-- Name: email_validators; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.email_validators (
    user_id integer NOT NULL,
    is_validate boolean NOT NULL
);


ALTER TABLE public.email_validators OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 17167)
-- Name: employers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employers (
    employer_id integer NOT NULL,
    company_name character varying NOT NULL,
    web_site character varying NOT NULL,
    phone_number integer NOT NULL
);


ALTER TABLE public.employers OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 17278)
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
-- TOC entry 207 (class 1259 OID 17335)
-- Name: hrms_validators; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hrms_validators (
    system_user_id integer NOT NULL,
    employer_id integer NOT NULL,
    is_validate boolean NOT NULL
);


ALTER TABLE public.hrms_validators OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 17218)
-- Name: job_positions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job_positions (
    id integer NOT NULL,
    position_name character varying NOT NULL
);


ALTER TABLE public.job_positions OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 17134)
-- Name: job_seekers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job_seekers (
    jobseeker_user_id integer NOT NULL,
    jobseeker_first_name character varying NOT NULL,
    jobseeker_last_name character varying NOT NULL,
    jobseeker_national_id integer NOT NULL,
    job_seeker_birth_date date NOT NULL
);


ALTER TABLE public.job_seekers OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 17147)
-- Name: mernis_validators; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mernis_validators (
    mernis_user_id integer NOT NULL,
    is_validate boolean NOT NULL
);


ALTER TABLE public.mernis_validators OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 17355)
-- Name: system_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.system_users (
    system_user_id integer NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL
);


ALTER TABLE public.system_users OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 17126)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying NOT NULL,
    password character varying NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 3038 (class 0 OID 17157)
-- Dependencies: 203
-- Data for Name: email_validators; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.email_validators (user_id, is_validate) FROM stdin;
2	t
3	t
4	f
\.


--
-- TOC entry 3039 (class 0 OID 17167)
-- Dependencies: 204
-- Data for Name: employers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employers (employer_id, company_name, web_site, phone_number) FROM stdin;
2	atesler holding	ates@ates.com	256789456
\.


--
-- TOC entry 3042 (class 0 OID 17335)
-- Dependencies: 207
-- Data for Name: hrms_validators; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hrms_validators (system_user_id, employer_id, is_validate) FROM stdin;
1	2	t
\.


--
-- TOC entry 3040 (class 0 OID 17218)
-- Dependencies: 205
-- Data for Name: job_positions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.job_positions (id, position_name) FROM stdin;
1	Software Engineer\n
\.


--
-- TOC entry 3036 (class 0 OID 17134)
-- Dependencies: 201
-- Data for Name: job_seekers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.job_seekers (jobseeker_user_id, jobseeker_first_name, jobseeker_last_name, jobseeker_national_id, job_seeker_birth_date) FROM stdin;
3	isa	üye	123456789	2004-03-22
\.


--
-- TOC entry 3037 (class 0 OID 17147)
-- Dependencies: 202
-- Data for Name: mernis_validators; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mernis_validators (mernis_user_id, is_validate) FROM stdin;
3	t
\.


--
-- TOC entry 3043 (class 0 OID 17355)
-- Dependencies: 208
-- Data for Name: system_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.system_users (system_user_id, first_name, last_name) FROM stdin;
1	Taha	Toy
\.


--
-- TOC entry 3035 (class 0 OID 17126)
-- Dependencies: 200
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, password) FROM stdin;
1	taha@taha.com	123456789
2	mehmet@mehmet.com	78946513
3	isa@isa	7897565465
4	sarp@sarp	789456213
5	can@can\n	45648979
6	omer@omer\n	7894285\n
\.


--
-- TOC entry 3049 (class 0 OID 0)
-- Dependencies: 206
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 1, false);


--
-- TOC entry 2890 (class 2606 OID 17161)
-- Name: email_validators EmailValidators_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.email_validators
    ADD CONSTRAINT "EmailValidators_pkey" PRIMARY KEY (user_id);


--
-- TOC entry 2892 (class 2606 OID 17174)
-- Name: employers Employers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employers
    ADD CONSTRAINT "Employers_pkey" PRIMARY KEY (employer_id);


--
-- TOC entry 2894 (class 2606 OID 17225)
-- Name: job_positions JobPositions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_positions
    ADD CONSTRAINT "JobPositions_pkey" PRIMARY KEY (id);


--
-- TOC entry 2886 (class 2606 OID 17391)
-- Name: job_seekers JobSeekers_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_seekers
    ADD CONSTRAINT "JobSeekers_pk" PRIMARY KEY (jobseeker_user_id);


--
-- TOC entry 2888 (class 2606 OID 17151)
-- Name: mernis_validators MernisValidators_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mernis_validators
    ADD CONSTRAINT "MernisValidators_pkey" PRIMARY KEY (mernis_user_id);


--
-- TOC entry 2884 (class 2606 OID 17133)
-- Name: users Users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);


--
-- TOC entry 2896 (class 2606 OID 17339)
-- Name: hrms_validators hrms_validators_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hrms_validators
    ADD CONSTRAINT hrms_validators_pkey PRIMARY KEY (system_user_id);


--
-- TOC entry 2898 (class 2606 OID 17362)
-- Name: system_users system_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.system_users
    ADD CONSTRAINT system_users_pkey PRIMARY KEY (system_user_id);


--
-- TOC entry 2901 (class 2606 OID 17208)
-- Name: email_validators EmailValidators_userId_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.email_validators
    ADD CONSTRAINT "EmailValidators_userId_fk" FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;


--
-- TOC entry 2899 (class 2606 OID 17142)
-- Name: job_seekers JobSeekers_jobSeekersId_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_seekers
    ADD CONSTRAINT "JobSeekers_jobSeekersId_fk" FOREIGN KEY (jobseeker_user_id) REFERENCES public.users(id) NOT VALID;


--
-- TOC entry 2900 (class 2606 OID 17392)
-- Name: mernis_validators MernisValidtors_userId_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mernis_validators
    ADD CONSTRAINT "MernisValidtors_userId_fk" FOREIGN KEY (mernis_user_id) REFERENCES public.job_seekers(jobseeker_user_id) NOT VALID;


--
-- TOC entry 2902 (class 2606 OID 17340)
-- Name: hrms_validators hrms_validators_employerId_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hrms_validators
    ADD CONSTRAINT "hrms_validators_employerId_fk" FOREIGN KEY (employer_id) REFERENCES public.employers(employer_id) NOT VALID;


--
-- TOC entry 2903 (class 2606 OID 17368)
-- Name: hrms_validators hrms_validators_systemUserId_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hrms_validators
    ADD CONSTRAINT "hrms_validators_systemUserId_fk" FOREIGN KEY (system_user_id) REFERENCES public.system_users(system_user_id) NOT VALID;


--
-- TOC entry 2904 (class 2606 OID 17363)
-- Name: system_users systemusers_sysusıd_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.system_users
    ADD CONSTRAINT "systemusers_sysusıd_fk" FOREIGN KEY (system_user_id) REFERENCES public.users(id) NOT VALID;


-- Completed on 2021-05-16 20:35:54

--
-- PostgreSQL database dump complete
--

