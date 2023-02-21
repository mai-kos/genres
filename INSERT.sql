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
	('Swimming', 2019);
	
INSERT INTO song (song_name, song_duration, album_id)
VALUES 
	('6 Summers', 283, 1),
	('Who R U', 169, 1),
	('Sexy Boy', 298, 2),
	('Talisman', 257, 2),
	('1921', 169, 3),
	('Sparks', 125, 3),
	('The Fours', 207, 4),
	('Lullaby', 214, 4),
	('Battery', 312, 5),
	('Orion', 507, 5),
	('Led Zeppelin', 188, 6),
	('Endors Toi', 187, 6),
	('This U', 260, 7),
	('Celebrate Life', 274, 7),
	('Ladders', 287, 8),
	('Hurt Feelings', 246, 8),
	('My Generation', 199, 9),
	('La-La-La Lies', 136, 9),
	('Master of Puppets', 515, 5),
	('Mind Mischief', 272, 6);
	
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
	(7, 8),
	(5, 7),
	(6, 8),
	(7, 3);

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
	
