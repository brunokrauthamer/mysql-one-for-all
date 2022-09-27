SELECT MAX(s.id) AS cancoes, MAX(a.artist_id) AS  artistas, MAX(s.album_id) AS albuns
FROM SpotifyClone.song AS s
INNER JOIN SpotifyClone.album AS a
ON a.id = s.album_id;
