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
    name character varying(30) NOT NULL,
    has_dust boolean,
    galaxy_types character varying(255),
    description text,
    galaxy_color character varying(20)
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
    has_sun boolean,
    moon_types character varying(255),
    moon_size numeric(4,2),
    planet_id integer NOT NULL,
    mon_size integer
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
    planet_types character varying(255),
    planet_position integer,
    planet_distance_from_earth numeric(4,2),
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
-- Name: sky; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sky (
    name character varying(30) NOT NULL,
    sky_numbers_of integer,
    sky_description text,
    sky_kinds_of character varying(255),
    sky_id integer NOT NULL
);


ALTER TABLE public.sky OWNER TO freecodecamp;

--
-- Name: sky_sky_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sky_sky_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sky_sky_id_seq OWNER TO freecodecamp;

--
-- Name: sky_sky_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sky_sky_id_seq OWNED BY public.sky.sky_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_numbers_of integer,
    star_types character varying(255),
    star_position integer,
    galaxy_id integer NOT NULL
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
-- Name: sky sky_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sky ALTER COLUMN sky_id SET DEFAULT nextval('public.sky_sky_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Elliptical galaxies', true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda galaxy', false, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Barred galaxy', true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Spiral galaxy', false, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Colliding galaxy', true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Galaxy gala', false, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Blue moon', true, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (2, 'Full moon', false, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (3, 'Blood moon', true, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (4, 'Harvest moon', false, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (5, 'New moon', true, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (6, 'Waning gibbous', false, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (7, 'Waxing crescent', true, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (8, 'Supermoon', false, NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES (9, 'Waning crescent', true, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (10, 'Strawberry moon', false, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (11, 'Third quarter  moon', true, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES (12, 'Wolf  moon', false, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (13, 'Beaver  moon', true, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (14, 'First qarter  moon', false, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (15, 'Worm  moon', true, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (16, 'Black  moon', false, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (17, 'February snow  moon', true, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (18, 'Flower  moon', false, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (19, 'Strugeon  moon', true, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (20, 'Cold  moon', false, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES (21, 'Hunter  moon', true, NULL, NULL, 1, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, 1, NULL, 3);
INSERT INTO public.planet VALUES (2, 'Ice giant', NULL, 1, NULL, 3);
INSERT INTO public.planet VALUES (3, 'Gas giant', NULL, 1, NULL, 3);
INSERT INTO public.planet VALUES (4, 'Ocean planet', NULL, 3, NULL, 2);
INSERT INTO public.planet VALUES (5, 'Dwarfs', NULL, 5, NULL, 2);
INSERT INTO public.planet VALUES (6, 'Giant planet', NULL, 6, NULL, 2);
INSERT INTO public.planet VALUES (7, 'Jupiter', NULL, 7, NULL, 2);
INSERT INTO public.planet VALUES (8, 'Carbon planet', NULL, 10, NULL, 2);
INSERT INTO public.planet VALUES (9, 'Lava planet', NULL, 12, NULL, 2);
INSERT INTO public.planet VALUES (10, 'Desert planet', NULL, 16, NULL, 2);
INSERT INTO public.planet VALUES (11, 'Iron planet', NULL, 19, NULL, 2);
INSERT INTO public.planet VALUES (12, 'Outer planet', NULL, 19, NULL, 4);


--
-- Data for Name: sky; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sky VALUES ('Galaxies', NULL, 'Group of stars, gas, dust', NULL, 1);
INSERT INTO public.sky VALUES ('Sky clusers', NULL, 'Groups of stars held by gravity', NULL, 2);
INSERT INTO public.sky VALUES ('Nebular', NULL, 'A type of deep-sky Object', NULL, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'White dwarf', 20, NULL, NULL, 2);
INSERT INTO public.star VALUES (2, 'Red dwarf', 22, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'Binary star', 22, NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'Carbon star', 22, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'Dwarfs', 22, NULL, NULL, 3);
INSERT INTO public.star VALUES (6, 'Red giant stars', 22, NULL, NULL, 3);
INSERT INTO public.star VALUES (7, 'Variable stars', 22, NULL, NULL, 4);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: sky_sky_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sky_sky_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_galaxy_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_color_key UNIQUE (galaxy_color);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_mon_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_mon_size_key UNIQUE (mon_size);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_types_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_types_key UNIQUE (planet_types);


--
-- Name: sky sky_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sky
    ADD CONSTRAINT sky_pkey PRIMARY KEY (sky_id);


--
-- Name: sky sky_sky_kinds_of_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sky
    ADD CONSTRAINT sky_sky_kinds_of_key UNIQUE (sky_kinds_of);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_types_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_types_key UNIQUE (star_types);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

