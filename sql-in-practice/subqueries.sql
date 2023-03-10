SELECT *
FROM invoice
WHERE invoice_id IN (
	SELECT invoice_id
  FROM invoice_line
  WHERE unit_price > 0.99
);

SELECT * 
FROM track 
WHERE track_id IN (
  SELECT track_id
  FROM playlist_track
  WHERE playlist_id IN (
    SELECT playlist_id
    FROM playlist
    WHERE name = 'Music'
    )
  );

1 and 8

SELECT *
FROM playlist_track
WHERE playlist_id = 8;
  

SELECT name
FROM track
WHERE playlist_id IN (
	SELECT playlist_id
  FROM playlist
  WHERE playlist_id = 5
);

SELECT t.name
FROM track AS t
JOIN playlist_track AS pt
ON t.track_id = pt.track_id
JOIN playlist AS p
ON pt.playlist_id = p.playlist_id
WHERE p.playlist_id = 5;

SELECT name
FROM track
WHERE genre_id IN (
  SELECT genre_id
  FROM genre
  WHERE name = 'Comedy'
  );

SELECT name
FROM track
WHERE album_id IN (
  SELECT album_id
  FROM album
  WHERE title = 'Fireball'
  );

SELECT *
FROM track
WHERE album_id IN (
	SELECT album_id
  FROM album
  WHERE artist_id IN (
  	SELECT artist_id
    FROM artist
    WHERE name = 'Queen'
  )
);