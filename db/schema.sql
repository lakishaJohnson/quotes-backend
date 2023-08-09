DROP DATABASE IF EXISTS quotes_dev;
CREATE DATABASE quotes_dev;

\c quotes_dev;

CREATE TABLE quotes (
 id SERIAL PRIMARY KEY,
 category TEXT NOT NULL,
 quote VARCHAR(300) NOT NULL ,
 author TEXT,
 source TEXT,
 language TEXT,
 year_quoted INT DEFAULT NULL,
 is_favorite BOOLEAN
);


-- DROP TABLE IF EXISTS reviews;

-- CREATE TABLE reviews (
--  id SERIAL PRIMARY KEY,
--  reviewer TEXT,
--  content TEXT,
--  rating NUMERIC,
--  CHECK (rating >= 0 AND rating <= 5),
--  quote_id INTEGER REFERENCES bookmarks (id)
--  ON DELETE CASCADE
-- );

