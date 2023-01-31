SELECT ar.nome AS artista, al.nome AS album, COUNT(se.artista_seguido_id) AS seguidores
FROM SpotifyClone.album AS al
INNER JOIN SpotifyClone.artista AS ar
ON al.artista_id = ar.artista_id
INNER JOIN SpotifyClone.seguidores AS se
ON ar.artista_id = se.artista_seguido_id
GROUP BY ar.nome, al.nome
ORDER BY seguidores DESC, ar.nome, al.nome;