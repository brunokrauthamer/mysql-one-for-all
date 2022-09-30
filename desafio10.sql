SELECT s.song AS nome, COUNT(h.rep_time) AS reproducoes
FROM SpotifyClone.song AS s
INNER JOIN SpotifyClone.history AS h
ON s.id = h.song_id
INNER JOIN SpotifyClone.user AS u
ON h.user_id = u.id
WHERE u.plan_id = 1 OR u.plan_id = 3
GROUP BY s.song
ORDER BY nome;
