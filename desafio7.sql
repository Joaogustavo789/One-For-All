SELECT art.artista AS artista, alb.album AS album, COUNT(segui.artista_id) AS seguidores
FROM SpotifyClone.artista AS art

INNER JOIN SpotifyClone.album AS alb
ON art.artista_id = alb.artista_id

INNER JOIN SpotifyClone.seguindo_artistas AS segui
ON art.artista_id = segui.artista_id

GROUP BY alb.album_id
ORDER BY seguidores DESC, artista ASC, album ASC;