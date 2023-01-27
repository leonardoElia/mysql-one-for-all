SELECT u.nome AS usuario,  COUNT(r.usuario_id) AS qt_de_musicas_ouvidas, ROUND(SUM((m.duracao_em_segundos) / 60),2) AS total_minutos
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.reproducaoes AS r
ON r.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.musicas AS m
ON m.musica_id = r.musica_id
GROUP BY r.usuario_id
ORDER BY u.nome ASC;