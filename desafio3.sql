SELECT u.user AS usuario, COUNT(h.rep_time) AS qt_de_musicas_ouvidas, ROUND(SUM(s.length) / 60, 2) AS total_minutos
FROM SpotifyClone.history AS h
INNER JOIN SpotifyClone.user AS u
ON u.id = h.user_id
INNER JOIN SpotifyClone.song as s
ON s.id = h.song_id
GROUP BY u.user
ORDER BY u.user;
