SELECT COUNT(h.rep_time) AS quantidade_musicas_no_historico
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.history AS h
ON u.id = h.user_id
GROUP BY u.user
HAVING u.user = 'Barbara Liskov';