INSERT INTO music_genres (name) VALUES
('Альтернативный метал'),('Металкор'),('Электроник-рок'),('Ню-метал'),
('Рэп-метал'),('Электроникор'),('Пост-хардкор'),('Панк-рок'),('Поп-панк'),
('Альтернативный рок'),('Cкейт-панк'),('Пауэр-поп');

INSERT INTO musicians (name) VALUES
('Amatory'),('Stigmata'),('Enter Shikari'),('Green Day');

INSERT INTO genre_musician (music_genre_id,musician_id)
SELECT id AS music_genre_id,(SELECT id FROM musicians WHERE name = 'Amatory') AS musician_id FROM music_genres WHERE name = 'Альтернативный метал'
UNION ALL
SELECT id AS music_genre_id,(SELECT id FROM musicians WHERE name = 'Amatory') AS musician_id FROM music_genres WHERE name = 'Металкор'
UNION ALL
SELECT id AS music_genre_id,(SELECT id FROM musicians WHERE name = 'Amatory') AS musician_id FROM music_genres WHERE name = 'Электроник-рок'
UNION ALL
SELECT id AS music_genre_id,(SELECT id FROM musicians WHERE name = 'Amatory') AS musician_id FROM music_genres WHERE name = 'Ню-метал'
UNION ALL
SELECT id AS music_genre_id,(SELECT id FROM musicians WHERE name = 'Amatory') AS musician_id FROM music_genres WHERE name = 'Рэп-метал'
UNION ALL
SELECT id AS music_genre_id,(SELECT id FROM musicians WHERE name = 'Stigmata') AS musician_id FROM music_genres WHERE name = 'Металкор'
UNION ALL
SELECT id AS music_genre_id,(SELECT id FROM musicians WHERE name = 'Stigmata') AS musician_id FROM music_genres WHERE name = 'Альтернативный метал'
UNION ALL
SELECT id AS music_genre_id,(SELECT id FROM musicians WHERE name = 'Stigmata') AS musician_id FROM music_genres WHERE name = 'Ню-метал'
UNION ALL
SELECT id AS music_genre_id,(SELECT id FROM musicians WHERE name = 'Stigmata') AS musician_id FROM music_genres WHERE name = 'Электроник-рок'
UNION ALL
SELECT id AS music_genre_id,(SELECT id FROM musicians WHERE name = 'Enter Shikari') AS musician_id FROM music_genres WHERE name = 'Электроникор'
UNION ALL
SELECT id AS music_genre_id,(SELECT id FROM musicians WHERE name = 'Enter Shikari') AS musician_id FROM music_genres WHERE name = 'Пост-хардкор'
UNION ALL
SELECT id AS music_genre_id,(SELECT id FROM musicians WHERE name = 'Enter Shikari') AS musician_id FROM music_genres WHERE name = 'Металкор'
UNION ALL
SELECT id AS music_genre_id,(SELECT id FROM musicians WHERE name = 'Enter Shikari') AS musician_id FROM music_genres WHERE name = 'Альтернативный метал'
UNION ALL
SELECT id AS music_genre_id,(SELECT id FROM musicians WHERE name = 'Enter Shikari') AS musician_id FROM music_genres WHERE name = 'Электроник-рок'
UNION ALL
SELECT id AS music_genre_id,(SELECT id FROM musicians WHERE name = 'Green Day') AS musician_id FROM music_genres WHERE name = 'Панк-рок'
UNION ALL
SELECT id AS music_genre_id,(SELECT id FROM musicians WHERE name = 'Green Day') AS musician_id FROM music_genres WHERE name = 'Поп-панк'
UNION ALL
SELECT id AS music_genre_id,(SELECT id FROM musicians WHERE name = 'Green Day') AS musician_id FROM music_genres WHERE name = 'Альтернативный рок'
UNION ALL
SELECT id AS music_genre_id,(SELECT id FROM musicians WHERE name = 'Green Day') AS musician_id FROM music_genres WHERE name = 'Cкейт-панк'
UNION ALL
SELECT id AS music_genre_id,(SELECT id FROM musicians WHERE name = 'Green Day') AS musician_id FROM music_genres WHERE name = 'Пауэр-поп';

INSERT INTO albums (name,year_of_release) VALUES
('STIGMATA',2007),('American Idiot',2004),('Книга мёртвых',2006);

INSERT INTO musician_album (musician_id,album_id)
SELECT id AS musician_id,(SELECT id AS album_id FROM albums WHERE name = 'STIGMATA') FROM musicians WHERE name = 'Stigmata'
UNION ALL
SELECT id AS musician_id,(SELECT id AS album_id FROM albums WHERE name = 'American Idiot') FROM musicians WHERE name = 'Green Day'
UNION ALL
SELECT id AS musician_id,(SELECT id AS album_id FROM albums WHERE name = 'Книга мёртвых') FROM musicians WHERE name = 'Amatory';

INSERT INTO songs (album_id,name,duration) VALUES 
((SELECT id AS album_id FROM albums WHERE name = 'Книга мёртвых'),'Помнишь?',82),
((SELECT id AS album_id FROM albums WHERE name = 'Книга мёртвых'),'Семь шагов',210),
((SELECT id AS album_id FROM albums WHERE name = 'Книга мёртвых'),'Здесь и сейчас',261),
((SELECT id AS album_id FROM albums WHERE name = 'Книга мёртвых'),'Снег в аду',212),
((SELECT id AS album_id FROM albums WHERE name = 'Книга мёртвых'),'Меня больше нет',219),
((SELECT id AS album_id FROM albums WHERE name = 'Книга мёртвых'),'Обернуться назад',274),
((SELECT id AS album_id FROM albums WHERE name = 'Книга мёртвых'),'Отдай свой крик',183),
((SELECT id AS album_id FROM albums WHERE name = 'Книга мёртвых'),'Преступление против времени',264),
((SELECT id AS album_id FROM albums WHERE name = 'Книга мёртвых'),'Слишком поздно',249),
((SELECT id AS album_id FROM albums WHERE name = 'Книга мёртвых'),'Моя правда',260),
((SELECT id AS album_id FROM albums WHERE name = 'Книга мёртвых'),'Эффект Бабочки',251),
((SELECT id AS album_id FROM albums WHERE name = 'Книга мёртвых'),'Теряешь меня',269),
((SELECT id AS album_id FROM albums WHERE name = 'STIGMATA'),'Бог меня простит',233),
((SELECT id AS album_id FROM albums WHERE name = 'STIGMATA'),'Цена твоей жизни',211),
((SELECT id AS album_id FROM albums WHERE name = 'STIGMATA'),'Крылья',256),
((SELECT id AS album_id FROM albums WHERE name = 'STIGMATA'),'Последний глоток',275),
((SELECT id AS album_id FROM albums WHERE name = 'STIGMATA'),'Оставь надежду',221),
((SELECT id AS album_id FROM albums WHERE name = 'STIGMATA'),'Лёд',215),
((SELECT id AS album_id FROM albums WHERE name = 'STIGMATA'),'Сентябрь',244),
((SELECT id AS album_id FROM albums WHERE name = 'STIGMATA'),'Все огни сердец',228),
((SELECT id AS album_id FROM albums WHERE name = 'STIGMATA'),'Последний день Помпеи',273),
((SELECT id AS album_id FROM albums WHERE name = 'STIGMATA'),'Магмель',227),
((SELECT id AS album_id FROM albums WHERE name = 'STIGMATA'),'Игра вслепую',229),
((SELECT id AS album_id FROM albums WHERE name = 'American Idiot'),'American Idiot',174),
((SELECT id AS album_id FROM albums WHERE name = 'American Idiot'),'Jesus of Suburbia',548),
((SELECT id AS album_id FROM albums WHERE name = 'American Idiot'),'Holiday',232),
((SELECT id AS album_id FROM albums WHERE name = 'American Idiot'),'Boulevard of Broken Dreams',260),
((SELECT id AS album_id FROM albums WHERE name = 'American Idiot'),'Are We the Waiting',162),
((SELECT id AS album_id FROM albums WHERE name = 'American Idiot'),'St. Jimmy',176),
((SELECT id AS album_id FROM albums WHERE name = 'American Idiot'),'Give Me Novacaine',205),
((SELECT id AS album_id FROM albums WHERE name = 'American Idiot'),'She''s a Rebel',120),
((SELECT id AS album_id FROM albums WHERE name = 'American Idiot'),'Extraordinary Girl',213),
((SELECT id AS album_id FROM albums WHERE name = 'American Idiot'),'Letterbomb',245),
((SELECT id AS album_id FROM albums WHERE name = 'American Idiot'),'Wake Me Up When September Ends',285),
((SELECT id AS album_id FROM albums WHERE name = 'American Idiot'),'Homecoming',558),
((SELECT id AS album_id FROM albums WHERE name = 'American Idiot'),'Whatsername',254);

INSERT INTO collections (name,year_of_release) VALUES
('Любимые песни',2012),
('Жесть',2013),
('Верните мне мой 2007',2007),
('Под гитару',2024);

INSERT INTO song_collection (song_id,collection_id)
SELECT id AS song_id,(SELECT id AS collection_id FROM collections WHERE name = 'Любимые песни') FROM songs WHERE name = 'Бог меня простит'
UNION ALL
SELECT id AS song_id,(SELECT id AS collection_id FROM collections WHERE name = 'Любимые песни') FROM songs WHERE name = 'American Idiot'
UNION ALL
SELECT id AS song_id,(SELECT id AS collection_id FROM collections WHERE name = 'Любимые песни') FROM songs WHERE name = 'Jesus of Suburbia'
UNION ALL
SELECT id AS song_id,(SELECT id AS collection_id FROM collections WHERE name = 'Любимые песни') FROM songs WHERE name = 'Сентябрь'
UNION ALL
SELECT id AS song_id,(SELECT id AS collection_id FROM collections WHERE name = 'Любимые песни') FROM songs WHERE name = 'Обернуться назад'
UNION ALL
SELECT id AS song_id,(SELECT id AS collection_id FROM collections WHERE name = 'Любимые песни') FROM songs WHERE name = 'Wake Me Up When September Ends'
UNION ALL
SELECT id AS song_id,(SELECT id AS collection_id FROM collections WHERE name = 'Жесть') FROM songs WHERE name = 'Отдай свой крик'
UNION ALL
SELECT id AS song_id,(SELECT id AS collection_id FROM collections WHERE name = 'Жесть') FROM songs WHERE name = 'Снег в аду'
UNION ALL
SELECT id AS song_id,(SELECT id AS collection_id FROM collections WHERE name = 'Жесть') FROM songs WHERE name = 'Слишком поздно'
UNION ALL
SELECT id AS song_id,(SELECT id AS collection_id FROM collections WHERE name = 'Жесть') FROM songs WHERE name = 'Последний глоток'
UNION ALL
SELECT id AS song_id,(SELECT id AS collection_id FROM collections WHERE name = 'Жесть') FROM songs WHERE name = 'Лёд'
UNION ALL
SELECT id AS song_id,(SELECT id AS collection_id FROM collections WHERE name = 'Жесть') FROM songs WHERE name = 'Все огни сердец'
UNION ALL
SELECT id AS song_id,(SELECT id AS collection_id FROM collections WHERE name = 'Верните мне мой 2007') FROM songs WHERE name = 'Сентябрь'
UNION ALL
SELECT id AS song_id,(SELECT id AS collection_id FROM collections WHERE name = 'Верните мне мой 2007') FROM songs WHERE name = 'American Idiot'
UNION ALL
SELECT id AS song_id,(SELECT id AS collection_id FROM collections WHERE name = 'Верните мне мой 2007') FROM songs WHERE name = 'Jesus of Suburbia'
UNION ALL
SELECT id AS song_id,(SELECT id AS collection_id FROM collections WHERE name = 'Верните мне мой 2007') FROM songs WHERE name = 'Holiday'
UNION ALL
SELECT id AS song_id,(SELECT id AS collection_id FROM collections WHERE name = 'Верните мне мой 2007') FROM songs WHERE name = 'Boulevard of Broken Dreams'
UNION ALL
SELECT id AS song_id,(SELECT id AS collection_id FROM collections WHERE name = 'Верните мне мой 2007') FROM songs WHERE name = 'Отдай свой крик'
UNION ALL
SELECT id AS song_id,(SELECT id AS collection_id FROM collections WHERE name = 'Под гитару') FROM songs WHERE name = 'Wake Me Up When September Ends'
UNION ALL
SELECT id AS song_id,(SELECT id AS collection_id FROM collections WHERE name = 'Под гитару') FROM songs WHERE name = 'Сентябрь'
UNION ALL
SELECT id AS song_id,(SELECT id AS collection_id FROM collections WHERE name = 'Под гитару') FROM songs WHERE name = 'Здесь и сейчас'
UNION ALL
SELECT id AS song_id,(SELECT id AS collection_id FROM collections WHERE name = 'Под гитару') FROM songs WHERE name = 'Слишком поздно'
UNION ALL
SELECT id AS song_id,(SELECT id AS collection_id FROM collections WHERE name = 'Под гитару') FROM songs WHERE name = 'Оставь надежду';