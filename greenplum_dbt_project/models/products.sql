--
-- PostgreSQL database dump
--
-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0
-- Started on 2025-10-01 15:17:44 AEST
--

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
-- TOC entry 215 (class 1259 OID 16386)
-- Name: products; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    price numeric(10, 2) NOT NULL,
    sku character varying(50) UNIQUE,
    in_stock boolean DEFAULT true,
    created_at timestamp with time zone DEFAULT now()
);


--
-- TOC entry 214 (class 1259 OID 16385)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- TOC entry 4835 (class 0 OID 16386)
-- Dependencies: 215
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.products (id, name, description, price, sku, in_stock, created_at) FROM stdin;
1	Laptop Pro X1	15-inch powerhouse for professionals.	2499.99	LPX1-2025	t	2025-09-15 10:00:00+10
2	Wireless Mouse G5	Ergonomic mouse with 8 programmable buttons.	129.50	WMG5-2025	t	2025-09-15 10:05:00+10
3	Mechanical Keyboard K9	RGB backlit keyboard for gaming and typing.	215.00	MKK9-2025	f	2025-09-18 11:30:00+10
4	4K Ultra HD Monitor	27-inch monitor with stunning color accuracy.	899.00	M4KU-2025	t	2025-09-21 14:00:00+10
\.


--
-- TOC entry 4842 (class 0 OID 0)
-- Dependencies: 214
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.products_id_seq', 4, true);


--
-- TOC entry 4691 (class 2606 OID 16393)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--
-- Completed on 2025-10-01 15:17:44 AEST
--