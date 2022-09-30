SELECT ar.artist AS artista, al.album
FROM SpotifyClone.artist AS ar
INNER JOIN SpotifyClone.album AS al
ON ar.id = al.artist_id
HAVING ar. artist = 'Elis Regina'
ORDER BY al.album;