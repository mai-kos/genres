-- Задание 3

SELECT album_name, release_year FROM album
WHERE release_year = 2018;

SELECT song_name, song_duration FROM song
ORDER BY song_duration DESC
LIMIT 1;

-- альтернативный запрос 2
-- SELECT song_name, song_duration FROM song
-- WHERE song_duration = (SELECT MAX(song_duration) FROM song);

SELECT song_name FROM song
WHERE song_duration >= '00:03:30';

SELECT comp_name FROM compilation
WHERE release_year BETWEEN 2018 AND 2020;
	
SELECT artist_name FROM artist 
WHERE ARRAY_LENGTH(REGEXP_SPLIT_TO_ARRAY(artist_name, '\s'), 1) = 1;

-- альтернативный запрос 5
-- SELECT artist_name FROM artist 
-- WHERE artist_name NOT LIKE '% %';

SELECT song_name FROM song
WHERE song_name ILIKE '%My%';


-- Задание 4

-- количество исполнителей в каждом жанре

SELECT genre_name, COUNT(genre_name) FROM genre g 
LEFT JOIN genre_artist ga ON g.genre_id = ga.genre_id
LEFT JOIN artist ON ga.artist_id = artist.artist_id
GROUP BY genre_name; 

-- количество треков, вошедших в альбомы 2019-2020 годов

SELECT COUNT(song_id) FROM song 
LEFT JOIN album ON song.album_id = album.album_id 
WHERE album.release_year BETWEEN 2019 AND 2020;

-- средняя продолжительность треков по каждому альбому

SELECT album_name, AVG(song_duration) FROM song s 
LEFT JOIN album ON s.album_id = album.album_id
GROUP BY album_name;

-- все исполнители, которые не выпустили альбомы в 2020 году

SELECT DISTINCT artist_name FROM artist 
LEFT JOIN artist_album aa ON artist.artist_id = aa.artist_id 
LEFT JOIN album ON aa.album_id = album.album_id 
WHERE album.release_year != 2020;

-- названия сборников, в которых присутствует конкретный исполнитель (выберите сами)

SELECT DISTINCT comp_name FROM compilation c 
LEFT JOIN song_compilation sc ON c.comp_id = sc.comp_id 
LEFT JOIN song s ON sc.song_id = s.song_id 
LEFT JOIN album ON s.album_id = album.album_id 
LEFT JOIN artist_album aa ON album.album_id = aa.album_id 
LEFT JOIN artist ON aa.artist_id = artist.artist_id 
WHERE artist_name = 'The Who';

-- название альбомов, в которых присутствуют исполнители более 1 жанра

SELECT album_name FROM album a 
LEFT JOIN artist_album aa ON a.album_id = aa.album_id 
LEFT JOIN artist a2 ON aa.artist_id = a2.artist_id 
LEFT JOIN genre_artist ga ON a2.artist_id = ga.artist_id 
GROUP BY a.album_name
HAVING COUNT(ga.artist_id) > 1;

-- наименование треков, которые не входят в сборники

SELECT song_name FROM song s 
LEFT JOIN song_compilation sc ON s.song_id = sc.song_id
WHERE sc.song_id IS NULL;

-- исполнителя(-ей), написавшего самый короткий по продолжительности трек

SELECT artist_name FROM artist a 
LEFT JOIN artist_album aa ON a.artist_id = aa.artist_id 
LEFT JOIN album a2 ON aa.album_id = a2.album_id 
LEFT JOIN song s ON a2.album_id = s.album_id 
WHERE s.song_duration = (SELECT MIN(song_duration) FROM song);

-- название альбомов, содержащих наименьшее количество треков

SELECT album_name FROM album a 
LEFT JOIN song s ON a.album_id = s.album_id 
GROUP BY album_name
HAVING COUNT(s.album_id) = (SELECT album_name 
	FROM album a2
	LEFT JOIN song s2 ON a2.album_id = s2.album_id) 
	GROUP BY album_name 
	ORDER BY COUNT(s2.album_id);
