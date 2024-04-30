--Задание № 2
--Название и продолжительность самого длительного трека.
SELECT name,duration
FROM songs
ORDER BY duration DESC
LIMIT 1;

--Название треков, продолжительность которых не менее 3,5 минут.
SELECT name
FROM songs
WHERE duration >= 210;

--Названия сборников, вышедших в период с 2012 по 2013 год включительно.
SELECT name
FROM collections
WHERE year_of_release BETWEEN 2012 AND 2013;

--Исполнители, чьё имя состоит из одного слова.
SELECT name
FROM musicians
WHERE NOT (name LIKE '% %');

--Название треков, которые содержат слово «мой» или «my».
SELECT name
FROM songs
WHERE lower(name) LIKE ANY (ARRAY['% my %','% my','my %','my','% мой %','% мой','мой %','мой']);

--Задание № 3
--Количество исполнителей в каждом жанре
SELECT mg.name, count(gm.id)
FROM music_genres AS mg
JOIN genre_musician AS gm ON mg.id = gm.music_genre_id
GROUP BY mg.name;

--Количество треков, вошедших в альбомы 2006–2007 годов.
SELECT count(s.id)
FROM songs AS s
JOIN albums AS a ON a.id = s.album_id
WHERE a.year_of_release BETWEEN 2006 AND 2007;

--Средняя продолжительность треков по каждому альбому.
SELECT a.name,AVG(s.duration)
FROM albums AS a
JOIN songs AS s ON s.album_id = a.id
GROUP BY a.name;

--Все исполнители, которые не выпустили альбомы в 2007 году.
SELECT m.name
FROM musicians AS m
JOIN musician_album AS ma ON ma.musician_id = m.id
JOIN albums AS a ON a.id = ma.album_id 
WHERE a.year_of_release != 2007;

--Названия сборников, в которых присутствует конкретный исполнитель (Green Day).
SELECT DISTINCT c.name
FROM collections AS c
JOIN song_collection AS sc ON c.id = sc.collection_id 
JOIN songs AS s ON s.id = sc.song_id 
JOIN albums AS a ON a.id = s.album_id 
JOIN musician_album AS ma ON ma.album_id  = a.id
JOIN musicians AS m ON m.id = ma.musician_id 
WHERE m.name = 'Green Day';

--Задание № 4
--Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT a.name, count(gm.id)
FROM albums AS a
JOIN musician_album AS ma ON a.id = ma.album_id 
JOIN musicians AS m ON m.id = ma.musician_id 
JOIN genre_musician AS gm ON gm.musician_id = m.id
GROUP BY a.name
HAVING count(gm.id)>1;

--Наименования треков, которые не входят в сборники.
SELECT s.name 
FROM songs AS s
LEFT JOIN song_collection AS sc ON s.id = sc.song_id
WHERE sc.collection_id IS NULL;

--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
SELECT m.name
FROM musicians AS m
JOIN musician_album AS ma ON ma.musician_id = m.id 
JOIN songs AS s ON ma.album_id = s.album_id
WHERE s.duration =
	(SELECT min(s.duration) 
	FROM songs AS s);

--Названия альбомов, содержащих наименьшее количество треков.
SELECT a.name
FROM albums AS a
JOIN songs AS s ON s.album_id = a.id
GROUP BY a.name
HAVING count(s.id) = 
	(SELECT count(id)
	FROM songs
	GROUP BY album_id
	ORDER BY count(id)
	LIMIT 1);