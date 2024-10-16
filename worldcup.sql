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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    round character varying(50) NOT NULL,
    year integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 'Final', 2018, 127, 4, 2, 126);
INSERT INTO public.games VALUES (2, 'Third Place', 2018, 129, 2, 0, 128);
INSERT INTO public.games VALUES (3, 'Semi-Final', 2018, 129, 2, 1, 127);
INSERT INTO public.games VALUES (4, 'Semi-Final', 2018, 128, 1, 0, 126);
INSERT INTO public.games VALUES (5, 'Quarter-Final', 2018, 130, 3, 2, 127);
INSERT INTO public.games VALUES (6, 'Quarter-Final', 2018, 131, 2, 0, 129);
INSERT INTO public.games VALUES (7, 'Quarter-Final', 2018, 132, 2, 1, 128);
INSERT INTO public.games VALUES (8, 'Quarter-Final', 2018, 133, 2, 0, 126);
INSERT INTO public.games VALUES (9, 'Eighth-Final', 2018, 134, 2, 1, 129);
INSERT INTO public.games VALUES (10, 'Eighth-Final', 2018, 135, 1, 0, 131);
INSERT INTO public.games VALUES (11, 'Eighth-Final', 2018, 136, 3, 2, 128);
INSERT INTO public.games VALUES (12, 'Eighth-Final', 2018, 137, 2, 0, 132);
INSERT INTO public.games VALUES (13, 'Eighth-Final', 2018, 138, 2, 1, 127);
INSERT INTO public.games VALUES (14, 'Eighth-Final', 2018, 139, 2, 1, 130);
INSERT INTO public.games VALUES (15, 'Eighth-Final', 2018, 140, 2, 1, 133);
INSERT INTO public.games VALUES (16, 'Eighth-Final', 2018, 141, 4, 3, 126);
INSERT INTO public.games VALUES (17, 'Final', 2014, 141, 1, 0, 142);
INSERT INTO public.games VALUES (18, 'Third Place', 2014, 132, 3, 0, 143);
INSERT INTO public.games VALUES (19, 'Semi-Final', 2014, 143, 1, 0, 141);
INSERT INTO public.games VALUES (20, 'Semi-Final', 2014, 132, 7, 1, 142);
INSERT INTO public.games VALUES (21, 'Quarter-Final', 2014, 144, 1, 0, 143);
INSERT INTO public.games VALUES (22, 'Quarter-Final', 2014, 128, 1, 0, 141);
INSERT INTO public.games VALUES (23, 'Quarter-Final', 2014, 134, 2, 1, 132);
INSERT INTO public.games VALUES (24, 'Quarter-Final', 2014, 126, 1, 0, 142);
INSERT INTO public.games VALUES (25, 'Eighth-Final', 2014, 145, 2, 1, 132);
INSERT INTO public.games VALUES (26, 'Eighth-Final', 2014, 133, 2, 0, 134);
INSERT INTO public.games VALUES (27, 'Eighth-Final', 2014, 146, 2, 0, 126);
INSERT INTO public.games VALUES (28, 'Eighth-Final', 2014, 147, 2, 1, 142);
INSERT INTO public.games VALUES (29, 'Eighth-Final', 2014, 137, 2, 1, 143);
INSERT INTO public.games VALUES (30, 'Eighth-Final', 2014, 148, 2, 1, 144);
INSERT INTO public.games VALUES (31, 'Eighth-Final', 2014, 135, 1, 0, 141);
INSERT INTO public.games VALUES (32, 'Eighth-Final', 2014, 149, 2, 1, 128);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (126, 'France');
INSERT INTO public.teams VALUES (127, 'Croatia');
INSERT INTO public.teams VALUES (128, 'Belgium');
INSERT INTO public.teams VALUES (129, 'England');
INSERT INTO public.teams VALUES (130, 'Russia');
INSERT INTO public.teams VALUES (131, 'Sweden');
INSERT INTO public.teams VALUES (132, 'Brazil');
INSERT INTO public.teams VALUES (133, 'Uruguay');
INSERT INTO public.teams VALUES (134, 'Colombia');
INSERT INTO public.teams VALUES (135, 'Switzerland');
INSERT INTO public.teams VALUES (136, 'Japan');
INSERT INTO public.teams VALUES (137, 'Mexico');
INSERT INTO public.teams VALUES (138, 'Denmark');
INSERT INTO public.teams VALUES (139, 'Spain');
INSERT INTO public.teams VALUES (140, 'Portugal');
INSERT INTO public.teams VALUES (141, 'Argentina');
INSERT INTO public.teams VALUES (142, 'Germany');
INSERT INTO public.teams VALUES (143, 'Netherlands');
INSERT INTO public.teams VALUES (144, 'Costa Rica');
INSERT INTO public.teams VALUES (145, 'Chile');
INSERT INTO public.teams VALUES (146, 'Nigeria');
INSERT INTO public.teams VALUES (147, 'Algeria');
INSERT INTO public.teams VALUES (148, 'Greece');
INSERT INTO public.teams VALUES (149, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 149, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

