SELECT ar.nome AS artista, al.nome AS album
FROM SpotifyClone.album AS al
INNER JOIN SpotifyClone.artista AS ar
ON al.artista_id = ar.artista_id
where ar.nome = 'Elis Regina';