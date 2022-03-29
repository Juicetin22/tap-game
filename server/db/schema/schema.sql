DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS simple_scores CASCADE;
DROP TABLE IF EXISTS number_scores CASCADE;

CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  username VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255)
);

CREATE TABLE classic_scores (
  id SERIAL PRIMARY KEY NOT NULL,
  score INTEGER NOT NULL DEFAULT 0,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE number_scores (
  id SERIAL PRIMARY KEY NOT NULL,
  score INTEGER NOT NULL DEFAULT 0,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);