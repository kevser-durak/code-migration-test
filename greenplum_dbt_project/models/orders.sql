--
-- PostgreSQL database dump
--
-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0
-- Started on 2025-10-02 09:30:00 AEST
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
-- TOC entry 220 (class 1259 OID 16400)
-- Name: customers; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    email character varying(255) NOT NULL,
    phone character varying(20),
    address text,
    city character varying(100),
    country character varying(100),
    postal_code character varying(20),
    is_active boolean DEFAULT true,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now()
);


--
-- TOC entry 219 (class 1259 OID 16399)
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;
ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- TOC entry 222 (class 1259 OID 16420)
-- Name: orders; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    customer_id integer NOT NULL,
    order_date timestamp with time zone DEFAULT now(),
    status character varying(50) DEFAULT 'pending'::character varying,
    total_amount numeric(10, 2) NOT NULL,
    shipping_address text,
    payment_method character varying(50),
    notes text,
    created_at timestamp with time zone DEFAULT now()
);


--
-- TOC entry 221 (class 1259 OID 16419)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- TOC entry 224 (class 1259 OID 16440)
-- Name: order_items; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.order_items (
    id integer NOT NULL,
    order_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer NOT NULL,
    unit_price numeric(10, 2) NOT NULL,
    discount_percent numeric(5, 2) DEFAULT 0.00,
    subtotal numeric(10, 2) NOT NULL,
    created_at timestamp with time zone DEFAULT now()
);


--
-- TOC entry 223 (class 1259 OID 16439)
-- Name: order_items_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.order_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.order_items_id_seq OWNED BY public.order_items.id;
ALTER TABLE ONLY public.order_items ALTER COLUMN id SET DEFAULT nextval('public.order_items_id_seq'::regclass);


--
-- TOC entry 4850 (class 0 OID 16400)
-- Dependencies: 220
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.customers (id, first_name, last_name, email, phone, address, city, country, postal_code, is_active, created_at, updated_at) FROM stdin;
1	John	Doe	john.doe@email.com	+61-412-345-678	123 Main Street	Melbourne	Australia	3000	t	2025-09-01 08:00:00+10	2025-09-01 08:00:00+10
2	Jane	Smith	jane.smith@email.com	+61-423-456-789	456 Collins Street	Sydney	Australia	2000	t	2025-09-02 09:15:00+10	2025-09-02 09:15:00+10
3	Michael	Johnson	m.johnson@email.com	+61-434-567-890	789 Queen Street	Brisbane	Australia	4000	t	2025-09-03 10:30:00+10	2025-09-03 10:30:00+10
4	Emily	Brown	emily.b@email.com	+61-445-678-901	321 George Street	Perth	Australia	6000	t	2025-09-04 11:45:00+10	2025-09-04 11:45:00+10
5	David	Wilson	d.wilson@email.com	+61-456-789-012	654 King Street	Adelaide	Australia	5000	f	2025-09-05 13:00:00+10	2025-09-20 14:30:00+10
\.


--
-- TOC entry 4852 (class 0 OID 16420)
-- Dependencies: 222
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.orders (id, customer_id, order_date, status, total_amount, shipping_address, payment_method, notes, created_at) FROM stdin;
1	1	2025-09-10 10:00:00+10	completed	2629.49	123 Main Street, Melbourne, VIC 3000	credit_card	Please leave at front door	2025-09-10 10:00:00+10
2	1	2025-09-15 14:30:00+10	completed	215.00	123 Main Street, Melbourne, VIC 3000	paypal	\N	2025-09-15 14:30:00+10
3	2	2025-09-12 09:20:00+10	shipped	1028.50	456 Collins Street, Sydney, NSW 2000	credit_card	\N	2025-09-12 09:20:00+10
4	3	2025-09-18 16:45:00+10	processing	899.00	789 Queen Street, Brisbane, QLD 4000	bank_transfer	Gift wrap requested	2025-09-18 16:45:00+10
5	4	2025-09-20 11:00:00+10	pending	2499.99	321 George Street, Perth, WA 6000	credit_card	\N	2025-09-20 11:00:00+10
6	2	2025-09-22 13:15:00+10	cancelled	129.50	456 Collins Street, Sydney, NSW 2000	paypal	Customer requested cancellation	2025-09-22 13:15:00+10
\.


--
-- TOC entry 4854 (class 0 OID 16440)
-- Dependencies: 224
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.order_items (id, order_id, product_id, quantity, unit_price, discount_percent, subtotal, created_at) FROM stdin;
1	1	1	1	2499.99	0.00	2499.99	2025-09-10 10:00:00+10
2	1	2	1	129.50	0.00	129.50	2025-09-10 10:00:00+10
3	2	3	1	215.00	0.00	215.00	2025-09-15 14:30:00+10
4	3	4	1	899.00	0.00	899.00	2025-09-12 09:20:00+10
5	3	2	1	129.50	0.00	129.50	2025-09-12 09:20:00+10
6	4	4	1	899.00	0.00	899.00	2025-09-18 16:45:00+10
7	5	1	1	2499.99	0.00	2499.99	2025-09-20 11:00:00+10
8	6	2	1	129.50	0.00	129.50	2025-09-22 13:15:00+10
\.


--
-- TOC entry 4860 (class 0 OID 0)
-- Dependencies: 219
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.customers_id_seq', 5, true);


--
-- TOC entry 4861 (class 0 OID 0)
-- Dependencies: 221
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.orders_id_seq', 6, true);


--
-- TOC entry 4862 (class 0 OID 0)
-- Dependencies: 223
-- Name: order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.order_items_id_seq', 8, true);


--
-- TOC entry 4710 (class 2606 OID 16408)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- TOC entry 4712 (class 2606 OID 16410)
-- Name: customers customers_email_key; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_email_key UNIQUE (email);


--
-- TOC entry 4714 (class 2606 OID 16428)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 4716 (class 2606 OID 16448)
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--
-- Completed on 2025-10-02 09:30:00 AEST
--