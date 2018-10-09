-- Table: public.reviews

-- DROP TABLE public.reviews;

CREATE TABLE public.reviews
(
  id bigint,
  home_id bigint,
  review_id smallint,
  review text COLLATE pg_catalog
  ."default",
    created character varying COLLATE pg_catalog."default",
    user_id smallint,
    _id integer NOT NULL DEFAULT nextval
  ('reviews__id_seq'::regclass)
)
  WITH
  (
    OIDS = FALSE
)
TABLESPACE pg_default;

  ALTER TABLE public.reviews
    OWNER to "Nicholas";

  -- Index: reviews_home_idx

  -- DROP INDEX public.reviews_home_idx;

  CREATE INDEX reviews_home_idx
    ON public.reviews USING btree
  (home_id)
    TABLESPACE pg_default;

-- Table: public.users

-- DROP TABLE public.users;

CREATE TABLE public.users
(
  name text COLLATE pg_catalog
  ."default" NOT NULL,
    photo character varying COLLATE pg_catalog."default" NOT NULL,
    id integer NOT NULL DEFAULT nextval
  ('users_id_seq'::regclass)
)
  WITH
  (
    OIDS = FALSE
)
TABLESPACE pg_default;

  ALTER TABLE public.users
    OWNER to "Nicholas";