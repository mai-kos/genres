SELECT album_name, release_year FROM album
WHERE release_year = 2018;

SELECT song_name, song_duration FROM song
ORDER BY song_duration DESC
LIMIT 1;

SELECT song_name FROM song
WHERE song_duration >= '00:03:30';

SELECT comp_name FROM compilation
WHERE release_year BETWEEN 2018 AND 2020;
	
SELECT artist_name FROM artist 
WHERE ARRAY_LENGTH(REGEXP_SPLIT_TO_ARRAY(artist_name, '\s'), 1) = 1;

SELECT song_name FROM song
WHERE song_name LIKE '%My%';