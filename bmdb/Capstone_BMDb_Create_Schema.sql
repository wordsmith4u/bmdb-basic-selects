-- create and select the database
DROP DATABASE IF EXISTS bmdb;
CREATE DATABASE bmdb;
USE bmdb;

-- create Movie table
-- DROP TABLE IF EXISTS Movie;
Create table Movie (
ID 			integer 		primary key auto_increment,
Title 		varchar(255) 	not null,
Year 		integer 		not null,
Rating 		varchar(5) 		not null,
Director 	varchar(255) 	not null,
CONSTRAINT unq_movie unique (Title, Year));

-- create Actor table
Create table Actor (
ID          integer         primary key auto_increment,
FirstName   varchar(255)    not null,
LastName    varchar(255)    not null,
Gender      varchar(1)      not null,
BirthDate   date            not null,
CONSTRAINT unq_actor unique (FirstName, LastName, BirthDate));

-- Add Credit table
Create table Credit (
ID          integer         primary key auto_increment,
actorID	    integer         not null,
movieID     integer         not null,
Roll        varchar(255)    not null,
Foreign Key (ActorID) references Actor(ID),
Foreign Key (MovieID) references Movie(ID),
CONSTRAINT act_mov unique (ActorID, MovieID));

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
    
    -- Add some actors
    -- Date fields are YYYY-MM-DD
 insert into Actor VALUES
 	(1, 'Mark', 'Hamill', 'M', '1951-09-25'),
    (2, 'Harrison', 'Ford', 'M', '1942-07-13'),
	(3, 'Molly', 'Ringwald', 'F', '1968-02-18'),
	(4, 'Anthony Michael', 'Hall', 'M', '1968-04-14'),
    (5, 'Gene', 'Wilder', 'M', '1933-06-11'),
    (6, 'Peter', 'Sellers', 'M', '1925-09-08'),
	(7, 'John', 'Cleese', 'M', '1939-10-27'),
	(8, 'John', 'Belushi', 'M', '1949-01-24'),
 	(9, 'Harry', 'Shearer', 'M', '1943-12-23'),
    (10, 'Dan', 'Akroyd', 'M', '1952-07-01'),
    (11, 'John', 'Cusack', 'M', '1966-06-28');
    
    -- Add some credits
 insert into Credit VALUES
    (1, 1, 1, 'Luke Skywalker'),
    (2, 2, 1, 'Han Solo'),
    (3, 3, 2, 'Samantha Baker'),
    (4, 4, 2, 'Geek'),
    (5, 5, 5, 'Jim'),
    (6, 6, 6, 'Group Capt. Lionel Mandrake'),
    (7, 7, 7, 'The Black Knight'),
    (8, 8, 8, 'John Blutarsky'),
    (9, 9, 9, 'Derek Smalls'),
	(10, 10, 10, 'Elwood Blues'),
	(11, 11, 4, 'Lane Meyer');




