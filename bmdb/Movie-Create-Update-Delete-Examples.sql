SELECT * FROM bmdb.movie;
SELECT * FROM bmdb.movie;

-- Using Insert Statement
insert into movie values
    (11,'Dummy Movie', 2020, 'G', 'Test Director');

-- Using Update Statement
update movie
	set title = 'Dummy Movie 2'
	where id = 11;
    
-- Using Delete Statement
delete
	from movie
    where id = 11;