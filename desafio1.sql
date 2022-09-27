DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.idade(
      idade_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
      idade INT NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.plano(
      plano_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
      plano VARCHAR(30) NOT NULL,
      valor_plano VARCHAR(5) NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.usuario(
	 usuario_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     usuario VARCHAR(30) NOT NULL,
     idade_id INT NOT NULL,
     plano_id INT NOT NULL,
     FOREIGN KEY (idade_id) REFERENCES idade(idade_id),
     FOREIGN KEY (plano_id) REFERENCES plano(plano_id)
  ) engine = InnoDB;
  
  CREATE TABLE SpotifyClone.data_assinatura(
     usuario_id INT NOT NULL,
     data_assinatura DATE NOT NULL,
     FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
  ) engine = InnoDB;
  
  CREATE TABLE SpotifyClone.artista(
      artista_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
      artista VARCHAR(30) NOT NULL
  ) engine = InnoDB;
  
  CREATE TABLE SpotifyClone.seguindo_artistas(
     usuario_id INT NOT NULL AUTO_INCREMENT,
     artista_id INT NOT NULL,
     FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
     FOREIGN KEY (artista_id) REFERENCES artista(artista_id),
     CONSTRAINT PRIMARY KEY(usuario_id, artista_id)
  ) engine = InnoDB;
  
  CREATE TABLE SpotifyClone.album(
      album_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
      album VARCHAR(30) NOT NULL,
      artista_id INT NOT NULL,
      ano_lancamento YEAR NOT NULL,
      FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.cancoes(
     cancoes_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     cancoes VARCHAR(45) NOT NULL,
     duracao_segundos INT NOT NULL,
     album_id INT NOT NULL,
     FOREIGN KEY (album_id) REFERENCES album(album_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.historico_de_reproducoes(
      historico_de_reproducoes VARCHAR(45) NOT NULL,
      cancoes_id INT NOT NULL,
      data_reproducao DATETIME NOT NULL,
      usuario_id INT NOT NULL,
      FOREIGN KEY (cancoes_id) REFERENCES cancoes(cancoes_id),
      FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
      CONSTRAINT PRIMARY KEY(cancoes_id, usuario_id)
  ) engine = InnoDB;
  
  INSERT INTO SpotifyClone.idade (idade)
  VALUES
    (82),
    (58),
    (37),
    (46),
    (19),
    (26),
    (85),
    (45);
   
  INSERT INTO SpotifyClone.plano (plano, valor_plano)
  VALUES
    ('gratuito', 0.00),
    ('familiar', 7.99),
    ('universitário', 5.99),
    ('pessoal', 6.99);
    
  INSERT INTO SpotifyClone.usuario (usuario, idade_id, plano_id)
  VALUES
    ('Barbara Liskov', 1, 1),
    ('Robert Cecil Martin', 2, 1),
    ('Ada Lovelace', 3, 2),
    ('Martin Fowler', 4, 2),
    ('Sandi Metz', 2, 2),
    ('Paulo Freire', 5, 3),
    ('Bell Hooks', 6, 3),
    ('Christopher Alexander', 7, 4),
    ('Judith Butler', 8, 4),
    ('Jorge Amado', 2, 4);
    
  INSERT INTO SpotifyClone.data_assinatura (usuario_id, data_assinatura)
  VALUES
    (1, '2019-10-20'),
    (2,	'2017-01-06'),
    (3,	'2017-12-30'),
    (4,	'2017-01-17'),
    (5,	'2018-04-29'),
    (6,	'2018-02-14'),
    (7,	'2018-01-05'),
    (8,	'2019-06-05'),
    (9,	'2020-05-13'),
    (10, '2017-02-17');

INSERT INTO SpotifyClone.artista (artista)
  VALUES
    ('Beyoncé'),
    ('Queen'),
    ('Elis Regina'),
    ('Baco Exu do Blues'),
    ('Blind Guardian'),
    ('Nina Simone');

  INSERT INTO SpotifyClone.seguindo_artistas (usuario_id, artista_id)
  VALUES
    (1, 1),
    (1,	2),
    (1,	3),
    (2,	1),
    (2,	3),
    (3,	2),
    (4,	4),
    (5,	5),
    (5,	6),
    (6,	6),
    (6,	1),
    (7,	6),
    (9,	3),
    (10, 2);

  INSERT INTO SpotifyClone.album (album, artista_id, ano_lancamento)
  VALUES
    ('Renaissance', 1, 2022),
    ('Jazz', 2, 1978),
    ('Hot Space', 2, 1982),
    ('Falso Brilhante', 3, 1998),
    ('Vento de Maio', 3, 2001),
    ('QVVJFA?', 4, 2003),
    ('Somewhere Far Beyond', 5, 2007),
    ('I Put A Spell On You', 6, 2012);

  INSERT INTO SpotifyClone.cancoes (cancoes, duracao_segundos, album_id)
  VALUES
    ("BREAK MY SOUL", 279, 1),
    ("VIRGO’S GROOVE", 369, 1),
    ("ALIEN SUPERSTAR", 116, 1),
    ("Don’t Stop Me Now", 203, 2),
    ("Under Pressure", 152, 3),
    ("Como Nossos Pais", 105, 4),
    ("O Medo de Amar é o Medo de Ser Livre", 207, 5),
    ("Samba em Paris", 267, 6),
    ("The Bard’s Song", 244, 7),
    ("Feeling Good", 100, 8);

  INSERT INTO SpotifyClone.historico_de_reproducoes (historico_de_reproducoes, cancoes_id, data_reproducao, usuario_id)
  VALUES
    ("Samba em Paris", 8, "2022-02-28 10:45:55", 1),
    ("VIRGO’S GROOVE", 2, "2020-05-02 05:30:35", 1),
    ("Feeling Good", 10, "2020-03-06 11:22:33", 1),
    ("Feeling Good", 10, "2022-08-05 08:05:17", 2),
    ("O Medo de Amar é o Medo de Ser Livre", 7, "2020-01-02 07:40:33", 2),
    ("Feeling Good", 10, "2020-11-13 16:55:13", 3),
    ("VIRGO’S GROOVE", 2, "2020-12-05 18:38:30", 3),
    ("Samba em Paris", 8, "2021-08-15 17:10:10", 4),
    ("Samba em Paris", 8, "2022-01-09 01:44:33", 5),
    ("Under Pressure", 5, "2020-08-06 15:23:43", 5),
    ("O Medo de Amar é o Medo de Ser Livre", 7, "2017-01-24 00:31:17", 6),
    ("BREAK MY SOUL", 1, "2017-10-12 12:35:20", 6),
    ("Don’t Stop Me Now", 4, "2011-12-15 22:30:49", 7),
    ("Don’t Stop Me Now", 4, "2012-03-17 14:56:41", 8),
    ("The Bard’s Song", 9, "2022-02-24 21:14:22", 9),
    ("ALIEN SUPERSTAR", 3, "2015-12-13 08:30:22", 10);