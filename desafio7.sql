SELECT ar.artist AS artista, al.album AS album, COUNT(al.id) AS seguidores
FROM SpotifyClone.artist AS ar
INNER JOIN SpotifyClone.album AS al
ON ar.id = al.artist_id
INNER JOIN SpotifyClone.follow AS f
ON ar.id = f.artist_id
GROUP BY al.id
ORDER BY seguidores DESC, artista, album;