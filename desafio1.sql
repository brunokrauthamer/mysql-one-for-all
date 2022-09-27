DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;
  
    CREATE TABLE SpotifyClone.plan(
      id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      plan VARCHAR(100) NOT NULL,
      `value` FLOAT
  ) engine = InnoDB;
  
    CREATE TABLE SpotifyClone.artist(
      id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      artist VARCHAR(100) NOT NULL
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.user(
      id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      user VARCHAR(100) NOT NULL,
      age INTEGER,
      plan_id INT,
      sign_date DATE,
      FOREIGN KEY (plan_id) REFERENCES SpotifyClone.plan (id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.album(
      id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      album VARCHAR(100) NOT NULL,
      artist_id INT,
      release_year INT,
      FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artist (id)
  ) engine = InnoDB;
  
    CREATE TABLE SpotifyClone.song(
      id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      song VARCHAR(100) NOT NULL,
      `length` INT,
      album_id INT,
	FOREIGN KEY (album_id) REFERENCES SpotifyClone.album (id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.history(
      song_id INT,
      rep_time DATETIME,
      `user_id` INT,
      CONSTRAINT PRIMARY KEY(song_id, `user_id`),
      FOREIGN KEY (`user_id`) REFERENCES SpotifyClone.user (id),
      FOREIGN KEY (song_id) REFERENCES SpotifyClone.song (id)
  ) engine = InnoDB;

    CREATE TABLE SpotifyClone.follow(
      artist_id INT,
      `user_id` INT,
      CONSTRAINT PRIMARY KEY (artist_id, `user_id`),
      FOREIGN KEY (`user_id`) REFERENCES SpotifyClone.user (id),
      FOREIGN KEY (artist_id) REFERENCES SpotifyClone.artist (id)
  ) engine = InnoDB;
  
    INSERT INTO SpotifyClone.plan (plan, `value`)
  VALUES
    ('grauito', 0.00),
    ('universitario', 5.99),
    ('pessoal', 6.99),
    ('familiar', 7.99);
    
    INSERT INTO SpotifyClone.artist (artist)
  VALUES
    ('Beyonce'),
    ('Queen'),
    ('Elis Regina'),
    ('Baco Exu do Blues'),
    ('Blind Guardian'),
    ('Nina Simone');
  
    INSERT INTO SpotifyClone.album (album, release_year, artist_id)
  VALUES
    ('Renaissance', 2022, 1),
    ('Jazz', 1978, 2),
    ('Hot Space', 1982, 2),
    ('Falso Brilhante', 1998, 3),
    ('Vento de Maio', 2001, 3),
    ('QVVJFA?', 2003, 4),
    ('Somewhere Far Beyond', 2007, 5),
    ('I Put A Spell On You', 2012, 6);
    
    INSERT INTO SpotifyClone.song (song, length, album_id)
    VALUES
	  ('Break My Soul', 279, 1),
      ('Virgo’s Groove', 369, 1),
      ('Alien Superstar', 116, 1),
      ('Don’t Stop Me Now', 203, 2),
      ('Under Pressure', 152, 3),
      ('Como Nossos Pais', 105, 4),
      ('O Medo de Amar é o Medo de Ser Livre', 207, 5),
      ('Samba em Paris', 267, 6),
      ('The Bard’s Song', 244, 7),
      ('Feeling Good', 100, 8);
    
	INSERT INTO SpotifyClone.user (user, age, plan_id, sign_date)
  VALUES
    ('Barbara Liskov', 82, 1, '2019-10-20'),
    ('Robert Cecil Martin', 58, 1, '2017-01-20'),
    ('Ada Lovelace', 37, 4, '2017-12-30'),
    ('Martin Fowler', 46, 4, '2017-01-17'),
    ('Sandi Metz', 58, 4, '2018-04-29'),
    ('Paulo Freire', 19, 2, '2018-02-14'),
    ('Bell Hooks', 26, 2, '2018-01-05'),
    ('Christopher Alexander', 85, 3, '2019-06-05'),
    ('Judith Butler', 45, 3, '2020-05-13'),
    ('Jorge Amado', 58, 3, '2017-02-17');
    
	INSERT INTO SpotifyClone.history (song_id, rep_time, user_id)
  VALUES
    (8, '2022-02-28 10:45:55', 1),
    (2, '2020-05-02 05:30:35', 1),
    (10, '2020-03-06 11:22:33', 1),
    (10, '2022-08-05 08:05:17', 2),
    (7, '2020-01-02 07:40:33', 2),
    (10, '2020-11-13 16:55:13', 3),
    (2, '2020-12-05 18:38:30', 3),
    (8, '2021-08-15 17:10:10', 4),
    (8, '2022-01-09 01:44:33', 5),
    (5, '2020-08-06 15:23:43', 5),
    (7, '2017-01-24 00:31:17', 6),
	(1, '2017-10-12 12:35:20', 6),
    (4, '2011-12-15 22:30:49', 7),
    (4, '2012-03-17 14:56:41', 8),
    (9, '2022-02-24 21:14:22', 9),
    (3, '2015-12-13 08:30:22', 10);
    
    INSERT INTO SpotifyClone.follow (artist_id, user_id)
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
    
    
    