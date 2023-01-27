DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.plano(
      plano_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      nome varchar(45) NOT NULL,
      valor decimal(5,2)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.usuario(
      usuario_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      nome varchar(45) NOT NULL,
      idade INT NOT NULL,
      plano_id INT NOT NULL,
      data_de_assinatura DATE NOT NULL,
      FOREIGN KEY (plano_id) REFERENCES SpotifyClone.plano (plano_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.artista(
    artista_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome varchar(45) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.album(
    album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome varchar(45) NOT NULL,
    artista_id INT NOT NULL,
    ano_lancamento YEAR NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artista (artista_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.musicas(
    musica_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome varchar(45) NOT NULL,
    album_id INT,
    artista_id INT NOT NULL,
    duracao_em_segundos INTEGER NOT NULL,
    FOREIGN KEY (album_id) REFERENCES SpotifyClone.album (album_id),
    FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artista (artista_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.reproducaoes(
    musica_id INT NOT NULL,
    usuario_id INT NOT NULL,
    data_reproducao DATETIME NOT NULL, 
    CONSTRAINT PRIMARY KEY(musica_id, usuario_id),
    FOREIGN KEY (musica_id) REFERENCES SpotifyClone.musicas (musica_id),
    FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuario (usuario_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.seguidores(
    artista_seguido_id INT NOT NULL,
    usuario_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY(artista_seguido_id, usuario_id),
    FOREIGN KEY (artista_seguido_id) REFERENCES SpotifyClone.artista (artista_id),
    FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuario (usuario_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.plano (nome, valor)
VALUES
  ('gratuito', 0.00),
  ('familiar', 7.99),
  ('universitário', 5.99),
  ('pessoal', 6.99);
  

  INSERT INTO SpotifyClone.usuario (nome, idade, plano_id, data_de_assinatura)
VALUES
  ('Barbara Liskov', 82, 1, '2019-10-20'),
  ('Robert Cecil Martin', 58, 1, '2017-01-06'),
  ('Ada Lovelace', 37, 2, '2017-12-30'),
  ('Martin Fowler', 46, 2, '2017-01-17'),
  ('Sandi Metz', 58, 2, '2018-04-29'),
  ('Paulo Freire', 19, 3, '2018-02-14'),
  ('Bell Hooks', 26, 3, '2018-01-05'),
  ('Christopher Alexander', 85, 4, '2019-06-05'),
  ('Judith Butler', 45, 4, '2020-05-13'),
  ('Jorge Amado', 58, 4, '2017-02-17');
  

  INSERT INTO SpotifyClone.artista (nome)
VALUES
  ('Beyoncé'),
  ('Queen'),
  ('Elis Regina'),
  ('Baco Exu do Blues'),
  ('Blind Guardian'),
  ('Nina Simone');

 
  INSERT INTO SpotifyClone.album (nome, artista_id, ano_lancamento)
VALUES
  ('Renaissance', 1, '2022'),
  ('Jazz', 2, '1978'),
  ('Hot Space', 2, '1982'),
  ('Falso Brilhante', 3, '1998'),
  ('Vento de Maio', 3,  '2001'),
  ('QVVJFA?', 4,  '2003'),
  ('Somewhere Far Beyond', 5,  '2007'),
  ('I Put A Spell On You', 6,  '2012');


  INSERT INTO SpotifyClone.musicas (nome, album_id, artista_id, duracao_em_segundos)
VALUES
  ('BREAK MY SOUL', 1, 1, 279),
  ('VIRGO’S GROOVE', 1, 1, 369),
  ('ALIEN SUPERSTAR', 1, 1, 116),
  ('Don’t Stop Me Now', 2, 2, 230),
  ('Under Pressure', 3, 2, 157),
  ('Como Nossos Pais', 4, 3, 105),
  ('O Medo de Amar é o Medo de Ser Livre', 5, 3, 207),
  ('Samba em Paris', 6, 4, 267),
  ('The Bard’s Song', 7, 5, 244),
  ('Feeling Good', 8, 6, 100);
  

  INSERT INTO SpotifyClone.reproducaoes (musica_id, usuario_id, data_reproducao)
VALUES
  (6, 1, '2022-02-28 10:45:55'),
  (2, 1, '2020-05-02 05:30:35'),
  (10, 1, '2020-03-06 11:22:33'),
  (10, 2, '2022-08-05 08:05:17'),
  (7, 2, '2020-01-02 07:40:33'),
  (10, 3, '2020-11-13 16:55:13'),
  (2, 3, '2020-12-05 18:38:30'),
  (8, 4, '2021-08-15 17:10:10'),
  (8, 5, '2022-01-09 01:44:33'),
  (5, 5, '2020-08-06 15:23:43'),
  (7, 6, '2017-01-24 00:31:17'),
  (1, 6, '2017-10-12 12:35:20'),
  (4, 7, '2011-12-15 22:30:49'),
  (4, 8, '2012-03-17 14:56:41'),
  (9, 9, '2022-02-24 21:14:22'),
  (3, 10, '2015-12-13 08:30:22');

  

  INSERT INTO SpotifyClone.seguidores (artista_seguido_id, usuario_id)
VALUES
  (1, 1),
  (2, 1),
  (3, 1),
  (1, 2),
  (3, 2),
  (2, 3),
  (4, 4),
  (5, 5),
  (6, 5),
  (6, 6),
  (1, 6),
  (6, 7),
  (3, 9),
  (2, 10);
 
  
  