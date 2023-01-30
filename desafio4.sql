SELECT u.nome AS usuario, 
IF (YEAR(MAX(r.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.reproducaoes AS r
INNER JOIN SpotifyClone.usuario AS u
ON u.usuario_id = r.usuario_id
GROUP BY r.usuario_id
ORDER BY u.nome;