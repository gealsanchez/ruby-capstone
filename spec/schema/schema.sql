-- Create Database
CREATE DATABASE ruby_catalog;

-- Item Table
CREATE TABLE item (
  id              integer GENERATED ALWAYS AS IDENTITY,
  genre           varchar(100),
  author          varchar(100),
  source          varchar(100),
  label           varchar(100),
  publish_date    date,
  archived        boolean
  PRIMARY KEY(id)
);

-- Games Table
CREATE TABLE games (
  id INT,
  multiplayer BOOLEAN,
  last_played_at DATE,
  FOREIGN KEY(id) REFERENCES item(id)
);

-- Authors Table
CREATE TABLE authors (
  id  INT GENERATED ALWAYS AS IDENTITY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  PRIMARY KEY(id)
);

-- Genres Table
CREATE TABLE genre(
  id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(150) NOT NULL
);

-- Music Albums Table
CREATE TABLE music_album(
  id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  album_name VARCHAR(150) NOT NULL,
  on_spotify BOOLEAN NOT NULL,  
  publish_date DATE NOT NULL 
);

-- Books Table
CREATE TABLE books (
  id INT,
	publisher  varchar(100),
	cover_state varchar(100),
	FOREIGN KEY(id) REFERENCES item(id)
);

-- Labels Table
CREATE TABLE labels (
  id INT GENERATED ALWAYS AS IDENTITY,
  title varchar(100),
  color varchar(100)
);
