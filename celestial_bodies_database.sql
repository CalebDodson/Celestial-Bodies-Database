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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_stars integer,
    area_in_sky numeric(10,2),
    visibility_period text
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth_in_lightyears numeric(20,2),
    galaxy_type text
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
    age_in_millions_of_years integer,
    is_spherical boolean,
    planet_id integer
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
    age_in_millions_of_years integer,
    distance_from_earth_in_lightyears numeric(20,2),
    has_life boolean,
    star_id integer
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
    age_in_millions_of_years integer,
    distance_from_earth_in_lightyears numeric(20,2),
    star_type text,
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Orion', 7, 594.00, 'Visible in the evening sky from November to February');
INSERT INTO public.constellation VALUES (2, 'Ursa Major', 7, 1280.00, 'Visible all year round, best seen in the evening sky from March to July');
INSERT INTO public.constellation VALUES (3, 'Cassiopeia', 5, 598.00, 'Visible in the evening sky from September to February');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13000, 0.00, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 2500000.00, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 12000, 53000000.00, 'Elliptical');
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 2000, 1600000.00, 'Irregular');
INSERT INTO public.galaxy VALUES (5, 'NGC 1316', 12000, 70000000.00, 'Lenticular');
INSERT INTO public.galaxy VALUES (6, 'M82', 15000, 12000000.00, 'Starburst');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (12, 'Moon', 4500, true, 1);
INSERT INTO public.moon VALUES (13, 'Phobos', 200, true, 13);
INSERT INTO public.moon VALUES (14, 'Deimos', 200, true, 13);
INSERT INTO public.moon VALUES (15, 'Io', 4600, true, 15);
INSERT INTO public.moon VALUES (16, 'Europa', 4600, true, 15);
INSERT INTO public.moon VALUES (17, 'Ganymede', 4600, true, 15);
INSERT INTO public.moon VALUES (18, 'Callisto', 4600, true, 15);
INSERT INTO public.moon VALUES (19, 'Titan', 4600, true, 16);
INSERT INTO public.moon VALUES (20, 'Rhea', 4600, true, 16);
INSERT INTO public.moon VALUES (21, 'Iapetus', 4600, true, 16);
INSERT INTO public.moon VALUES (22, 'Enceladus', 4600, true, 16);
INSERT INTO public.moon VALUES (23, 'Titania', 4600, true, 17);
INSERT INTO public.moon VALUES (24, 'Oberon', 4600, true, 17);
INSERT INTO public.moon VALUES (25, 'Umbriel', 4600, true, 17);
INSERT INTO public.moon VALUES (26, 'Ariel', 4600, true, 17);
INSERT INTO public.moon VALUES (27, 'Triton', 4600, true, 18);
INSERT INTO public.moon VALUES (28, 'Nereid', 4600, true, 18);
INSERT INTO public.moon VALUES (29, 'Charon', 4600, true, 19);
INSERT INTO public.moon VALUES (30, 'Styx', 4600, true, 19);
INSERT INTO public.moon VALUES (31, 'Nix', 4600, true, 19);
INSERT INTO public.moon VALUES (32, 'Kerberos', 4600, true, 19);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Proxima b', 5, 4.24, false, 2);
INSERT INTO public.planet VALUES (3, 'Alpha Centauri Bb', 5, 4.37, false, 2);
INSERT INTO public.planet VALUES (4, 'Proxima c', 7, 4.24, false, 2);
INSERT INTO public.planet VALUES (5, 'Kepler-186f', 10, 490.00, false, 3);
INSERT INTO public.planet VALUES (6, 'Kepler-22b', 12, 620.00, false, 3);
INSERT INTO public.planet VALUES (7, 'HD 209458 b', 5, 153.00, false, 4);
INSERT INTO public.planet VALUES (8, 'HD 189733 b', 6, 63.00, false, 4);
INSERT INTO public.planet VALUES (9, 'HD 209458 c', 5, 159.00, false, 4);
INSERT INTO public.planet VALUES (10, 'HD 189733 c', 6, 63.00, false, 4);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1d', 8, 39.00, false, 5);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', 8, 39.00, false, 5);
INSERT INTO public.planet VALUES (1, 'Earth', 4500, 0.00, true, 8);
INSERT INTO public.planet VALUES (13, 'Mars', 4500, 0.00, false, 8);
INSERT INTO public.planet VALUES (14, 'Venus', 4600, 0.00, false, 8);
INSERT INTO public.planet VALUES (15, 'Jupiter', 4600, 0.00, false, 8);
INSERT INTO public.planet VALUES (16, 'Saturn', 4600, 0.00, false, 8);
INSERT INTO public.planet VALUES (17, 'Uranus', 4600, 0.00, false, 8);
INSERT INTO public.planet VALUES (18, 'Neptune', 4600, 0.00, false, 8);
INSERT INTO public.planet VALUES (19, 'Pluto', 4600, 0.00, false, 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 120, 8.60, 'Main Sequence', 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 10, 640.00, 'Red Supergiant', 1);
INSERT INTO public.star VALUES (3, 'Vega', 455, 25.00, 'Main Sequence', 2);
INSERT INTO public.star VALUES (4, 'NGC 1275', 200, 23000000.00, 'AGN', 3);
INSERT INTO public.star VALUES (5, 'NGC 104', 12000, 22000.00, 'Globular Cluster', 4);
INSERT INTO public.star VALUES (6, 'NGC 2024', 1500, 8500.00, 'Emission Nebula', 5);
INSERT INTO public.star VALUES (7, 'NGC 4565', 6000, 40000.00, 'Edge-On Spiral', 6);
INSERT INTO public.star VALUES (8, 'Sun', 4600, 0.00, 'Main Sequence', 1);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 32, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 19, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: constellation unique_constellation_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT unique_constellation_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON DELETE SET NULL;


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
