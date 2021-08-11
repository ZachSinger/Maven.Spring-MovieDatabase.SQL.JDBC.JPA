Select * from movies where genre = 'Horror';
Select * from movies where IMDB_SCORE > 6.4;
Select * from movies where RATING IN ('G', 'PG') AND RUNTIME < 100;
Select AVG(RUNTIME), TITLE, GENRE FROM movies WHERE IMDB_SCORE < 7.5 GROUP BY GENRE, TITLE;
UPDATE movies SET RATING = 'R' WHERE TITLE = 'Starship Troopers';
Select ID, RATING FROM movies WHERE GENRE IN ('Horror', 'Documentary');
SELECT genre, AVG(IMDB_SCORE) AS Average, MIN(IMDB_SCORE) AS Min, MAX(IMDB_SCORE) AS Max FROM movies  GROUP BY genre HAVING COUNT(*) > 1;
DELETE FROM movies WHERE RATING = 'R';