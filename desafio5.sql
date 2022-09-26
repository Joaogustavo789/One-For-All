SELECT can.cancoes AS cancao, COUNT(hr.historico_de_reproducoes) AS reproducoes
FROM SpotifyClone.cancoes AS can
INNER JOIN SpotifyClone.historico_de_reproducoes AS hr
ON can.cancoes_id = hr.cancoes_id
GROUP BY can.cancoes
HAVING COUNT(hr.historico_de_reproducoes) > 2
ORDER BY can.cancoes;