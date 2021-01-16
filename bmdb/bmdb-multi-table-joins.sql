-- bmdb movie queries
select id from genre
	where name = 'comedy';
    
-- 3 table join to list comedy movies
select * 
	from movie m
    join moviegenre mg
		on mg.movieID = m.ID
	join genre g
		on g.ID = mg.genreID;
        
-- pare down the amount of information
select title, name 
	from movie m
    join moviegenre mg
		on mg.movieID = m.ID
	join genre g
		on g.ID = mg.genreID
		where g.id = (select id from genre
					where name = 'comedy');
                    
/* 5 table join
Show all movies, actors and genres
- movie title & year, actor fname & lname & roll, genre name
*/

select m.title, m.year, a.firstName, a.lastName, c.roll, g.name
	from movie m
    join credit c
		on c.movieID = m.ID
	join actor a
		on a.ID = c.actorID
	join moviegenre mg
		on mg.movieID = m.ID
	join genre g
		on g.id = mg.genreID;

        
