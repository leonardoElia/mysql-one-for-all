SELECT  COUNT(m.musica_id) AS cancoes, COUNT(DISTINCT a.artista_id) AS artistas, COUNT(DISTINCT ab.album_id) AS albuns
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.artista AS a
ON m.artista_id = a.artista_id
INNER JOIN SpotifyClone.album AS ab
ON m.album_id = ab.album_id;
