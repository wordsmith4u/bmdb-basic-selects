-- create and select the database
DROP DATABASE IF EXISTS bmdb;
CREATE DATABASE bmdb;
USE bmdb;

-- create Movie table
-- DROP TABLE IF EXISTS Movie;
Create table Movie (
ID 			integer 		primary key auto_increment,
Title 		varchar(255) 	not null unique,
Year 		integer 		not null,
Rating 		varchar(5) 		not null,
Director 	varchar(255) 	not null
-- CONSTRAINT utitle unique (Title)
);

-- Add some movies
 insert into Movie VALUES
 	(1, 'Star Wars', 1977, 'PG', 'George Lucas'),
 	(2, 'Sixteen Candles', 1984, 'PG', 'John Hughes'),
  	(3, 'Fifth Element', 1997, 'PG-13', 'Luc Besson'),
 	(4, 'Better Off Dead', 1985, 'PG', 'Savage Steve Holland'),
    (5, 'Blazing Saddles', 1974, 'R', 'Mel Brooks'),
    (6, 'Dr. Strangelove', 1964, 'R', 'Stanley Kubrick'),
 	(7, 'Monty Pyton & The Holy Grail', 1975, 'R', 'Terry Gilliam'),
  	(8, 'Animal House', 1978, 'R', 'John Landis'),
 	(9, 'This Is Spinal Tap', 1984, 'R', 'Rob Reiner'),
    (10, 'Blues Brothers', 1980, 'R', 'John Landis');
