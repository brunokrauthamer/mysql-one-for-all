SELECT u.user AS usuario, IF(YEAR(MAX(h.rep_time)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.history AS h
ON u.id = h.user_id
GROUP BY u.user
ORDER BY u.user;