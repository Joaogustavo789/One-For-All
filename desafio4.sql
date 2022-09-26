SELECT us.usuario AS usuario, IF(MAX(dr.data_reproducao) > '2021-01-01', 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.usuario AS us
INNER JOIN SpotifyClone.historico_de_reproducoes AS dr
ON us.usuario_id = dr.usuario_id
GROUP BY us.usuario
ORDER BY us.usuario ASC;