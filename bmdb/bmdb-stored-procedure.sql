-- sample select by rating

select * from movie
 where rating = 'R';

-- creating a stored procedure for this query 
-- that accepts a parameter for rating
DELIMITER //

CREATE PROCEDURE GetMovieByRating(
	IN ratingName VARCHAR(5)
)
BEGIN
	SELECT * 
 	FROM movie
	WHERE rating = ratingName;
END //
​
DELIMITER ;
-- execute the stored procedure
call GetMovieByRating('PG');




