SELECT m.nome AS cancao, COUNT(r.musica_id) AS reproducoes FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.reproducaoes AS r
ON r.musica_id = m.musica_id
GROUP BY r.musica_id
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;