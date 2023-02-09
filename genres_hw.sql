CREATE TABLE IF NOT EXISTS genre (
	genre_id SERIAL PRIMARY KEY,
	genre_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS artist (
	artist_id SERIAL PRIMARY KEY,
	artist_name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS genre_artist (
	id SERIAL PRIMARY KEY,
	genre_id INTEGER NOT NULL REFERENCES genre(genre_id),
	artist_id INTEGER NOT NULL REFERENCES artist(artist_id)
);

CREATE TABLE IF NOT EXISTS album (
	album_id SERIAL PRIMARY KEY,
	album_name VARCHAR(255) NOT NULL,
	release_year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS artist_album (
	id SERIAL PRIMARY KEY,
	artist_id INTEGER NOT NULL REFERENCES artist(artist_id),
	album_id INTEGER NOT NULL REFERENCES album(album_id)
);

CREATE TABLE IF NOT EXISTS song (
	song_id SERIAL PRIMARY KEY,
	song_name VARCHAR(255) NOT NULL,
	song_duration INTEGER NOT NULL,
	album_id INTEGER NOT NULL REFERENCES album(album_id)
);

CREATE TABLE IF NOT EXISTS compilation (
	comp_id SERIAL PRIMARY KEY,
	comp_name VARCHAR(255) NOT NULL,
	release_year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS song_compilation (
	id SERIAL PRIMARY KEY,
	song_id INTEGER NOT NULL REFERENCES song(song_id),
	comp_id INTEGER NOT NULL REFERENCES compilation(comp_id)
);