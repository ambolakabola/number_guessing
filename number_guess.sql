--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(50) NOT NULL,
    games_played integer,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (8, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 1, -1);
INSERT INTO public.users VALUES (31, 'ko', 2, 1);
INSERT INTO public.users VALUES (9, 'ambolakabolashabolazabola', 3, 997);
INSERT INTO public.users VALUES (10, 'aa', 1, 999);
INSERT INTO public.users VALUES (12, 'user_1664244179641', 1, 999);
INSERT INTO public.users VALUES (13, 'user_1664244179640', 1, 999);
INSERT INTO public.users VALUES (14, 'user_1664244255101', 1, 999);
INSERT INTO public.users VALUES (15, 'user_1664244255100', 1, 999);
INSERT INTO public.users VALUES (33, 'user_1664247023897', 2, 2);
INSERT INTO public.users VALUES (17, 'user_1664244810535', 1, 999);
INSERT INTO public.users VALUES (52, 'user_1664247611084', 2, 48);
INSERT INTO public.users VALUES (16, 'user_1664244810536', 1, 999);
INSERT INTO public.users VALUES (32, 'user_1664247023898', 5, 2);
INSERT INTO public.users VALUES (51, 'user_1664247611085', 5, 32);
INSERT INTO public.users VALUES (35, 'user_1664247115654', 2, 2);
INSERT INTO public.users VALUES (34, 'user_1664247115655', 5, 2);
INSERT INTO public.users VALUES (19, 'user_1664245729672', 1, 3);
INSERT INTO public.users VALUES (18, 'user_1664245729673', 1, 2);
INSERT INTO public.users VALUES (37, 'user_1664247208204', 2, 2);
INSERT INTO public.users VALUES (54, 'user_1664247679998', 2, 605);
INSERT INTO public.users VALUES (36, 'user_1664247208205', 5, 2);
INSERT INTO public.users VALUES (20, 'aaaaaa', 0, 1000);
INSERT INTO public.users VALUES (11, 'AA', 2, 1);
INSERT INTO public.users VALUES (21, 'AAAAAAAA', 0, 1000);
INSERT INTO public.users VALUES (22, 'HOHO', 0, 1000);
INSERT INTO public.users VALUES (23, 'asdas', 0, 1000);
INSERT INTO public.users VALUES (38, 'kkokk', 1, 2);
INSERT INTO public.users VALUES (24, 'eeq', 2, 2);
INSERT INTO public.users VALUES (39, 'joj', 1, 11);
INSERT INTO public.users VALUES (26, 'user_1664246769398', 2, 2);
INSERT INTO public.users VALUES (53, 'user_1664247679999', 5, 57);
INSERT INTO public.users VALUES (25, 'user_1664246769399', 5, 2);
INSERT INTO public.users VALUES (41, 'user_1664247347131', 2, 3);
INSERT INTO public.users VALUES (28, 'user_1664246818553', 2, 3);
INSERT INTO public.users VALUES (27, 'user_1664246818554', 5, 2);
INSERT INTO public.users VALUES (40, 'user_1664247347132', 5, 2);
INSERT INTO public.users VALUES (30, 'user_1664246826601', 2, 2);
INSERT INTO public.users VALUES (29, 'user_1664246826602', 5, 2);
INSERT INTO public.users VALUES (56, 'user_1664247691863', 2, 468);
INSERT INTO public.users VALUES (43, 'user_1664247457600', 2, 3);
INSERT INTO public.users VALUES (42, 'user_1664247457601', 5, 3);
INSERT INTO public.users VALUES (55, 'user_1664247691864', 5, 128);
INSERT INTO public.users VALUES (45, 'user_1664247475520', 2, 5);
INSERT INTO public.users VALUES (44, 'user_1664247475521', 5, 2);
INSERT INTO public.users VALUES (58, 'user_1664247734935', 2, 127);
INSERT INTO public.users VALUES (47, 'user_1664247490957', 2, 129);
INSERT INTO public.users VALUES (57, 'user_1664247734936', 5, 218);
INSERT INTO public.users VALUES (46, 'user_1664247490958', 5, 5);
INSERT INTO public.users VALUES (48, 'kookk', NULL, NULL);
INSERT INTO public.users VALUES (50, 'user_1664247557738', 2, 397);
INSERT INTO public.users VALUES (49, 'user_1664247557739', 5, 26);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 58, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

