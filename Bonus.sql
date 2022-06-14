SELECT title 'Movie Title',year_released 'Year Released',directors.last_name 'Director' FROM movies INNER JOIN directors ON movies.director_id = directors.director_id;
SELECT CONCAT_WS(" ",directors.first_name,directors.last_name) 'Director' FROM movies INNER JOIN directors ON movies.director_id = directors.director_id WHERE movies.title = "The Incredibles";
SELECT last_name 'Director',country 'Country' FROM directors INNER JOIN movies ON directors.director_id = movies.director_id AND movies.title = "Roma";
SELECT * FROM movies LEFT JOIN directors ON movies.director_id = directors.director_id WHERE directors.last_name = "Jackson" AND directors.first_name = "Peter";
SELECT title FROM movies ORDER BY times_viewed DESC;
SELECT title '10 Least Watched Movies' FROM movies ORDER BY times_viewed ASC LIMIT 10;
SELECT title '10 Most Watched Movies' FROM movies ORDER BY times_viewed DESC LIMIT 10;
SELECT title 'Viewed More Than 50 times' FROM movies WHERE times_viewed >= 50 ORDER BY times_viewed DESC;
SELECT title 'Viewed Less Than 50 times' FROM movies WHERE times_viewed <= 50 ORDER BY times_viewed ASC;