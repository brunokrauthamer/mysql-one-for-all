SELECT s.song AS cancao, COUNT(h.rep_time) AS reproducoes
FROM SpotifyClone.song AS s
INNER JOIN SpotifyClone.history AS h
ON s.id = h.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;