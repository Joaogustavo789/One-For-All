SELECT can.cancoes AS nome, COUNT(hr.historico_de_reproducoes) AS reproducoes
FROM SpotifyClone.cancoes AS can
INNER JOIN SpotifyClone.historico_de_reproducoes AS hr
ON can.cancoes_id = hr.cancoes_id
INNER JOIN SpotifyClone.usuario AS us
ON hr.usuario_id = us.usuario_id
INNER JOIN SpotifyClone.plano AS plan
ON us.plano_id = plan.plano_id
WHERE plan.plano = 'gratuito' OR plan.plano = 'pessoal'
GROUP BY can.cancoes
ORDER BY can.cancoes;