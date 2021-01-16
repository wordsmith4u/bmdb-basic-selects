SELECT * FROM bmdb.movie;
select * from credit;

-- inner join: data that's in common between 2 tables
select * from movie
	join credit
		on movieid = credit.Movieid;
        
-- inner join: credit - actor
select * from credit c
	join actor a
		on c.actorid = a.id;
        
-- outer (left) join: all movies and actors assigned
select * from movie
	left join credit
		on movie.id = credit.movieid;
