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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_billions_of_years numeric(5,1) NOT NULL,
    number_of_stars integer,
    number_of_planets integer
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
    planet_id integer NOT NULL,
    is_spherical boolean,
    colour character varying(20)
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
    star_id integer NOT NULL,
    has_life boolean,
    description text,
    is_spherical boolean,
    number_of_colonies integer,
    number_of_species integer
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
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    stage integer,
    size numeric(5,1)
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'Ton 30', 1);
INSERT INTO public.blackhole VALUES (2, 'Kilo Z', 1);
INSERT INTO public.blackhole VALUES (3, 'Destroer', 2);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 33.0, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Messier 81', 13.3, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Tadpole Galaxy', 0.1, NULL, NULL);
INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 10.0, 300, 1000);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 13.6, 20, 500);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 13.3, 104, 321);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Fog', 1, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Pebble Omega', 2, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Lead A', 4, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Flint Pyro', 5, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Titanium', 8, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Cyber yellow', 8, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Canary', 9, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Tuscany', 9, NULL, NULL);
INSERT INTO public.moon VALUES (1, 'Anchor', 1, true, 'OG');
INSERT INTO public.moon VALUES (5, 'Pebble A', 2, true, 'OG');
INSERT INTO public.moon VALUES (10, 'Pewter 52', 4, true, 'OG');
INSERT INTO public.moon VALUES (15, 'Charcoal Black', 5, true, 'OG');
INSERT INTO public.moon VALUES (19, 'Chrome yellow', 8, true, 'OG');
INSERT INTO public.moon VALUES (3, 'Anchor Beta', 1, true, 'Changed');
INSERT INTO public.moon VALUES (6, 'Pebble B', 2, true, 'Changed');
INSERT INTO public.moon VALUES (9, 'Dove Jupiter', 3, true, 'Changed');
INSERT INTO public.moon VALUES (12, 'Lead OG', 4, true, 'Changed');
INSERT INTO public.moon VALUES (4, 'Anchor Charlie', 1, false, 'Changed');
INSERT INTO public.moon VALUES (8, 'Dove Mary', 3, false, 'Changed');
INSERT INTO public.moon VALUES (14, 'Fossil Grey', 5, false, 'Changed');
INSERT INTO public.moon VALUES (16, 'Gold Mine', 7, false, 'Changed');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Indigo A', 1, true, 'purplish blue', true, 13, 105);
INSERT INTO public.planet VALUES (2, 'Peacock', 1, false, 'only looks nice', true, 0, 0);
INSERT INTO public.planet VALUES (5, 'Ocean Z', 1, true, 'paradise', true, 301, 52);
INSERT INTO public.planet VALUES (6, 'Denim', 1, true, 'not bad', false, 35, 10);
INSERT INTO public.planet VALUES (7, 'Flaxen', 5, true, 'nice', true, 51, 9);
INSERT INTO public.planet VALUES (8, 'Bumblebee', 5, false, 'scary', false, 0, 0);
INSERT INTO public.planet VALUES (3, 'Cobalt', 3, true, 'toxic to most', false, 3, 1);
INSERT INTO public.planet VALUES (4, 'Teal', 3, true, 'nice', true, 5, 3);
INSERT INTO public.planet VALUES (9, 'Lemon', 4, true, 'sour', false, 0, 0);
INSERT INTO public.planet VALUES (10, 'Macaroon', 6, true, 'delicious', false, 90, 33);
INSERT INTO public.planet VALUES (11, 'Winter Mood', 6, false, 'cold and frosty', true, 0, 0);
INSERT INTO public.planet VALUES (12, 'Scotch Mist', 7, false, 'gassy', true, 0, 0);
INSERT INTO public.planet VALUES (13, 'Water chestnut', 7, true, 'edible', true, 13, 2);
INSERT INTO public.planet VALUES (14, 'Scotland Road', 7, true, 'long journey', false, 29, 5);
INSERT INTO public.planet VALUES (15, 'Moth Gray', 7, true, 'can fly', false, 3, 1);
INSERT INTO public.planet VALUES (16, 'Powder', 7, false, 'Combustible', true, 0, 0);
INSERT INTO public.planet VALUES (17, 'Pale Smoke', 8, false, 'smokey', false, 0, 0);
INSERT INTO public.planet VALUES (18, 'Egg Shell', 8, true, 'chicken for days', true, 1, 1);
INSERT INTO public.planet VALUES (19, 'Linen', 9, false, 'fabric', false, 0, 0);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Mirach', 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Almach', 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Buna', 1, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Beta Trianguli', 3, NULL, NULL);
INSERT INTO public.star VALUES (8, 'Iota Trianguli', 3, NULL, NULL);
INSERT INTO public.star VALUES (9, 'Theta Centauri', 6, NULL, NULL);
INSERT INTO public.star VALUES (10, 'Proxima Centauri', 6, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Alpha Trianguli', 3, 3, 13.5);
INSERT INTO public.star VALUES (1, 'Alpheratz', 1, 2, 5.0);
INSERT INTO public.star VALUES (5, 'Antares', 2, 5, 100.2);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 19, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


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
-- Name: blackhole blackhole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
