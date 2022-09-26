SELECT us.usuario AS usuario, 
COUNT(hr.historico_de_reproducoes) AS qt_de_musicas_ouvidas, 
ROUND(SUM(cancoes.duracao_segundos / 60), 2) AS total_minutos

FROM SpotifyClone.usuario AS us
INNER JOIN SpotifyClone.historico_de_reproducoes AS hr
ON us.usuario_id = hr.usuario_id

INNER JOIN SpotifyClone.cancoes AS cancoes
ON hr.cancoes_id = cancoes.cancoes_id

GROUP BY us.usuario
ORDER BY us.usuario ASC;