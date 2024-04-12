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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: continent; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.continent (
    continent_id integer NOT NULL,
    name character varying(30) NOT NULL,
    volume integer,
    planet_id integer NOT NULL,
    distance integer
);


ALTER TABLE public.continent OWNER TO freecodecamp;

--
-- Name: continent_continent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.continent_continent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.continent_continent_id_seq OWNER TO freecodecamp;

--
-- Name: continent_continent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.continent_continent_id_seq OWNED BY public.continent.continent_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter integer,
    weight numeric(4,1) NOT NULL,
    description text,
    distance integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter integer,
    weight numeric(4,1),
    description text,
    planet_id integer NOT NULL,
    distance integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter integer,
    weight numeric(4,1),
    description text,
    is_dwarf boolean,
    star_id integer NOT NULL,
    distance integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter integer,
    weight numeric(4,1),
    description text,
    is_alive boolean,
    galaxy_id integer NOT NULL,
    distance integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: continent continent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent ALTER COLUMN continent_id SET DEFAULT nextval('public.continent_continent_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: continent; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.continent VALUES (1, 'Europe', NULL, 1, NULL);
INSERT INTO public.continent VALUES (2, 'Asia', NULL, 1, NULL);
INSERT INTO public.continent VALUES (3, 'Antarctica', NULL, 1, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 420, 69.0, 'Closest big galaxy to the Milky Way', NULL);
INSERT INTO public.galaxy VALUES (2, 'Antennae', 420, 69.0, 'Two colliding galaxies', NULL);
INSERT INTO public.galaxy VALUES (3, 'Bear Paw', 420, 69.0, 'Also known as Bear Claw', NULL);
INSERT INTO public.galaxy VALUES (4, 'Fireworks', 420, 69.0, 'Active starburst galaxy', NULL);
INSERT INTO public.galaxy VALUES (5, 'Eye of Sauron', 420, 69.0, 'Named after Lord of the Rings', NULL);
INSERT INTO public.galaxy VALUES (6, 'Malin 1', 420, 69.0, 'Also known as Messier 99 or M99', NULL);
INSERT INTO public.galaxy VALUES (7, 'Milky Way', 420, 69.0, 'Our galaxy', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', NULL, NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Deimos', NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (3, 'Phobos', NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (4, 'Aitne', NULL, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (5, 'Autonoe', NULL, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (6, 'Carme', NULL, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (7, 'Carpo', NULL, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (8, 'Elara', NULL, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (9, 'Daphnis', NULL, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (10, 'Fenrir', NULL, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (11, 'Loge', NULL, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (12, 'Narvi', NULL, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (13, 'Janus', NULL, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (14, 'Juliet', NULL, NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (15, 'Miranda', NULL, NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (16, 'Oberon', NULL, NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (17, 'Margaret', NULL, NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (18, 'Bianca', NULL, NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (19, 'Titania', NULL, NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (20, 'Nix', NULL, NULL, NULL, 9, NULL);
INSERT INTO public.moon VALUES (21, 'Charon', NULL, NULL, NULL, 9, NULL);
INSERT INTO public.moon VALUES (22, 'Styx', NULL, NULL, NULL, 9, NULL);
INSERT INTO public.moon VALUES (23, 'Hydra', NULL, NULL, NULL, 9, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 420, 69.0, 'Our planet', false, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Mercury', 420, 69.0, '', false, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Venus', 420, 69.0, '', false, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 420, 69.0, '', false, 1, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 420, 69.0, '', false, 1, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 420, 69.0, '', false, 1, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 420, 69.0, '', false, 1, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 420, 69.0, '', false, 1, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 420, 69.0, '', true, 1, NULL);
INSERT INTO public.planet VALUES (10, 'Ceres', 420, 69.0, '', true, 1, NULL);
INSERT INTO public.planet VALUES (11, 'Haumea', 420, 69.0, '', true, 1, NULL);
INSERT INTO public.planet VALUES (12, 'Eris', 420, 69.0, '', true, 1, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Wolf 359', 420, 69.0, '', true, 1, NULL);
INSERT INTO public.star VALUES (1, 'The Sun', 420, 69.0, 'The sun of our solar system', true, 7, NULL);
INSERT INTO public.star VALUES (3, 'Sirius A', 420, 69.0, '', true, 1, NULL);
INSERT INTO public.star VALUES (4, 'Sirius B', 420, 69.0, '', true, 1, NULL);
INSERT INTO public.star VALUES (5, 'Epsilon Eridani', 420, 69.0, '', true, 1, NULL);
INSERT INTO public.star VALUES (6, '61 Cygni', 420, 69.0, '', true, 2, NULL);


--
-- Name: continent_continent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.continent_continent_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: continent continent_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_name_key UNIQUE (name);


--
-- Name: continent continent_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_pkey PRIMARY KEY (continent_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: continent continent_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

