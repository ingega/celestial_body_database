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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    located boolean,
    quadrant integer NOT NULL,
    sector integer,
    distante_to_earth numeric(4,1),
    water boolean NOT NULL
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
    name character varying(20) NOT NULL,
    description text,
    located boolean,
    quadrant integer NOT NULL,
    sector integer,
    distante_to_earth numeric(4,1),
    water boolean NOT NULL,
    planet_id integer NOT NULL
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
    name character varying(20) NOT NULL,
    description text,
    located boolean,
    quadrant integer NOT NULL,
    sector integer,
    distante_to_earth numeric(4,1),
    water boolean NOT NULL,
    star_id integer NOT NULL
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
-- Name: planetoid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planetoid (
    planetoid_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    located boolean,
    quadrant integer NOT NULL,
    sector integer,
    distante_to_earth numeric(4,1),
    water boolean NOT NULL
);


ALTER TABLE public.planetoid OWNER TO freecodecamp;

--
-- Name: planetoid_planetoid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planetoid_planetoid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planetoid_planetoid_id_seq OWNER TO freecodecamp;

--
-- Name: planetoid_planetoid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planetoid_planetoid_id_seq OWNED BY public.planetoid.planetoid_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    located boolean,
    quadrant integer NOT NULL,
    sector integer,
    distante_to_earth numeric(4,1),
    water boolean NOT NULL,
    galaxy_id integer
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
-- Name: planetoid planetoid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetoid ALTER COLUMN planetoid_id SET DEFAULT nextval('public.planetoid_planetoid_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 'nice Space object', true, 1, 2, 36.1, true);
INSERT INTO public.galaxy VALUES (2, 'galaxy1', 'nice Space object', true, 1, 2, 36.1, true);
INSERT INTO public.galaxy VALUES (3, 'galaxy2', 'nice Space object', true, 1, 2, 36.1, true);
INSERT INTO public.galaxy VALUES (4, 'galaxy3', 'nice Space object', true, 1, 2, 36.1, true);
INSERT INTO public.galaxy VALUES (5, 'galaxy4', 'nice Space object', true, 1, 2, 36.1, true);
INSERT INTO public.galaxy VALUES (6, 'galaxy5', 'nice Space object', true, 1, 2, 36.1, true);
INSERT INTO public.galaxy VALUES (7, 'galaxy6', 'nice Space object', true, 1, 2, 36.1, true);
INSERT INTO public.galaxy VALUES (8, 'galaxy7', 'nice Space object', true, 1, 2, 36.1, true);
INSERT INTO public.galaxy VALUES (9, 'galaxy8', 'nice Space object', true, 1, 2, 36.1, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 'gray rock object', true, 1, 2, 0.0, false, 1);
INSERT INTO public.moon VALUES (2, 'mon1', 'nice Space object', true, 1, 2, 36.1, true, 2);
INSERT INTO public.moon VALUES (3, 'moon2', 'nice Space object', true, 1, 2, 36.1, true, 3);
INSERT INTO public.moon VALUES (4, 'moon3', 'nice Space object', true, 1, 2, 36.1, true, 4);
INSERT INTO public.moon VALUES (5, 'moon4', 'nice Space object', true, 1, 2, 36.1, true, 5);
INSERT INTO public.moon VALUES (6, 'moon5', 'nice Space object', true, 1, 2, 36.1, true, 6);
INSERT INTO public.moon VALUES (7, 'moon6', 'nice Space object', true, 1, 2, 36.1, true, 5);
INSERT INTO public.moon VALUES (8, 'moon7', 'nice Space object', true, 1, 2, 36.1, true, 6);
INSERT INTO public.moon VALUES (9, 'moon8', 'nice Space object', true, 1, 2, 36.1, true, 5);
INSERT INTO public.moon VALUES (10, 'moon9', 'nice Space object', true, 1, 2, 36.1, true, 6);
INSERT INTO public.moon VALUES (11, 'moon10', 'nice Space object', true, 1, 2, 36.1, true, 5);
INSERT INTO public.moon VALUES (12, 'moon11', 'nice Space object', true, 1, 2, 36.1, true, 6);
INSERT INTO public.moon VALUES (13, 'moon12', 'nice Space object', true, 1, 2, 36.1, true, 5);
INSERT INTO public.moon VALUES (14, 'moon13', 'nice Space object', true, 1, 2, 36.1, true, 6);
INSERT INTO public.moon VALUES (15, 'moon14', 'nice Space object', true, 1, 2, 36.1, true, 5);
INSERT INTO public.moon VALUES (16, 'moon15', 'nice Space object', true, 1, 2, 36.1, true, 6);
INSERT INTO public.moon VALUES (17, 'moon16', 'nice Space object', true, 1, 2, 36.1, true, 5);
INSERT INTO public.moon VALUES (18, 'moon17', 'nice Space object', true, 1, 2, 36.1, true, 6);
INSERT INTO public.moon VALUES (19, 'moon18', 'nice Space object', true, 1, 2, 36.1, true, 5);
INSERT INTO public.moon VALUES (20, 'moon19', 'nice Space object', true, 1, 2, 36.1, true, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 'Blue full of life planet', true, 1, 2, 0.0, false, 1);
INSERT INTO public.planet VALUES (2, 'planet1', 'nice Space object', true, 1, 2, 36.1, true, 2);
INSERT INTO public.planet VALUES (3, 'planet2', 'nice Space object', true, 1, 2, 36.1, true, 3);
INSERT INTO public.planet VALUES (4, 'planet3', 'nice Space object', true, 1, 2, 36.1, true, 4);
INSERT INTO public.planet VALUES (5, 'planet4', 'nice Space object', true, 1, 2, 36.1, true, 5);
INSERT INTO public.planet VALUES (6, 'planet5', 'nice Space object', true, 1, 2, 36.1, true, 6);
INSERT INTO public.planet VALUES (7, 'planet6', 'nice Space object', true, 1, 2, 36.1, true, 5);
INSERT INTO public.planet VALUES (8, 'planet7', 'nice Space object', true, 1, 2, 36.1, true, 6);
INSERT INTO public.planet VALUES (9, 'planet8', 'nice Space object', true, 1, 2, 36.1, true, 5);
INSERT INTO public.planet VALUES (10, 'planet9', 'nice Space object', true, 1, 2, 36.1, true, 6);
INSERT INTO public.planet VALUES (11, 'planet10', 'nice Space object', true, 1, 2, 36.1, true, 5);
INSERT INTO public.planet VALUES (12, 'planet11', 'nice Space object', true, 1, 2, 36.1, true, 6);


--
-- Data for Name: planetoid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planetoid VALUES (1, 'planetoid1', 'gray rock object', true, 1, 2, 0.0, false);
INSERT INTO public.planetoid VALUES (2, 'planetoid2', 'nice Space object', true, 1, 2, 36.1, true);
INSERT INTO public.planetoid VALUES (3, 'planetoid3', 'nice Space object', true, 1, 2, 36.1, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 'shinny Space object', true, 1, 2, 36.1, false, 1);
INSERT INTO public.star VALUES (2, 'star1', 'nice Space object', true, 1, 2, 36.1, true, 2);
INSERT INTO public.star VALUES (3, 'star3', 'nice Space object', true, 1, 2, 36.1, true, 3);
INSERT INTO public.star VALUES (4, 'star4', 'nice Space object', true, 1, 2, 36.1, true, 4);
INSERT INTO public.star VALUES (5, 'star5', 'nice Space object', true, 1, 2, 36.1, true, 5);
INSERT INTO public.star VALUES (6, 'star6', 'nice Space object', true, 1, 2, 36.1, true, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planetoid_planetoid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planetoid_planetoid_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: planetoid planetoid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetoid
    ADD CONSTRAINT planetoid_name_key UNIQUE (name);


--
-- Name: planetoid planetoid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetoid
    ADD CONSTRAINT planetoid_pkey PRIMARY KEY (planetoid_id);


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
-- Name: star df_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT df_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

