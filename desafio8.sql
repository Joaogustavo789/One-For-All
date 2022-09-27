SELECT art.artista, alb.album
FROM SpotifyClone.artista AS art
INNER JOIN SpotifyClone.album AS alb
ON art.artista_id = alb.artista_id
WHERE art.artista = 'Elis Regina'
ORDER BY art.artista ASC;