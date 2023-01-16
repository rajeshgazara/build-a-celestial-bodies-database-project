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
    name character varying(30) NOT NULL,
    distance_km numeric,
    galaxy_id integer NOT NULL,
    hot boolean,
    life boolean,
    size_km integer,
    description text,
    age integer,
    num_sum integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    distance_km numeric,
    moon_id integer NOT NULL,
    hot boolean,
    life boolean,
    size_km integer,
    description text,
    age integer,
    num_sum integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    distance_km numeric,
    planet_id integer NOT NULL,
    hot boolean,
    life boolean,
    size_km integer,
    description text,
    age integer,
    num_sum integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    distance_km numeric,
    star_id integer NOT NULL,
    hot boolean,
    life boolean,
    size_km integer,
    description text,
    age integer,
    num_sum integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    name character varying(30) NOT NULL,
    distance_km numeric,
    sun_id integer NOT NULL,
    hot boolean,
    life boolean,
    size_km integer,
    description text,
    age integer,
    num_sum integer
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('galaxy_1', 1000, 1, true, true, 1000, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('galaxy_2', 1000, 2, false, true, 1000, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('galaxy_3', 1000, 3, true, false, 1000, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('galaxy_4', 1000, 4, true, false, 1000, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('galaxy_5', 1000, 5, true, false, 1000, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('galaxy_6', 1000, 6, true, false, 1000, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon1', 1000, 1, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon2', 1000, 2, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon3', 1000, 3, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moo43', 1000, 4, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon5', 1000, 5, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon6', 1000, 6, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon7', 1000, 7, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon8', 1000, 8, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon9', 1000, 9, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon10', 1000, 10, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon11', 1000, 11, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon12', 1000, 12, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon14', 1000, 14, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon15', 1000, 15, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon16', 1000, 16, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon17', 1000, 17, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon18', 1000, 18, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon19', 1000, 19, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon20', 1000, 20, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon21', 1000, 21, true, false, 1000, NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('planet1', 1000, 1, true, false, 1000, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet2', 1000, 2, true, false, 1000, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet3', 1000, 3, true, false, 1000, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet4', 1000, 4, true, false, 1000, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet5', 1000, 5, true, false, 1000, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet6', 1000, 6, true, false, 1000, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet7', 1000, 7, true, false, 1000, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet8', 1000, 8, true, false, 1000, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet9', 1000, 9, true, false, 1000, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet10', 1000, 10, true, false, 1000, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet11', 1000, 11, true, false, 1000, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet12', 1000, 12, true, false, 1000, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('star1', 1000, 1, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('star2', 1000, 2, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('star3', 1000, 3, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('star4', 1000, 4, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('star5', 1000, 5, true, false, 1000, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES ('star6', 1000, 6, true, false, 1000, NULL, NULL, NULL, NULL);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES ('sun1', 1000, 1, true, false, 1000, NULL, NULL, NULL);
INSERT INTO public.sun VALUES ('sun2', 1000, 2, true, false, 1000, NULL, NULL, NULL);
INSERT INTO public.sun VALUES ('sun3', 1000, 3, true, false, 1000, NULL, NULL, NULL);


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
-- Name: sun sun_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_name_key UNIQUE (name);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

