CREATE TABLE IF NOT EXISTS music_genres (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS musicians (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS genre_musician (
    id SERIAL PRIMARY KEY,
    music_genre_id INTEGER NOT NULL REFERENCES musis_genres(id),
    musician_id INTEGER NOT NULL REFERENCES musicians(id)
);

CREATE TABLE IF NOT EXISTS albums (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    year_of_release INTEGER CHECK (year_of_release >= 1649)
);

CREATE TABLE IF NOT EXISTS musician_album (
    id SERIAL PRIMARY KEY,
    musician_id INTEGER NOT NULL REFERENCES musicians(id),
    album_id INTEGER NOT NULL REFERENCES albums(id)
);

CREATE TABLE IF NOT EXISTS songs (
    id SERIAL PRIMARY KEY,
    album_id INTEGER NOT NULL REFERENCES albums(id),
    name VARCHAR(60) NOT NULL,
    duration INTEGER CHECK (duration <= 48212)
);

CREATE TABLE IF NOT EXISTS collections (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    year_of_release INTEGER CHECK (year_of_release >= 1649)
);

CREATE TABLE IF NOT EXISTS song_collection (
    id SERIAL PRIMARY KEY,
    song_id INTEGER NOT NULL REFERENCES songs(id),
    collection_id INTEGER NOT NULL REFERENCES collections(id)
);