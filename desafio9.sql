SELECT COUNT(hr.historico_de_reproducoes) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_de_reproducoes AS hr
INNER JOIN SpotifyClone.usuario AS us
ON hr.usuario_id = us.usuario_id
GROUP BY us.usuario
HAVING us.usuario = 'Barbara Liskov';