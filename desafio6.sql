SELECT CONCAT(CONVERT(MIN(p.value), CHAR), '.00') AS faturamento_minimo,
CONVERT(ROUND(MAX(p.value), 2), CHAR) AS faturamento_maximo,
CONVERT(ROUND(SUM(p.value) / COUNT(p.value), 2), CHAR) AS faturamento_medio,
CONVERT(ROUND(SUM(p.value), 2), CHAR) AS faturamento_total
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.plan AS p
ON u.plan_id = p.id;