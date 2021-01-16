SELECT * FROM bmdb.movie;
SELECT * FROM bmdb.movie;

-- Using Insert Statement
insert into movie values
    (11,'Dummy Movie', 2020, 'G', 'Test Director');
    
-- insert without using id
-- must include fields after table
insert into actor (FirstName, LastName, Gender, Birthdate) 
values
('Test1', 'Actor', 'M', '1980-05-05'),
('Test2', 'Actor', 'M', '1980-05-05'),
('Test3', 'Actor', 'M', '1980-05-05');

-- Using Update Statement
update movie
	set title = 'Dummy Movie 2'
	where id = 11;
    
-- Using Delete Statement
delete
	from movie
    where id = 11;