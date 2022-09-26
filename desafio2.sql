SELECT COUNT(cancoes.cancoes) AS cancoes, COUNT(DISTINCT artistas.artista) AS artistas, COUNT(DISTINCT albuns.album) AS albuns
FROM SpotifyClone.album AS albuns
INNER JOIN SpotifyClone.cancoes AS cancoes
ON albuns.album_id = cancoes.album_id
INNER JOIN SpotifyClone.artista AS artistas
ON albuns.artista_id = artistas.artista_id;