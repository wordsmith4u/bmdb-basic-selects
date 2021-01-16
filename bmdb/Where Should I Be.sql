/* As of today, what should I know about SQL? */
-- following are all DML examples 

-- 1) select statement, all columns from a table
select * from movie;

-- select a single row by primary key
select * from movie	
	where id = 4;
    
-- select multiple rows by ??
-- select all PG movies
select * from movie	
	where rating = 'PG';
    
-- 2) rest of CRUD functions: insert, updates, delete
SELECT * FROM bmdb.actor;
insert into actor (FirstName, LastName, Gender, Birthdate) 
values
('Test1', 'Actor', 'M', '1980-05-05'),
('Test2', 'Actor', 'M', '1980-05-05'),
('Test3', 'Actor', 'M', '1980-05-05');

update movie
	set title = 'Dummy Movie 2'
	where id = 11;

delete from actor
	where id > 11;

-- 3) Joins - join by the foreign key to the primary key

-- 4) DDL -- ANSWER: main thing is to create schema

-- Display all rows and columns from a table and sort by a column in that table
select * from movie;
select title from movie;

-- Display all columns from a table but only those rows where a column contains either A or B or C
select * from movie	
	where rating = 'PG';

-- A valid Join of two tables
select * from movie
	join credit
		on movieid = credit.Movieid;
        
-- Null: not having a value
/* Aggregate functions:
-- min: returns smallest number in set
-- max: returns the largest number in set
-- count: returns an integer value based on the number of occurances
-- sum: calculates total of all results
-- avg: calculates the mean of a set of numbers
*/

-- 'Group By': calculates average, must have COUNT, SUM or AVG in one column
-- 'Having': always used with GROUP BY and acts like a WHERE clause
-- What columns from a table must be included in the INSERT column list: all columns
-- UPDATE: changes some or all existing values in one or more rows. Uses SET clause
-- DELETE: removes rows from table. Almost always have WHERE clause
-- 


	




