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
    name character varying(50) NOT NULL,
    age integer,
    temperature numeric,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age integer,
    temperature numeric,
    description text,
    exist boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: my_universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.my_universe (
    my_universe_id integer NOT NULL,
    name character varying(50),
    galaxy_id integer NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.my_universe OWNER TO freecodecamp;

--
-- Name: my_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.my_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.my_universe_id_seq OWNER TO freecodecamp;

--
-- Name: my_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.my_universe_id_seq OWNED BY public.my_universe.my_universe_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age integer,
    temperature numeric,
    description text,
    exist boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age integer,
    temperature numeric,
    description text,
    exist boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: my_universe my_universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.my_universe ALTER COLUMN my_universe_id SET DEFAULT nextval('public.my_universe_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 987, 76.8, 'The Andromeda Galaxy is a barred spiral galaxy and is the nearest major galaxy to the Milky Way.');
INSERT INTO public.galaxy VALUES (2, 'Black Eye Galaxy', 1987, 106.8, 'The Black Eye Galaxy is a relatively isolated spiral galaxy 17 million light-years away in the mildly northern constellation of Coma Berenices.');
INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud', 231, 234.8, 'The Large Magellanic Cloud is a dwarf galaxy and satellite galaxy of the Milky Way.');
INSERT INTO public.galaxy VALUES (4, 'Bodes Galaxy', 123, 908.0, 'Messier 81 is a grand design spiral galaxy about 12 million light-years away in the constellatio
n Ursa Major.');
INSERT INTO public.galaxy VALUES (5, 'Cigar Galaxy', 432, 769.3, 'M82 Galaxy Messier 82 is a starburst galaxy approximately 12 million light-years away in t
he constellation Ursa Major.');
INSERT INTO public.galaxy VALUES (6, 'Cartwheel Galaxy', 543, 234.6, 'The Cartwheel Galaxy is a lenticular ring galaxy about 500 million ligh
t-years away in the constellation Sculptor.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 234, 98.7, 'The closest planet to the Sun, Mercury has extreme temperature variations and no atmosphere to retain heat.', true, 3);
INSERT INTO public.moon VALUES (2, 'Lo', 1234, 965.7, 'Venus has a thick, toxic atmosphere and surface temperatures hot enough to melt lead.', true, 5);
INSERT INTO public.moon VALUES (3, 'Europa', 934, 998.7, 'Our home planet, Earth is the only known planet to support life, with a breathable atmosphere and liquid water on its surface.', false, 5);
INSERT INTO public.moon VALUES (4, 'Callisto', 164, 565.7, ' Mars has the largest volcano and the deepest canyon in the solar system.', true, 5);
INSERT INTO public.moon VALUES (5, 'Titan', 934, 998.7, 'The largest planet in the solar system, Jupiter is a gas giant known for its Great Red Spot, a massive storm that has raged for centuries.', false, 6);
INSERT INTO public.moon VALUES (6, 'Ganymede', 164, 565.7, 'Famous for its stunning ring system, Saturn is a gas giant with many moons, including Titan, which has lakes of liquid methane.', false, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 234, 98.7, 'Uranus is an ice giant with a blue-green color due to methane in its atmosphere. It is unique for rotating on its side.', true, 5);
INSERT INTO public.moon VALUES (8, 'Enceladus', 1234, 965.7, 'The farthest planet from the Sun, Neptune is known for its deep blue color and strong winds, the fastest in the solar system.', true, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 934, 998.7, 'Once considered the ninth planet, Pluto is a small icy body located in the Kuiper Belt, and was reclassified as a dwarf planet in 2006.', false, 6);
INSERT INTO public.moon VALUES (10, 'Triton', 164, 565.7, 'A dwarf planet located beyond Pluto in the scattered disk, Eris is slightly smaller than Pluto and has one of the largest known orbits.', true, 7);
INSERT INTO public.moon VALUES (11, 'Miranda', 934, 998.7, 'A uniquely shaped dwarf planet, Haumea is elongated due to its fast rotation and is located in the Kuiper Belt.', false, 8);
INSERT INTO public.moon VALUES (12, 'Phobos', 164, 565.7, 'Another dwarf planet in the Kuiper Belt, Makemake is slightly smaller than Pluto and was discovered in 2005.', false, 9);
INSERT INTO public.moon VALUES (13, 'Deimos', 234, 98.7, 'The closest planet to the Sun, Mercury has extreme temperature variations and no atmosphere to retain heat.', true, 10);
INSERT INTO public.moon VALUES (14, 'Mimas', 1234, 965.7, 'Venus has a thick, toxic atmosphere and surface temperatures hot enough to melt lead.', true, 11);
INSERT INTO public.moon VALUES (15, 'Iapetus', 934, 998.7, 'Our home planet, Earth is the only known planet to support life, with a breathable atmosphere and liquid water on its surface.', false, 12);
INSERT INTO public.moon VALUES (16, 'Phoebe', 164, 565.7, ' Mars has the largest volcano and the deepest canyon in the solar system.', true, 11);
INSERT INTO public.moon VALUES (17, 'Umbriel', 934, 998.7, 'The largest planet in the solar system, Jupiter is a gas giant known for its Great Red Spot, a massive storm that has raged for centuries.', false, 12);
INSERT INTO public.moon VALUES (18, 'Ariel', 164, 565.7, 'Famous for its stunning ring system, Saturn is a gas giant with many moons, including Titan, which has lakes of liquid methane.', false, 9);
INSERT INTO public.moon VALUES (19, 'Tethys', 234, 98.7, 'Uranus is an ice giant with a blue-green color due to methane in its atmosphere. It is unique for rotating on its side.', true, 10);
INSERT INTO public.moon VALUES (20, 'Dione', 1234, 965.7, 'The farthest planet from the Sun, Neptune is known for its deep blue color and strong winds, the fastest in the solar system.', true, 10);


--
-- Data for Name: my_universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.my_universe VALUES (1, 'Xenara', 1, 1, 1, 1);
INSERT INTO public.my_universe VALUES (2, 'Astoria', 2, 2, 2, 2);
INSERT INTO public.my_universe VALUES (3, 'Galdria', 3, 3, 3, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 234, 98.7, 'The closest planet to the Sun, Mercury has extreme temperature variations and no atmosphere to retain heat.', true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 1234, 965.7, 'Venus has a thick, toxic atmosphere and surface temperatures hot enough to melt lead.', true, 2);
INSERT INTO public.planet VALUES (3, 'Earth', 934, 998.7, 'Our home planet, Earth is the only known planet to support life, with a breathable atmosphere and liquid water on its surface.', false, 3);
INSERT INTO public.planet VALUES (4, 'Mars', 164, 565.7, ' Mars has the largest volcano and the deepest canyon in the solar system.', true, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 934, 998.7, 'The largest planet in the solar system, Jupiter is a gas giant known for its Great Red Spot, a massive storm that has raged for centuries.', false, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 164, 565.7, 'Famous for its stunning ring system, Saturn is a gas giant with many moons, including Titan, which has lakes of liquid methane.', false, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 234, 98.7, 'Uranus is an ice giant with a blue-green color due to methane in its atmosphere. It is unique for rotating on its side.', true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 1234, 965.7, 'The farthest planet from the Sun, Neptune is known for its deep blue color and strong winds, the fastest in the solar system.', true, 2);
INSERT INTO public.planet VALUES (9, 'Pluto', 934, 998.7, 'Once considered the ninth planet, Pluto is a small icy body located in the Kuiper Belt, and was reclassified as a dwarf planet in 2006.', false, 3);
INSERT INTO public.planet VALUES (10, 'Eris', 164, 565.7, 'A dwarf planet located beyond Pluto in the scattered disk, Eris is slightly smaller than Pluto and has one of the largest known orbits.', true, 4);
INSERT INTO public.planet VALUES (11, 'Haumea', 934, 998.7, 'A uniquely shaped dwarf planet, Haumea is elongated due to its fast rotation and is located in the Kuiper Belt.', false, 5);
INSERT INTO public.planet VALUES (12, 'Makemake', 164, 565.7, 'Another dwarf planet in the Kuiper Belt, Makemake is slightly smaller than Pluto and was discovered in 2005.', false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 234, 98.7, 'The brightest star in the night sky, located in the constellation Canis Major. Also called the Dog Star.', true, 1);
INSERT INTO public.star VALUES (2, 'Rigel', 1234, 965.7, 'A blue supergiant, also in Orion. It is one of the brightest stars in the sky, shining brilliantly in the winter night.', true, 2);
INSERT INTO public.star VALUES (3, 'Polaris', 934, 998.7, 'It is part of the constellation Ursa Minor and is a key reference for navigation.', false, 3);
INSERT INTO public.star VALUES (4, 'Vega', 164, 565.7, 'A bright star in the constellation Lyra and one of the vertices of the Summer Triangle asterism.', true, 4);
INSERT INTO public.star VALUES (5, 'Arcturus', 934, 998.7, 'A red giant star in the constellation Bootes. It is the fourth-brightest star in the night sky.', false, 5);
INSERT INTO public.star VALUES (6, 'Altair', 164, 565.7, 'A bright white star in the constellation Aquila, forming another vertex of the Summer Triangle.', false, 6);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: my_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.my_universe_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: galaxy pk_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT pk_galaxy PRIMARY KEY (galaxy_id);


--
-- Name: moon pk_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT pk_moon PRIMARY KEY (moon_id);


--
-- Name: my_universe pk_my_universe; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.my_universe
    ADD CONSTRAINT pk_my_universe PRIMARY KEY (my_universe_id);


--
-- Name: planet pk_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT pk_planet PRIMARY KEY (planet_id);


--
-- Name: star pk_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT pk_star PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy UNIQUE (galaxy_id);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (moon_id);


--
-- Name: my_universe unique_my_universe; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.my_universe
    ADD CONSTRAINT unique_my_universe UNIQUE (my_universe_id);


--
-- Name: planet unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet UNIQUE (planet_id);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: my_universe fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.my_universe
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: my_universe fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.my_universe
    ADD CONSTRAINT fk_moon FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: my_universe fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.my_universe
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: my_universe fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.my_universe
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

