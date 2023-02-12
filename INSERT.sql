INSERT INTO artist (artist_name)
VALUES 
	('AIR'),
	('The Who'),
	('Anderson .Paak'),
	('Makaya McCraven'),
	('Metallica'),
	('Tame Impala'),
	('Ricky Tinez'),
	('Mac Miller');
	
INSERT INTO genre (genre_name)
VALUES 
	('Jazz'),
	('Rock'),
	('Metal'),
	('Techno'),
	('Dance'),
	('R&B'),
	('Hip-Hop');
	
INSERT INTO album (album_name, release_year)
VALUES 
	('Oxnard', 2018),
	('Moon Safari', 1998),
	('Tommy', 1969),
	('In These Times', 2022),
	('Master of Puppets', 1986),
	('Lonerism', 2012),
	('Celebrate Life - EP', 2021),
	('Swimming', 2018);
	
INSERT INTO song (song_name, song_duration, album_id)
VALUES 
	('6 Summers', '00:04:43', 1),
	('Who R U', '00:02:49', 1),
	('Sexy Boy','00:04:58', 2),
	('Talisman', '00:04:17', 2),
	('1921', '00:02:49', 3),
	('Sparks', '00:02:05', 3),
	('The Fours', '00:03:27', 4),
	('Lullaby', '00:03:34', 4),
	('Battery', '00:05:12', 5),
	('Orion', '00:08:27', 5),
	('Led Zeppelin', '00:03:08', 6),
	('Endors Toi', '00:03:07', 6),
	('This U', '00:04:20', 7),
	('Celebrate Life', '00:04:34', 7),
	('Ladders', '00:04:47', 8),
	('Hurt Feelings', '00:04:06', 8),
	('My Generation', '00:03:19', 9),
	('La-La-La Lies', '00:02:16', 9);
	
INSERT INTO compilation (comp_name, release_year)
VALUES 
	('French Electronica', 2019),
	('Indie Essentials', 2014),
	('Metal Essentials', 2018),
	('House Gems', 2022),
	('Best of The Who', 1986),
	('Contemporary Jazz', 2023),
	('RIP Mac Miller', 2020),
	('R&B Essentials', 2020);
	
INSERT INTO genre_artist (genre_id, artist_id)
VALUES 
	(1, 4),
	(5, 1),
	(2, 2),
	(6, 3),
	(3, 5),
	(2, 6),
	(4, 7),
	(7, 8);

INSERT INTO artist_album (artist_id, album_id)
VALUES 
	(1, 2),
	(2, 3),
	(2, 9),
	(3, 1),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8);

INSERT INTO song_compilation (song_id, comp_id)
VALUES 
	(1, 8),
	(2, 8),
	(5, 5),
	(6, 5),
	(17, 5),
	(18, 5),
	(7, 6),
	(8, 6),
	(9, 3),
	(10, 3),
	(11, 2),
	(12, 2),
	(13, 4),
	(14, 4),
	(15, 7),
	(16, 7),
	(3, 1),
	(4, 1);
	
