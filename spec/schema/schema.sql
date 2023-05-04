-- Create Database
CREATE DATABASE ruby_catalog;

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
