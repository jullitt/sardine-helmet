--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    guesses integer,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22)
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 864, 32);
INSERT INTO public.games VALUES (2, 666, 33);
INSERT INTO public.games VALUES (3, 304, 32);
INSERT INTO public.games VALUES (4, 803, 32);
INSERT INTO public.games VALUES (5, 654, 32);
INSERT INTO public.games VALUES (6, 15, 1);
INSERT INTO public.games VALUES (7, 60, 34);
INSERT INTO public.games VALUES (8, 737, 35);
INSERT INTO public.games VALUES (9, 364, 34);
INSERT INTO public.games VALUES (10, 168, 34);
INSERT INTO public.games VALUES (11, 31, 34);
INSERT INTO public.games VALUES (12, 329, 38);
INSERT INTO public.games VALUES (13, 184, 39);
INSERT INTO public.games VALUES (14, 169, 38);
INSERT INTO public.games VALUES (15, 415, 38);
INSERT INTO public.games VALUES (16, 217, 38);
INSERT INTO public.games VALUES (17, 244, 40);
INSERT INTO public.games VALUES (18, 792, 41);
INSERT INTO public.games VALUES (19, 116, 40);
INSERT INTO public.games VALUES (20, 122, 40);
INSERT INTO public.games VALUES (21, 761, 40);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'test');
INSERT INTO public.users VALUES (4, 'user_1723018746657');
INSERT INTO public.users VALUES (5, 'user_1723018746656');
INSERT INTO public.users VALUES (6, 'user_1723018792138');
INSERT INTO public.users VALUES (7, 'user_1723018792137');
INSERT INTO public.users VALUES (8, 'user_1723018811529');
INSERT INTO public.users VALUES (9, 'user_1723018811528');
INSERT INTO public.users VALUES (10, 'user_1723018844582');
INSERT INTO public.users VALUES (11, 'user_1723018844581');
INSERT INTO public.users VALUES (12, 'user_1723018905884');
INSERT INTO public.users VALUES (13, 'user_1723018905883');
INSERT INTO public.users VALUES (14, 'user_1723018929257');
INSERT INTO public.users VALUES (15, 'user_1723018929256');
INSERT INTO public.users VALUES (16, 'user_1723019016877');
INSERT INTO public.users VALUES (17, 'user_1723019016876');
INSERT INTO public.users VALUES (18, 'user_1723019051253');
INSERT INTO public.users VALUES (19, 'user_1723019051252');
INSERT INTO public.users VALUES (20, 'user_1723019162711');
INSERT INTO public.users VALUES (21, 'user_1723019162710');
INSERT INTO public.users VALUES (22, 'user_1723019285307');
INSERT INTO public.users VALUES (23, 'user_1723019285306');
INSERT INTO public.users VALUES (24, 'user_1723019326539');
INSERT INTO public.users VALUES (25, 'user_1723019326538');
INSERT INTO public.users VALUES (26, 'user_1723019428411');
INSERT INTO public.users VALUES (27, 'user_1723019428410');
INSERT INTO public.users VALUES (28, 'user_1723019888086');
INSERT INTO public.users VALUES (29, 'user_1723019888085');
INSERT INTO public.users VALUES (30, 'user_1723019916008');
INSERT INTO public.users VALUES (31, 'user_1723019916007');
INSERT INTO public.users VALUES (32, 'user_1723019992056');
INSERT INTO public.users VALUES (33, 'user_1723019992055');
INSERT INTO public.users VALUES (34, 'user_1723020097252');
INSERT INTO public.users VALUES (35, 'user_1723020097251');
INSERT INTO public.users VALUES (36, 'user_1723020108321');
INSERT INTO public.users VALUES (37, 'user_1723020108320');
INSERT INTO public.users VALUES (38, 'user_1723020209529');
INSERT INTO public.users VALUES (39, 'user_1723020209528');
INSERT INTO public.users VALUES (40, 'user_1723020224039');
INSERT INTO public.users VALUES (41, 'user_1723020224038');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 21, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 41, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games user_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

