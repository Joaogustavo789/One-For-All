SELECT MIN(plan.valor_plano) AS faturamento_minimo, 
MAX(plan.valor_plano) AS faturamento_maximo, 
LEFT(AVG(plan.valor_plano), 4) AS faturamento_medio,
LEFT(SUM(plan.valor_plano), 5) AS faturamento_total
FROM SpotifyClone.plano AS plan
INNER JOIN SpotifyClone.usuario AS us
ON plan.plano_id = us.plano_id;