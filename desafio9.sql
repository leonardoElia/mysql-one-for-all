SELECT COUNT(usuario_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.reproducaoes
GROUP BY usuario_id
HAVING usuario_id = 1;